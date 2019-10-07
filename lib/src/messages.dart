import 'package:protobuf/protobuf.dart';
import '../generated_protobuf.dart';

/// Builds a [GeneratedMessage] from bytes.
typedef GeneratedMessage MessageBuilder(List<int> bytes);

GeneratedMessage _nullBuilder(List<int> bytes) => null;

/// Used to obtain the matching [MessageBuilder] for each defined message code.
///
/// There are message codes that are defined wihout a matching protobuf message (e.g. there are ping message codes but no actual ping protobuf messages).
/// For those codes, this map is not empty but contains the null-builder.
/// Invoking the null-builder is allowed, but will always return null instead of a message.
final Map<int, MessageBuilder> builders = <int, MessageBuilder>{
  MessageCode.rpbErrorResp: (List<int> bytes) => RpbErrorResp.fromBuffer(bytes),
  MessageCode.rpbPingReq: _nullBuilder,
  MessageCode.rpbPingResp: _nullBuilder,
  MessageCode.rpbGetClientIdReq: _nullBuilder,
  MessageCode.rpbGetClientIdResp: (List<int> bytes) =>
      RpbGetClientIdResp.fromBuffer(bytes),
  MessageCode.rpbSetClientIdReq: (List<int> bytes) =>
      RpbSetClientIdReq.fromBuffer(bytes),
  MessageCode.rpbSetClientIdResp: _nullBuilder,
  MessageCode.rpbGetServerInfoReq: _nullBuilder,
  MessageCode.rpbGetServerInfoResp: (List<int> bytes) =>
      RpbGetServerInfoResp.fromBuffer(bytes),
  MessageCode.rpbGetReq: (List<int> bytes) => RpbGetReq.fromBuffer(bytes),
  MessageCode.rpbGetResp: (List<int> bytes) => RpbGetResp.fromBuffer(bytes),
  MessageCode.rpbPutReq: (List<int> bytes) => RpbPutReq.fromBuffer(bytes),
  MessageCode.rpbPutResp: (List<int> bytes) => RpbPutResp.fromBuffer(bytes),
  MessageCode.rpbDelReq: (List<int> bytes) => RpbDelReq.fromBuffer(bytes),
  MessageCode.rpbDelResp: _nullBuilder,
  MessageCode.rpbListBucketsReq: (List<int> bytes) =>
      RpbListBucketsReq.fromBuffer(bytes),
  MessageCode.rpbListBucketsResp: (List<int> bytes) =>
      RpbListBucketsResp.fromBuffer(bytes),
  MessageCode.rpbListKeysReq: (List<int> bytes) =>
      RpbListKeysReq.fromBuffer(bytes),
  MessageCode.rpbListKeysResp: (List<int> bytes) =>
      RpbListKeysResp.fromBuffer(bytes),
  MessageCode.rpbGetBucketReq: (List<int> bytes) =>
      RpbGetBucketReq.fromBuffer(bytes),
  MessageCode.rpbGetBucketResp: (List<int> bytes) =>
      RpbGetBucketResp.fromBuffer(bytes),
  MessageCode.rpbSetBucketReq: (List<int> bytes) =>
      RpbSetBucketReq.fromBuffer(bytes),
  MessageCode.rpbSetBucketResp: _nullBuilder,
  MessageCode.rpbMapRedReq: (List<int> bytes) => RpbMapRedReq.fromBuffer(bytes),
  MessageCode.rpbMapRedResp: (List<int> bytes) =>
      RpbMapRedResp.fromBuffer(bytes),
  MessageCode.rpbIndexReq: (List<int> bytes) => RpbIndexReq.fromBuffer(bytes),
  MessageCode.rpbIndexResp: (List<int> bytes) => RpbIndexResp.fromBuffer(bytes),
  MessageCode.rpbSearchQueryReq: (List<int> bytes) =>
      RpbSearchQueryReq.fromBuffer(bytes),
  MessageCode.rpbSearchQueryResp: (List<int> bytes) =>
      RpbSearchQueryResp.fromBuffer(bytes),
  MessageCode.rpbResetBucketReq: (List<int> bytes) =>
      RpbResetBucketReq.fromBuffer(bytes),
  MessageCode.rpbResetBucketResp: _nullBuilder,
  MessageCode.rpbGetBucketTypeReq: (List<int> bytes) =>
      RpbGetBucketTypeReq.fromBuffer(bytes),
  MessageCode.rpbSetBucketTypeReq: (List<int> bytes) =>
      RpbSetBucketTypeReq.fromBuffer(bytes),
  MessageCode.rpbGetBucketKeyPreflistReq: (List<int> bytes) =>
      RpbGetBucketKeyPreflistReq.fromBuffer(bytes),
  MessageCode.rpbGetBucketKeyPreflistResp: (List<int> bytes) =>
      RpbGetBucketKeyPreflistResp.fromBuffer(bytes),
  MessageCode.rpbCSBucketReq: (List<int> bytes) =>
      RpbCSBucketReq.fromBuffer(bytes),
  MessageCode.rpbCSBucketResp: (List<int> bytes) =>
      RpbCSBucketResp.fromBuffer(bytes),
  MessageCode.rpbIndexBodyResp: (List<int> bytes) =>
      RpbIndexBodyResp.fromBuffer(bytes),
  MessageCode.rpbCounterUpdateReq: (List<int> bytes) =>
      RpbCounterUpdateReq.fromBuffer(bytes),
  MessageCode.rpbCounterUpdateResp: (List<int> bytes) =>
      RpbCounterUpdateResp.fromBuffer(bytes),
  MessageCode.rpbCounterGetReq: (List<int> bytes) =>
      RpbCounterGetReq.fromBuffer(bytes),
  MessageCode.rpbCounterGetResp: (List<int> bytes) =>
      RpbCounterGetResp.fromBuffer(bytes),
  MessageCode.rpbYokozunaIndexGetReq: (List<int> bytes) =>
      RpbYokozunaIndexGetReq.fromBuffer(bytes),
  MessageCode.rpbYokozunaIndexGetResp: (List<int> bytes) =>
      RpbYokozunaIndexGetResp.fromBuffer(bytes),
  MessageCode.rpbYokozunaIndexPutReq: (List<int> bytes) =>
      RpbYokozunaIndexPutReq.fromBuffer(bytes),
  MessageCode.rpbYokozunaIndexDeleteReq: (List<int> bytes) =>
      RpbYokozunaIndexDeleteReq.fromBuffer(bytes),
  MessageCode.rpbYokozunaSchemaGetReq: (List<int> bytes) =>
      RpbYokozunaSchemaGetReq.fromBuffer(bytes),
  MessageCode.rpbYokozunaSchemaGetResp: (List<int> bytes) =>
      RpbYokozunaSchemaGetResp.fromBuffer(bytes),
  MessageCode.rpbYokozunaSchemaPutReq: (List<int> bytes) =>
      RpbYokozunaSchemaPutReq.fromBuffer(bytes),
  MessageCode.rpbCoverageReq: (List<int> bytes) =>
      RpbCoverageReq.fromBuffer(bytes),
  MessageCode.rpbCoverageResp: (List<int> bytes) =>
      RpbCoverageResp.fromBuffer(bytes),
  MessageCode.dtFetchReq: (List<int> bytes) => DtFetchReq.fromBuffer(bytes),
  MessageCode.dtFetchResp: (List<int> bytes) => DtFetchResp.fromBuffer(bytes),
  MessageCode.dtUpdateReq: (List<int> bytes) => DtUpdateReq.fromBuffer(bytes),
  MessageCode.dtUpdateResp: (List<int> bytes) => DtUpdateResp.fromBuffer(bytes),
  MessageCode.tsQueryReq: (List<int> bytes) => TsQueryReq.fromBuffer(bytes),
  MessageCode.tsQueryResp: (List<int> bytes) => TsQueryResp.fromBuffer(bytes),
  MessageCode.tsPutReq: (List<int> bytes) => TsPutReq.fromBuffer(bytes),
  MessageCode.tsPutResp: (List<int> bytes) => TsPutResp.fromBuffer(bytes),
  MessageCode.tsDelReq: (List<int> bytes) => TsDelReq.fromBuffer(bytes),
  MessageCode.tsDelResp: (List<int> bytes) => TsDelResp.fromBuffer(bytes),
  MessageCode.tsGetReq: (List<int> bytes) => TsGetReq.fromBuffer(bytes),
  MessageCode.tsGetResp: (List<int> bytes) => TsGetResp.fromBuffer(bytes),
  MessageCode.tsListKeysReq: (List<int> bytes) =>
      TsListKeysReq.fromBuffer(bytes),
  MessageCode.tsListKeysResp: (List<int> bytes) =>
      TsListKeysResp.fromBuffer(bytes),
  MessageCode.tsCoverageReq: (List<int> bytes) =>
      TsCoverageReq.fromBuffer(bytes),
  MessageCode.tsCoverageResp: (List<int> bytes) =>
      TsCoverageResp.fromBuffer(bytes),
  MessageCode.tsCoverageEntry: (List<int> bytes) =>
      TsCoverageEntry.fromBuffer(bytes),
  MessageCode.tsRange: (List<int> bytes) => TsRange.fromBuffer(bytes),
  MessageCode.tsTtbMsg: _nullBuilder, //FIXME
  MessageCode.rpbAuthReq: (List<int> bytes) => RpbAuthReq.fromBuffer(bytes),
  MessageCode.rpbAuthResp: _nullBuilder,
  MessageCode.rpbStartTls: _nullBuilder
};

