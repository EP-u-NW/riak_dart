///
//  Generated code. Do not modify.
//  source: riak_dt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MapField_MapFieldType extends $pb.ProtobufEnum {
  static const MapField_MapFieldType COUNTER = MapField_MapFieldType._(1, 'COUNTER');
  static const MapField_MapFieldType SET = MapField_MapFieldType._(2, 'SET');
  static const MapField_MapFieldType REGISTER = MapField_MapFieldType._(3, 'REGISTER');
  static const MapField_MapFieldType FLAG = MapField_MapFieldType._(4, 'FLAG');
  static const MapField_MapFieldType MAP = MapField_MapFieldType._(5, 'MAP');

  static const $core.List<MapField_MapFieldType> values = <MapField_MapFieldType> [
    COUNTER,
    SET,
    REGISTER,
    FLAG,
    MAP,
  ];

  static final $core.Map<$core.int, MapField_MapFieldType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MapField_MapFieldType valueOf($core.int value) => _byValue[value];

  const MapField_MapFieldType._($core.int v, $core.String n) : super(v, n);
}

class DtFetchResp_DataType extends $pb.ProtobufEnum {
  static const DtFetchResp_DataType COUNTER = DtFetchResp_DataType._(1, 'COUNTER');
  static const DtFetchResp_DataType SET = DtFetchResp_DataType._(2, 'SET');
  static const DtFetchResp_DataType MAP = DtFetchResp_DataType._(3, 'MAP');
  static const DtFetchResp_DataType HLL = DtFetchResp_DataType._(4, 'HLL');
  static const DtFetchResp_DataType GSET = DtFetchResp_DataType._(5, 'GSET');

  static const $core.List<DtFetchResp_DataType> values = <DtFetchResp_DataType> [
    COUNTER,
    SET,
    MAP,
    HLL,
    GSET,
  ];

  static final $core.Map<$core.int, DtFetchResp_DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DtFetchResp_DataType valueOf($core.int value) => _byValue[value];

  const DtFetchResp_DataType._($core.int v, $core.String n) : super(v, n);
}

class MapUpdate_FlagOp extends $pb.ProtobufEnum {
  static const MapUpdate_FlagOp ENABLE = MapUpdate_FlagOp._(1, 'ENABLE');
  static const MapUpdate_FlagOp DISABLE = MapUpdate_FlagOp._(2, 'DISABLE');

  static const $core.List<MapUpdate_FlagOp> values = <MapUpdate_FlagOp> [
    ENABLE,
    DISABLE,
  ];

  static final $core.Map<$core.int, MapUpdate_FlagOp> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MapUpdate_FlagOp valueOf($core.int value) => _byValue[value];

  const MapUpdate_FlagOp._($core.int v, $core.String n) : super(v, n);
}

