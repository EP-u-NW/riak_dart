import 'package:meta/meta.dart';
import 'messages.dart';
import 'dart:io';
import 'abstract_client.dart';
import '../generated_protobuf.dart';

/// A client implementing all the methods specified in the [Riak ProtoBuf Api](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/index.html). Since large parts of the method documentation of this class are just copied from there, the documentation of this class does not respect the dart documentation guidelines; also grammer and spelling is sometimes inconsistent, camel case (dart) is mixed with snake case (protobuf), and dead/outdatet links can occur.
///
/// Most methods return a [Future] with a response object matching the request, some streaming methodes use a [Stream] of response objects to represent the method result.
/// Sometimes, not awaiting a future, but executing multiple requests and awaiting a collecion of futures, can increase performance signicifantly.
/// For example, to store multiple objects, consider this:
/// ```
/// Future storeMultiple(RiakClient client, Map<String, String> keyValueMap) {
///   List<int> bucket = utf8.encode('default');
///   Iterable<Future> storeFutures = keyValueMap.keys.map<Future>(
///       (String key) => client.storeObject(
///           bucket: bucket,
///           key: utf8.encode(key),
///           content: new RpbContent()..value = utf8.encode(keyValueMap[key])));
///   return Future.wait(storeFutures);
/// }
/// ```
/// The more elements the keyValueMap contains, the faster this code will run compared to awaiting every storing response in sequence due to optimizations on network level.
class RiakClient extends AbstractClient {
  RiakClient._(Socket socket) : super(socket);

  ///TODO
  static Future<RiakClient> connect(
      {@required dynamic host,
      int port = 8087,
      dynamic sourceAddress,
      Duration timeout}) async {
    return new RiakClient._(await Socket.connect(host, port,
        sourceAddress: sourceAddress, timeout: timeout));
  }

  /// List all of the bucket names available.
  /// Caution: This call can be expensive for the server. Do not use in performance-sensitive code.
  Future<RpbListBucketsResp> listBuckets() {
    return sendRequest<RpbListBucketsResp>(
            requestCode: MessageCode.rpbListBucketsReq)
        .last;
  }

  /// List all of the keys in a [bucket]. This is a streaming call, with multiple response messages sent for each request.
  /// Not for production use: This operation requires traversing all keys stored in the cluster and should not be used in production.
  ///
  /// Each [RpbListKeysResp] fo the returned stream holds a number of [keys]. The [done] flag is set to true on the last element of the stream.
  Stream<RpbListKeysResp> listKeys({@required List<int> bucket}) {
    RpbListKeysReq req = new RpbListKeysReq();
    req.bucket = bucket;
    return sendRequest<RpbListKeysResp>(
        requestCode: MessageCode.rpbListKeysReq,
        message: req,
        streamingCall: true);
  }

  /// Fetch a bucket’s properties.
  ///
  /// The bucket’s name [bucket] must be specified. The bucket type parameter [type] is optional. If it is not specified, the default bucket type will be used.
  ///
  /// This request will respond with an [RpbGetBucketResp] message, which returns the bucket’s properties through its nested [RpbBucketProps] message.
  /// Each RpbBucketProps message returns all of the properties associated with a particular bucket. Default values for bucket properties, as well as descriptions of all of the above properties, can be found in the [configuration file](https://docs.riak.com/riak/kv/2.2.3/configuring/reference/index.html#default-bucket-properties) documentation.
  /// It should be noted that the value of an RpbBucketProps message may include other message types, such as [RpbModFun] (specifying module-function pairs for bucket properties that require them) and [RpbCommitHook] (specifying the module-function pair and name of a commit hook).
  Future<RpbGetBucketResp> getBucketProperties(
      {@required List<int> bucket, List<int> type}) {
    RpbGetBucketReq req = new RpbGetBucketReq();
    req.bucket = bucket;
    if (type != null) req.type = type;
    return sendRequest<RpbGetBucketResp>(
            requestCode: MessageCode.rpbGetBucketReq, message: req)
        .last;
  }

  /// Sets the properties for a bucket.
  ///
  /// You must specify the name of the bucket [bucket] and include an [RpbBucketProps] message. More on that message type can be found in the [PBC Get Bucket Properties](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/get-bucket-props.1.html) documentation.
  /// You can also specify a [bucket type](https://docs.riak.com/riak/kv/2.2.3/developing/usage/bucket-types.1.html) using the [type] value. If you do not specify a bucket type, the default bucket type will be used by Riak.
  Future<void> setBucketProperties(
      {@required List<int> bucket,
      @required RpbBucketProps props,
      List<int> type}) {
    RpbSetBucketReq req = new RpbSetBucketReq();
    req.bucket = bucket;
    req.props = props;
    if (type != null) req.type = type;
    return sendRequest<void>(
            requestCode: MessageCode.rpbSetBucketReq, message: req)
        .last;
  }

