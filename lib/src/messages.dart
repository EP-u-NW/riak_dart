import 'package:protobuf/protobuf.dart';

import 'generated_protobuf/riak.pbserver.dart';
import 'generated_protobuf/riak_dt.pbserver.dart';
import 'generated_protobuf/riak_kv.pbserver.dart';
import 'generated_protobuf/riak_search.pbserver.dart';
import 'generated_protobuf/riak_yokozuna.pbserver.dart';
import 'generated_protobuf/riak_ts.pbserver.dart';

export 'generated_protobuf/riak.pbserver.dart';
export 'generated_protobuf/riak_dt.pbserver.dart';
export 'generated_protobuf/riak_kv.pbserver.dart';
export 'generated_protobuf/riak_search.pbserver.dart';
export 'generated_protobuf/riak_yokozuna.pbserver.dart';
export 'generated_protobuf/riak_ts.pbserver.dart';

typedef GeneratedMessage MessageBuilder(List<int> bytes);

GeneratedMessage _nullBuilder(List<int> bytes) => null;

final Map<int, MessageBuilder> builders = <int, MessageBuilder>{
  rpbErrorResp: (List<int> bytes) => RpbErrorResp.fromBuffer(bytes),
  rpbPingReq: _nullBuilder,
  rpbPingResp: _nullBuilder,
  rpbGetClientIdReq: _nullBuilder,
  rpbGetClientIdResp: (List<int> bytes) => RpbGetClientIdResp.fromBuffer(bytes),
  rpbSetClientIdReq: (List<int> bytes) => RpbSetClientIdReq.fromBuffer(bytes),
  rpbSetClientIdResp: _nullBuilder,
  rpbGetServerInfoReq: _nullBuilder,
  rpbGetServerInfoResp: (List<int> bytes) =>
      RpbGetServerInfoResp.fromBuffer(bytes),
  rpbGetReq: (List<int> bytes) => RpbGetReq.fromBuffer(bytes),
  rpbGetResp: (List<int> bytes) => RpbGetResp.fromBuffer(bytes),
  rpbPutReq: (List<int> bytes) => RpbPutReq.fromBuffer(bytes),
  rpbPutResp: (List<int> bytes) => RpbPutResp.fromBuffer(bytes),
  rpbDelReq: (List<int> bytes) => RpbDelReq.fromBuffer(bytes),
  rpbDelResp: _nullBuilder,
  rpbListBucketsReq: (List<int> bytes) => RpbListBucketsReq.fromBuffer(bytes),
  rpbListBucketsResp: (List<int> bytes) => RpbListBucketsResp.fromBuffer(bytes),
  rpbListKeysReq: (List<int> bytes) => RpbListKeysReq.fromBuffer(bytes),
  rpbListKeysResp: (List<int> bytes) => RpbListKeysResp.fromBuffer(bytes),
  rpbGetBucketReq: (List<int> bytes) => RpbGetBucketReq.fromBuffer(bytes),
  rpbGetBucketResp: (List<int> bytes) => RpbGetBucketResp.fromBuffer(bytes),
  rpbSetBucketReq: (List<int> bytes) => RpbSetBucketReq.fromBuffer(bytes),
  rpbSetBucketResp: _nullBuilder,
  rpbMapRedReq: (List<int> bytes) => RpbMapRedReq.fromBuffer(bytes),
  rpbMapRedResp: (List<int> bytes) => RpbMapRedResp.fromBuffer(bytes),
  rpbIndexReq: (List<int> bytes) => RpbIndexReq.fromBuffer(bytes),
  rpbIndexResp: (List<int> bytes) => RpbIndexResp.fromBuffer(bytes),
  rpbSearchQueryReq: (List<int> bytes) => RpbSearchQueryReq.fromBuffer(bytes),
  rpbSearchQueryResp: (List<int> bytes) => RpbSearchQueryResp.fromBuffer(bytes),
  rpbResetBucketReq: (List<int> bytes) => RpbResetBucketReq.fromBuffer(bytes),
  rpbResetBucketResp: _nullBuilder,
  rpbGetBucketTypeReq: (List<int> bytes) =>
      RpbGetBucketTypeReq.fromBuffer(bytes),
  rpbSetBucketTypeReq: (List<int> bytes) =>
      RpbSetBucketTypeReq.fromBuffer(bytes),
  rpbGetBucketKeyPreflistReq: (List<int> bytes) =>
      RpbGetBucketKeyPreflistReq.fromBuffer(bytes),
  rpbGetBucketKeyPreflistResp: (List<int> bytes) =>
      RpbGetBucketKeyPreflistResp.fromBuffer(bytes),
  rpbCSBucketReq: (List<int> bytes) => RpbCSBucketReq.fromBuffer(bytes),
  rpbCSBucketResp: (List<int> bytes) => RpbCSBucketResp.fromBuffer(bytes),
  rpbIndexBodyResp: (List<int> bytes) => RpbIndexBodyResp.fromBuffer(bytes),
  rpbCounterUpdateReq: (List<int> bytes) =>
      RpbCounterUpdateReq.fromBuffer(bytes),
  rpbCounterUpdateResp: (List<int> bytes) =>
      RpbCounterUpdateResp.fromBuffer(bytes),
  rpbCounterGetReq: (List<int> bytes) => RpbCounterGetReq.fromBuffer(bytes),
  rpbCounterGetResp: (List<int> bytes) => RpbCounterGetResp.fromBuffer(bytes),
  rpbYokozunaIndexGetReq: (List<int> bytes) =>
      RpbYokozunaIndexGetReq.fromBuffer(bytes),
  rpbYokozunaIndexGetResp: (List<int> bytes) =>
      RpbYokozunaIndexGetResp.fromBuffer(bytes),
  rpbYokozunaIndexPutReq: (List<int> bytes) =>
      RpbYokozunaIndexPutReq.fromBuffer(bytes),
  rpbYokozunaIndexDeleteReq: (List<int> bytes) =>
      RpbYokozunaIndexDeleteReq.fromBuffer(bytes),
  rpbYokozunaSchemaGetReq: (List<int> bytes) =>
      RpbYokozunaSchemaGetReq.fromBuffer(bytes),
  rpbYokozunaSchemaGetResp: (List<int> bytes) =>
      RpbYokozunaSchemaGetResp.fromBuffer(bytes),
  rpbYokozunaSchemaPutReq: (List<int> bytes) =>
      RpbYokozunaSchemaPutReq.fromBuffer(bytes),
  rpbCoverageReq: (List<int> bytes) => RpbCoverageReq.fromBuffer(bytes),
  rpbCoverageResp: (List<int> bytes) => RpbCoverageResp.fromBuffer(bytes),
  dtFetchReq: (List<int> bytes) => DtFetchReq.fromBuffer(bytes),
  dtFetchResp: (List<int> bytes) => DtFetchResp.fromBuffer(bytes),
  dtUpdateReq: (List<int> bytes) => DtUpdateReq.fromBuffer(bytes),
  dtUpdateResp: (List<int> bytes) => DtUpdateResp.fromBuffer(bytes),
  tsQueryReq: (List<int> bytes) => TsQueryReq.fromBuffer(bytes),
  tsQueryResp: (List<int> bytes) => TsQueryResp.fromBuffer(bytes),
  tsPutReq: (List<int> bytes) => TsPutReq.fromBuffer(bytes),
  tsPutResp: (List<int> bytes) => TsPutResp.fromBuffer(bytes),
  tsDelReq: (List<int> bytes) => TsDelReq.fromBuffer(bytes),
  tsDelResp: (List<int> bytes) => TsDelResp.fromBuffer(bytes),
  tsGetReq: (List<int> bytes) => TsGetReq.fromBuffer(bytes),
  tsGetResp: (List<int> bytes) => TsGetResp.fromBuffer(bytes),
  tsListKeysReq: (List<int> bytes) => TsListKeysReq.fromBuffer(bytes),
  tsListKeysResp: (List<int> bytes) => TsListKeysResp.fromBuffer(bytes),
  tsCoverageReq: (List<int> bytes) => TsCoverageReq.fromBuffer(bytes),
  tsCoverageResp: (List<int> bytes) => TsCoverageResp.fromBuffer(bytes),
  tsCoverageEntry: (List<int> bytes) => TsCoverageEntry.fromBuffer(bytes),
  tsRange: (List<int> bytes) => TsRange.fromBuffer(bytes),
  tsTtbMsg: _nullBuilder, //FIXME
  rpbAuthReq: (List<int> bytes) => RpbAuthReq.fromBuffer(bytes),
  rpbAuthResp: _nullBuilder,
  rpbStartTls: _nullBuilder
};

