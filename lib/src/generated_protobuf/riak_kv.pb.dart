///
//  Generated code. Do not modify.
//  source: riak_kv.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'riak.pb.dart' as $0;

import 'riak_kv.pbenum.dart';

export 'riak_kv.pbenum.dart';

class RpbGetClientIdResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetClientIdResp', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'clientId', $pb.PbFieldType.QY)
  ;

  RpbGetClientIdResp._() : super();
  factory RpbGetClientIdResp() => create();
  factory RpbGetClientIdResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetClientIdResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetClientIdResp clone() => RpbGetClientIdResp()..mergeFromMessage(this);
  RpbGetClientIdResp copyWith(void Function(RpbGetClientIdResp) updates) => super.copyWith((message) => updates(message as RpbGetClientIdResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetClientIdResp create() => RpbGetClientIdResp._();
  RpbGetClientIdResp createEmptyInstance() => create();
  static $pb.PbList<RpbGetClientIdResp> createRepeated() => $pb.PbList<RpbGetClientIdResp>();
  @$core.pragma('dart2js:noInline')
  static RpbGetClientIdResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetClientIdResp>(create);
  static RpbGetClientIdResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get clientId => $_getN(0);
  @$pb.TagNumber(1)
  set clientId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);
}

class RpbSetClientIdReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbSetClientIdReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'clientId', $pb.PbFieldType.QY)
  ;

  RpbSetClientIdReq._() : super();
  factory RpbSetClientIdReq() => create();
  factory RpbSetClientIdReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbSetClientIdReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbSetClientIdReq clone() => RpbSetClientIdReq()..mergeFromMessage(this);
  RpbSetClientIdReq copyWith(void Function(RpbSetClientIdReq) updates) => super.copyWith((message) => updates(message as RpbSetClientIdReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbSetClientIdReq create() => RpbSetClientIdReq._();
  RpbSetClientIdReq createEmptyInstance() => create();
  static $pb.PbList<RpbSetClientIdReq> createRepeated() => $pb.PbList<RpbSetClientIdReq>();
  @$core.pragma('dart2js:noInline')
  static RpbSetClientIdReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbSetClientIdReq>(create);
  static RpbSetClientIdReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get clientId => $_getN(0);
  @$pb.TagNumber(1)
  set clientId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => clearField(1);
}

class RpbGetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.QY)
    ..a<$core.int>(3, 'r', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'pr', $pb.PbFieldType.OU3)
    ..aOB(5, 'basicQuorum')
    ..aOB(6, 'notfoundOk')
    ..a<$core.List<$core.int>>(7, 'ifModified', $pb.PbFieldType.OY)
    ..aOB(8, 'head')
    ..aOB(9, 'deletedvclock')
    ..a<$core.int>(10, 'timeout', $pb.PbFieldType.OU3)
    ..aOB(11, 'sloppyQuorum')
    ..a<$core.int>(12, 'nVal', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(13, 'type', $pb.PbFieldType.OY)
  ;

  RpbGetReq._() : super();
  factory RpbGetReq() => create();
  factory RpbGetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetReq clone() => RpbGetReq()..mergeFromMessage(this);
  RpbGetReq copyWith(void Function(RpbGetReq) updates) => super.copyWith((message) => updates(message as RpbGetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetReq create() => RpbGetReq._();
  RpbGetReq createEmptyInstance() => create();
  static $pb.PbList<RpbGetReq> createRepeated() => $pb.PbList<RpbGetReq>();
  @$core.pragma('dart2js:noInline')
  static RpbGetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetReq>(create);
  static RpbGetReq _defaultInstance;

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
  $core.int get r => $_getIZ(2);
  @$pb.TagNumber(3)
  set r($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasR() => $_has(2);
  @$pb.TagNumber(3)
  void clearR() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pr => $_getIZ(3);
  @$pb.TagNumber(4)
  set pr($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPr() => $_has(3);
  @$pb.TagNumber(4)
  void clearPr() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get basicQuorum => $_getBF(4);
  @$pb.TagNumber(5)
  set basicQuorum($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBasicQuorum() => $_has(4);
  @$pb.TagNumber(5)
  void clearBasicQuorum() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get notfoundOk => $_getBF(5);
  @$pb.TagNumber(6)
  set notfoundOk($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNotfoundOk() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotfoundOk() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get ifModified => $_getN(6);
  @$pb.TagNumber(7)
  set ifModified($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIfModified() => $_has(6);
  @$pb.TagNumber(7)
  void clearIfModified() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get head => $_getBF(7);
  @$pb.TagNumber(8)
  set head($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHead() => $_has(7);
  @$pb.TagNumber(8)
  void clearHead() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get deletedvclock => $_getBF(8);
  @$pb.TagNumber(9)
  set deletedvclock($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDeletedvclock() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeletedvclock() => clearField(9);

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
  $core.List<$core.int> get type => $_getN(12);
  @$pb.TagNumber(13)
  set type($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasType() => $_has(12);
  @$pb.TagNumber(13)
  void clearType() => clearField(13);
}

class RpbGetResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetResp', createEmptyInstance: create)
    ..pc<RpbContent>(1, 'content', $pb.PbFieldType.PM, subBuilder: RpbContent.create)
    ..a<$core.List<$core.int>>(2, 'vclock', $pb.PbFieldType.OY)
    ..aOB(3, 'unchanged')
  ;

  RpbGetResp._() : super();
  factory RpbGetResp() => create();
  factory RpbGetResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetResp clone() => RpbGetResp()..mergeFromMessage(this);
  RpbGetResp copyWith(void Function(RpbGetResp) updates) => super.copyWith((message) => updates(message as RpbGetResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetResp create() => RpbGetResp._();
  RpbGetResp createEmptyInstance() => create();
  static $pb.PbList<RpbGetResp> createRepeated() => $pb.PbList<RpbGetResp>();
  @$core.pragma('dart2js:noInline')
  static RpbGetResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetResp>(create);
  static RpbGetResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbContent> get content => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get vclock => $_getN(1);
  @$pb.TagNumber(2)
  set vclock($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVclock() => $_has(1);
  @$pb.TagNumber(2)
  void clearVclock() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get unchanged => $_getBF(2);
  @$pb.TagNumber(3)
  set unchanged($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnchanged() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnchanged() => clearField(3);
}

class RpbPutReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbPutReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'vclock', $pb.PbFieldType.OY)
    ..aQM<RpbContent>(4, 'content', subBuilder: RpbContent.create)
    ..a<$core.int>(5, 'w', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'dw', $pb.PbFieldType.OU3)
    ..aOB(7, 'returnBody')
    ..a<$core.int>(8, 'pw', $pb.PbFieldType.OU3)
    ..aOB(9, 'ifNotModified')
    ..aOB(10, 'ifNoneMatch')
    ..aOB(11, 'returnHead')
    ..a<$core.int>(12, 'timeout', $pb.PbFieldType.OU3)
    ..aOB(13, 'asis')
    ..aOB(14, 'sloppyQuorum')
    ..a<$core.int>(15, 'nVal', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(16, 'type', $pb.PbFieldType.OY)
  ;

  RpbPutReq._() : super();
  factory RpbPutReq() => create();
  factory RpbPutReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbPutReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbPutReq clone() => RpbPutReq()..mergeFromMessage(this);
  RpbPutReq copyWith(void Function(RpbPutReq) updates) => super.copyWith((message) => updates(message as RpbPutReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbPutReq create() => RpbPutReq._();
  RpbPutReq createEmptyInstance() => create();
  static $pb.PbList<RpbPutReq> createRepeated() => $pb.PbList<RpbPutReq>();
  @$core.pragma('dart2js:noInline')
  static RpbPutReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbPutReq>(create);
  static RpbPutReq _defaultInstance;

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
  $core.List<$core.int> get vclock => $_getN(2);
  @$pb.TagNumber(3)
  set vclock($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVclock() => $_has(2);
  @$pb.TagNumber(3)
  void clearVclock() => clearField(3);

  @$pb.TagNumber(4)
  RpbContent get content => $_getN(3);
  @$pb.TagNumber(4)
  set content(RpbContent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
  @$pb.TagNumber(4)
  RpbContent ensureContent() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get w => $_getIZ(4);
  @$pb.TagNumber(5)
  set w($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasW() => $_has(4);
  @$pb.TagNumber(5)
  void clearW() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get dw => $_getIZ(5);
  @$pb.TagNumber(6)
  set dw($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDw() => $_has(5);
  @$pb.TagNumber(6)
  void clearDw() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get returnBody => $_getBF(6);
  @$pb.TagNumber(7)
  set returnBody($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReturnBody() => $_has(6);
  @$pb.TagNumber(7)
  void clearReturnBody() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pw => $_getIZ(7);
  @$pb.TagNumber(8)
  set pw($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPw() => $_has(7);
  @$pb.TagNumber(8)
  void clearPw() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get ifNotModified => $_getBF(8);
  @$pb.TagNumber(9)
  set ifNotModified($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIfNotModified() => $_has(8);
  @$pb.TagNumber(9)
  void clearIfNotModified() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get ifNoneMatch => $_getBF(9);
  @$pb.TagNumber(10)
  set ifNoneMatch($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIfNoneMatch() => $_has(9);
  @$pb.TagNumber(10)
  void clearIfNoneMatch() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get returnHead => $_getBF(10);
  @$pb.TagNumber(11)
  set returnHead($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReturnHead() => $_has(10);
  @$pb.TagNumber(11)
  void clearReturnHead() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get timeout => $_getIZ(11);
  @$pb.TagNumber(12)
  set timeout($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTimeout() => $_has(11);
  @$pb.TagNumber(12)
  void clearTimeout() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get asis => $_getBF(12);
  @$pb.TagNumber(13)
  set asis($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAsis() => $_has(12);
  @$pb.TagNumber(13)
  void clearAsis() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get sloppyQuorum => $_getBF(13);
  @$pb.TagNumber(14)
  set sloppyQuorum($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasSloppyQuorum() => $_has(13);
  @$pb.TagNumber(14)
  void clearSloppyQuorum() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get nVal => $_getIZ(14);
  @$pb.TagNumber(15)
  set nVal($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasNVal() => $_has(14);
  @$pb.TagNumber(15)
  void clearNVal() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.int> get type => $_getN(15);
  @$pb.TagNumber(16)
  set type($core.List<$core.int> v) { $_setBytes(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasType() => $_has(15);
  @$pb.TagNumber(16)
  void clearType() => clearField(16);
}

class RpbPutResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbPutResp', createEmptyInstance: create)
    ..pc<RpbContent>(1, 'content', $pb.PbFieldType.PM, subBuilder: RpbContent.create)
    ..a<$core.List<$core.int>>(2, 'vclock', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'key', $pb.PbFieldType.OY)
  ;

  RpbPutResp._() : super();
  factory RpbPutResp() => create();
  factory RpbPutResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbPutResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbPutResp clone() => RpbPutResp()..mergeFromMessage(this);
  RpbPutResp copyWith(void Function(RpbPutResp) updates) => super.copyWith((message) => updates(message as RpbPutResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbPutResp create() => RpbPutResp._();
  RpbPutResp createEmptyInstance() => create();
  static $pb.PbList<RpbPutResp> createRepeated() => $pb.PbList<RpbPutResp>();
  @$core.pragma('dart2js:noInline')
  static RpbPutResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbPutResp>(create);
  static RpbPutResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbContent> get content => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get vclock => $_getN(1);
  @$pb.TagNumber(2)
  set vclock($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVclock() => $_has(1);
  @$pb.TagNumber(2)
  void clearVclock() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(2);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
}

class RpbDelReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbDelReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.QY)
    ..a<$core.int>(3, 'rw', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, 'vclock', $pb.PbFieldType.OY)
    ..a<$core.int>(5, 'r', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'w', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'pr', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'pw', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, 'dw', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, 'timeout', $pb.PbFieldType.OU3)
    ..aOB(11, 'sloppyQuorum')
    ..a<$core.int>(12, 'nVal', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(13, 'type', $pb.PbFieldType.OY)
  ;

  RpbDelReq._() : super();
  factory RpbDelReq() => create();
  factory RpbDelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbDelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbDelReq clone() => RpbDelReq()..mergeFromMessage(this);
  RpbDelReq copyWith(void Function(RpbDelReq) updates) => super.copyWith((message) => updates(message as RpbDelReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbDelReq create() => RpbDelReq._();
  RpbDelReq createEmptyInstance() => create();
  static $pb.PbList<RpbDelReq> createRepeated() => $pb.PbList<RpbDelReq>();
  @$core.pragma('dart2js:noInline')
  static RpbDelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbDelReq>(create);
  static RpbDelReq _defaultInstance;

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
  $core.int get rw => $_getIZ(2);
  @$pb.TagNumber(3)
  set rw($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRw() => $_has(2);
  @$pb.TagNumber(3)
  void clearRw() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get vclock => $_getN(3);
  @$pb.TagNumber(4)
  set vclock($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVclock() => $_has(3);
  @$pb.TagNumber(4)
  void clearVclock() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get r => $_getIZ(4);
  @$pb.TagNumber(5)
  set r($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasR() => $_has(4);
  @$pb.TagNumber(5)
  void clearR() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get w => $_getIZ(5);
  @$pb.TagNumber(6)
  set w($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasW() => $_has(5);
  @$pb.TagNumber(6)
  void clearW() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get pr => $_getIZ(6);
  @$pb.TagNumber(7)
  set pr($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPr() => $_has(6);
  @$pb.TagNumber(7)
  void clearPr() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pw => $_getIZ(7);
  @$pb.TagNumber(8)
  set pw($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPw() => $_has(7);
  @$pb.TagNumber(8)
  void clearPw() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get dw => $_getIZ(8);
  @$pb.TagNumber(9)
  set dw($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDw() => $_has(8);
  @$pb.TagNumber(9)
  void clearDw() => clearField(9);

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
  $core.List<$core.int> get type => $_getN(12);
  @$pb.TagNumber(13)
  set type($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasType() => $_has(12);
  @$pb.TagNumber(13)
  void clearType() => clearField(13);
}

class RpbListBucketsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbListBucketsReq', createEmptyInstance: create)
    ..a<$core.int>(1, 'timeout', $pb.PbFieldType.OU3)
    ..aOB(2, 'stream')
    ..a<$core.List<$core.int>>(3, 'type', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RpbListBucketsReq._() : super();
  factory RpbListBucketsReq() => create();
  factory RpbListBucketsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbListBucketsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbListBucketsReq clone() => RpbListBucketsReq()..mergeFromMessage(this);
  RpbListBucketsReq copyWith(void Function(RpbListBucketsReq) updates) => super.copyWith((message) => updates(message as RpbListBucketsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbListBucketsReq create() => RpbListBucketsReq._();
  RpbListBucketsReq createEmptyInstance() => create();
  static $pb.PbList<RpbListBucketsReq> createRepeated() => $pb.PbList<RpbListBucketsReq>();
  @$core.pragma('dart2js:noInline')
  static RpbListBucketsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbListBucketsReq>(create);
  static RpbListBucketsReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timeout => $_getIZ(0);
  @$pb.TagNumber(1)
  set timeout($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeout() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get stream => $_getBF(1);
  @$pb.TagNumber(2)
  set stream($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStream() => $_has(1);
  @$pb.TagNumber(2)
  void clearStream() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class RpbListBucketsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbListBucketsResp', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'buckets', $pb.PbFieldType.PY)
    ..aOB(2, 'done')
    ..hasRequiredFields = false
  ;

  RpbListBucketsResp._() : super();
  factory RpbListBucketsResp() => create();
  factory RpbListBucketsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbListBucketsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbListBucketsResp clone() => RpbListBucketsResp()..mergeFromMessage(this);
  RpbListBucketsResp copyWith(void Function(RpbListBucketsResp) updates) => super.copyWith((message) => updates(message as RpbListBucketsResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbListBucketsResp create() => RpbListBucketsResp._();
  RpbListBucketsResp createEmptyInstance() => create();
  static $pb.PbList<RpbListBucketsResp> createRepeated() => $pb.PbList<RpbListBucketsResp>();
  @$core.pragma('dart2js:noInline')
  static RpbListBucketsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbListBucketsResp>(create);
  static RpbListBucketsResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get buckets => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
}

class RpbListKeysReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbListKeysReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.int>(2, 'timeout', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(3, 'type', $pb.PbFieldType.OY)
  ;

  RpbListKeysReq._() : super();
  factory RpbListKeysReq() => create();
  factory RpbListKeysReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbListKeysReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbListKeysReq clone() => RpbListKeysReq()..mergeFromMessage(this);
  RpbListKeysReq copyWith(void Function(RpbListKeysReq) updates) => super.copyWith((message) => updates(message as RpbListKeysReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbListKeysReq create() => RpbListKeysReq._();
  RpbListKeysReq createEmptyInstance() => create();
  static $pb.PbList<RpbListKeysReq> createRepeated() => $pb.PbList<RpbListKeysReq>();
  @$core.pragma('dart2js:noInline')
  static RpbListKeysReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbListKeysReq>(create);
  static RpbListKeysReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get timeout => $_getIZ(1);
  @$pb.TagNumber(2)
  set timeout($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeout() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeout() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class RpbListKeysResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbListKeysResp', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'keys', $pb.PbFieldType.PY)
    ..aOB(2, 'done')
    ..hasRequiredFields = false
  ;

  RpbListKeysResp._() : super();
  factory RpbListKeysResp() => create();
  factory RpbListKeysResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbListKeysResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbListKeysResp clone() => RpbListKeysResp()..mergeFromMessage(this);
  RpbListKeysResp copyWith(void Function(RpbListKeysResp) updates) => super.copyWith((message) => updates(message as RpbListKeysResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbListKeysResp create() => RpbListKeysResp._();
  RpbListKeysResp createEmptyInstance() => create();
  static $pb.PbList<RpbListKeysResp> createRepeated() => $pb.PbList<RpbListKeysResp>();
  @$core.pragma('dart2js:noInline')
  static RpbListKeysResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbListKeysResp>(create);
  static RpbListKeysResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get keys => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
}

class RpbMapRedReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbMapRedReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'request', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'contentType', $pb.PbFieldType.QY)
  ;

  RpbMapRedReq._() : super();
  factory RpbMapRedReq() => create();
  factory RpbMapRedReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbMapRedReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbMapRedReq clone() => RpbMapRedReq()..mergeFromMessage(this);
  RpbMapRedReq copyWith(void Function(RpbMapRedReq) updates) => super.copyWith((message) => updates(message as RpbMapRedReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbMapRedReq create() => RpbMapRedReq._();
  RpbMapRedReq createEmptyInstance() => create();
  static $pb.PbList<RpbMapRedReq> createRepeated() => $pb.PbList<RpbMapRedReq>();
  @$core.pragma('dart2js:noInline')
  static RpbMapRedReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbMapRedReq>(create);
  static RpbMapRedReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get request => $_getN(0);
  @$pb.TagNumber(1)
  set request($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get contentType => $_getN(1);
  @$pb.TagNumber(2)
  set contentType($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContentType() => $_has(1);
  @$pb.TagNumber(2)
  void clearContentType() => clearField(2);
}

class RpbMapRedResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbMapRedResp', createEmptyInstance: create)
    ..a<$core.int>(1, 'phase', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'response', $pb.PbFieldType.OY)
    ..aOB(3, 'done')
    ..hasRequiredFields = false
  ;

  RpbMapRedResp._() : super();
  factory RpbMapRedResp() => create();
  factory RpbMapRedResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbMapRedResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbMapRedResp clone() => RpbMapRedResp()..mergeFromMessage(this);
  RpbMapRedResp copyWith(void Function(RpbMapRedResp) updates) => super.copyWith((message) => updates(message as RpbMapRedResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbMapRedResp create() => RpbMapRedResp._();
  RpbMapRedResp createEmptyInstance() => create();
  static $pb.PbList<RpbMapRedResp> createRepeated() => $pb.PbList<RpbMapRedResp>();
  @$core.pragma('dart2js:noInline')
  static RpbMapRedResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbMapRedResp>(create);
  static RpbMapRedResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get phase => $_getIZ(0);
  @$pb.TagNumber(1)
  set phase($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhase() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get response => $_getN(1);
  @$pb.TagNumber(2)
  set response($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class RpbIndexReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbIndexReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'index', $pb.PbFieldType.QY)
    ..e<RpbIndexReq_IndexQueryType>(3, 'qtype', $pb.PbFieldType.QE, defaultOrMaker: RpbIndexReq_IndexQueryType.eq, valueOf: RpbIndexReq_IndexQueryType.valueOf, enumValues: RpbIndexReq_IndexQueryType.values)
    ..a<$core.List<$core.int>>(4, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, 'rangeMin', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, 'rangeMax', $pb.PbFieldType.OY)
    ..aOB(7, 'returnTerms')
    ..aOB(8, 'stream')
    ..a<$core.int>(9, 'maxResults', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(10, 'continuation', $pb.PbFieldType.OY)
    ..a<$core.int>(11, 'timeout', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(12, 'type', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(13, 'termRegex', $pb.PbFieldType.OY)
    ..aOB(14, 'paginationSort')
    ..a<$core.List<$core.int>>(15, 'coverContext', $pb.PbFieldType.OY)
    ..aOB(16, 'returnBody')
  ;

  RpbIndexReq._() : super();
  factory RpbIndexReq() => create();
  factory RpbIndexReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbIndexReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbIndexReq clone() => RpbIndexReq()..mergeFromMessage(this);
  RpbIndexReq copyWith(void Function(RpbIndexReq) updates) => super.copyWith((message) => updates(message as RpbIndexReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbIndexReq create() => RpbIndexReq._();
  RpbIndexReq createEmptyInstance() => create();
  static $pb.PbList<RpbIndexReq> createRepeated() => $pb.PbList<RpbIndexReq>();
  @$core.pragma('dart2js:noInline')
  static RpbIndexReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbIndexReq>(create);
  static RpbIndexReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get index => $_getN(1);
  @$pb.TagNumber(2)
  set index($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  RpbIndexReq_IndexQueryType get qtype => $_getN(2);
  @$pb.TagNumber(3)
  set qtype(RpbIndexReq_IndexQueryType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasQtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearQtype() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get key => $_getN(3);
  @$pb.TagNumber(4)
  set key($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get rangeMin => $_getN(4);
  @$pb.TagNumber(5)
  set rangeMin($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRangeMin() => $_has(4);
  @$pb.TagNumber(5)
  void clearRangeMin() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get rangeMax => $_getN(5);
  @$pb.TagNumber(6)
  set rangeMax($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRangeMax() => $_has(5);
  @$pb.TagNumber(6)
  void clearRangeMax() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get returnTerms => $_getBF(6);
  @$pb.TagNumber(7)
  set returnTerms($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReturnTerms() => $_has(6);
  @$pb.TagNumber(7)
  void clearReturnTerms() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get stream => $_getBF(7);
  @$pb.TagNumber(8)
  set stream($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStream() => $_has(7);
  @$pb.TagNumber(8)
  void clearStream() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get maxResults => $_getIZ(8);
  @$pb.TagNumber(9)
  set maxResults($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMaxResults() => $_has(8);
  @$pb.TagNumber(9)
  void clearMaxResults() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get continuation => $_getN(9);
  @$pb.TagNumber(10)
  set continuation($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasContinuation() => $_has(9);
  @$pb.TagNumber(10)
  void clearContinuation() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get timeout => $_getIZ(10);
  @$pb.TagNumber(11)
  set timeout($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTimeout() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimeout() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get type => $_getN(11);
  @$pb.TagNumber(12)
  set type($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasType() => $_has(11);
  @$pb.TagNumber(12)
  void clearType() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get termRegex => $_getN(12);
  @$pb.TagNumber(13)
  set termRegex($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTermRegex() => $_has(12);
  @$pb.TagNumber(13)
  void clearTermRegex() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get paginationSort => $_getBF(13);
  @$pb.TagNumber(14)
  set paginationSort($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPaginationSort() => $_has(13);
  @$pb.TagNumber(14)
  void clearPaginationSort() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get coverContext => $_getN(14);
  @$pb.TagNumber(15)
  set coverContext($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCoverContext() => $_has(14);
  @$pb.TagNumber(15)
  void clearCoverContext() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get returnBody => $_getBF(15);
  @$pb.TagNumber(16)
  set returnBody($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasReturnBody() => $_has(15);
  @$pb.TagNumber(16)
  void clearReturnBody() => clearField(16);
}

class RpbIndexResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbIndexResp', createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'keys', $pb.PbFieldType.PY)
    ..pc<$0.RpbPair>(2, 'results', $pb.PbFieldType.PM, subBuilder: $0.RpbPair.create)
    ..a<$core.List<$core.int>>(3, 'continuation', $pb.PbFieldType.OY)
    ..aOB(4, 'done')
  ;

  RpbIndexResp._() : super();
  factory RpbIndexResp() => create();
  factory RpbIndexResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbIndexResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbIndexResp clone() => RpbIndexResp()..mergeFromMessage(this);
  RpbIndexResp copyWith(void Function(RpbIndexResp) updates) => super.copyWith((message) => updates(message as RpbIndexResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbIndexResp create() => RpbIndexResp._();
  RpbIndexResp createEmptyInstance() => create();
  static $pb.PbList<RpbIndexResp> createRepeated() => $pb.PbList<RpbIndexResp>();
  @$core.pragma('dart2js:noInline')
  static RpbIndexResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbIndexResp>(create);
  static RpbIndexResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get keys => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$0.RpbPair> get results => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get continuation => $_getN(2);
  @$pb.TagNumber(3)
  set continuation($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContinuation() => $_has(2);
  @$pb.TagNumber(3)
  void clearContinuation() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get done => $_getBF(3);
  @$pb.TagNumber(4)
  set done($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDone() => $_has(3);
  @$pb.TagNumber(4)
  void clearDone() => clearField(4);
}

class RpbIndexBodyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbIndexBodyResp', createEmptyInstance: create)
    ..pc<RpbIndexObject>(1, 'objects', $pb.PbFieldType.PM, subBuilder: RpbIndexObject.create)
    ..a<$core.List<$core.int>>(2, 'continuation', $pb.PbFieldType.OY)
    ..aOB(3, 'done')
  ;

  RpbIndexBodyResp._() : super();
  factory RpbIndexBodyResp() => create();
  factory RpbIndexBodyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbIndexBodyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbIndexBodyResp clone() => RpbIndexBodyResp()..mergeFromMessage(this);
  RpbIndexBodyResp copyWith(void Function(RpbIndexBodyResp) updates) => super.copyWith((message) => updates(message as RpbIndexBodyResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbIndexBodyResp create() => RpbIndexBodyResp._();
  RpbIndexBodyResp createEmptyInstance() => create();
  static $pb.PbList<RpbIndexBodyResp> createRepeated() => $pb.PbList<RpbIndexBodyResp>();
  @$core.pragma('dart2js:noInline')
  static RpbIndexBodyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbIndexBodyResp>(create);
  static RpbIndexBodyResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbIndexObject> get objects => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get continuation => $_getN(1);
  @$pb.TagNumber(2)
  set continuation($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContinuation() => $_has(1);
  @$pb.TagNumber(2)
  void clearContinuation() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class RpbCSBucketReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCSBucketReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'startKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(3, 'endKey', $pb.PbFieldType.OY)
    ..a<$core.bool>(4, 'startIncl', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..aOB(5, 'endIncl')
    ..a<$core.List<$core.int>>(6, 'continuation', $pb.PbFieldType.OY)
    ..a<$core.int>(7, 'maxResults', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'timeout', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(9, 'type', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, 'coverContext', $pb.PbFieldType.OY)
  ;

  RpbCSBucketReq._() : super();
  factory RpbCSBucketReq() => create();
  factory RpbCSBucketReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCSBucketReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCSBucketReq clone() => RpbCSBucketReq()..mergeFromMessage(this);
  RpbCSBucketReq copyWith(void Function(RpbCSBucketReq) updates) => super.copyWith((message) => updates(message as RpbCSBucketReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCSBucketReq create() => RpbCSBucketReq._();
  RpbCSBucketReq createEmptyInstance() => create();
  static $pb.PbList<RpbCSBucketReq> createRepeated() => $pb.PbList<RpbCSBucketReq>();
  @$core.pragma('dart2js:noInline')
  static RpbCSBucketReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCSBucketReq>(create);
  static RpbCSBucketReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bucket => $_getN(0);
  @$pb.TagNumber(1)
  set bucket($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get startKey => $_getN(1);
  @$pb.TagNumber(2)
  set startKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get endKey => $_getN(2);
  @$pb.TagNumber(3)
  set endKey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get startIncl => $_getB(3, true);
  @$pb.TagNumber(4)
  set startIncl($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartIncl() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartIncl() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get endIncl => $_getBF(4);
  @$pb.TagNumber(5)
  set endIncl($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndIncl() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndIncl() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get continuation => $_getN(5);
  @$pb.TagNumber(6)
  set continuation($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContinuation() => $_has(5);
  @$pb.TagNumber(6)
  void clearContinuation() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxResults => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxResults($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxResults() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxResults() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get timeout => $_getIZ(7);
  @$pb.TagNumber(8)
  set timeout($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimeout() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeout() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get type => $_getN(8);
  @$pb.TagNumber(9)
  set type($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get coverContext => $_getN(9);
  @$pb.TagNumber(10)
  set coverContext($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCoverContext() => $_has(9);
  @$pb.TagNumber(10)
  void clearCoverContext() => clearField(10);
}

class RpbCSBucketResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCSBucketResp', createEmptyInstance: create)
    ..pc<RpbIndexObject>(1, 'objects', $pb.PbFieldType.PM, subBuilder: RpbIndexObject.create)
    ..a<$core.List<$core.int>>(2, 'continuation', $pb.PbFieldType.OY)
    ..aOB(3, 'done')
  ;

  RpbCSBucketResp._() : super();
  factory RpbCSBucketResp() => create();
  factory RpbCSBucketResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCSBucketResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCSBucketResp clone() => RpbCSBucketResp()..mergeFromMessage(this);
  RpbCSBucketResp copyWith(void Function(RpbCSBucketResp) updates) => super.copyWith((message) => updates(message as RpbCSBucketResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCSBucketResp create() => RpbCSBucketResp._();
  RpbCSBucketResp createEmptyInstance() => create();
  static $pb.PbList<RpbCSBucketResp> createRepeated() => $pb.PbList<RpbCSBucketResp>();
  @$core.pragma('dart2js:noInline')
  static RpbCSBucketResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCSBucketResp>(create);
  static RpbCSBucketResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbIndexObject> get objects => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get continuation => $_getN(1);
  @$pb.TagNumber(2)
  set continuation($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContinuation() => $_has(1);
  @$pb.TagNumber(2)
  void clearContinuation() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class RpbIndexObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbIndexObject', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'key', $pb.PbFieldType.QY)
    ..aQM<RpbGetResp>(2, 'object', subBuilder: RpbGetResp.create)
  ;

  RpbIndexObject._() : super();
  factory RpbIndexObject() => create();
  factory RpbIndexObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbIndexObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbIndexObject clone() => RpbIndexObject()..mergeFromMessage(this);
  RpbIndexObject copyWith(void Function(RpbIndexObject) updates) => super.copyWith((message) => updates(message as RpbIndexObject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbIndexObject create() => RpbIndexObject._();
  RpbIndexObject createEmptyInstance() => create();
  static $pb.PbList<RpbIndexObject> createRepeated() => $pb.PbList<RpbIndexObject>();
  @$core.pragma('dart2js:noInline')
  static RpbIndexObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbIndexObject>(create);
  static RpbIndexObject _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  RpbGetResp get object => $_getN(1);
  @$pb.TagNumber(2)
  set object(RpbGetResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearObject() => clearField(2);
  @$pb.TagNumber(2)
  RpbGetResp ensureObject() => $_ensure(1);
}

class RpbContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbContent', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'value', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'contentType', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'charset', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'contentEncoding', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, 'vtag', $pb.PbFieldType.OY)
    ..pc<RpbLink>(6, 'links', $pb.PbFieldType.PM, subBuilder: RpbLink.create)
    ..a<$core.int>(7, 'lastMod', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'lastModUsecs', $pb.PbFieldType.OU3)
    ..pc<$0.RpbPair>(9, 'usermeta', $pb.PbFieldType.PM, subBuilder: $0.RpbPair.create)
    ..pc<$0.RpbPair>(10, 'indexes', $pb.PbFieldType.PM, subBuilder: $0.RpbPair.create)
    ..aOB(11, 'deleted')
    ..a<$core.int>(12, 'ttl', $pb.PbFieldType.OU3)
  ;

  RpbContent._() : super();
  factory RpbContent() => create();
  factory RpbContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbContent clone() => RpbContent()..mergeFromMessage(this);
  RpbContent copyWith(void Function(RpbContent) updates) => super.copyWith((message) => updates(message as RpbContent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbContent create() => RpbContent._();
  RpbContent createEmptyInstance() => create();
  static $pb.PbList<RpbContent> createRepeated() => $pb.PbList<RpbContent>();
  @$core.pragma('dart2js:noInline')
  static RpbContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbContent>(create);
  static RpbContent _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get contentType => $_getN(1);
  @$pb.TagNumber(2)
  set contentType($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContentType() => $_has(1);
  @$pb.TagNumber(2)
  void clearContentType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get charset => $_getN(2);
  @$pb.TagNumber(3)
  set charset($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCharset() => $_has(2);
  @$pb.TagNumber(3)
  void clearCharset() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get contentEncoding => $_getN(3);
  @$pb.TagNumber(4)
  set contentEncoding($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContentEncoding() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentEncoding() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get vtag => $_getN(4);
  @$pb.TagNumber(5)
  set vtag($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVtag() => $_has(4);
  @$pb.TagNumber(5)
  void clearVtag() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<RpbLink> get links => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get lastMod => $_getIZ(6);
  @$pb.TagNumber(7)
  set lastMod($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastMod() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastMod() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get lastModUsecs => $_getIZ(7);
  @$pb.TagNumber(8)
  set lastModUsecs($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastModUsecs() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastModUsecs() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$0.RpbPair> get usermeta => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$0.RpbPair> get indexes => $_getList(9);

  @$pb.TagNumber(11)
  $core.bool get deleted => $_getBF(10);
  @$pb.TagNumber(11)
  set deleted($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDeleted() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeleted() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get ttl => $_getIZ(11);
  @$pb.TagNumber(12)
  set ttl($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTtl() => $_has(11);
  @$pb.TagNumber(12)
  void clearTtl() => clearField(12);
}

class RpbLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbLink', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'tag', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RpbLink._() : super();
  factory RpbLink() => create();
  factory RpbLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbLink clone() => RpbLink()..mergeFromMessage(this);
  RpbLink copyWith(void Function(RpbLink) updates) => super.copyWith((message) => updates(message as RpbLink));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbLink create() => RpbLink._();
  RpbLink createEmptyInstance() => create();
  static $pb.PbList<RpbLink> createRepeated() => $pb.PbList<RpbLink>();
  @$core.pragma('dart2js:noInline')
  static RpbLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbLink>(create);
  static RpbLink _defaultInstance;

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
  $core.List<$core.int> get tag => $_getN(2);
  @$pb.TagNumber(3)
  set tag($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTag() => $_has(2);
  @$pb.TagNumber(3)
  void clearTag() => clearField(3);
}

class RpbCounterUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCounterUpdateReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.QY)
    ..a<Int64>(3, 'amount', $pb.PbFieldType.QS6, defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(4, 'w', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'dw', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'pw', $pb.PbFieldType.OU3)
    ..aOB(7, 'returnvalue')
  ;

  RpbCounterUpdateReq._() : super();
  factory RpbCounterUpdateReq() => create();
  factory RpbCounterUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCounterUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCounterUpdateReq clone() => RpbCounterUpdateReq()..mergeFromMessage(this);
  RpbCounterUpdateReq copyWith(void Function(RpbCounterUpdateReq) updates) => super.copyWith((message) => updates(message as RpbCounterUpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCounterUpdateReq create() => RpbCounterUpdateReq._();
  RpbCounterUpdateReq createEmptyInstance() => create();
  static $pb.PbList<RpbCounterUpdateReq> createRepeated() => $pb.PbList<RpbCounterUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static RpbCounterUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCounterUpdateReq>(create);
  static RpbCounterUpdateReq _defaultInstance;

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
  Int64 get amount => $_getI64(2);
  @$pb.TagNumber(3)
  set amount(Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get w => $_getIZ(3);
  @$pb.TagNumber(4)
  set w($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasW() => $_has(3);
  @$pb.TagNumber(4)
  void clearW() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get dw => $_getIZ(4);
  @$pb.TagNumber(5)
  set dw($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDw() => $_has(4);
  @$pb.TagNumber(5)
  void clearDw() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get pw => $_getIZ(5);
  @$pb.TagNumber(6)
  set pw($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPw() => $_has(5);
  @$pb.TagNumber(6)
  void clearPw() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get returnvalue => $_getBF(6);
  @$pb.TagNumber(7)
  set returnvalue($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReturnvalue() => $_has(6);
  @$pb.TagNumber(7)
  void clearReturnvalue() => clearField(7);
}

class RpbCounterUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCounterUpdateResp', createEmptyInstance: create)
    ..a<Int64>(1, 'value', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false
  ;

  RpbCounterUpdateResp._() : super();
  factory RpbCounterUpdateResp() => create();
  factory RpbCounterUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCounterUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCounterUpdateResp clone() => RpbCounterUpdateResp()..mergeFromMessage(this);
  RpbCounterUpdateResp copyWith(void Function(RpbCounterUpdateResp) updates) => super.copyWith((message) => updates(message as RpbCounterUpdateResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCounterUpdateResp create() => RpbCounterUpdateResp._();
  RpbCounterUpdateResp createEmptyInstance() => create();
  static $pb.PbList<RpbCounterUpdateResp> createRepeated() => $pb.PbList<RpbCounterUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static RpbCounterUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCounterUpdateResp>(create);
  static RpbCounterUpdateResp _defaultInstance;

  @$pb.TagNumber(1)
  Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value(Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class RpbCounterGetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCounterGetReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.QY)
    ..a<$core.int>(3, 'r', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'pr', $pb.PbFieldType.OU3)
    ..aOB(5, 'basicQuorum')
    ..aOB(6, 'notfoundOk')
  ;

  RpbCounterGetReq._() : super();
  factory RpbCounterGetReq() => create();
  factory RpbCounterGetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCounterGetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCounterGetReq clone() => RpbCounterGetReq()..mergeFromMessage(this);
  RpbCounterGetReq copyWith(void Function(RpbCounterGetReq) updates) => super.copyWith((message) => updates(message as RpbCounterGetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCounterGetReq create() => RpbCounterGetReq._();
  RpbCounterGetReq createEmptyInstance() => create();
  static $pb.PbList<RpbCounterGetReq> createRepeated() => $pb.PbList<RpbCounterGetReq>();
  @$core.pragma('dart2js:noInline')
  static RpbCounterGetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCounterGetReq>(create);
  static RpbCounterGetReq _defaultInstance;

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
  $core.int get r => $_getIZ(2);
  @$pb.TagNumber(3)
  set r($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasR() => $_has(2);
  @$pb.TagNumber(3)
  void clearR() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pr => $_getIZ(3);
  @$pb.TagNumber(4)
  set pr($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPr() => $_has(3);
  @$pb.TagNumber(4)
  void clearPr() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get basicQuorum => $_getBF(4);
  @$pb.TagNumber(5)
  set basicQuorum($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBasicQuorum() => $_has(4);
  @$pb.TagNumber(5)
  void clearBasicQuorum() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get notfoundOk => $_getBF(5);
  @$pb.TagNumber(6)
  set notfoundOk($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNotfoundOk() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotfoundOk() => clearField(6);
}

class RpbCounterGetResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCounterGetResp', createEmptyInstance: create)
    ..a<Int64>(1, 'value', $pb.PbFieldType.OS6, defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false
  ;

  RpbCounterGetResp._() : super();
  factory RpbCounterGetResp() => create();
  factory RpbCounterGetResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCounterGetResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCounterGetResp clone() => RpbCounterGetResp()..mergeFromMessage(this);
  RpbCounterGetResp copyWith(void Function(RpbCounterGetResp) updates) => super.copyWith((message) => updates(message as RpbCounterGetResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCounterGetResp create() => RpbCounterGetResp._();
  RpbCounterGetResp createEmptyInstance() => create();
  static $pb.PbList<RpbCounterGetResp> createRepeated() => $pb.PbList<RpbCounterGetResp>();
  @$core.pragma('dart2js:noInline')
  static RpbCounterGetResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCounterGetResp>(create);
  static RpbCounterGetResp _defaultInstance;

  @$pb.TagNumber(1)
  Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value(Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class RpbGetBucketKeyPreflistReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetBucketKeyPreflistReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(3, 'type', $pb.PbFieldType.OY)
  ;

  RpbGetBucketKeyPreflistReq._() : super();
  factory RpbGetBucketKeyPreflistReq() => create();
  factory RpbGetBucketKeyPreflistReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetBucketKeyPreflistReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetBucketKeyPreflistReq clone() => RpbGetBucketKeyPreflistReq()..mergeFromMessage(this);
  RpbGetBucketKeyPreflistReq copyWith(void Function(RpbGetBucketKeyPreflistReq) updates) => super.copyWith((message) => updates(message as RpbGetBucketKeyPreflistReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketKeyPreflistReq create() => RpbGetBucketKeyPreflistReq._();
  RpbGetBucketKeyPreflistReq createEmptyInstance() => create();
  static $pb.PbList<RpbGetBucketKeyPreflistReq> createRepeated() => $pb.PbList<RpbGetBucketKeyPreflistReq>();
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketKeyPreflistReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetBucketKeyPreflistReq>(create);
  static RpbGetBucketKeyPreflistReq _defaultInstance;

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
}

class RpbGetBucketKeyPreflistResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbGetBucketKeyPreflistResp', createEmptyInstance: create)
    ..pc<RpbBucketKeyPreflistItem>(1, 'preflist', $pb.PbFieldType.PM, subBuilder: RpbBucketKeyPreflistItem.create)
  ;

  RpbGetBucketKeyPreflistResp._() : super();
  factory RpbGetBucketKeyPreflistResp() => create();
  factory RpbGetBucketKeyPreflistResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbGetBucketKeyPreflistResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbGetBucketKeyPreflistResp clone() => RpbGetBucketKeyPreflistResp()..mergeFromMessage(this);
  RpbGetBucketKeyPreflistResp copyWith(void Function(RpbGetBucketKeyPreflistResp) updates) => super.copyWith((message) => updates(message as RpbGetBucketKeyPreflistResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketKeyPreflistResp create() => RpbGetBucketKeyPreflistResp._();
  RpbGetBucketKeyPreflistResp createEmptyInstance() => create();
  static $pb.PbList<RpbGetBucketKeyPreflistResp> createRepeated() => $pb.PbList<RpbGetBucketKeyPreflistResp>();
  @$core.pragma('dart2js:noInline')
  static RpbGetBucketKeyPreflistResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbGetBucketKeyPreflistResp>(create);
  static RpbGetBucketKeyPreflistResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbBucketKeyPreflistItem> get preflist => $_getList(0);
}

class RpbBucketKeyPreflistItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbBucketKeyPreflistItem', createEmptyInstance: create)
    ..a<Int64>(1, 'partition', $pb.PbFieldType.Q6, defaultOrMaker: Int64.ZERO)
    ..a<$core.List<$core.int>>(2, 'node', $pb.PbFieldType.QY)
    ..a<$core.bool>(3, 'primary', $pb.PbFieldType.QB)
  ;

  RpbBucketKeyPreflistItem._() : super();
  factory RpbBucketKeyPreflistItem() => create();
  factory RpbBucketKeyPreflistItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbBucketKeyPreflistItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbBucketKeyPreflistItem clone() => RpbBucketKeyPreflistItem()..mergeFromMessage(this);
  RpbBucketKeyPreflistItem copyWith(void Function(RpbBucketKeyPreflistItem) updates) => super.copyWith((message) => updates(message as RpbBucketKeyPreflistItem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbBucketKeyPreflistItem create() => RpbBucketKeyPreflistItem._();
  RpbBucketKeyPreflistItem createEmptyInstance() => create();
  static $pb.PbList<RpbBucketKeyPreflistItem> createRepeated() => $pb.PbList<RpbBucketKeyPreflistItem>();
  @$core.pragma('dart2js:noInline')
  static RpbBucketKeyPreflistItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbBucketKeyPreflistItem>(create);
  static RpbBucketKeyPreflistItem _defaultInstance;

  @$pb.TagNumber(1)
  Int64 get partition => $_getI64(0);
  @$pb.TagNumber(1)
  set partition(Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartition() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get node => $_getN(1);
  @$pb.TagNumber(2)
  set node($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearNode() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get primary => $_getBF(2);
  @$pb.TagNumber(3)
  set primary($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrimary() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrimary() => clearField(3);
}

class RpbCoverageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCoverageReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'type', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'bucket', $pb.PbFieldType.QY)
    ..a<$core.int>(3, 'minPartitions', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, 'replaceCover', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(5, 'unavailableCover', $pb.PbFieldType.PY)
  ;

  RpbCoverageReq._() : super();
  factory RpbCoverageReq() => create();
  factory RpbCoverageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCoverageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCoverageReq clone() => RpbCoverageReq()..mergeFromMessage(this);
  RpbCoverageReq copyWith(void Function(RpbCoverageReq) updates) => super.copyWith((message) => updates(message as RpbCoverageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCoverageReq create() => RpbCoverageReq._();
  RpbCoverageReq createEmptyInstance() => create();
  static $pb.PbList<RpbCoverageReq> createRepeated() => $pb.PbList<RpbCoverageReq>();
  @$core.pragma('dart2js:noInline')
  static RpbCoverageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCoverageReq>(create);
  static RpbCoverageReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get type => $_getN(0);
  @$pb.TagNumber(1)
  set type($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get bucket => $_getN(1);
  @$pb.TagNumber(2)
  set bucket($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBucket() => $_has(1);
  @$pb.TagNumber(2)
  void clearBucket() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minPartitions => $_getIZ(2);
  @$pb.TagNumber(3)
  set minPartitions($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinPartitions() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinPartitions() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get replaceCover => $_getN(3);
  @$pb.TagNumber(4)
  set replaceCover($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReplaceCover() => $_has(3);
  @$pb.TagNumber(4)
  void clearReplaceCover() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get unavailableCover => $_getList(4);
}

class RpbCoverageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCoverageResp', createEmptyInstance: create)
    ..pc<RpbCoverageEntry>(1, 'entries', $pb.PbFieldType.PM, subBuilder: RpbCoverageEntry.create)
  ;

  RpbCoverageResp._() : super();
  factory RpbCoverageResp() => create();
  factory RpbCoverageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCoverageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCoverageResp clone() => RpbCoverageResp()..mergeFromMessage(this);
  RpbCoverageResp copyWith(void Function(RpbCoverageResp) updates) => super.copyWith((message) => updates(message as RpbCoverageResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCoverageResp create() => RpbCoverageResp._();
  RpbCoverageResp createEmptyInstance() => create();
  static $pb.PbList<RpbCoverageResp> createRepeated() => $pb.PbList<RpbCoverageResp>();
  @$core.pragma('dart2js:noInline')
  static RpbCoverageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCoverageResp>(create);
  static RpbCoverageResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbCoverageEntry> get entries => $_getList(0);
}

class RpbCoverageEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbCoverageEntry', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'ip', $pb.PbFieldType.QY)
    ..a<$core.int>(2, 'port', $pb.PbFieldType.QU3)
    ..a<$core.List<$core.int>>(3, 'keyspaceDesc', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'coverContext', $pb.PbFieldType.QY)
  ;

  RpbCoverageEntry._() : super();
  factory RpbCoverageEntry() => create();
  factory RpbCoverageEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbCoverageEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbCoverageEntry clone() => RpbCoverageEntry()..mergeFromMessage(this);
  RpbCoverageEntry copyWith(void Function(RpbCoverageEntry) updates) => super.copyWith((message) => updates(message as RpbCoverageEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbCoverageEntry create() => RpbCoverageEntry._();
  RpbCoverageEntry createEmptyInstance() => create();
  static $pb.PbList<RpbCoverageEntry> createRepeated() => $pb.PbList<RpbCoverageEntry>();
  @$core.pragma('dart2js:noInline')
  static RpbCoverageEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbCoverageEntry>(create);
  static RpbCoverageEntry _defaultInstance;

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
  $core.List<$core.int> get keyspaceDesc => $_getN(2);
  @$pb.TagNumber(3)
  set keyspaceDesc($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyspaceDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyspaceDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get coverContext => $_getN(3);
  @$pb.TagNumber(4)
  set coverContext($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverContext() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverContext() => clearField(4);
}