  /// Request to reset the properties of a given bucket or bucket type.
  ///
  /// You must specify the name of the [bucket] and optionally a bucket type using the [type] value. If you do not specify a [bucket type](https://docs.riak.com/riak/kv/2.2.3/developing/usage/bucket-types.1.html), the default bucket type will be used by Riak.
  Future<void> resetBucketProperties(
      {@required List<int> bucket, List<int> type}) {
    RpbResetBucketReq req = new RpbResetBucketReq();
    req.bucket = bucket;
    if (type != null) req.type = type;
    return sendRequest<void>(
            requestCode: MessageCode.rpbResetBucketReq, message: req)
        .last;
  }

  /// Fetch an object from the specified bucket type/bucket/key location (specified by [bucket], [type], and [key], respectively). If the bucket type is not specified, the default bucket type will be used, as is the case for all messages sent to Riak that have the bucket type as an optional parameter.
  ///
  /// ### Optional Request Parameters
  /// Note on defaults and special values: All of the optional parameters below have default values determined on a per-bucket basis. Please refer to the documentation on [setting bucket properties](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/set-bucket-props.1.html) for more information.
  /// Furthermore, you can assign an integer value to the [r] and [pr] parameters, provided that that integer value is less than or equal to N, or a special value denoting one (4294967295-1), quorum (4294967295-2), all (4294967295-3), or default (4294967295-4).
  /// * [basic_quorum]:	Whether to return early in some failure cases, e.g. when r=1 and you get 2 errors and a success basic_quorum=true would return an error
  /// * [notfound_ok]:	Whether to treat not found responses as successful reads for the purposes of R
  /// * [if_modified]:	When a vclock is supplied as this option, the response will only return the object if the vclocks don’t match
  /// * [head]:	If set to true, Riak will return the object with the value(s) set as empty, which allows you to get the metadata without a potentially large value accompanying it
  /// * [deletedvclock]:	If set to true, Riak will return the tombstone’s vclock, if applicable
  /// * [timeout]:	The timeout duration, in milliseconds, after which Riak will return an error message
  /// * [sloppy_quorum]:	If this parameter is set to true, the next available node in the ring will accept requests if any primary node is unavailable
  ///
  /// ## Response
  /// The received [RpbGetResp] contains the value plus metadata entries for the object through the [content] property. If there are siblings, there will be more than one entry. If the key is not found, the content will be empty.
  /// The proeprty [vclock] is optional and represents the opaque vector clock that must be included in the RpbPutReq to resolve the siblings.
  /// If [if_modified] was specified in the request but the object has not been modified, [unchanged] will be set to true.
  ///
  /// ### RpbContent
  /// The [content] entries of the [RpbGetResp] hold the object value and any metadata. Below the structure of a [RpbContent] message is discussed, which is included in GET/PUT responses (RpbGetResp (above) and RpbPutResp (from [storeObject]), respectively).
  /// RpbContent message will always contain the binary value of the object. But it could also contain any of the following optional parameters:
  /// * [content_type]:	The content type of the object, e.g. text/plain or application/json
  /// * [charset]:	The character encoding of the object, e.g. utf-8
  /// * [content_encoding]:	The content encoding of the object, e.g. video/mp4
  /// * [vtag]:	The object’s vtag
  /// * [links]:	This parameter is associated with the now-deprecated link walking feature and should not be used by Riak clients
  /// * [last_mod]:	A timestamp for when the object was last modified, in [ISO 8601 time](http://en.wikipedia.org/wiki/ISO_8601)
  /// * [last_mod_usecs]:	A timestamp for when the object was last modified, in [Unix time](http://en.wikipedia.org/wiki/Unix_time)
  /// * [usermeta]:	This field stores user-specified key/value metadata pairs to be associated with the object. [RpbPair] messages used to send metadata of this sort are structured to a required [key] and an optional [value]. Notice that this means, both a key and value can be stored or, just a key. RpbPair messages are also used to attach [secondary indexes](https://docs.riak.com/riak/kv/2.2.3/developing/usage/secondary-indexes.1.html) to objects (in the optional indexes field).
  /// * [deleted]:	Whether the object has been deleted (i.e. whether a tombstone for the object has been found under the specified key)
  Future<RpbGetResp> fetchObject(
      {@required List<int> bucket,
      @required List<int> key,
      int r,
      int pr,
      bool basicQuorum,
      bool notfoundOk,
      List<int> ifModified,
      bool head,
      bool deletedvclock,
      int timeout,
      bool sloppyQuorum,
      int nVal,
      List<int> type}) {
    RpbGetReq req = new RpbGetReq();
    req.bucket = bucket;
    req.key = key;
    if (r != null) req.r = r;
    if (pr != null) req.pr = pr;
    if (basicQuorum != null) req.basicQuorum = basicQuorum;
    if (notfoundOk != null) req.notfoundOk = notfoundOk;
    if (ifModified != null) req.ifModified = ifModified;
    if (head != null) req.head = head;
    if (deletedvclock != null) req.deletedvclock = deletedvclock;
    if (timeout != null) req.timeout = timeout;
    if (sloppyQuorum != null) req.sloppyQuorum = sloppyQuorum;
    if (nVal != null) req.nVal = nVal;
    if (type != null) req.type = type;
    return sendRequest<RpbGetResp>(
            requestCode: MessageCode.rpbGetReq, message: req)
        .last;
  }

