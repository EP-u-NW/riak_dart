///
//  Generated code. Do not modify.
//  source: riak_ts.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'riak.pb.dart' as $0;

import 'riak_ts.pbenum.dart';

export 'riak_ts.pbenum.dart';

class TsQueryReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsQueryReq', createEmptyInstance: create)
    ..aOM<TsInterpolation>(1, 'query', subBuilder: TsInterpolation.create)
    ..aOB(2, 'stream')
    ..a<$core.List<$core.int>>(3, 'coverContext', $pb.PbFieldType.OY)
  ;

  TsQueryReq._() : super();
  factory TsQueryReq() => create();
  factory TsQueryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsQueryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsQueryReq clone() => TsQueryReq()..mergeFromMessage(this);
  TsQueryReq copyWith(void Function(TsQueryReq) updates) => super.copyWith((message) => updates(message as TsQueryReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsQueryReq create() => TsQueryReq._();
  TsQueryReq createEmptyInstance() => create();
  static $pb.PbList<TsQueryReq> createRepeated() => $pb.PbList<TsQueryReq>();
  @$core.pragma('dart2js:noInline')
  static TsQueryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsQueryReq>(create);
  static TsQueryReq _defaultInstance;

  @$pb.TagNumber(1)
  TsInterpolation get query => $_getN(0);
  @$pb.TagNumber(1)
  set query(TsInterpolation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
  @$pb.TagNumber(1)
  TsInterpolation ensureQuery() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get stream => $_getBF(1);
  @$pb.TagNumber(2)
  set stream($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStream() => $_has(1);
  @$pb.TagNumber(2)
  void clearStream() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get coverContext => $_getN(2);
  @$pb.TagNumber(3)
  set coverContext($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoverContext() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoverContext() => clearField(3);
}

class TsQueryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsQueryResp', createEmptyInstance: create)
    ..pc<TsColumnDescription>(1, 'columns', $pb.PbFieldType.PM, subBuilder: TsColumnDescription.create)
    ..pc<TsRow>(2, 'rows', $pb.PbFieldType.PM, subBuilder: TsRow.create)
    ..a<$core.bool>(3, 'done', $pb.PbFieldType.OB, defaultOrMaker: true)
  ;

  TsQueryResp._() : super();
  factory TsQueryResp() => create();
  factory TsQueryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsQueryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsQueryResp clone() => TsQueryResp()..mergeFromMessage(this);
  TsQueryResp copyWith(void Function(TsQueryResp) updates) => super.copyWith((message) => updates(message as TsQueryResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsQueryResp create() => TsQueryResp._();
  TsQueryResp createEmptyInstance() => create();
  static $pb.PbList<TsQueryResp> createRepeated() => $pb.PbList<TsQueryResp>();
  @$core.pragma('dart2js:noInline')
  static TsQueryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsQueryResp>(create);
  static TsQueryResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TsColumnDescription> get columns => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TsRow> get rows => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get done => $_getB(2, true);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class TsGetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsGetReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'table', $pb.PbFieldType.QY)
    ..pc<TsCell>(2, 'key', $pb.PbFieldType.PM, subBuilder: TsCell.create)
    ..a<$core.int>(3, 'timeout', $pb.PbFieldType.OU3)
  ;

  TsGetReq._() : super();
  factory TsGetReq() => create();
  factory TsGetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsGetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsGetReq clone() => TsGetReq()..mergeFromMessage(this);
  TsGetReq copyWith(void Function(TsGetReq) updates) => super.copyWith((message) => updates(message as TsGetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsGetReq create() => TsGetReq._();
  TsGetReq createEmptyInstance() => create();
  static $pb.PbList<TsGetReq> createRepeated() => $pb.PbList<TsGetReq>();
  @$core.pragma('dart2js:noInline')
  static TsGetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsGetReq>(create);
  static TsGetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get table => $_getN(0);
  @$pb.TagNumber(1)
  set table($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TsCell> get key => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get timeout => $_getIZ(2);
  @$pb.TagNumber(3)
  set timeout($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeout() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeout() => clearField(3);
}

class TsGetResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsGetResp', createEmptyInstance: create)
    ..pc<TsColumnDescription>(1, 'columns', $pb.PbFieldType.PM, subBuilder: TsColumnDescription.create)
    ..pc<TsRow>(2, 'rows', $pb.PbFieldType.PM, subBuilder: TsRow.create)
  ;

  TsGetResp._() : super();
  factory TsGetResp() => create();
  factory TsGetResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsGetResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsGetResp clone() => TsGetResp()..mergeFromMessage(this);
  TsGetResp copyWith(void Function(TsGetResp) updates) => super.copyWith((message) => updates(message as TsGetResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsGetResp create() => TsGetResp._();
  TsGetResp createEmptyInstance() => create();
  static $pb.PbList<TsGetResp> createRepeated() => $pb.PbList<TsGetResp>();
  @$core.pragma('dart2js:noInline')
  static TsGetResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsGetResp>(create);
  static TsGetResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TsColumnDescription> get columns => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TsRow> get rows => $_getList(1);
}

class TsPutReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsPutReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'table', $pb.PbFieldType.QY)
    ..pc<TsColumnDescription>(2, 'columns', $pb.PbFieldType.PM, subBuilder: TsColumnDescription.create)
    ..pc<TsRow>(3, 'rows', $pb.PbFieldType.PM, subBuilder: TsRow.create)
  ;

  TsPutReq._() : super();
  factory TsPutReq() => create();
  factory TsPutReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsPutReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsPutReq clone() => TsPutReq()..mergeFromMessage(this);
  TsPutReq copyWith(void Function(TsPutReq) updates) => super.copyWith((message) => updates(message as TsPutReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsPutReq create() => TsPutReq._();
  TsPutReq createEmptyInstance() => create();
  static $pb.PbList<TsPutReq> createRepeated() => $pb.PbList<TsPutReq>();
  @$core.pragma('dart2js:noInline')
  static TsPutReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsPutReq>(create);
  static TsPutReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get table => $_getN(0);
  @$pb.TagNumber(1)
  set table($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TsColumnDescription> get columns => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<TsRow> get rows => $_getList(2);
}

class TsPutResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsPutResp', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TsPutResp._() : super();
  factory TsPutResp() => create();
  factory TsPutResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsPutResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsPutResp clone() => TsPutResp()..mergeFromMessage(this);
  TsPutResp copyWith(void Function(TsPutResp) updates) => super.copyWith((message) => updates(message as TsPutResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsPutResp create() => TsPutResp._();
  TsPutResp createEmptyInstance() => create();
  static $pb.PbList<TsPutResp> createRepeated() => $pb.PbList<TsPutResp>();
  @$core.pragma('dart2js:noInline')
  static TsPutResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsPutResp>(create);
  static TsPutResp _defaultInstance;
}

class TsDelReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsDelReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'table', $pb.PbFieldType.QY)
    ..pc<TsCell>(2, 'key', $pb.PbFieldType.PM, subBuilder: TsCell.create)
    ..a<$core.List<$core.int>>(3, 'vclock', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'timeout', $pb.PbFieldType.OU3)
  ;

  TsDelReq._() : super();
  factory TsDelReq() => create();
  factory TsDelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsDelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsDelReq clone() => TsDelReq()..mergeFromMessage(this);
  TsDelReq copyWith(void Function(TsDelReq) updates) => super.copyWith((message) => updates(message as TsDelReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsDelReq create() => TsDelReq._();
  TsDelReq createEmptyInstance() => create();
  static $pb.PbList<TsDelReq> createRepeated() => $pb.PbList<TsDelReq>();
  @$core.pragma('dart2js:noInline')
  static TsDelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsDelReq>(create);
  static TsDelReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get table => $_getN(0);
  @$pb.TagNumber(1)
  set table($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TsCell> get key => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get vclock => $_getN(2);
  @$pb.TagNumber(3)
  set vclock($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVclock() => $_has(2);
  @$pb.TagNumber(3)
  void clearVclock() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get timeout => $_getIZ(3);
  @$pb.TagNumber(4)
  set timeout($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeout() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeout() => clearField(4);
}

class TsDelResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsDelResp', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TsDelResp._() : super();
  factory TsDelResp() => create();
  factory TsDelResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsDelResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsDelResp clone() => TsDelResp()..mergeFromMessage(this);
  TsDelResp copyWith(void Function(TsDelResp) updates) => super.copyWith((message) => updates(message as TsDelResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsDelResp create() => TsDelResp._();
  TsDelResp createEmptyInstance() => create();
  static $pb.PbList<TsDelResp> createRepeated() => $pb.PbList<TsDelResp>();
  @$core.pragma('dart2js:noInline')
  static TsDelResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsDelResp>(create);
  static TsDelResp _defaultInstance;
}

class TsInterpolation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsInterpolation', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'base', $pb.PbFieldType.QY)
    ..pc<$0.RpbPair>(2, 'interpolations', $pb.PbFieldType.PM, subBuilder: $0.RpbPair.create)
  ;

  TsInterpolation._() : super();
  factory TsInterpolation() => create();
  factory TsInterpolation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsInterpolation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsInterpolation clone() => TsInterpolation()..mergeFromMessage(this);
  TsInterpolation copyWith(void Function(TsInterpolation) updates) => super.copyWith((message) => updates(message as TsInterpolation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsInterpolation create() => TsInterpolation._();
  TsInterpolation createEmptyInstance() => create();
  static $pb.PbList<TsInterpolation> createRepeated() => $pb.PbList<TsInterpolation>();
  @$core.pragma('dart2js:noInline')
  static TsInterpolation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsInterpolation>(create);
  static TsInterpolation _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get base => $_getN(0);
  @$pb.TagNumber(1)
  set base($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.RpbPair> get interpolations => $_getList(1);
}

class TsColumnDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsColumnDescription', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.QY)
    ..e<TsColumnType>(2, 'type', $pb.PbFieldType.QE, defaultOrMaker: TsColumnType.VARCHAR, valueOf: TsColumnType.valueOf, enumValues: TsColumnType.values)
  ;

  TsColumnDescription._() : super();
  factory TsColumnDescription() => create();
  factory TsColumnDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsColumnDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsColumnDescription clone() => TsColumnDescription()..mergeFromMessage(this);
  TsColumnDescription copyWith(void Function(TsColumnDescription) updates) => super.copyWith((message) => updates(message as TsColumnDescription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsColumnDescription create() => TsColumnDescription._();
  TsColumnDescription createEmptyInstance() => create();
  static $pb.PbList<TsColumnDescription> createRepeated() => $pb.PbList<TsColumnDescription>();
  @$core.pragma('dart2js:noInline')
  static TsColumnDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsColumnDescription>(create);
  static TsColumnDescription _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  TsColumnType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(TsColumnType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class TsRow extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsRow', createEmptyInstance: create)
    ..pc<TsCell>(1, 'cells', $pb.PbFieldType.PM, subBuilder: TsCell.create)
    ..hasRequiredFields = false
  ;

  TsRow._() : super();
  factory TsRow() => create();
  factory TsRow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsRow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsRow clone() => TsRow()..mergeFromMessage(this);
  TsRow copyWith(void Function(TsRow) updates) => super.copyWith((message) => updates(message as TsRow));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsRow create() => TsRow._();
  TsRow createEmptyInstance() => create();
  static $pb.PbList<TsRow> createRepeated() => $pb.PbList<TsRow>();
  @$core.pragma('dart2js:noInline')
  static TsRow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsRow>(create);
  static TsRow _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TsCell> get cells => $_getList(0);
}

class TsCell extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsCell', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'varcharValue', $pb.PbFieldType.OY)
    ..a<Int64>(2, 'sint64Value', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(3, 'timestampValue', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..aOB(4, 'booleanValue')
    ..a<$core.double>(5, 'doubleValue', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  TsCell._() : super();
  factory TsCell() => create();
  factory TsCell.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsCell.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsCell clone() => TsCell()..mergeFromMessage(this);
  TsCell copyWith(void Function(TsCell) updates) => super.copyWith((message) => updates(message as TsCell));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsCell create() => TsCell._();
  TsCell createEmptyInstance() => create();
  static $pb.PbList<TsCell> createRepeated() => $pb.PbList<TsCell>();
  @$core.pragma('dart2js:noInline')
  static TsCell getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsCell>(create);
  static TsCell _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get varcharValue => $_getN(0);
  @$pb.TagNumber(1)
  set varcharValue($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVarcharValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearVarcharValue() => clearField(1);

  @$pb.TagNumber(2)
  Int64 get sint64Value => $_getI64(1);
  @$pb.TagNumber(2)
  set sint64Value(Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSint64Value() => $_has(1);
  @$pb.TagNumber(2)
  void clearSint64Value() => clearField(2);

  @$pb.TagNumber(3)
  Int64 get timestampValue => $_getI64(2);
  @$pb.TagNumber(3)
  set timestampValue(Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestampValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get booleanValue => $_getBF(3);
  @$pb.TagNumber(4)
  set booleanValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBooleanValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBooleanValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get doubleValue => $_getN(4);
  @$pb.TagNumber(5)
  set doubleValue($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDoubleValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearDoubleValue() => clearField(5);
}

class TsListKeysReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsListKeysReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'table', $pb.PbFieldType.QY)
    ..a<$core.int>(2, 'timeout', $pb.PbFieldType.OU3)
  ;

  TsListKeysReq._() : super();
  factory TsListKeysReq() => create();
  factory TsListKeysReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsListKeysReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsListKeysReq clone() => TsListKeysReq()..mergeFromMessage(this);
  TsListKeysReq copyWith(void Function(TsListKeysReq) updates) => super.copyWith((message) => updates(message as TsListKeysReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsListKeysReq create() => TsListKeysReq._();
  TsListKeysReq createEmptyInstance() => create();
  static $pb.PbList<TsListKeysReq> createRepeated() => $pb.PbList<TsListKeysReq>();
  @$core.pragma('dart2js:noInline')
  static TsListKeysReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsListKeysReq>(create);
  static TsListKeysReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get table => $_getN(0);
  @$pb.TagNumber(1)
  set table($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get timeout => $_getIZ(1);
  @$pb.TagNumber(2)
  set timeout($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeout() => clearField(2);
}

class TsListKeysResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsListKeysResp', createEmptyInstance: create)
    ..pc<TsRow>(1, 'keys', $pb.PbFieldType.PM, subBuilder: TsRow.create)
    ..aOB(2, 'done')
    ..hasRequiredFields = false
  ;

  TsListKeysResp._() : super();
  factory TsListKeysResp() => create();
  factory TsListKeysResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsListKeysResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsListKeysResp clone() => TsListKeysResp()..mergeFromMessage(this);
  TsListKeysResp copyWith(void Function(TsListKeysResp) updates) => super.copyWith((message) => updates(message as TsListKeysResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsListKeysResp create() => TsListKeysResp._();
  TsListKeysResp createEmptyInstance() => create();
  static $pb.PbList<TsListKeysResp> createRepeated() => $pb.PbList<TsListKeysResp>();
  @$core.pragma('dart2js:noInline')
  static TsListKeysResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsListKeysResp>(create);
  static TsListKeysResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TsRow> get keys => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
}

class TsCoverageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsCoverageReq', createEmptyInstance: create)
    ..aOM<TsInterpolation>(1, 'query', subBuilder: TsInterpolation.create)
    ..a<$core.List<$core.int>>(2, 'table', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(3, 'replaceCover', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(4, 'unavailableCover', $pb.PbFieldType.PY)
  ;

  TsCoverageReq._() : super();
  factory TsCoverageReq() => create();
  factory TsCoverageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsCoverageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsCoverageReq clone() => TsCoverageReq()..mergeFromMessage(this);
  TsCoverageReq copyWith(void Function(TsCoverageReq) updates) => super.copyWith((message) => updates(message as TsCoverageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsCoverageReq create() => TsCoverageReq._();
  TsCoverageReq createEmptyInstance() => create();
  static $pb.PbList<TsCoverageReq> createRepeated() => $pb.PbList<TsCoverageReq>();
  @$core.pragma('dart2js:noInline')
  static TsCoverageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsCoverageReq>(create);
  static TsCoverageReq _defaultInstance;

  @$pb.TagNumber(1)
  TsInterpolation get query => $_getN(0);
  @$pb.TagNumber(1)
  set query(TsInterpolation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
  @$pb.TagNumber(1)
  TsInterpolation ensureQuery() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get table => $_getN(1);
  @$pb.TagNumber(2)
  set table($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get replaceCover => $_getN(2);
  @$pb.TagNumber(3)
  set replaceCover($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReplaceCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplaceCover() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get unavailableCover => $_getList(3);
}

class TsCoverageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsCoverageResp', createEmptyInstance: create)
    ..pc<TsCoverageEntry>(1, 'entries', $pb.PbFieldType.PM, subBuilder: TsCoverageEntry.create)
  ;

  TsCoverageResp._() : super();
  factory TsCoverageResp() => create();
  factory TsCoverageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsCoverageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsCoverageResp clone() => TsCoverageResp()..mergeFromMessage(this);
  TsCoverageResp copyWith(void Function(TsCoverageResp) updates) => super.copyWith((message) => updates(message as TsCoverageResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsCoverageResp create() => TsCoverageResp._();
  TsCoverageResp createEmptyInstance() => create();
  static $pb.PbList<TsCoverageResp> createRepeated() => $pb.PbList<TsCoverageResp>();
  @$core.pragma('dart2js:noInline')
  static TsCoverageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsCoverageResp>(create);
  static TsCoverageResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TsCoverageEntry> get entries => $_getList(0);
}

class TsCoverageEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsCoverageEntry', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'ip', $pb.PbFieldType.QY)
    ..a<$core.int>(2, 'port', $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(3, 'coverContext', $pb.PbFieldType.QY)
    ..aOM<TsRange>(4, 'range', subBuilder: TsRange.create)
  ;

  TsCoverageEntry._() : super();
  factory TsCoverageEntry() => create();
  factory TsCoverageEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsCoverageEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsCoverageEntry clone() => TsCoverageEntry()..mergeFromMessage(this);
  TsCoverageEntry copyWith(void Function(TsCoverageEntry) updates) => super.copyWith((message) => updates(message as TsCoverageEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsCoverageEntry create() => TsCoverageEntry._();
  TsCoverageEntry createEmptyInstance() => create();
  static $pb.PbList<TsCoverageEntry> createRepeated() => $pb.PbList<TsCoverageEntry>();
  @$core.pragma('dart2js:noInline')
  static TsCoverageEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsCoverageEntry>(create);
  static TsCoverageEntry _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get ip => $_getN(0);
  @$pb.TagNumber(1)
  set ip($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get coverContext => $_getN(2);
  @$pb.TagNumber(3)
  set coverContext($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoverContext() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoverContext() => clearField(3);

  @$pb.TagNumber(4)
  TsRange get range => $_getN(3);
  @$pb.TagNumber(4)
  set range(TsRange v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRange() => $_has(3);
  @$pb.TagNumber(4)
  void clearRange() => clearField(4);
  @$pb.TagNumber(4)
  TsRange ensureRange() => $_ensure(3);
}

class TsRange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TsRange', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'fieldName', $pb.PbFieldType.QY)
    ..a<Int64>(2, 'lowerBound', $pb.PbFieldType.QS6, defaultOrMaker: Int64.ZERO)
    ..a<$core.bool>(3, 'lowerBoundInclusive', $pb.PbFieldType.QB)
    ..a<Int64>(4, 'upperBound', $pb.PbFieldType.QS6, defaultOrMaker: Int64.ZERO)
    ..a<$core.bool>(5, 'upperBoundInclusive', $pb.PbFieldType.QB)
    ..a<$core.List<$core.int>>(6, 'desc', $pb.PbFieldType.QY)
  ;

  TsRange._() : super();
  factory TsRange() => create();
  factory TsRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TsRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TsRange clone() => TsRange()..mergeFromMessage(this);
  TsRange copyWith(void Function(TsRange) updates) => super.copyWith((message) => updates(message as TsRange));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TsRange create() => TsRange._();
  TsRange createEmptyInstance() => create();
  static $pb.PbList<TsRange> createRepeated() => $pb.PbList<TsRange>();
  @$core.pragma('dart2js:noInline')
  static TsRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TsRange>(create);
  static TsRange _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fieldName => $_getN(0);
  @$pb.TagNumber(1)
  set fieldName($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldName() => clearField(1);

  @$pb.TagNumber(2)
  Int64 get lowerBound => $_getI64(1);
  @$pb.TagNumber(2)
  set lowerBound(Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLowerBound() => $_has(1);
  @$pb.TagNumber(2)
  void clearLowerBound() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get lowerBoundInclusive => $_getBF(2);
  @$pb.TagNumber(3)
  set lowerBoundInclusive($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLowerBoundInclusive() => $_has(2);
  @$pb.TagNumber(3)
  void clearLowerBoundInclusive() => clearField(3);

  @$pb.TagNumber(4)
  Int64 get upperBound => $_getI64(3);
  @$pb.TagNumber(4)
  set upperBound(Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpperBound() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpperBound() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get upperBoundInclusive => $_getBF(4);
  @$pb.TagNumber(5)
  set upperBoundInclusive($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpperBoundInclusive() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpperBoundInclusive() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get desc => $_getN(5);
  @$pb.TagNumber(6)
  set desc($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDesc() => $_has(5);
  @$pb.TagNumber(6)
  void clearDesc() => clearField(6);
}

