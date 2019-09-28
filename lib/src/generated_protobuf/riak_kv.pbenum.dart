///
//  Generated code. Do not modify.
//  source: riak_kv.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RpbIndexReq_IndexQueryType extends $pb.ProtobufEnum {
  static const RpbIndexReq_IndexQueryType eq = RpbIndexReq_IndexQueryType._(0, 'eq');
  static const RpbIndexReq_IndexQueryType range = RpbIndexReq_IndexQueryType._(1, 'range');

  static const $core.List<RpbIndexReq_IndexQueryType> values = <RpbIndexReq_IndexQueryType> [
    eq,
    range,
  ];

  static final $core.Map<$core.int, RpbIndexReq_IndexQueryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RpbIndexReq_IndexQueryType valueOf($core.int value) => _byValue[value];

  const RpbIndexReq_IndexQueryType._($core.int v, $core.String n) : super(v, n);
}

