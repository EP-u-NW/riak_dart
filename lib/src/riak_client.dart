import 'package:meta/meta.dart';
import 'messages.dart';
import 'dart:io';
import 'abstract_client.dart';

class RiakClient extends AbstractClient {
  RiakClient._(Socket socket) : super(socket);

  static Future<RiakClient> connect(
      {@required dynamic host,
      int port = 8087,
      dynamic sourceAddress,
      Duration timeout}) async {
    return new RiakClient._(await Socket.connect(host, port,
        sourceAddress: sourceAddress, timeout: timeout));
  }

  Future<RpbListBucketsResp> listBuckets() {
    return sendRequest<RpbListBucketsResp>(
            requestCode: MessageCode.rpbListBucketsReq)
        .last;
  }

  Stream<RpbListKeysResp> listKeys({@required List<int> bucket}) {
    RpbListKeysReq req = new RpbListKeysReq();
    req.bucket = bucket;
    return sendRequest<RpbListKeysResp>(
        requestCode: MessageCode.rpbListKeysReq,
        message: req,
        streamingCall: true);
  }

  Future<RpbGetBucketResp> getBucketProperties(
      {@required List<int> bucket, List<int> type}) {
    RpbGetBucketReq req = new RpbGetBucketReq();
    req.bucket = bucket;
    if (type != null) req.type = type;
    return sendRequest<RpbGetBucketResp>(
            requestCode: MessageCode.rpbGetBucketReq, message: req)
        .last;
  }

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

  Future<RpbGetBucketResp> getBucketTypeProperties({@required List<int> type}) {
    RpbGetBucketTypeReq req = new RpbGetBucketTypeReq();
    req.type = type;
    return sendRequest<RpbGetBucketResp>(
            requestCode: MessageCode.rpbGetBucketTypeReq, message: req)
        .last;
  }

  Future<void> setBucketTypeProperties(
      {@required RpbBucketProps props, @required List<int> type}) {
    RpbSetBucketTypeReq req = new RpbSetBucketTypeReq();
    req.type = type;
    req.props = props;
    return sendRequest<void>(
            requestCode: MessageCode.rpbSetBucketTypeReq, message: req)
        .last;
  }

  Future<void> resetBucketProperties(
      {@required List<int> bucket, List<int> type}) {
    RpbResetBucketReq req = new RpbResetBucketReq();
    req.bucket = bucket;
    if (type != null) req.type = type;
    return sendRequest<void>(
            requestCode: MessageCode.rpbResetBucketReq, message: req)
        .last;
  }

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

  Future<void> ping() {
    return sendRequest<void>(requestCode: MessageCode.rpbPingReq).last;
  }

  Future<RpbGetServerInfoResp> serverInfo() {
    return sendRequest<RpbGetServerInfoResp>(
            requestCode: MessageCode.rpbGetServerInfoReq)
        .last;
  }

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

  Future<RpbYokozunaIndexGetResp> yokozunaGetIndex({List<int> name}) {
    RpbYokozunaIndexGetReq req = new RpbYokozunaIndexGetReq();
    if (name != null) req.name = name;
    return sendRequest<RpbYokozunaIndexGetResp>(
            requestCode: MessageCode.rpbYokozunaIndexGetReq, message: req)
        .last;
  }

  Future<void> yokozunaPutIndex({@required RpbYokozunaIndex index}) {
    RpbYokozunaIndexPutReq req = new RpbYokozunaIndexPutReq();
    req.index = index;
    return sendRequest<void>(
            requestCode: MessageCode.rpbYokozunaIndexPutReq, message: req)
        .last;
  }

  Future<void> yokozunaDeleteIndex({@required List<int> name}) {
    RpbYokozunaIndexDeleteReq req = new RpbYokozunaIndexDeleteReq();
    req.name = name;
    return sendRequest<void>(
            requestCode: MessageCode.rpbYokozunaIndexDeleteReq, message: req)
        .last;
  }

  Future<RpbYokozunaSchemaGetResp> yokozunaSchemaGet(
      {@required List<int> name}) {
    RpbYokozunaSchemaGetReq req = new RpbYokozunaSchemaGetReq();
    req.name = name;
    return sendRequest<RpbYokozunaSchemaGetResp>(
            requestCode: MessageCode.rpbYokozunaSchemaGetReq, message: req)
        .last;
  }

  Future<void> yokozunaSchemaPut({@required RpbYokozunaSchema schema}) {
    RpbYokozunaSchemaPutReq req = new RpbYokozunaSchemaPutReq();
    req.schema = schema;
    return sendRequest<void>(
            requestCode: MessageCode.rpbYokozunaSchemaPutReq, message: req)
        .last;
  }

  Future<void> auth({@required List<int> user, @required List<int> password}) {
    RpbAuthReq req = new RpbAuthReq();
    req.user = user;
    req.password = password;
    return sendRequest<void>(requestCode: MessageCode.rpbAuthReq, message: req)
        .last;
  }

  Future<void> setClientId({@required List<int> clientId}) {
    RpbSetClientIdReq req = new RpbSetClientIdReq();
    req.clientId = clientId;
    return sendRequest<void>(
            requestCode: MessageCode.rpbSetClientIdReq, message: req)
        .last;
  }

  Future<RpbGetClientIdResp> getClientId() {
    return sendRequest<RpbGetClientIdResp>(
            requestCode: MessageCode.rpbGetClientIdReq)
        .last;
  }
}