const Map<int, int> expectedResponseTypes = const <int, int>{
  rpbPingReq: rpbPingResp,
  rpbGetClientIdReq: rpbGetClientIdResp,
  rpbSetClientIdReq: rpbSetClientIdResp,
  rpbGetServerInfoReq: rpbGetServerInfoResp,
  rpbGetReq: rpbGetResp,
  rpbPutReq: rpbPutResp,
  rpbDelReq: rpbDelResp,
  rpbListBucketsReq: rpbListBucketsResp,
  rpbListKeysReq: rpbListKeysResp,
  rpbGetBucketReq: rpbGetBucketResp,
  rpbSetBucketReq: rpbSetBucketResp,
  rpbMapRedReq: rpbMapRedResp,
  rpbIndexReq: rpbIndexResp,
  rpbSearchQueryReq: rpbSearchQueryResp,
  rpbResetBucketReq: rpbResetBucketResp,
  rpbGetBucketKeyPreflistReq: rpbGetBucketKeyPreflistResp,
  rpbCSBucketReq: rpbCSBucketResp,
  rpbCounterUpdateReq: rpbCounterUpdateResp,
  rpbCounterGetReq: rpbCounterGetResp,
  rpbYokozunaIndexGetReq: rpbYokozunaIndexGetResp,
  rpbYokozunaSchemaGetReq: rpbYokozunaSchemaGetResp,
  rpbCoverageReq: rpbCoverageResp,
  dtFetchReq: dtFetchResp,
  dtUpdateReq: dtUpdateResp,
  tsQueryReq: tsQueryResp,
  tsPutReq: tsPutResp,
  tsDelReq: tsDelResp,
  tsGetReq: tsGetResp,
  tsListKeysReq: tsListKeysResp,
  tsCoverageReq: tsCoverageResp,
  rpbAuthReq: rpbAuthResp,
  rpbYokozunaIndexPutReq: rpbPutResp,
  rpbYokozunaIndexDeleteReq: rpbDelResp,
  rpbYokozunaSchemaPutReq: rpbPutResp,
  rpbStartTls: rpbStartTls
};