  /// Stores an object under the specified location, as determined by the intended [key], [bucket], and bucket [type]. A bucket must always be specified, whereas key and bucket type are optional. If no key is specified, Riak will assign a random key to the object. If no bucket type is assigned, Riak will assign default, which means that the default bucket configuration will be used. The [content] represents the new or updated contented of the object. It uses the same [RpbContent] message returned as part of an RpbGetResp message, documented in [fetchObject].
  ///
  /// ### Optional Request Parameters
  /// Note on defaults and special values: All of the optional parameters below have default values determined on a per-bucket basis. Please refer to the documentation on [setting bucket properties](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/set-bucket-props.1.html) for more information.
  /// Furthermore, you can assign an integer value to the [w], [dw], [pr], and [pw], provided that that integer value is less than or equal to N, or a special value denoting one (4294967295-1), quorum (4294967295-2), all (4294967295-3), or default (4294967295-4).
  /// * [key]:	The key to create/update. If not specified, Riak will generate a random key and return that key as part of the response to that request.
  /// * [vclock]:	Opaque vector clock provided by an earlier RpbGetResp</a> message. Omit if this is a new key or if you deliberately want to create a sibling.
  /// * [w]:	Write quorum, i.e. how many replicas to write to before returning a successful response
  /// * [dw]:	Durable write quorum, i.e. how many replicas to commit to durable storage before returning a successful response
  /// * [return_body]:	Whether to return the contents of the now-stored object. Defaults to false.
  /// * [pw]:	Primary write quorum, i.e. how many primary nodes must be up when the write is attempted
  /// * [return_head]:	Return the metadata for the now-stored object without returning the value of the object
  /// * [timeout]:	The timeout duration, in milliseconds, after which Riak will return an error message
  /// * [sloppy_quorum]:	If this parameter is set to true, the next available node in the ring will accept requests if any primary node is unavailable
  /// * [n_val]:	The number of nodes on which the value is to be stored
  /// The [if_not_modified], [if_none_match], and [asis] parameters are set only for messages sent between nodes in a Riak cluster and should not be set by Riak clients.
  ///
  /// ## Response
  /// If [return_body] is set to true on the PUT request, the [RpbPutResp] will contain the current object after the PUT completes, in [contents], as well as the object’s [causal context](https://docs.riak.com/riak/kv/2.2.3/learn/concepts/causal-context.1.html), in the [vclock] field. The [key] will be sent only if the server generated a random key for the object. If return_body is not set and no key is generated, the PUT response will be empty.
  Future<RpbPutResp> storeObject(
      {@required List<int> bucket,
      @required List<int> key,
      @required RpbContent content,
      List<int> vclock,
      int w,
      int dw,
      bool returnBody,
      int pw,
      bool ifNotModified,
      bool ifNoneMatch,
      bool returnHead,
      int timeout,
      bool asis,
      bool sloppyQuorum,
      int nVal,
      List<int> type}) {
    RpbPutReq req = new RpbPutReq();
    req.bucket = bucket;
    req.key = key;
    req.content = content;
    if (vclock != null) req.vclock = vclock;
    if (w != null) req.w = w;
    if (dw != null) req.dw = dw;
    if (returnBody != null) req.returnBody = returnBody;
    if (pw != null) req.pw = pw;
    if (ifNotModified != null) req.ifNotModified = ifNotModified;
    if (ifNoneMatch != null) req.ifNoneMatch = ifNoneMatch;
    if (returnHead != null) req.returnHead = returnHead;
    if (timeout != null) req.timeout = timeout;
    if (asis != null) req.asis = asis;
    if (sloppyQuorum != null) req.sloppyQuorum = sloppyQuorum;
    if (nVal != null) req.nVal = nVal;
    if (type != null) req.type = type;
    return sendRequest<RpbPutResp>(
            requestCode: MessageCode.rpbPutReq, message: req)
        .last;
  }

