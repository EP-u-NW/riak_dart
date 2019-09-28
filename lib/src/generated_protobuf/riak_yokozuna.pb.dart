///
//  Generated code. Do not modify.
//  source: riak_yokozuna.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RpbYokozunaIndex extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaIndex', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'schema', $pb.PbFieldType.OY)
    ..a<$core.int>(3, 'nVal', $pb.PbFieldType.OU3)
  ;

  RpbYokozunaIndex._() : super();
  factory RpbYokozunaIndex() => create();
  factory RpbYokozunaIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaIndex clone() => RpbYokozunaIndex()..mergeFromMessage(this);
  RpbYokozunaIndex copyWith(void Function(RpbYokozunaIndex) updates) => super.copyWith((message) => updates(message as RpbYokozunaIndex));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndex create() => RpbYokozunaIndex._();
  RpbYokozunaIndex createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaIndex> createRepeated() => $pb.PbList<RpbYokozunaIndex>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaIndex>(create);
  static RpbYokozunaIndex _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get schema => $_getN(1);
  @$pb.TagNumber(2)
  set schema($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nVal => $_getIZ(2);
  @$pb.TagNumber(3)
  set nVal($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNVal() => $_has(2);
  @$pb.TagNumber(3)
  void clearNVal() => clearField(3);
}

class RpbYokozunaIndexGetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaIndexGetReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RpbYokozunaIndexGetReq._() : super();
  factory RpbYokozunaIndexGetReq() => create();
  factory RpbYokozunaIndexGetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaIndexGetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaIndexGetReq clone() => RpbYokozunaIndexGetReq()..mergeFromMessage(this);
  RpbYokozunaIndexGetReq copyWith(void Function(RpbYokozunaIndexGetReq) updates) => super.copyWith((message) => updates(message as RpbYokozunaIndexGetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexGetReq create() => RpbYokozunaIndexGetReq._();
  RpbYokozunaIndexGetReq createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaIndexGetReq> createRepeated() => $pb.PbList<RpbYokozunaIndexGetReq>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexGetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaIndexGetReq>(create);
  static RpbYokozunaIndexGetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class RpbYokozunaIndexGetResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaIndexGetResp', createEmptyInstance: create)
    ..pc<RpbYokozunaIndex>(1, 'index', $pb.PbFieldType.PM, subBuilder: RpbYokozunaIndex.create)
  ;

  RpbYokozunaIndexGetResp._() : super();
  factory RpbYokozunaIndexGetResp() => create();
  factory RpbYokozunaIndexGetResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaIndexGetResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaIndexGetResp clone() => RpbYokozunaIndexGetResp()..mergeFromMessage(this);
  RpbYokozunaIndexGetResp copyWith(void Function(RpbYokozunaIndexGetResp) updates) => super.copyWith((message) => updates(message as RpbYokozunaIndexGetResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexGetResp create() => RpbYokozunaIndexGetResp._();
  RpbYokozunaIndexGetResp createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaIndexGetResp> createRepeated() => $pb.PbList<RpbYokozunaIndexGetResp>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexGetResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaIndexGetResp>(create);
  static RpbYokozunaIndexGetResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbYokozunaIndex> get index => $_getList(0);
}

class RpbYokozunaIndexPutReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaIndexPutReq', createEmptyInstance: create)
    ..aQM<RpbYokozunaIndex>(1, 'index', subBuilder: RpbYokozunaIndex.create)
    ..a<$core.int>(2, 'timeout', $pb.PbFieldType.OU3)
  ;

  RpbYokozunaIndexPutReq._() : super();
  factory RpbYokozunaIndexPutReq() => create();
  factory RpbYokozunaIndexPutReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaIndexPutReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaIndexPutReq clone() => RpbYokozunaIndexPutReq()..mergeFromMessage(this);
  RpbYokozunaIndexPutReq copyWith(void Function(RpbYokozunaIndexPutReq) updates) => super.copyWith((message) => updates(message as RpbYokozunaIndexPutReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexPutReq create() => RpbYokozunaIndexPutReq._();
  RpbYokozunaIndexPutReq createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaIndexPutReq> createRepeated() => $pb.PbList<RpbYokozunaIndexPutReq>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexPutReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaIndexPutReq>(create);
  static RpbYokozunaIndexPutReq _defaultInstance;

  @$pb.TagNumber(1)
  RpbYokozunaIndex get index => $_getN(0);
  @$pb.TagNumber(1)
  set index(RpbYokozunaIndex v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);
  @$pb.TagNumber(1)
  RpbYokozunaIndex ensureIndex() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get timeout => $_getIZ(1);
  @$pb.TagNumber(2)
  set timeout($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeout() => clearField(2);
}

class RpbYokozunaIndexDeleteReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaIndexDeleteReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.QY)
  ;

  RpbYokozunaIndexDeleteReq._() : super();
  factory RpbYokozunaIndexDeleteReq() => create();
  factory RpbYokozunaIndexDeleteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaIndexDeleteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaIndexDeleteReq clone() => RpbYokozunaIndexDeleteReq()..mergeFromMessage(this);
  RpbYokozunaIndexDeleteReq copyWith(void Function(RpbYokozunaIndexDeleteReq) updates) => super.copyWith((message) => updates(message as RpbYokozunaIndexDeleteReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexDeleteReq create() => RpbYokozunaIndexDeleteReq._();
  RpbYokozunaIndexDeleteReq createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaIndexDeleteReq> createRepeated() => $pb.PbList<RpbYokozunaIndexDeleteReq>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaIndexDeleteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaIndexDeleteReq>(create);
  static RpbYokozunaIndexDeleteReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class RpbYokozunaSchema extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaSchema', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'content', $pb.PbFieldType.OY)
  ;

  RpbYokozunaSchema._() : super();
  factory RpbYokozunaSchema() => create();
  factory RpbYokozunaSchema.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaSchema.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaSchema clone() => RpbYokozunaSchema()..mergeFromMessage(this);
  RpbYokozunaSchema copyWith(void Function(RpbYokozunaSchema) updates) => super.copyWith((message) => updates(message as RpbYokozunaSchema));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchema create() => RpbYokozunaSchema._();
  RpbYokozunaSchema createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaSchema> createRepeated() => $pb.PbList<RpbYokozunaSchema>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchema getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaSchema>(create);
  static RpbYokozunaSchema _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class RpbYokozunaSchemaPutReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaSchemaPutReq', createEmptyInstance: create)
    ..aQM<RpbYokozunaSchema>(1, 'schema', subBuilder: RpbYokozunaSchema.create)
  ;

  RpbYokozunaSchemaPutReq._() : super();
  factory RpbYokozunaSchemaPutReq() => create();
  factory RpbYokozunaSchemaPutReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaSchemaPutReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaSchemaPutReq clone() => RpbYokozunaSchemaPutReq()..mergeFromMessage(this);
  RpbYokozunaSchemaPutReq copyWith(void Function(RpbYokozunaSchemaPutReq) updates) => super.copyWith((message) => updates(message as RpbYokozunaSchemaPutReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchemaPutReq create() => RpbYokozunaSchemaPutReq._();
  RpbYokozunaSchemaPutReq createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaSchemaPutReq> createRepeated() => $pb.PbList<RpbYokozunaSchemaPutReq>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchemaPutReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaSchemaPutReq>(create);
  static RpbYokozunaSchemaPutReq _defaultInstance;

  @$pb.TagNumber(1)
  RpbYokozunaSchema get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema(RpbYokozunaSchema v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => clearField(1);
  @$pb.TagNumber(1)
  RpbYokozunaSchema ensureSchema() => $_ensure(0);
}

class RpbYokozunaSchemaGetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaSchemaGetReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'name', $pb.PbFieldType.QY)
  ;

  RpbYokozunaSchemaGetReq._() : super();
  factory RpbYokozunaSchemaGetReq() => create();
  factory RpbYokozunaSchemaGetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaSchemaGetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaSchemaGetReq clone() => RpbYokozunaSchemaGetReq()..mergeFromMessage(this);
  RpbYokozunaSchemaGetReq copyWith(void Function(RpbYokozunaSchemaGetReq) updates) => super.copyWith((message) => updates(message as RpbYokozunaSchemaGetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchemaGetReq create() => RpbYokozunaSchemaGetReq._();
  RpbYokozunaSchemaGetReq createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaSchemaGetReq> createRepeated() => $pb.PbList<RpbYokozunaSchemaGetReq>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchemaGetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaSchemaGetReq>(create);
  static RpbYokozunaSchemaGetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get name => $_getN(0);
  @$pb.TagNumber(1)
  set name($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class RpbYokozunaSchemaGetResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbYokozunaSchemaGetResp', createEmptyInstance: create)
    ..aQM<RpbYokozunaSchema>(1, 'schema', subBuilder: RpbYokozunaSchema.create)
  ;

  RpbYokozunaSchemaGetResp._() : super();
  factory RpbYokozunaSchemaGetResp() => create();
  factory RpbYokozunaSchemaGetResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbYokozunaSchemaGetResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbYokozunaSchemaGetResp clone() => RpbYokozunaSchemaGetResp()..mergeFromMessage(this);
  RpbYokozunaSchemaGetResp copyWith(void Function(RpbYokozunaSchemaGetResp) updates) => super.copyWith((message) => updates(message as RpbYokozunaSchemaGetResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchemaGetResp create() => RpbYokozunaSchemaGetResp._();
  RpbYokozunaSchemaGetResp createEmptyInstance() => create();
  static $pb.PbList<RpbYokozunaSchemaGetResp> createRepeated() => $pb.PbList<RpbYokozunaSchemaGetResp>();
  @$core.pragma('dart2js:noInline')
  static RpbYokozunaSchemaGetResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbYokozunaSchemaGetResp>(create);
  static RpbYokozunaSchemaGetResp _defaultInstance;

  @$pb.TagNumber(1)
  RpbYokozunaSchema get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema(RpbYokozunaSchema v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => clearField(1);
  @$pb.TagNumber(1)
  RpbYokozunaSchema ensureSchema() => $_ensure(0);
}

