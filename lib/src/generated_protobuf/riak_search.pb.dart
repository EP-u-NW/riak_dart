///
//  Generated code. Do not modify.
//  source: riak_search.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'riak.pb.dart' as $0;

class RpbSearchDoc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbSearchDoc', createEmptyInstance: create)
    ..pc<$0.RpbPair>(1, 'fields', $pb.PbFieldType.PM, subBuilder: $0.RpbPair.create)
  ;

  RpbSearchDoc._() : super();
  factory RpbSearchDoc() => create();
  factory RpbSearchDoc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbSearchDoc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbSearchDoc clone() => RpbSearchDoc()..mergeFromMessage(this);
  RpbSearchDoc copyWith(void Function(RpbSearchDoc) updates) => super.copyWith((message) => updates(message as RpbSearchDoc));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbSearchDoc create() => RpbSearchDoc._();
  RpbSearchDoc createEmptyInstance() => create();
  static $pb.PbList<RpbSearchDoc> createRepeated() => $pb.PbList<RpbSearchDoc>();
  @$core.pragma('dart2js:noInline')
  static RpbSearchDoc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbSearchDoc>(create);
  static RpbSearchDoc _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.RpbPair> get fields => $_getList(0);
}

class RpbSearchQueryReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbSearchQueryReq', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'q', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(2, 'index', $pb.PbFieldType.QY)
    ..a<$core.int>(3, 'rows', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'start', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(5, 'sort', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, 'filter', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'df', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, 'op', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(9, 'fl', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(10, 'presort', $pb.PbFieldType.OY)
  ;

  RpbSearchQueryReq._() : super();
  factory RpbSearchQueryReq() => create();
  factory RpbSearchQueryReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbSearchQueryReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbSearchQueryReq clone() => RpbSearchQueryReq()..mergeFromMessage(this);
  RpbSearchQueryReq copyWith(void Function(RpbSearchQueryReq) updates) => super.copyWith((message) => updates(message as RpbSearchQueryReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbSearchQueryReq create() => RpbSearchQueryReq._();
  RpbSearchQueryReq createEmptyInstance() => create();
  static $pb.PbList<RpbSearchQueryReq> createRepeated() => $pb.PbList<RpbSearchQueryReq>();
  @$core.pragma('dart2js:noInline')
  static RpbSearchQueryReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbSearchQueryReq>(create);
  static RpbSearchQueryReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get q => $_getN(0);
  @$pb.TagNumber(1)
  set q($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQ() => $_has(0);
  @$pb.TagNumber(1)
  void clearQ() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get index => $_getN(1);
  @$pb.TagNumber(2)
  set index($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rows => $_getIZ(2);
  @$pb.TagNumber(3)
  set rows($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRows() => $_has(2);
  @$pb.TagNumber(3)
  void clearRows() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get start => $_getIZ(3);
  @$pb.TagNumber(4)
  set start($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearStart() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get sort => $_getN(4);
  @$pb.TagNumber(5)
  set sort($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSort() => $_has(4);
  @$pb.TagNumber(5)
  void clearSort() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get filter => $_getN(5);
  @$pb.TagNumber(6)
  set filter($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFilter() => $_has(5);
  @$pb.TagNumber(6)
  void clearFilter() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get df => $_getN(6);
  @$pb.TagNumber(7)
  set df($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDf() => $_has(6);
  @$pb.TagNumber(7)
  void clearDf() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get op => $_getN(7);
  @$pb.TagNumber(8)
  set op($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOp() => $_has(7);
  @$pb.TagNumber(8)
  void clearOp() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.List<$core.int>> get fl => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get presort => $_getN(9);
  @$pb.TagNumber(10)
  set presort($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPresort() => $_has(9);
  @$pb.TagNumber(10)
  void clearPresort() => clearField(10);
}

class RpbSearchQueryResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RpbSearchQueryResp', createEmptyInstance: create)
    ..pc<RpbSearchDoc>(1, 'docs', $pb.PbFieldType.PM, subBuilder: RpbSearchDoc.create)
    ..a<$core.double>(2, 'maxScore', $pb.PbFieldType.OF)
    ..a<$core.int>(3, 'numFound', $pb.PbFieldType.OU3)
  ;

  RpbSearchQueryResp._() : super();
  factory RpbSearchQueryResp() => create();
  factory RpbSearchQueryResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RpbSearchQueryResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RpbSearchQueryResp clone() => RpbSearchQueryResp()..mergeFromMessage(this);
  RpbSearchQueryResp copyWith(void Function(RpbSearchQueryResp) updates) => super.copyWith((message) => updates(message as RpbSearchQueryResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RpbSearchQueryResp create() => RpbSearchQueryResp._();
  RpbSearchQueryResp createEmptyInstance() => create();
  static $pb.PbList<RpbSearchQueryResp> createRepeated() => $pb.PbList<RpbSearchQueryResp>();
  @$core.pragma('dart2js:noInline')
  static RpbSearchQueryResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RpbSearchQueryResp>(create);
  static RpbSearchQueryResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RpbSearchDoc> get docs => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get maxScore => $_getN(1);
  @$pb.TagNumber(2)
  set maxScore($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numFound => $_getIZ(2);
  @$pb.TagNumber(3)
  set numFound($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumFound() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumFound() => clearField(3);
}