  /// Delete an object in the specified location.
  /// The required parameter [bucket] is the name of the bucket in which the object is stored, whereas the required [key] identifies the object in the bucket.
  ///
  /// ### Optional Request Parameters
  /// Note on defaults and special values: All of the optional parameters below have default values determined on a per-bucket basis. Please refer to the documentation on [setting bucket properties](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/set-bucket-props.1.html) for more information.
  /// Furthermore, you can assign an integer value to the [w], [dw], [pr], and [pw], provided that that integer value is less than or equal to N, or a special value denoting one (4294967295-1), quorum (4294967295-2), all (4294967295-3), or default (4294967295-4).
  /// * [rw]:	How many replicas to delete before returning a successful response
  /// * [r ]:	Read quorum, i.e. how many replicas need to agree when retrieving the object
  /// * [w]:		Write quorum, i.e. how many replicas to write to before returning a successful response
  /// * [pr]:	Primary read quorum, i.e. how many primary replicas need to be available when retrieving the object
  /// * [pw]:	Primary write quorum, i.e. how many primary nodes must be up when the write is attempted
  /// * [dw]:	Durable write quorum, i.e. how many replicas to commit to durable storage before returning a successful response
  /// * [timeout]:	The timeout duration, in milliseconds, after which Riak will return an error message
  /// * [vclock]:	Opaque vector clock provided by an earlier RpbGetResp message Used to prevent deleting of objects that have been modified since the last GET request (sent as a byte array)
  /// * [sloppy_quorum]:	If this parameter is set to true, the next available node in the ring will accept requests if any primary node is unavailable
  /// * [n_val]:	The number of nodes to which the delete request will be sent
  /// type 	The bucket types associated with the object. If the bucket type is not specified, the default bucket type will be used, as is the case for all messages sent to Riak that have the bucket type as an optional parameter.
  Future<void> deleteObject(
      {@required List<int> bucket,
      @required List<int> key,
      int rw,
      List<int> vclock,
      int r,
      int w,
      int pr,
      int pw,
      int dw,
      int timeout,
      bool sloppyQuorum,
      int nVal,
      List<int> type}) {
    RpbDelReq req = new RpbDelReq();
    req.bucket = bucket;
    req.key = key;
    if (rw != null) req.rw = rw;
    if (vclock != null) req.vclock = vclock;
    if (r != null) req.r = r;
    if (w != null) req.w = w;
    if (pr != null) req.pr = pr;
    if (pw != null) req.pw = pw;
    if (dw != null) req.dw = dw;
    if (timeout != null) req.timeout = timeout;
    if (sloppyQuorum != null) req.sloppyQuorum = sloppyQuorum;
    if (nVal != null) req.nVal = nVal;
    if (type != null) req.type = type;
    return sendRequest<void>(requestCode: MessageCode.rpbDelReq, message: req)
        .last;
  }

  /// Execute a MapReduce job.
  ///
  /// The required [request] denotes the MapReduce job, whereas the required [content_type] sets the encoding for the MapReduce job. MapReduce jobs can be encoded in two different ways: [application/json] for an JSON encoded MapRecude job or [application/x-erlang-binary] for an Erlang external term format. The JSON encoding is the same as in the [REST API](https://docs.riak.com/riak/kv/2.2.3/developing/usage/mapreduce.1.html#rest) and the external term format is the same as the [local Erlang API](https://docs.riak.com/riak/kv/2.2.3/developing/app-guide/advanced-mapreduce.1.html#erlang).
  ///
  /// The results of the MapReduce job is returned for each [phase] that generates a result, encoded in the same format the job was submitted in. Multiple response messages will be streamed followed by a final message at the end of the job. The [phase] property denotes the phase number of the MapReduce job. The [response] property is encoded with the [content_type] submitted. The property [done] is set to ture on the last response packet.
  Stream<RpbMapRedResp> mapReduce(
      {@required List<int> request, @required List<int> contentType}) {
    RpbMapRedReq req = new RpbMapRedReq();
    req.request = request;
    req.contentType = contentType;
    return sendRequest<RpbMapRedResp>(
        requestCode: MessageCode.rpbMapRedReq,
        message: req,
        streamingCall: true);
  }