const int rpbErrorResp = 0,
    rpbPingReq = 1,
    rpbPingResp = 2,
    rpbGetClientIdReq = 3,
    rpbGetClientIdResp = 4,
    rpbSetClientIdReq = 5,
    rpbSetClientIdResp = 6,
    rpbGetServerInfoReq = 7,
    rpbGetServerInfoResp = 8,
    rpbGetReq = 9,
    rpbGetResp = 10,
    rpbPutReq = 11,
    rpbPutResp = 12,
    rpbDelReq = 13,
    rpbDelResp = 14,
    rpbListBucketsReq = 15,
    rpbListBucketsResp = 16,
    rpbListKeysReq = 17,
    rpbListKeysResp = 18,
    rpbGetBucketReq = 19,
    rpbGetBucketResp = 20,
    rpbSetBucketReq = 21,
    rpbSetBucketResp = 22,
    rpbMapRedReq = 23,
    rpbMapRedResp = 24,
    rpbIndexReq = 25,
    rpbIndexResp = 26,
    rpbSearchQueryReq = 27,
    rpbSearchQueryResp = 28,
    rpbResetBucketReq = 29,
    rpbResetBucketResp = 30,
    rpbGetBucketTypeReq = 31,
    rpbSetBucketTypeReq = 32,
    rpbGetBucketKeyPreflistReq = 33,
    rpbGetBucketKeyPreflistResp = 34,
    rpbCSBucketReq = 40,
    rpbCSBucketResp = 41,
    rpbIndexBodyResp = 42,
    rpbCounterUpdateReq = 50,
    rpbCounterUpdateResp = 51,
    rpbCounterGetReq = 52,
    rpbCounterGetResp = 53,
    rpbYokozunaIndexGetReq = 54,
    rpbYokozunaIndexGetResp = 55,
    rpbYokozunaIndexPutReq = 56,
    rpbYokozunaIndexDeleteReq = 57,
    rpbYokozunaSchemaGetReq = 58,
    rpbYokozunaSchemaGetResp = 59,
    rpbYokozunaSchemaPutReq = 60,
    rpbCoverageReq = 70,
    rpbCoverageResp = 71,
    dtFetchReq = 80,
    dtFetchResp = 81,
    dtUpdateReq = 82,
    dtUpdateResp = 83,
    tsQueryReq = 90,
    tsQueryResp = 91,
    tsPutReq = 92,
    tsPutResp = 93,
    tsDelReq = 94,
    tsDelResp = 95,
    tsGetReq = 96,
    tsGetResp = 97,
    tsListKeysReq = 98,
    tsListKeysResp = 99,
    tsCoverageReq = 100,
    tsCoverageResp = 101,
    tsCoverageEntry = 102,
    tsRange = 103,
    tsTtbMsg = 104,
    rpbAuthReq = 253,
    rpbAuthResp = 254,
    rpbStartTls = 255;
