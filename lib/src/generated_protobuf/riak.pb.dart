///
//  Generated code. Do not modify.
//  source: riak.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'riak.pbenum.dart';

export 'riak.pbenum.dart';

class RpbErrorResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbErrorResp', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'errmsg', $pb.PbFieldType.QY)
    ..a<$core.int>(2, 'errcode', $pb.PbFieldType.QU3)
  ;

  RpbErrorResp._() : super();
  factory RpbErrorResp() => create();
  factory RpbErrorResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbErrorResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbErrorResp clone() => RpbErrorResp()..mergeFromMessage(this);
  RpbErrorResp copyWith(void Function(RpbErrorResp) updates) => super.copyWith((message) => updates(message as RpbErrorResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbErrorResp create() => RpbErrorResp._();
  RpbErrorResp createEmptyInstance() => create();
  static $pb.PbList<RpbErrorResp> createRepeated() => $pb.PbList<RpbErrorResp>();
  @$core.pragma('dart2js:noInline')
  static RpbErrorResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbErrorResp>(create);
  static RpbErrorResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get errmsg => $_getN(0);
  @$pb.TagNumber(1)
  set errmsg($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrmsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrmsg() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get errcode => $_getIZ(1);
  @$pb.TagNumber(2)
  set errcode($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrcode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrcode() => clearField(2);
}

class RpbGetServerInfoResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetServerInfoResp', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'node', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'serverVersion', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RpbGetServerInfoResp._() : super();
  factory RpbGetServerInfoResp() => create();
  factory RpbGetServerInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetServerInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetServerInfoResp clone() => RpbGetServerInfoResp()..mergeFromMessage(this);
  RpbGetServerInfoResp copyWith(void Function(RpbGetServerInfoResp) updates) => super.copyWith((message) => updates(message as RpbGetServerInfoResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetServerInfoResp create() => RpbGetServerInfoResp._();
  RpbGetServerInfoResp createEmptyInstance() => create();
  static $pb.PbList<RpbGetServerInfoResp> createRepeated() => $pb.PbList<RpbGetServerInfoResp>();
  @$core.pragma('dart2js:noInline')
  static RpbGetServerInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetServerInfoResp>(create);
  static RpbGetServerInfoResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get node => $_getN(0);
  @$pb.TagNumber(1)
  set node($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get serverVersion => $_getN(1);
  @$pb.TagNumber(2)
  set serverVersion($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServerVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerVersion() => clearField(2);
}

class RpbPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbPair', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'key', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'value', $pb.PbFieldType.OY)
  ;

  RpbPair._() : super();
  factory RpbPair() => create();
  factory RpbPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbPair clone() => RpbPair()..mergeFromMessage(this);
  RpbPair copyWith(void Function(RpbPair) updates) => super.copyWith((message) => updates(message as RpbPair));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbPair create() => RpbPair._();
  RpbPair createEmptyInstance() => create();
  static $pb.PbList<RpbPair> createRepeated() => $pb.PbList<RpbPair>();
  @$core.pragma('dart2js:noInline')
  static RpbPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbPair>(create);
  static RpbPair _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class RpbGetBucketReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetBucketReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'type', $pb.PbFieldType.OY)
  ;

  RpbGetBucketReq._() : super();
  factory RpbGetBucketReq() => create();
  factory RpbGetBucketReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetBucketReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetBucketReq clone() => RpbGetBucketReq()..mergeFromMessage(this);
  RpbGetBucketReq copyWith(void Function(RpbGetBucketReq) updates) => super.copyWith((message) => updates(message as RpbGetBucketReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketReq create() => RpbGetBucketReq._();
  RpbGetBucketReq createEmptyInstance() => create();
  static $pb.PbList<RpbGetBucketReq> createRepeated() => $pb.PbList<RpbGetBucketReq>();
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetBucketReq>(create);
  static RpbGetBucketReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get type => $_getN(1);
  @$pb.TagNumber(2)
  set type($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class RpbGetBucketResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetBucketResp', createEmptyInstance: create)
    ..aQM<RpbBucketProps>(1, 'props', subBuilder: RpbBucketProps.create)
  ;

  RpbGetBucketResp._() : super();
  factory RpbGetBucketResp() => create();
  factory RpbGetBucketResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetBucketResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetBucketResp clone() => RpbGetBucketResp()..mergeFromMessage(this);
  RpbGetBucketResp copyWith(void Function(RpbGetBucketResp) updates) => super.copyWith((message) => updates(message as RpbGetBucketResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketResp create() => RpbGetBucketResp._();
  RpbGetBucketResp createEmptyInstance() => create();
  static $pb.PbList<RpbGetBucketResp> createRepeated() => $pb.PbList<RpbGetBucketResp>();
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetBucketResp>(create);
  static RpbGetBucketResp _defaultInstance;

  @$pb.TagNumber(1)
  RpbBucketProps get props => $_getN(0);
  @$pb.TagNumber(1)
  set props(RpbBucketProps v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProps() => $_has(0);
  @$pb.TagNumber(1)
  void clearProps() => clearField(1);
  @$pb.TagNumber(1)
  RpbBucketProps ensureProps() => $_ensure(0);
}

class RpbSetBucketReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbSetBucketReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..aQM<RpbBucketProps>(2, 'props', subBuilder: RpbBucketProps.create)
    ..a<$core.List<$core.int>>(3, 'type', $pb.PbFieldType.OY)
  ;

  RpbSetBucketReq._() : super();
  factory RpbSetBucketReq() => create();
  factory RpbSetBucketReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbSetBucketReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbSetBucketReq clone() => RpbSetBucketReq()..mergeFromMessage(this);
  RpbSetBucketReq copyWith(void Function(RpbSetBucketReq) updates) => super.copyWith((message) => updates(message as RpbSetBucketReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbSetBucketReq create() => RpbSetBucketReq._();
  RpbSetBucketReq createEmptyInstance() => create();
  static $pb.PbList<RpbSetBucketReq> createRepeated() => $pb.PbList<RpbSetBucketReq>();
  @$core.pragma('dart2js:noInline')
  static RpbSetBucketReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbSetBucketReq>(create);
  static RpbSetBucketReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  RpbBucketProps get props => $_getN(1);
  @$pb.TagNumber(2)
  set props(RpbBucketProps v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProps() => $_has(1);
  @$pb.TagNumber(2)
  void clearProps() => clearField(2);
  @$pb.TagNumber(2)
  RpbBucketProps ensureProps() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class RpbResetBucketReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbResetBucketReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'type', $pb.PbFieldType.OY)
  ;

  RpbResetBucketReq._() : super();
  factory RpbResetBucketReq() => create();
  factory RpbResetBucketReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbResetBucketReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbResetBucketReq clone() => RpbResetBucketReq()..mergeFromMessage(this);
  RpbResetBucketReq copyWith(void Function(RpbResetBucketReq) updates) => super.copyWith((message) => updates(message as RpbResetBucketReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbResetBucketReq create() => RpbResetBucketReq._();
  RpbResetBucketReq createEmptyInstance() => create();
  static $pb.PbList<RpbResetBucketReq> createRepeated() => $pb.PbList<RpbResetBucketReq>();
  @$core.pragma('dart2js:noInline')
  static RpbResetBucketReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbResetBucketReq>(create);
  static RpbResetBucketReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get type => $_getN(1);
  @$pb.TagNumber(2)
  set type($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class RpbGetBucketTypeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetBucketTypeReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'type', $pb.PbFieldType.QY)
  ;

  RpbGetBucketTypeReq._() : super();
  factory RpbGetBucketTypeReq() => create();
  factory RpbGetBucketTypeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetBucketTypeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetBucketTypeReq clone() => RpbGetBucketTypeReq()..mergeFromMessage(this);
  RpbGetBucketTypeReq copyWith(void Function(RpbGetBucketTypeReq) updates) => super.copyWith((message) => updates(message as RpbGetBucketTypeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketTypeReq create() => RpbGetBucketTypeReq._();
  RpbGetBucketTypeReq createEmptyInstance() => create();
  static $pb.PbList<RpbGetBucketTypeReq> createRepeated() => $pb.PbList<RpbGetBucketTypeReq>();
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketTypeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetBucketTypeReq>(create);
  static RpbGetBucketTypeReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get type => $_getN(0);
  @$pb.TagNumber(1)
  set type($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class RpbSetBucketTypeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbSetBucketTypeReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'type', $pb.PbFieldType.QY)
    ..aQM<RpbBucketProps>(2, 'props', subBuilder: RpbBucketProps.create)
  ;

  RpbSetBucketTypeReq._() : super();
  factory RpbSetBucketTypeReq() => create();
  factory RpbSetBucketTypeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbSetBucketTypeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbSetBucketTypeReq clone() => RpbSetBucketTypeReq()..mergeFromMessage(this);
  RpbSetBucketTypeReq copyWith(void Function(RpbSetBucketTypeReq) updates) => super.copyWith((message) => updates(message as RpbSetBucketTypeReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbSetBucketTypeReq create() => RpbSetBucketTypeReq._();
  RpbSetBucketTypeReq createEmptyInstance() => create();
  static $pb.PbList<RpbSetBucketTypeReq> createRepeated() => $pb.PbList<RpbSetBucketTypeReq>();
  @$core.pragma('dart2js:noInline')
  static RpbSetBucketTypeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbSetBucketTypeReq>(create);
  static RpbSetBucketTypeReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get type => $_getN(0);
  @$pb.TagNumber(1)
  set type($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  RpbBucketProps get props => $_getN(1);
  @$pb.TagNumber(2)
  set props(RpbBucketProps v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProps() => $_has(1);
  @$pb.TagNumber(2)
  void clearProps() => clearField(2);
  @$pb.TagNumber(2)
  RpbBucketProps ensureProps() => $_ensure(1);
}

class RpbModFun extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbModFun', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'module', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'function', $pb.PbFieldType.QY)
  ;

  RpbModFun._() : super();
  factory RpbModFun() => create();
  factory RpbModFun.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbModFun.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbModFun clone() => RpbModFun()..mergeFromMessage(this);
  RpbModFun copyWith(void Function(RpbModFun) updates) => super.copyWith((message) => updates(message as RpbModFun));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbModFun create() => RpbModFun._();
  RpbModFun createEmptyInstance() => create();
  static $pb.PbList<RpbModFun> createRepeated() => $pb.PbList<RpbModFun>();
  @$core.pragma('dart2js:noInline')
  static RpbModFun getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbModFun>(create);
  static RpbModFun _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get module => $_getN(0);
  @$pb.TagNumber(1)
  set module($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModule() => $_has(0);
  @$pb.TagNumber(1)
  void clearModule() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get function => $_getN(1);
  @$pb.TagNumber(2)
  set function($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFunction() => $_has(1);
  @$pb.TagNumber(2)
  void clearFunction() => clearField(2);
}

class RpbCommitHook extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCommitHook', createEmptyInstance: create)
    ..aOM<RpbModFun>(1, 'modfun', subBuilder: RpbModFun.create)
    ..a<$core.List<$core.int>>(2, 'name', $pb.PbFieldType.OY)
  ;

  RpbCommitHook._() : super();
  factory RpbCommitHook() => create();
  factory RpbCommitHook.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCommitHook.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCommitHook clone() => RpbCommitHook()..mergeFromMessage(this);
  RpbCommitHook copyWith(void Function(RpbCommitHook) updates) => super.copyWith((message) => updates(message as RpbCommitHook));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCommitHook create() => RpbCommitHook._();
  RpbCommitHook createEmptyInstance() => create();
  static $pb.PbList<RpbCommitHook> createRepeated() => $pb.PbList<RpbCommitHook>();
  @$core.pragma('dart2js:noInline')
  static RpbCommitHook getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCommitHook>(create);
  static RpbCommitHook _defaultInstance;

  @$pb.TagNumber(1)
  RpbModFun get modfun => $_getN(0);
  @$pb.TagNumber(1)
  set modfun(RpbModFun v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModfun() => $_has(0);
  @$pb.TagNumber(1)
  void clearModfun() => clearField(1);
  @$pb.TagNumber(1)
  RpbModFun ensureModfun() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class RpbBucketProps extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbBucketProps', createEmptyInstance: create)
    ..a<$core.int>(1, 'nVal', $pb.PbFieldType.OU3)
    ..aOB(2, 'allowMult')
    ..aOB(3, 'lastWriteWins')
    ..pc<RpbCommitHook>(4, 'precommit', $pb.PbFieldType.PM, subBuilder: RpbCommitHook.create)
    ..aOB(5, 'hasPrecommit')
    ..pc<RpbCommitHook>(6, 'postcommit', $pb.PbFieldType.PM, subBuilder: RpbCommitHook.create)
    ..aOB(7, 'hasPostcommit')
    ..aOM<RpbModFun>(8, 'chashKeyfun', subBuilder: RpbModFun.create)
    ..aOM<RpbModFun>(9, 'linkfun', subBuilder: RpbModFun.create)
    ..a<$core.int>(10, 'oldVclock', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, 'youngVclock', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, 'bigVclock', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, 'smallVclock', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, 'pr', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, 'r', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, 'w', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, 'pw', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, 'dw', $pb.PbFieldType.OU3)
    ..a<$core.int>(19, 'rw', $pb.PbFieldType.OU3)
    ..aOB(20, 'basicQuorum')
    ..aOB(21, 'notfoundOk')
    ..a<$core.List<$core.int>>(22, 'backend', $pb.PbFieldType.OY)
    ..aOB(23, 'search')
    ..e<RpbBucketProps_RpbReplMode>(24, 'repl', $pb.PbFieldType.OE, defaultOrMaker: RpbBucketProps_RpbReplMode.FALSE, valueOf: RpbBucketProps_RpbReplMode.valueOf, enumValues: RpbBucketProps_RpbReplMode.values)
    ..a<$core.List<$core.int>>(25, 'searchIndex', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(26, 'datatype', $pb.PbFieldType.OY)
    ..aOB(27, 'consistent')
    ..aOB(28, 'writeOnce')
    ..a<$core.int>(29, 'hllPrecision', $pb.PbFieldType.OU3)
    ..a<$core.int>(30, 'ttl', $pb.PbFieldType.OU3)
  ;

  RpbBucketProps._() : super();
  factory RpbBucketProps() => create();
  factory RpbBucketProps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbBucketProps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbBucketProps clone() => RpbBucketProps()..mergeFromMessage(this);
  RpbBucketProps copyWith(void Function(RpbBucketProps) updates) => super.copyWith((message) => updates(message as RpbBucketProps));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbBucketProps create() => RpbBucketProps._();
  RpbBucketProps createEmptyInstance() => create();
  static $pb.PbList<RpbBucketProps> createRepeated() => $pb.PbList<RpbBucketProps>();
  @$core.pragma('dart2js:noInline')
  static RpbBucketProps getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbBucketProps>(create);
  static RpbBucketProps _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nVal => $_getIZ(0);
  @$pb.TagNumber(1)
  set nVal($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearNVal() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get allowMult => $_getBF(1);
  @$pb.TagNumber(2)
  set allowMult($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAllowMult() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllowMult() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get lastWriteWins => $_getBF(2);
  @$pb.TagNumber(3)
  set lastWriteWins($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastWriteWins() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastWriteWins() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RpbCommitHook> get precommit => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get hasPrecommit => $_getBF(4);
  @$pb.TagNumber(5)
  set hasPrecommit($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHasPrecommit() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasPrecommit() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<RpbCommitHook> get postcommit => $_getList(5);

  @$pb.TagNumber(7)
  $core.bool get hasPostcommit => $_getBF(6);
  @$pb.TagNumber(7)
  set hasPostcommit($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHasPostcommit() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasPostcommit() => clearField(7);

  @$pb.TagNumber(8)
  RpbModFun get chashKeyfun => $_getN(7);
  @$pb.TagNumber(8)
  set chashKeyfun(RpbModFun v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasChashKeyfun() => $_has(7);
  @$pb.TagNumber(8)
  void clearChashKeyfun() => clearField(8);
  @$pb.TagNumber(8)
  RpbModFun ensureChashKeyfun() => $_ensure(7);

  @$pb.TagNumber(9)
  RpbModFun get linkfun => $_getN(8);
  @$pb.TagNumber(9)
  set linkfun(RpbModFun v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLinkfun() => $_has(8);
  @$pb.TagNumber(9)
  void clearLinkfun() => clearField(9);
  @$pb.TagNumber(9)
  RpbModFun ensureLinkfun() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get oldVclock => $_getIZ(9);
  @$pb.TagNumber(10)
  set oldVclock($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOldVclock() => $_has(9);
  @$pb.TagNumber(10)
  void clearOldVclock() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get youngVclock => $_getIZ(10);
  @$pb.TagNumber(11)
  set youngVclock($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasYoungVclock() => $_has(10);
  @$pb.TagNumber(11)
  void clearYoungVclock() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get bigVclock => $_getIZ(11);
  @$pb.TagNumber(12)
  set bigVclock($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBigVclock() => $_has(11);
  @$pb.TagNumber(12)
  void clearBigVclock() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get smallVclock => $_getIZ(12);
  @$pb.TagNumber(13)
  set smallVclock($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSmallVclock() => $_has(12);
  @$pb.TagNumber(13)
  void clearSmallVclock() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get pr => $_getIZ(13);
  @$pb.TagNumber(14)
  set pr($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPr() => $_has(13);
  @$pb.TagNumber(14)
  void clearPr() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get r => $_getIZ(14);
  @$pb.TagNumber(15)
  set r($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasR() => $_has(14);
  @$pb.TagNumber(15)
  void clearR() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get w => $_getIZ(15);
  @$pb.TagNumber(16)
  set w($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasW() => $_has(15);
  @$pb.TagNumber(16)
  void clearW() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get pw => $_getIZ(16);
  @$pb.TagNumber(17)
  set pw($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPw() => $_has(16);
  @$pb.TagNumber(17)
  void clearPw() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get dw => $_getIZ(17);
  @$pb.TagNumber(18)
  set dw($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasDw() => $_has(17);
  @$pb.TagNumber(18)
  void clearDw() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get rw => $_getIZ(18);
  @$pb.TagNumber(19)
  set rw($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasRw() => $_has(18);
  @$pb.TagNumber(19)
  void clearRw() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get basicQuorum => $_getBF(19);
  @$pb.TagNumber(20)
  set basicQuorum($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBasicQuorum() => $_has(19);
  @$pb.TagNumber(20)
  void clearBasicQuorum() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get notfoundOk => $_getBF(20);
  @$pb.TagNumber(21)
  set notfoundOk($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasNotfoundOk() => $_has(20);
  @$pb.TagNumber(21)
  void clearNotfoundOk() => clearField(21);

  @$pb.TagNumber(22)
  $core.List<$core.int> get backend => $_getN(21);
  @$pb.TagNumber(22)
  set backend($core.List<$core.int> v) { $_setBytes(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasBackend() => $_has(21);
  @$pb.TagNumber(22)
  void clearBackend() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get search => $_getBF(22);
  @$pb.TagNumber(23)
  set search($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasSearch() => $_has(22);
  @$pb.TagNumber(23)
  void clearSearch() => clearField(23);

  @$pb.TagNumber(24)
  RpbBucketProps_RpbReplMode get repl => $_getN(23);
  @$pb.TagNumber(24)
  set repl(RpbBucketProps_RpbReplMode v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasRepl() => $_has(23);
  @$pb.TagNumber(24)
  void clearRepl() => clearField(24);

  @$pb.TagNumber(25)
  $core.List<$core.int> get searchIndex => $_getN(24);
  @$pb.TagNumber(25)
  set searchIndex($core.List<$core.int> v) { $_setBytes(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasSearchIndex() => $_has(24);
  @$pb.TagNumber(25)
  void clearSearchIndex() => clearField(25);

  @$pb.TagNumber(26)
  $core.List<$core.int> get datatype => $_getN(25);
  @$pb.TagNumber(26)
  set datatype($core.List<$core.int> v) { $_setBytes(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasDatatype() => $_has(25);
  @$pb.TagNumber(26)
  void clearDatatype() => clearField(26);

  @$pb.TagNumber(27)
  $core.bool get consistent => $_getBF(26);
  @$pb.TagNumber(27)
  set consistent($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasConsistent() => $_has(26);
  @$pb.TagNumber(27)
  void clearConsistent() => clearField(27);

  @$pb.TagNumber(28)
  $core.bool get writeOnce => $_getBF(27);
  @$pb.TagNumber(28)
  set writeOnce($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasWriteOnce() => $_has(27);
  @$pb.TagNumber(28)
  void clearWriteOnce() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get hllPrecision => $_getIZ(28);
  @$pb.TagNumber(29)
  set hllPrecision($core.int v) { $_setUnsignedInt32(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasHllPrecision() => $_has(28);
  @$pb.TagNumber(29)
  void clearHllPrecision() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get ttl => $_getIZ(29);
  @$pb.TagNumber(30)
  set ttl($core.int v) { $_setUnsignedInt32(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasTtl() => $_has(29);
  @$pb.TagNumber(30)
  void clearTtl() => clearField(30);
}

class RpbAuthReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbAuthReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'user', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'password', $pb.PbFieldType.QY)
  ;

  RpbAuthReq._() : super();
  factory RpbAuthReq() => create();
  factory RpbAuthReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbAuthReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbAuthReq clone() => RpbAuthReq()..mergeFromMessage(this);
  RpbAuthReq copyWith(void Function(RpbAuthReq) updates) => super.copyWith((message) => updates(message as RpbAuthReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbAuthReq create() => RpbAuthReq._();
  RpbAuthReq createEmptyInstance() => create();
  static $pb.PbList<RpbAuthReq> createRepeated() => $pb.PbList<RpbAuthReq>();
  @$core.pragma('dart2js:noInline')
  static RpbAuthReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbAuthReq>(create);
  static RpbAuthReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get password => $_getN(1);
  @$pb.TagNumber(2)
  set password($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