  /// Request a set of keys that match a secondary index query.
  ///
  /// This requests required the name of the [bucket] in which the Data Type is stored and the name of the [index] to be queried. Additionaly, [qtype], representing the type of index query to be performed, is required. This can take either of the two possible values of the [IndexQueryType] enum: [eq] for an exact index match for the given key or [range] for a range query
  ///
  /// ### Optional Request Parameters
  /// * [key]:	The name of the index to be queried if qtype is set to eq
  /// * [range_min] and [range_max]:	The minimum and maximum values for a range query if qtype is set to range
  /// * [return_terms]:	If set to true, the response will include matched indexed values (for range queries only)
  /// * [stream]:	If set to true, keys matching the index query will be streamed to the client instead of waiting for [max_results] or the full result to be tabulated
  /// * [max_results]:	If pagination is turned on, the number of results to be returned to the client
  /// * [continuation]:	If set to true, values are returned in a paginated response
  /// * [timeout]:	The timeout duration, in milliseconds, after which Riak will return an error message
  /// * [type]:	The bucket type of the bucket that is being queried. If not set, the bucket type default will be used. Learn more about using bucket types.
  /// * [term_regex]:	If set to a regular expression (as a binary), a term filter will be applied to the index query
  /// * [pagination_sort]:	If set to true, paginated results will be sorted, first by index value, then by key
  ///
  /// ## Response
  /// The results of a Secondary Index query are returned as a repeating list of 0 or more keys that match the given request parameters. Here, [keys] is a  list of keys that match the index request. If [return_terms] is specified with range queries in the request, [results] is used to return matched index values as key/value pairs in [RpbPair] messages. More on RpbPair messages can be found in [fetchObject]. For paginated responses, [continuation] is used. When using [stream] in the request, [done] is set to true when the current stream is done (either [max_results] has been reached or there are no more results).
  Stream<RpbIndexResp> secondaryIndexes(
      {@required List<int> bucket,
      @required List<int> index,
      @required RpbIndexReq_IndexQueryType qtype,
      List<int> key,
      List<int> rangeMin,
      List<int> rangeMax,
      bool returnTerms,
      bool stream,
      int maxResults,
      List<int> continuation,
      int timeout,
      List<int> type,
      List<int> termRegex,
      bool paginationSort}) {
    RpbIndexReq req = new RpbIndexReq();
    req.bucket = bucket;
    req.index = index;
    req.qtype = qtype;
    if (key != null) req.key = key;
    if (rangeMin != null) req.rangeMin = rangeMin;
    if (rangeMax != null) req.rangeMax = rangeMax;
    if (returnTerms != null) req.returnTerms = returnTerms;
    if (stream != null) req.stream = stream;
    if (maxResults != null) req.maxResults = maxResults;
    if (continuation != null) req.continuation = continuation;
    if (timeout != null) req.timeout = timeout;
    if (type != null) req.type = type;
    if (termRegex != null) req.termRegex = termRegex;
    if (paginationSort != null) req.paginationSort = paginationSort;
    return sendRequest<RpbIndexResp>(
        requestCode: MessageCode.rpbIndexReq,
        message: req,
        streamingCall: true);
  }

  /// Send a Search request to retrieve a list of documents, along with a few stats.
  ///
  /// The required parameters [q] and [index] are the contents of the query and the name of the index to search.
  ///
  /// ### Optional Request Parameters
  /// * [rows]:	The maximum number of rows to return
  /// * [start]:	A start offset, i.e. the number of keys to skip before returning values
  /// * [sort]:	How the search results are to be sorted
  /// * [filter]:	Filters search with additional query scoped to inline fields
  /// * [df]:	Override the default_field setting in the schema file
  /// * [op]:	and or or, to override the default_op operation setting in the schema file
  /// * [fl]:	Return the fields limit
  /// * [presort]:	Presort. The options are key or score
  ///
  /// ## Response
  /// The results of a search query are returned as a repeating list of 0 or more [RpbSearchDocs]. RpbSearchDocs themselves are composed of 0 or more fields, which are key/value pairs (represended by [RpbPair], see [fetchObject]), that match the given request parameters. It also uses [max_score] to return the maximum search score and [num_found] to return the total number of values matched by this search.
  Future<RpbSearchQueryResp> search(
      {@required List<int> q,
      @required List<int> index,
      @required List<List<int>> fl,
      int rows,
      int start,
      List<int> sort,
      List<int> filter,
      List<int> df,
      List<int> op,
      List<int> presort}) {
    RpbSearchQueryReq req = new RpbSearchQueryReq();
    req.q = q;
    req.index = index;
    req.fl.addAll(fl);
    if (rows != null) req.rows = rows;
    if (start != null) req.start = start;
    if (sort != null) req.sort = sort;
    if (filter != null) req.filter = filter;
    if (df != null) req.df = df;
    if (op != null) req.op = op;
    if (presort != null) req.presort = presort;
    return sendRequest<RpbSearchQueryResp>(
            requestCode: MessageCode.rpbSearchQueryReq, message: req)
        .last;
  }

