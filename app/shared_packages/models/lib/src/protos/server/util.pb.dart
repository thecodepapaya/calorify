// This is a generated file - do not edit.
//
// Generated from protos/server/util.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;
import 'util.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'util.pbenum.dart';

class HealthResponse extends $pb.GeneratedMessage {
  factory HealthResponse({
    $core.String? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  HealthResponse._();

  factory HealthResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthResponse copyWith(void Function(HealthResponse) updates) =>
      super.copyWith((message) => updates(message as HealthResponse))
          as HealthResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthResponse create() => HealthResponse._();
  @$core.override
  HealthResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthResponse>(create);
  static HealthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class LLMCallMetaData extends $pb.GeneratedMessage {
  factory LLMCallMetaData({
    $fixnum.Int64? id,
    $core.String? analysisId,
    $0.Timestamp? createdAt,
    LLMCallMetaData_Stage? stage,
    $core.String? model,
    $fixnum.Int64? promptTokens,
    $fixnum.Int64? cachedTokens,
    $fixnum.Int64? completionTokens,
    $fixnum.Int64? durationMs,
    $core.String? error,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (analysisId != null) result.analysisId = analysisId;
    if (createdAt != null) result.createdAt = createdAt;
    if (stage != null) result.stage = stage;
    if (model != null) result.model = model;
    if (promptTokens != null) result.promptTokens = promptTokens;
    if (cachedTokens != null) result.cachedTokens = cachedTokens;
    if (completionTokens != null) result.completionTokens = completionTokens;
    if (durationMs != null) result.durationMs = durationMs;
    if (error != null) result.error = error;
    return result;
  }

  LLMCallMetaData._();

  factory LLMCallMetaData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LLMCallMetaData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LLMCallMetaData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'analysisId')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aE<LLMCallMetaData_Stage>(4, _omitFieldNames ? '' : 'stage',
        enumValues: LLMCallMetaData_Stage.values)
    ..aOS(5, _omitFieldNames ? '' : 'model')
    ..aInt64(6, _omitFieldNames ? '' : 'promptTokens')
    ..aInt64(7, _omitFieldNames ? '' : 'cachedTokens')
    ..aInt64(8, _omitFieldNames ? '' : 'completionTokens')
    ..aInt64(9, _omitFieldNames ? '' : 'durationMs')
    ..aOS(10, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLMCallMetaData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LLMCallMetaData copyWith(void Function(LLMCallMetaData) updates) =>
      super.copyWith((message) => updates(message as LLMCallMetaData))
          as LLMCallMetaData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LLMCallMetaData create() => LLMCallMetaData._();
  @$core.override
  LLMCallMetaData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LLMCallMetaData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LLMCallMetaData>(create);
  static LLMCallMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get analysisId => $_getSZ(1);
  @$pb.TagNumber(2)
  set analysisId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAnalysisId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnalysisId() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  LLMCallMetaData_Stage get stage => $_getN(3);
  @$pb.TagNumber(4)
  set stage(LLMCallMetaData_Stage value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStage() => $_has(3);
  @$pb.TagNumber(4)
  void clearStage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get model => $_getSZ(4);
  @$pb.TagNumber(5)
  set model($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasModel() => $_has(4);
  @$pb.TagNumber(5)
  void clearModel() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get promptTokens => $_getI64(5);
  @$pb.TagNumber(6)
  set promptTokens($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPromptTokens() => $_has(5);
  @$pb.TagNumber(6)
  void clearPromptTokens() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get cachedTokens => $_getI64(6);
  @$pb.TagNumber(7)
  set cachedTokens($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCachedTokens() => $_has(6);
  @$pb.TagNumber(7)
  void clearCachedTokens() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get completionTokens => $_getI64(7);
  @$pb.TagNumber(8)
  set completionTokens($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCompletionTokens() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompletionTokens() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get durationMs => $_getI64(8);
  @$pb.TagNumber(9)
  set durationMs($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDurationMs() => $_has(8);
  @$pb.TagNumber(9)
  void clearDurationMs() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get error => $_getSZ(9);
  @$pb.TagNumber(10)
  set error($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasError() => $_has(9);
  @$pb.TagNumber(10)
  void clearError() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
