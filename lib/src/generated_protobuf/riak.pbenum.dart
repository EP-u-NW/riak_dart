///
//  Generated code. Do not modify.
//  source: riak.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RpbBucketProps_RpbReplMode extends $pb.ProtobufEnum {
  static const RpbBucketProps_RpbReplMode FALSE = RpbBucketProps_RpbReplMode._(0, 'FALSE');
  static const RpbBucketProps_RpbReplMode REALTIME = RpbBucketProps_RpbReplMode._(1, 'REALTIME');
  static const RpbBucketProps_RpbReplMode FULLSYNC = RpbBucketProps_RpbReplMode._(2, 'FULLSYNC');
  static const RpbBucketProps_RpbReplMode TRUE = RpbBucketProps_RpbReplMode._(3, 'TRUE');

  static const $core.List<RpbBucketProps_RpbReplMode> values = <RpbBucketProps_RpbReplMode> [
    FALSE,
    REALTIME,
    FULLSYNC,
    TRUE,
  ];

  static final $core.Map<$core.int, RpbBucketProps_RpbReplMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RpbBucketProps_RpbReplMode valueOf($core.int value) => _byValue[value];

  const RpbBucketProps_RpbReplMode._($core.int v, $core.String n) : super(v, n);
}