  /// Check if the server is alive.
  Future<void> ping() {
    return sendRequest<void>(requestCode: MessageCode.rpbPingReq).last;
  }

  /// Requests a message from Riak that contains two pieces of information about the server: the [name] of the node and the [server_version] of Riak in use on that node.
  Future<RpbGetServerInfoResp> serverInfo() {
    return sendRequest<RpbGetServerInfoResp>(
            requestCode: MessageCode.rpbGetServerInfoReq)
        .last;
  }

  /// Gets the bucket properties associated with a bucket type.
  ///
  /// Only the [name] of the bucket type needs to be specified.
  ///
  /// Then, a [RpbGetBucketResp] (documented in [getBucketProperties]) is returned.
  Future<RpbGetBucketResp> getBucketType({@required List<int> type}) {
    RpbGetBucketTypeReq req = new RpbGetBucketTypeReq();
    req.type = type;
    return sendRequest<RpbGetBucketResp>(
            requestCode: MessageCode.rpbGetBucketTypeReq, message: req)
        .last;
  }

  /// Assigns a set of bucket properties to a bucket type.
  ///
  /// The required [type] field specifies the name of the bucket type as a binary. The requried [props] field must contain a [RpbBucketProps].
  Future<void> setBucketType(
      {@required RpbBucketProps props, @required List<int> type}) {
    RpbSetBucketTypeReq req = new RpbSetBucketTypeReq();
    req.type = type;
    req.props = props;
    return sendRequest<void>(
            requestCode: MessageCode.rpbSetBucketTypeReq, message: req)
        .last;
  }

  /// The equivalent of RpbGetReq for Riak Data Types. This request results in a DtFetchResp message.
  ///
  /// The required [bucket] is the name of the bucket in which the Data Type is stored. The required [key] identifies the locatiom where the Data Type is stored. The requried [type] represents the [bucket types](https://docs.riak.com/riak/kv/2.2.3/using/cluster-operations/bucket-types.1.html) of the bucket in which the Data Type is stored, not the type of Data Type (i.e. counter, set, or map).
  ///
  /// ### Optional Request Parameters
  /// Note on defaults and special values: All of the optional parameters below have default values determined on a per-bucket basis. Please refer to the documentation on [setting bucket properties](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/set-bucket-props.1.html) for more information.
  /// Furthermore, you can assign an integer value to the [r] and [pr], provided that that integer value is less than or equal to N, or a special value denoting one (4294967295-1), quorum (4294967295-2), all (4294967295-3), or default (4294967295-4).
  /// * [r]:	Read quorum, i.e. how many replicas need to agree when retrieving the object
  /// * [pr]:	Primary read quorum, i.e. how many primary replicas need to be available when retrieving the object
  /// * [basic_quorum]:	Whether to return early in some failure cases, e.g. when r=1 and you get 2 errors and a success basic_quorum=true would return an error
  /// * [notfound_ok]:	Whether to treat not found responses as successful reads for the purposes of R
  /// * [timeout]:	The timeout duration, in milliseconds, after which Riak will return an error message
  /// * [sloppy_quorum]:	If this parameter is set to true, the next available node in the ring will accept requests if any primary node is unavailable
  /// * [n_val]:	The number of nodes to which the delete request will be sent
  /// * [include_context]:	If this parameter is set to true, the Data Type’s opaque “context” will be returned to the client
  ///
  /// ## Response
  /// The response to a fetch request is a [DtFetchResp] message.
  /// If the [include_context] option was specified in the request, an opaque [context] value will be returned along with the user-readable data. When sending an update request, the client should send this context as well, just as one would send a vclock for standard KV updates.
  ///
  /// The type of the Data Type is specified in the [type] field, and must be one of the three possible values of the DataType enum (COUNTER, SET, or MAP).
  ///
  /// The current value of the Data Type is contained in the [value] field, which itself contains a [DtValue] message. The meaning of the [counter_value] property of the DtValue message depends on the queried Data Type: if the Data Type is a counter, it will return an integer value for the counter; if it is a set, it will return the sets current value, in bytes, if it is a map it will return a [MapEntry] message.
  Future<DtFetchResp> dataTypeFetch(
      {@required List<int> bucket,
      @required List<int> key,
      @required List<int> type,
      int r,
      int pr,
      bool basicQuorum,
      bool notfoundOk,
      int timeout,
      bool sloppyQuorum,
      int nVal,
      bool includeContext}) {
    DtFetchReq req = new DtFetchReq();
    req.bucket = bucket;
    req.key = key;
    req.type = type;
    if (r != null) req.r = r;
    if (pr != null) req.pr = pr;
    if (basicQuorum != null) req.basicQuorum = basicQuorum;
    if (notfoundOk != null) req.notfoundOk = notfoundOk;
    if (timeout != null) req.timeout = timeout;
    if (sloppyQuorum != null) req.sloppyQuorum = sloppyQuorum;
    if (nVal != null) req.nVal = nVal;
    if (includeContext != null) req.includeContext = includeContext;
    return sendRequest<DtFetchResp>(
            requestCode: MessageCode.dtFetchReq, message: req)
        .last;
  }