/// Used to map the expected response message code to the message code of a request.
const Map<int, int> expectedResponseTypes = const <int, int>{
  MessageCode.rpbPingReq: MessageCode.rpbPingResp,
  MessageCode.rpbGetClientIdReq: MessageCode.rpbGetClientIdResp,
  MessageCode.rpbSetClientIdReq: MessageCode.rpbSetClientIdResp,
  MessageCode.rpbGetServerInfoReq: MessageCode.rpbGetServerInfoResp,
  MessageCode.rpbGetReq: MessageCode.rpbGetResp,
  MessageCode.rpbPutReq: MessageCode.rpbPutResp,
  MessageCode.rpbDelReq: MessageCode.rpbDelResp,
  MessageCode.rpbListBucketsReq: MessageCode.rpbListBucketsResp,
  MessageCode.rpbListKeysReq: MessageCode.rpbListKeysResp,
  MessageCode.rpbGetBucketReq: MessageCode.rpbGetBucketResp,
  MessageCode.rpbSetBucketReq: MessageCode.rpbSetBucketResp,
  MessageCode.rpbMapRedReq: MessageCode.rpbMapRedResp,
  MessageCode.rpbIndexReq: MessageCode.rpbIndexResp,
  MessageCode.rpbSearchQueryReq: MessageCode.rpbSearchQueryResp,
  MessageCode.rpbResetBucketReq: MessageCode.rpbResetBucketResp,
  MessageCode.rpbGetBucketKeyPreflistReq:
      MessageCode.rpbGetBucketKeyPreflistResp,
  MessageCode.rpbCSBucketReq: MessageCode.rpbCSBucketResp,
  MessageCode.rpbCounterUpdateReq: MessageCode.rpbCounterUpdateResp,
  MessageCode.rpbCounterGetReq: MessageCode.rpbCounterGetResp,
  MessageCode.rpbYokozunaIndexGetReq: MessageCode.rpbYokozunaIndexGetResp,
  MessageCode.rpbYokozunaSchemaGetReq: MessageCode.rpbYokozunaSchemaGetResp,
  MessageCode.rpbCoverageReq: MessageCode.rpbCoverageResp,
  MessageCode.dtFetchReq: MessageCode.dtFetchResp,
  MessageCode.dtUpdateReq: MessageCode.dtUpdateResp,
  MessageCode.tsQueryReq: MessageCode.tsQueryResp,
  MessageCode.tsPutReq: MessageCode.tsPutResp,
  MessageCode.tsDelReq: MessageCode.tsDelResp,
  MessageCode.tsGetReq: MessageCode.tsGetResp,
  MessageCode.tsListKeysReq: MessageCode.tsListKeysResp,
  MessageCode.tsCoverageReq: MessageCode.tsCoverageResp,
  MessageCode.rpbAuthReq: MessageCode.rpbAuthResp,
  MessageCode.rpbYokozunaIndexPutReq: MessageCode.rpbPutResp,
  MessageCode.rpbYokozunaIndexDeleteReq: MessageCode.rpbDelResp,
  MessageCode.rpbYokozunaSchemaPutReq: MessageCode.rpbPutResp,
  MessageCode.rpbStartTls: MessageCode.rpbStartTls,
  MessageCode.rpbGetBucketTypeReq: MessageCode.rpbGetBucketResp,
  MessageCode.rpbSetBucketTypeReq: MessageCode.rpbSetBucketResp
};

/// A class containing all defined Riak protobuf message codes.
abstract class MessageCode {
  static const int rpbErrorResp = 0,
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
}
