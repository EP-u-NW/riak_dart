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
    return sendRequest<RpbListBucketsResp>(requestCode: rpbListBucketsReq).last;
  }

  Stream<RpbListKeysResp> listKeys({@required List<int> bucket}) {
    RpbListKeysReq req = new RpbListKeysReq();
    req.bucket = bucket;
    return sendRequest<RpbListKeysResp>(
        requestCode: rpbListKeysReq, message: req, streamingCall: true);
  }

  Future<RpbGetBucketResp> getBucketProperties(
      {@required List<int> bucket, List<int> type}) {
    RpbGetBucketReq req = new RpbGetBucketReq();
    req.bucket = bucket;
    req.type = type;
    return sendRequest<RpbGetBucketResp>(
            requestCode: rpbGetBucketReq, message: req)
        .last;
  }

  Future<void> setBucketProperties(
      {@required List<int> bucket,
      @required RpbBucketProps props,
      List<int> type}) {
    RpbSetBucketReq req = new RpbSetBucketReq();
    req.bucket = bucket;
    req.props = props;
    req.type = type;
    return sendRequest<void>(requestCode: rpbSetBucketReq, message: req).last;
  }

  Future<void> resetBucketProperties(
      {@required List<int> bucket, List<int> type}) {
    RpbResetBucketReq req = new RpbResetBucketReq();
    req.bucket = bucket;
    req.type = type;
    return sendRequest<void>(requestCode: rpbResetBucketReq, message: req).last;
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
    req.r = r;
    req.pr = pr;
    req.basicQuorum = basicQuorum;
    req.notfoundOk = notfoundOk;
    req.ifModified = ifModified;
    req.head = head;
    req.deletedvclock = deletedvclock;
    req.timeout = timeout;
    req.sloppyQuorum = sloppyQuorum;
    req.nVal = nVal;
    req.type = type;
    return sendRequest<RpbGetResp>(requestCode: rpbGetReq, message: req).last;
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
    req.vclock = vclock;
    req.w = w;
    req.dw = dw;
    req.returnBody = returnBody;
    req.pw = pw;
    req.ifNotModified = ifNotModified;
    req.ifNoneMatch = ifNoneMatch;
    req.returnHead = returnHead;
    req.timeout = timeout;
    req.asis = asis;
    req.sloppyQuorum = sloppyQuorum;
    req.nVal = nVal;
    req.type = type;
    return sendRequest<RpbPutResp>(requestCode: rpbPutReq, message: req).last;
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
    req.rw = rw;
    req.vclock = vclock;
    req.r = r;
    req.w = w;
    req.pr = pr;
    req.pw = pw;
    req.dw = dw;
    req.timeout = timeout;
    req.sloppyQuorum = sloppyQuorum;
    req.nVal = nVal;
    req.type = type;
    return sendRequest<void>(requestCode: rpbDelReq, message: req).last;
  }

  Stream<RpbMapRedResp> mapReduce(
      {@required List<int> request, @required List<int> contentType}) {
    RpbMapRedReq req = new RpbMapRedReq();
    req.request = request;
    req.contentType = contentType;
    return sendRequest<RpbMapRedResp>(
        requestCode: rpbMapRedReq, message: req, streamingCall: true);
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
    req.key = key;
    req.rangeMin = rangeMin;
    req.rangeMax = rangeMax;
    req.returnTerms = returnTerms;
    req.stream = stream;
    req.maxResults = maxResults;
    req.continuation = continuation;
    req.timeout = timeout;
    req.type = type;
    req.termRegex = termRegex;
    req.paginationSort = paginationSort;
    return sendRequest<RpbIndexResp>(
        requestCode: rpbIndexReq, message: req, streamingCall: true);
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
    req.rows = rows;
    req.start = start;
    req.sort = sort;
    req.filter = filter;
    req.df = df;
    req.op = op;
    req.presort = presort;
    return sendRequest<RpbSearchQueryResp>(
            requestCode: rpbSearchQueryReq, message: req)
        .last;
  }

  Future<void> ping() {
    return sendRequest<void>(requestCode: rpbPingReq).last;
  }

  Future<RpbGetServerInfoResp> serverInfo() {
    return sendRequest<RpbGetServerInfoResp>(requestCode: rpbGetServerInfoReq)
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
    req.r = r;
    req.pr = pr;
    req.basicQuorum = basicQuorum;
    req.notfoundOk = notfoundOk;
    req.timeout = timeout;
    req.sloppyQuorum = sloppyQuorum;
    req.nVal = nVal;
    req.includeContext = includeContext;
    return sendRequest<DtFetchResp>(requestCode: dtFetchReq, message: req).last;
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
    req.key = key;
    req.w = w;
    req.dw = dw;
    req.pw = pw;
    req.returnBody = returnBody;
    req.timeout = timeout;
    req.sloppyQuorum = sloppyQuorum;
    req.nVal = nVal;
    req.includeContext = includeContext;
    return sendRequest<DtUpdateResp>(requestCode: dtUpdateReq, message: req)
        .last;
  }

  Future<RpbYokozunaIndexGetResp> yokozunaGetIndex({List<int> name}) {
    RpbYokozunaIndexGetReq req = new RpbYokozunaIndexGetReq();
    req.name = name;
    return sendRequest<RpbYokozunaIndexGetResp>(
            requestCode: rpbYokozunaIndexGetReq, message: req)
        .last;
  }

  Future<void> yokozunaPutIndex({@required RpbYokozunaIndex index}) {
    RpbYokozunaIndexPutReq req = new RpbYokozunaIndexPutReq();
    req.index = index;
    return sendRequest<void>(requestCode: rpbYokozunaIndexPutReq, message: req)
        .last;
  }

  Future<void> yokozunaDeleteIndex({@required List<int> name}) {
    RpbYokozunaIndexDeleteReq req = new RpbYokozunaIndexDeleteReq();
    req.name = name;
    return sendRequest<void>(
            requestCode: rpbYokozunaIndexDeleteReq, message: req)
        .last;
  }

  Future<RpbYokozunaSchemaGetResp> yokozunaSchemaGet(
      {@required List<int> name}) {
    RpbYokozunaSchemaGetReq req = new RpbYokozunaSchemaGetReq();
    req.name = name;
    return sendRequest<RpbYokozunaSchemaGetResp>(
            requestCode: rpbYokozunaSchemaGetReq, message: req)
        .last;
  }

  Future<void> yokozunaSchemaPut({@required RpbYokozunaSchema schema}) {
    RpbYokozunaSchemaPutReq req = new RpbYokozunaSchemaPutReq();
    req.schema = schema;
    return sendRequest<void>(requestCode: rpbYokozunaSchemaPutReq, message: req)
        .last;
  }

  Future<void> auth({@required List<int> user, @required List<int> password}) {
    RpbAuthReq req = new RpbAuthReq();
    req.user = user;
    req.password = password;
    return sendRequest<void>(requestCode: rpbAuthReq, message: req).last;
  }

  Future<void> setClientId({@required List<int> clientId}) {
    RpbSetClientIdReq req = new RpbSetClientIdReq();
    req.clientId = clientId;
    return sendRequest<void>(requestCode: rpbSetClientIdReq, message: req).last;
  }

  Future<RpbGetClientIdResp> getClientId() {
    return sendRequest<RpbGetClientIdResp>(requestCode: rpbGetClientIdReq).last;
  }
}