  /// A request to update the value of a Riak Data Type.
  ///
  /// A dataTypeStore request requires that you specify the location of the Data Type in Riak. This happens through the [bucket] parameter which represents the buckets name and the [type] parameter. The [type] parameter represents the bucket type of the bucket in which the Data Type is stored, not the type of Data Type (i.e. counter, set, or map; [learn more about using bucket types](https://docs.riak.com/riak/kv/2.2.3/using/cluster-operations/bucket-types.1.html)).
  /// Also required is a [DtOp] message that specifies which operation is to be performed, depending on whether the Data Type being updated is a counter, set, or map. A [DtOp] must have one of its [counter_op], [set_op] or [map_op] properties set. The [counter_op] is a [CounterOp] documented [here](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/dt-counter-store/index.html), the [set_op] is a [SetOp] documented [here](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/dt-set-store/index.html), and finally, the [map_op] is a MapOp as documented [here](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/dt-map-store/index.html).
  ///
  /// ### Optional Request Parameters
  /// * [key]:	The key where the Data Type is stored. If not specified, Riak will assign a random key and return that key to the client if return_body is set to true.
  /// * [context]:	The opaque binary context that informs Riak which version of a data type the client has seen, analogous to vector clocks
  /// * [w]:	Write quorum, i.e. how many replicas to write to before returning a successful response
  /// * [dw]:	Durable write quorum, i.e. how many replicas to commit to durable storage before returning a successful response
  /// * [pw]:	Primary write quorum, i.e. how many primary nodes must be up when the write is attempted
  /// * [return_body]:	Whether to return the contents of the stored object. Defaults to false.
  /// * [timeout]:	The timeout duration, in milliseconds, after which Riak will return an error message
  /// * [sloppy_quorum]:	If this parameter is set to true, the next available node in the ring will accept requests if any primary node is unavailable
  /// * [n_val]:	The number of nodes on which the value is to be stored
  /// * [include_context]:	If [return_body] is set to true, the Data Type’s opaque [context] will be returned to the client when the DtUpdateResp is sent to the client.
  ///
  /// ## Response
  /// The response to a Data Type update request is analogous to RpbPutResp for KV operations. If the [return_body] is set in the update request message (as explained above), the message will include the opaque [context] of the Data Type and the new value of the Data Type after the update has completed (depending on whether the Data Type is a counter, set, or map). If no [key] was specified in the update request, it will include the Riak-assigned key.
  /// Assuming [return_body] is set to true: if a counter is updated, the response will include an integer as the [counter_value]; if a set is updated, a list of binaries will be return as the [set_value]; and if a map is updated, the returned [map_value] will be a MapEntry message.
  Future<DtUpdateResp> dataTypeStore(
      {@required List<int> bucket,
      @required List<int> type,
      @required DtOp op,
      List<int> key,
      int w,
      int dw,
      int pw,
      bool returnBody,
      int timeout,
      bool sloppyQuorum,
      int nVal,
      bool includeContext}) {
    DtUpdateReq req = new DtUpdateReq();
    req.bucket = bucket;
    req.type = type;
    req.op = op;
    if (key != null) req.key = key;
    if (w != null) req.w = w;
    if (dw != null) req.dw = dw;
    if (pw != null) req.pw = pw;
    if (returnBody != null) req.returnBody = returnBody;
    if (timeout != null) req.timeout = timeout;
    if (sloppyQuorum != null) req.sloppyQuorum = sloppyQuorum;
    if (nVal != null) req.nVal = nVal;
    if (includeContext != null) req.includeContext = includeContext;
    return sendRequest<DtUpdateResp>(
            requestCode: MessageCode.dtUpdateReq, message: req)
        .last;
  }

