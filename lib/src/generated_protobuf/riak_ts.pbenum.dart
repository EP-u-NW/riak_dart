///
//  Generated code. Do not modify.
//  source: riak_ts.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TsColumnType extends $pb.ProtobufEnum {
  static const TsColumnType VARCHAR = TsColumnType._(0, 'VARCHAR');
  static const TsColumnType SINT64 = TsColumnType._(1, 'SINT64');
  static const TsColumnType DOUBLE = TsColumnType._(2, 'DOUBLE');
  static const TsColumnType TIMESTAMP = TsColumnType._(3, 'TIMESTAMP');
  static const TsColumnType BOOLEAN = TsColumnType._(4, 'BOOLEAN');
  static const TsColumnType BLOB = TsColumnType._(5, 'BLOB');

  static const $core.List<TsColumnType> values = <TsColumnType> [
    VARCHAR,
    SINT64,
    DOUBLE,
    TIMESTAMP,
    BOOLEAN,
    BLOB,
  ];

  static final $core.Map<$core.int, TsColumnType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TsColumnType valueOf($core.int value) => _byValue[value];

  const TsColumnType._($core.int v, $core.String n) : super(v, n);
}

