///
//  Generated code. Do not modify.
//  source: riak_dt.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'riak_dt.pbenum.dart';

export 'riak_dt.pbenum.dart';

class MapField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MapField', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.QY)
    ..e<MapField_MapFieldType>(2, 'type', $pb.PbFieldType.QE, defaultOrMaker: MapField_MapFieldType.COUNTER, valueOf: MapField_MapFieldType.valueOf, enumValues: MapField_MapFieldType.values)
  ;

  MapField._() : super();
  factory MapField() => create();
  factory MapField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MapField clone() => MapField()..mergeFromMessage(this);
  MapField copyWith(void Function(MapField) updates) => super.copyWith((message) => updates(message as MapField));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MapField create() => MapField._();
  MapField createEmptyInstance() => create();
  static $pb.PbList<MapField> createRepeated() => $pb.PbList<MapField>();
  @$core.pragma('dart2js:noInline')
  static MapField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapField>(create);
  static MapField _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  MapField_MapFieldType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(MapField_MapFieldType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class MapEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MapEntry', createEmptyInstance: create)
    ..aQM<MapField>(1, 'field', subBuilder: MapField.create)
    ..a<Int64>(2, 'counterValue', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..p<$core.List<$core.int>>(3, 'setValue', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(4, 'registerValue', $pb.PbFieldType.OY)
    ..aOB(5, 'flagValue')
    ..pc<MapEntry>(6, 'mapValue', $pb.PbFieldType.PM, subBuilder: MapEntry.create)
  ;

  MapEntry._() : super();
  factory MapEntry() => create();
  factory MapEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MapEntry clone() => MapEntry()..mergeFromMessage(this);
  MapEntry copyWith(void Function(MapEntry) updates) => super.copyWith((message) => updates(message as MapEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MapEntry create() => MapEntry._();
  MapEntry createEmptyInstance() => create();
  static $pb.PbList<MapEntry> createRepeated() => $pb.PbList<MapEntry>();
  @$core.pragma('dart2js:noInline')
  static MapEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapEntry>(create);
  static MapEntry _defaultInstance;

  @$pb.TagNumber(1)
  MapField get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1(MapField v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);
  @$pb.TagNumber(1)
  MapField ensureField_1() => $_ensure(0);

  @$pb.TagNumber(2)
  Int64 get counterValue => $_getI64(1);
  @$pb.TagNumber(2)
  set counterValue(Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get setValue => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get registerValue => $_getN(3);
  @$pb.TagNumber(4)
  set registerValue($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegisterValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegisterValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get flagValue => $_getBF(4);
  @$pb.TagNumber(5)
  set flagValue($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFlagValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlagValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<MapEntry> get mapValue => $_getList(5);
}

class DtFetchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DtFetchReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(3, 'type', $pb.PbFieldType.QY)
    ..a<$core.int>(4, 'r', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'pr', $pb.PbFieldType.OU3)
    ..aOB(6, 'basicQuorum')
    ..aOB(7, 'notfoundOk')
    ..a<$core.int>(8, 'timeout', $pb.PbFieldType.OU3)
    ..aOB(9, 'sloppyQuorum')
    ..a<$core.int>(10, 'nVal', $pb.PbFieldType.OU3)
    ..a<$core.bool>(11, 'includeContext', $pb.PbFieldType.OB, defaultOrMaker: true)
  ;

  DtFetchReq._() : super();
  factory DtFetchReq() => create();
  factory DtFetchReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DtFetchReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DtFetchReq clone() => DtFetchReq()..mergeFromMessage(this);
  DtFetchReq copyWith(void Function(DtFetchReq) updates) => super.copyWith((message) => updates(message as DtFetchReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DtFetchReq create() => DtFetchReq._();
  DtFetchReq createEmptyInstance() => create();
  static $pb.PbList<DtFetchReq> createRepeated() => $pb.PbList<DtFetchReq>();
  @$core.pragma('dart2js:noInline')
  static DtFetchReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DtFetchReq>(create);
  static DtFetchReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get r => $_getIZ(3);
  @$pb.TagNumber(4)
  set r($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasR() => $_has(3);
  @$pb.TagNumber(4)
  void clearR() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pr => $_getIZ(4);
  @$pb.TagNumber(5)
  set pr($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPr() => $_has(4);
  @$pb.TagNumber(5)
  void clearPr() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get basicQuorum => $_getBF(5);
  @$pb.TagNumber(6)
  set basicQuorum($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBasicQuorum() => $_has(5);
  @$pb.TagNumber(6)
  void clearBasicQuorum() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get notfoundOk => $_getBF(6);
  @$pb.TagNumber(7)
  set notfoundOk($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNotfoundOk() => $_has(6);
  @$pb.TagNumber(7)
  void clearNotfoundOk() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get timeout => $_getIZ(7);
  @$pb.TagNumber(8)
  set timeout($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimeout() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeout() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get sloppyQuorum => $_getBF(8);
  @$pb.TagNumber(9)
  set sloppyQuorum($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSloppyQuorum() => $_has(8);
  @$pb.TagNumber(9)
  void clearSloppyQuorum() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get nVal => $_getIZ(9);
  @$pb.TagNumber(10)
  set nVal($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNVal() => $_has(9);
  @$pb.TagNumber(10)
  void clearNVal() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get includeContext => $_getB(10, true);
  @$pb.TagNumber(11)
  set includeContext($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIncludeContext() => $_has(10);
  @$pb.TagNumber(11)
  void clearIncludeContext() => clearField(11);
}

class DtValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DtValue', createEmptyInstance: create)
    ..a<Int64>(1, 'counterValue', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..p<$core.List<$core.int>>(2, 'setValue', $pb.PbFieldType.PY)
    ..pc<MapEntry>(3, 'mapValue', $pb.PbFieldType.PM, subBuilder: MapEntry.create)
    ..a<Int64>(4, 'hllValue', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..p<$core.List<$core.int>>(5, 'gsetValue', $pb.PbFieldType.PY)
  ;

  DtValue._() : super();
  factory DtValue() => create();
  factory DtValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DtValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DtValue clone() => DtValue()..mergeFromMessage(this);
  DtValue copyWith(void Function(DtValue) updates) => super.copyWith((message) => updates(message as DtValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DtValue create() => DtValue._();
  DtValue createEmptyInstance() => create();
  static $pb.PbList<DtValue> createRepeated() => $pb.PbList<DtValue>();
  @$core.pragma('dart2js:noInline')
  static DtValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DtValue>(create);
  static DtValue _defaultInstance;

  @$pb.TagNumber(1)
  Int64 get counterValue => $_getI64(0);
  @$pb.TagNumber(1)
  set counterValue(Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCounterValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearCounterValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get setValue => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<MapEntry> get mapValue => $_getList(2);

  @$pb.TagNumber(4)
  Int64 get hllValue => $_getI64(3);
  @$pb.TagNumber(4)
  set hllValue(Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHllValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearHllValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get gsetValue => $_getList(4);
}

class DtFetchResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DtFetchResp', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'context', $pb.PbFieldType.OY)
    ..e<DtFetchResp_DataType>(2, 'type', $pb.PbFieldType.QE, defaultOrMaker: DtFetchResp_DataType.COUNTER, valueOf: DtFetchResp_DataType.valueOf, enumValues: DtFetchResp_DataType.values)
    ..aOM<DtValue>(3, 'value', subBuilder: DtValue.create)
  ;

  DtFetchResp._() : super();
  factory DtFetchResp() => create();
  factory DtFetchResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DtFetchResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DtFetchResp clone() => DtFetchResp()..mergeFromMessage(this);
  DtFetchResp copyWith(void Function(DtFetchResp) updates) => super.copyWith((message) => updates(message as DtFetchResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DtFetchResp create() => DtFetchResp._();
  DtFetchResp createEmptyInstance() => create();
  static $pb.PbList<DtFetchResp> createRepeated() => $pb.PbList<DtFetchResp>();
  @$core.pragma('dart2js:noInline')
  static DtFetchResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DtFetchResp>(create);
  static DtFetchResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get context => $_getN(0);
  @$pb.TagNumber(1)
  set context($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContext() => $_has(0);
  @$pb.TagNumber(1)
  void clearContext() => clearField(1);

  @$pb.TagNumber(2)
  DtFetchResp_DataType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(DtFetchResp_DataType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  DtValue get value => $_getN(2);
  @$pb.TagNumber(3)
  set value(DtValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  DtValue ensureValue() => $_ensure(2);
}

class CounterOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CounterOp', createEmptyInstance: create)
    ..a<Int64>(1, 'increment', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false
  ;

  CounterOp._() : super();
  factory CounterOp() => create();
  factory CounterOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CounterOp clone() => CounterOp()..mergeFromMessage(this);
  CounterOp copyWith(void Function(CounterOp) updates) => super.copyWith((message) => updates(message as CounterOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterOp create() => CounterOp._();
  CounterOp createEmptyInstance() => create();
  static $pb.PbList<CounterOp> createRepeated() => $pb.PbList<CounterOp>();
  @$core.pragma('dart2js:noInline')
  static CounterOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterOp>(create);
  static CounterOp _defaultInstance;

  @$pb.TagNumber(1)
  Int64 get increment => $_getI64(0);
  @$pb.TagNumber(1)
  set increment(Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncrement() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncrement() => clearField(1);
}

class SetOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SetOp', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'adds', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(2, 'removes', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  SetOp._() : super();
  factory SetOp() => create();
  factory SetOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SetOp clone() => SetOp()..mergeFromMessage(this);
  SetOp copyWith(void Function(SetOp) updates) => super.copyWith((message) => updates(message as SetOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetOp create() => SetOp._();
  SetOp createEmptyInstance() => create();
  static $pb.PbList<SetOp> createRepeated() => $pb.PbList<SetOp>();
  @$core.pragma('dart2js:noInline')
  static SetOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetOp>(create);
  static SetOp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get adds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get removes => $_getList(1);
}

class GSetOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GSetOp', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'adds', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  GSetOp._() : super();
  factory GSetOp() => create();
  factory GSetOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GSetOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GSetOp clone() => GSetOp()..mergeFromMessage(this);
  GSetOp copyWith(void Function(GSetOp) updates) => super.copyWith((message) => updates(message as GSetOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSetOp create() => GSetOp._();
  GSetOp createEmptyInstance() => create();
  static $pb.PbList<GSetOp> createRepeated() => $pb.PbList<GSetOp>();
  @$core.pragma('dart2js:noInline')
  static GSetOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSetOp>(create);
  static GSetOp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get adds => $_getList(0);
}

class HllOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HllOp', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'adds', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  HllOp._() : super();
  factory HllOp() => create();
  factory HllOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HllOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HllOp clone() => HllOp()..mergeFromMessage(this);
  HllOp copyWith(void Function(HllOp) updates) => super.copyWith((message) => updates(message as HllOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HllOp create() => HllOp._();
  HllOp createEmptyInstance() => create();
  static $pb.PbList<HllOp> createRepeated() => $pb.PbList<HllOp>();
  @$core.pragma('dart2js:noInline')
  static HllOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HllOp>(create);
  static HllOp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get adds => $_getList(0);
}

class MapUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MapUpdate', createEmptyInstance: create)
    ..aQM<MapField>(1, 'field', subBuilder: MapField.create)
    ..aOM<CounterOp>(2, 'counterOp', subBuilder: CounterOp.create)
    ..aOM<SetOp>(3, 'setOp', subBuilder: SetOp.create)
    ..a<$core.List<$core.int>>(4, 'registerOp', $pb.PbFieldType.OY)
    ..e<MapUpdate_FlagOp>(5, 'flagOp', $pb.PbFieldType.OE, defaultOrMaker: MapUpdate_FlagOp.ENABLE, valueOf: MapUpdate_FlagOp.valueOf, enumValues: MapUpdate_FlagOp.values)
    ..aOM<MapOp>(6, 'mapOp', subBuilder: MapOp.create)
  ;

  MapUpdate._() : super();
  factory MapUpdate() => create();
  factory MapUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MapUpdate clone() => MapUpdate()..mergeFromMessage(this);
  MapUpdate copyWith(void Function(MapUpdate) updates) => super.copyWith((message) => updates(message as MapUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MapUpdate create() => MapUpdate._();
  MapUpdate createEmptyInstance() => create();
  static $pb.PbList<MapUpdate> createRepeated() => $pb.PbList<MapUpdate>();
  @$core.pragma('dart2js:noInline')
  static MapUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapUpdate>(create);
  static MapUpdate _defaultInstance;

  @$pb.TagNumber(1)
  MapField get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1(MapField v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);
  @$pb.TagNumber(1)
  MapField ensureField_1() => $_ensure(0);

  @$pb.TagNumber(2)
  CounterOp get counterOp => $_getN(1);
  @$pb.TagNumber(2)
  set counterOp(CounterOp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCounterOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearCounterOp() => clearField(2);
  @$pb.TagNumber(2)
  CounterOp ensureCounterOp() => $_ensure(1);

  @$pb.TagNumber(3)
  SetOp get setOp => $_getN(2);
  @$pb.TagNumber(3)
  set setOp(SetOp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSetOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetOp() => clearField(3);
  @$pb.TagNumber(3)
  SetOp ensureSetOp() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get registerOp => $_getN(3);
  @$pb.TagNumber(4)
  set registerOp($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegisterOp() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegisterOp() => clearField(4);

  @$pb.TagNumber(5)
  MapUpdate_FlagOp get flagOp => $_getN(4);
  @$pb.TagNumber(5)
  set flagOp(MapUpdate_FlagOp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFlagOp() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlagOp() => clearField(5);

  @$pb.TagNumber(6)
  MapOp get mapOp => $_getN(5);
  @$pb.TagNumber(6)
  set mapOp(MapOp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMapOp() => $_has(5);
  @$pb.TagNumber(6)
  void clearMapOp() => clearField(6);
  @$pb.TagNumber(6)
  MapOp ensureMapOp() => $_ensure(5);
}

class MapOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MapOp', createEmptyInstance: create)
    ..pc<MapField>(1, 'removes', $pb.PbFieldType.PM, subBuilder: MapField.create)
    ..pc<MapUpdate>(2, 'updates', $pb.PbFieldType.PM, subBuilder: MapUpdate.create)
  ;

  MapOp._() : super();
  factory MapOp() => create();
  factory MapOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MapOp clone() => MapOp()..mergeFromMessage(this);
  MapOp copyWith(void Function(MapOp) updates) => super.copyWith((message) => updates(message as MapOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MapOp create() => MapOp._();
  MapOp createEmptyInstance() => create();
  static $pb.PbList<MapOp> createRepeated() => $pb.PbList<MapOp>();
  @$core.pragma('dart2js:noInline')
  static MapOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapOp>(create);
  static MapOp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MapField> get removes => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<MapUpdate> get updates => $_getList(1);
}

class DtOp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DtOp', createEmptyInstance: create)
    ..aOM<CounterOp>(1, 'counterOp', subBuilder: CounterOp.create)
    ..aOM<SetOp>(2, 'setOp', subBuilder: SetOp.create)
    ..aOM<MapOp>(3, 'mapOp', subBuilder: MapOp.create)
    ..aOM<HllOp>(4, 'hllOp', subBuilder: HllOp.create)
    ..aOM<GSetOp>(5, 'gsetOp', subBuilder: GSetOp.create)
  ;

  DtOp._() : super();
  factory DtOp() => create();
  factory DtOp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DtOp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DtOp clone() => DtOp()..mergeFromMessage(this);
  DtOp copyWith(void Function(DtOp) updates) => super.copyWith((message) => updates(message as DtOp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DtOp create() => DtOp._();
  DtOp createEmptyInstance() => create();
  static $pb.PbList<DtOp> createRepeated() => $pb.PbList<DtOp>();
  @$core.pragma('dart2js:noInline')
  static DtOp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DtOp>(create);
  static DtOp _defaultInstance;

  @$pb.TagNumber(1)
  CounterOp get counterOp => $_getN(0);
  @$pb.TagNumber(1)
  set counterOp(CounterOp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCounterOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearCounterOp() => clearField(1);
  @$pb.TagNumber(1)
  CounterOp ensureCounterOp() => $_ensure(0);

  @$pb.TagNumber(2)
  SetOp get setOp => $_getN(1);
  @$pb.TagNumber(2)
  set setOp(SetOp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetOp() => clearField(2);
  @$pb.TagNumber(2)
  SetOp ensureSetOp() => $_ensure(1);

  @$pb.TagNumber(3)
  MapOp get mapOp => $_getN(2);
  @$pb.TagNumber(3)
  set mapOp(MapOp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMapOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapOp() => clearField(3);
  @$pb.TagNumber(3)
  MapOp ensureMapOp() => $_ensure(2);

  @$pb.TagNumber(4)
  HllOp get hllOp => $_getN(3);
  @$pb.TagNumber(4)
  set hllOp(HllOp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHllOp() => $_has(3);
  @$pb.TagNumber(4)
  void clearHllOp() => clearField(4);
  @$pb.TagNumber(4)
  HllOp ensureHllOp() => $_ensure(3);

  @$pb.TagNumber(5)
  GSetOp get gsetOp => $_getN(4);
  @$pb.TagNumber(5)
  set gsetOp(GSetOp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGsetOp() => $_has(4);
  @$pb.TagNumber(5)
  void clearGsetOp() => clearField(5);
  @$pb.TagNumber(5)
  GSetOp ensureGsetOp() => $_ensure(4);
}

class DtUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DtUpdateReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'type', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(4, 'context', $pb.PbFieldType.OY)
    ..aQM<DtOp>(5, 'op', subBuilder: DtOp.create)
    ..a<$core.int>(6, 'w', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'dw', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'pw', $pb.PbFieldType.OU3)
    ..aOB(9, 'returnBody')
    ..a<$core.int>(10, 'timeout', $pb.PbFieldType.OU3)
    ..aOB(11, 'sloppyQuorum')
    ..a<$core.int>(12, 'nVal', $pb.PbFieldType.OU3)
    ..a<$core.bool>(13, 'includeContext', $pb.PbFieldType.OB, defaultOrMaker: true)
  ;

  DtUpdateReq._() : super();
  factory DtUpdateReq() => create();
  factory DtUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DtUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DtUpdateReq clone() => DtUpdateReq()..mergeFromMessage(this);
  DtUpdateReq copyWith(void Function(DtUpdateReq) updates) => super.copyWith((message) => updates(message as DtUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DtUpdateReq create() => DtUpdateReq._();
  DtUpdateReq createEmptyInstance() => create();
  static $pb.PbList<DtUpdateReq> createRepeated() => $pb.PbList<DtUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static DtUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DtUpdateReq>(create);
  static DtUpdateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get context => $_getN(3);
  @$pb.TagNumber(4)
  set context($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContext() => $_has(3);
  @$pb.TagNumber(4)
  void clearContext() => clearField(4);

  @$pb.TagNumber(5)
  DtOp get op => $_getN(4);
  @$pb.TagNumber(5)
  set op(DtOp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOp() => $_has(4);
  @$pb.TagNumber(5)
  void clearOp() => clearField(5);
  @$pb.TagNumber(5)
  DtOp ensureOp() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get w => $_getIZ(5);
  @$pb.TagNumber(6)
  set w($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasW() => $_has(5);
  @$pb.TagNumber(6)
  void clearW() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get dw => $_getIZ(6);
  @$pb.TagNumber(7)
  set dw($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDw() => $_has(6);
  @$pb.TagNumber(7)
  void clearDw() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pw => $_getIZ(7);
  @$pb.TagNumber(8)
  set pw($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPw() => $_has(7);
  @$pb.TagNumber(8)
  void clearPw() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get returnBody => $_getBF(8);
  @$pb.TagNumber(9)
  set returnBody($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReturnBody() => $_has(8);
  @$pb.TagNumber(9)
  void clearReturnBody() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get timeout => $_getIZ(9);
  @$pb.TagNumber(10)
  set timeout($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTimeout() => $_has(9);
  @$pb.TagNumber(10)
  void clearTimeout() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get sloppyQuorum => $_getBF(10);
  @$pb.TagNumber(11)
  set sloppyQuorum($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSloppyQuorum() => $_has(10);
  @$pb.TagNumber(11)
  void clearSloppyQuorum() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get nVal => $_getIZ(11);
  @$pb.TagNumber(12)
  set nVal($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNVal() => $_has(11);
  @$pb.TagNumber(12)
  void clearNVal() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get includeContext => $_getB(12, true);
  @$pb.TagNumber(13)
  set includeContext($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIncludeContext() => $_has(12);
  @$pb.TagNumber(13)
  void clearIncludeContext() => clearField(13);
}

class DtUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DtUpdateResp', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'context', $pb.PbFieldType.OY)
    ..a<Int64>(3, 'counterValue', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..p<$core.List<$core.int>>(4, 'setValue', $pb.PbFieldType.PY)
    ..pc<MapEntry>(5, 'mapValue', $pb.PbFieldType.PM, subBuilder: MapEntry.create)
    ..a<Int64>(6, 'hllValue', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..p<$core.List<$core.int>>(7, 'gsetValue', $pb.PbFieldType.PY)
  ;

  DtUpdateResp._() : super();
  factory DtUpdateResp() => create();
  factory DtUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DtUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DtUpdateResp clone() => DtUpdateResp()..mergeFromMessage(this);
  DtUpdateResp copyWith(void Function(DtUpdateResp) updates) => super.copyWith((message) => updates(message as DtUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DtUpdateResp create() => DtUpdateResp._();
  DtUpdateResp createEmptyInstance() => create();
  static $pb.PbList<DtUpdateResp> createRepeated() => $pb.PbList<DtUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static DtUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DtUpdateResp>(create);
  static DtUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);

  @$pb.TagNumber(3)
  Int64 get counterValue => $_getI64(2);
  @$pb.TagNumber(3)
  set counterValue(Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCounterValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCounterValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get setValue => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<MapEntry> get mapValue => $_getList(4);

  @$pb.TagNumber(6)
  Int64 get hllValue => $_getI64(5);
  @$pb.TagNumber(6)
  set hllValue(Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHllValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearHllValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.List<$core.int>> get gsetValue => $_getList(6);
}