  /// Retrieve a search index from Riak Search.
  ///
  /// The optional parameter [name] denotes the index to fetch as binary.
  /// If it is speficied, zero or one [RpbYokozunaIndex] objects are contained in the [index] list of the resulting [RpbYokozunaIndexGetResp] object. If name is omitted, the [index] list will contain all indexes. For more information on [RpbYokozunaIndex] objects, see [yokozunaIndexPut].
  Future<RpbYokozunaIndexGetResp> yokozunaIndexGet({List<int> name}) {
    RpbYokozunaIndexGetReq req = new RpbYokozunaIndexGetReq();
    if (name != null) req.name = name;
    return sendRequest<RpbYokozunaIndexGetResp>(
            requestCode: MessageCode.rpbYokozunaIndexGetReq, message: req)
        .last;
  }

  /// Create a new index or modify an existing index.
  ///
  /// Each request must contain a [RpbYokozunaIndex] message providing information about the index being stored. Each message specifying an index must include the index’s [name] as a binary. Optionally, you can specify a [schema] name and/or an [n_val], i.e. the number of nodes on which the index is stored (for GET requests) or on which you wish the index to be stored (for PUT requests). An index’s n_val must match the associated bucket’s n_val.
  Future<void> yokozunaIndexPut({@required RpbYokozunaIndex index}) {
    RpbYokozunaIndexPutReq req = new RpbYokozunaIndexPutReq();
    req.index = index;
    return sendRequest<void>(
            requestCode: MessageCode.rpbYokozunaIndexPutReq, message: req)
        .last;
  }

  /// Delete a search index.
  ///
  /// The required [name] parameter is the name of the index to delete, as a binary.
  Future<void> yokozunaIndexDelete({@required List<int> name}) {
    RpbYokozunaIndexDeleteReq req = new RpbYokozunaIndexDeleteReq();
    req.name = name;
    return sendRequest<void>(
            requestCode: MessageCode.rpbYokozunaIndexDeleteReq, message: req)
        .last;
  }

  /// Fetch a search schema from Riak Search.
  ///
  /// In a request message, you only need to specify the [name] of the schema as a binary.
  ///
  /// The response message will include a [RpbYokozunaSchema] structure, which then contains the schemas [name] and its Solr search schema [content] as XML.
  Future<RpbYokozunaSchemaGetResp> yokozunaSchemaGet(
      {@required List<int> name}) {
    RpbYokozunaSchemaGetReq req = new RpbYokozunaSchemaGetReq();
    req.name = name;
    return sendRequest<RpbYokozunaSchemaGetResp>(
            requestCode: MessageCode.rpbYokozunaSchemaGetReq, message: req)
        .last;
  }

  /// Create a new Solr search schema.
  ///
  /// Each request must contain a [RpbYokozunaSchema] object, [schema], which is documented in [yokozunaSchemaGet].
  Future<void> yokozunaSchemaPut({@required RpbYokozunaSchema schema}) {
    RpbYokozunaSchemaPutReq req = new RpbYokozunaSchemaPutReq();
    req.schema = schema;
    return sendRequest<void>(
            requestCode: MessageCode.rpbYokozunaSchemaPutReq, message: req)
        .last;
  }

  /// Sends a [user] and [password] to Riak as part of an authentication request. Both values are sent as binaries. For more on authentication, see the documentation on [Authentication and Authorization](https://docs.riak.com/riak/kv/2.2.3/using/security/basics.1.html).
  Future<void> auth({@required List<int> user, @required List<int> password}) {
    RpbAuthReq req = new RpbAuthReq();
    req.user = user;
    req.password = password;
    return sendRequest<void>(requestCode: MessageCode.rpbAuthReq, message: req)
        .last;
  }

  /// Deprecation notice: The use of client ids in conflict resolution is now deprecated in Riak.
  ///
  /// Set the unique client [id] for this connection. Setting a id will reduce vector clock bloat.
  Future<void> setClientId({@required List<int> clientId}) {
    RpbSetClientIdReq req = new RpbSetClientIdReq();
    req.clientId = clientId;
    return sendRequest<void>(
            requestCode: MessageCode.rpbSetClientIdReq, message: req)
        .last;
  }

  /// Deprecation notice: The use of client ids in conflict resolution is now deprecated in Riak.
  ///
  /// Get the client id used for this connection. Client ids are used for conflict resolution and each unique actor in the system should be assigned one. A client id is assigned randomly when the socket is connected and can be changed using [setClientId].
  Future<RpbGetClientIdResp> getClientId() {
    return sendRequest<RpbGetClientIdResp>(
            requestCode: MessageCode.rpbGetClientIdReq)
        .last;
  }
}
