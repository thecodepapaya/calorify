// This is a generated file - do not edit.
//
// Generated from protos/calorify/http_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../meal/meal.pb.dart' as $1;
import 'ai_meal_summary_trend.pbenum.dart' as $2;
import 'http_api.pbenum.dart';
import 'meal_analysis_pipeline.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'http_api.pbenum.dart';

class ApiResult extends $pb.GeneratedMessage {
  factory ApiResult({
    $core.bool? ok,
    $core.String? message,
  }) {
    final result = create();
    if (ok != null) result.ok = ok;
    if (message != null) result.message = message;
    return result;
  }

  ApiResult._();

  factory ApiResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApiResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApiResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApiResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApiResult copyWith(void Function(ApiResult) updates) =>
      super.copyWith((message) => updates(message as ApiResult)) as ApiResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiResult create() => ApiResult._();
  @$core.override
  ApiResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApiResult getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiResult>(create);
  static ApiResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class AiMealSummaryResponse extends $pb.GeneratedMessage {
  factory AiMealSummaryResponse({
    $core.String? summary,
    $core.String? generatedAt,
    $core.int? mealCount,
    $core.Iterable<$core.String>? topFoods,
    $core.int? macroBalanceScore,
    $2.AiMealSummaryTrend? trend,
  }) {
    final result = create();
    if (summary != null) result.summary = summary;
    if (generatedAt != null) result.generatedAt = generatedAt;
    if (mealCount != null) result.mealCount = mealCount;
    if (topFoods != null) result.topFoods.addAll(topFoods);
    if (macroBalanceScore != null) result.macroBalanceScore = macroBalanceScore;
    if (trend != null) result.trend = trend;
    return result;
  }

  AiMealSummaryResponse._();

  factory AiMealSummaryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiMealSummaryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiMealSummaryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'summary')
    ..aOS(2, _omitFieldNames ? '' : 'generatedAt')
    ..aI(3, _omitFieldNames ? '' : 'mealCount')
    ..pPS(4, _omitFieldNames ? '' : 'topFoods')
    ..aI(5, _omitFieldNames ? '' : 'macroBalanceScore')
    ..aE<$2.AiMealSummaryTrend>(6, _omitFieldNames ? '' : 'trend',
        enumValues: $2.AiMealSummaryTrend.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiMealSummaryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiMealSummaryResponse copyWith(
          void Function(AiMealSummaryResponse) updates) =>
      super.copyWith((message) => updates(message as AiMealSummaryResponse))
          as AiMealSummaryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiMealSummaryResponse create() => AiMealSummaryResponse._();
  @$core.override
  AiMealSummaryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiMealSummaryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiMealSummaryResponse>(create);
  static AiMealSummaryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get summary => $_getSZ(0);
  @$pb.TagNumber(1)
  set summary($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummary() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get generatedAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set generatedAt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGeneratedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneratedAt() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get mealCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set mealCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMealCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMealCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get topFoods => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get macroBalanceScore => $_getIZ(4);
  @$pb.TagNumber(5)
  set macroBalanceScore($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMacroBalanceScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearMacroBalanceScore() => $_clearField(5);

  @$pb.TagNumber(6)
  $2.AiMealSummaryTrend get trend => $_getN(5);
  @$pb.TagNumber(6)
  set trend($2.AiMealSummaryTrend value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTrend() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrend() => $_clearField(6);
}

class MealAnalysisTipsResponse extends $pb.GeneratedMessage {
  factory MealAnalysisTipsResponse({
    $core.int? version,
    $core.Iterable<$core.String>? tips,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (tips != null) result.tips.addAll(tips);
    return result;
  }

  MealAnalysisTipsResponse._();

  factory MealAnalysisTipsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisTipsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisTipsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'version')
    ..pPS(2, _omitFieldNames ? '' : 'tips')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisTipsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisTipsResponse copyWith(
          void Function(MealAnalysisTipsResponse) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisTipsResponse))
          as MealAnalysisTipsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisTipsResponse create() => MealAnalysisTipsResponse._();
  @$core.override
  MealAnalysisTipsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisTipsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisTipsResponse>(create);
  static MealAnalysisTipsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get tips => $_getList(1);
}

class MealAnalysisTextRequest extends $pb.GeneratedMessage {
  factory MealAnalysisTextRequest({
    $core.String? analysisId,
    $core.String? textDescription,
    $core.bool? localAttempted,
    $0.MealAnalysisFallbackReason? fallbackReason,
    $core.String? localAttemptId,
    $fixnum.Int64? localAttemptStartedAtEpochMs,
    $fixnum.Int64? localAttemptCompletedAtEpochMs,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (textDescription != null) result.textDescription = textDescription;
    if (localAttempted != null) result.localAttempted = localAttempted;
    if (fallbackReason != null) result.fallbackReason = fallbackReason;
    if (localAttemptId != null) result.localAttemptId = localAttemptId;
    if (localAttemptStartedAtEpochMs != null)
      result.localAttemptStartedAtEpochMs = localAttemptStartedAtEpochMs;
    if (localAttemptCompletedAtEpochMs != null)
      result.localAttemptCompletedAtEpochMs = localAttemptCompletedAtEpochMs;
    return result;
  }

  MealAnalysisTextRequest._();

  factory MealAnalysisTextRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisTextRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisTextRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'textDescription')
    ..aOB(3, _omitFieldNames ? '' : 'localAttempted')
    ..aE<$0.MealAnalysisFallbackReason>(
        4, _omitFieldNames ? '' : 'fallbackReason',
        enumValues: $0.MealAnalysisFallbackReason.values)
    ..aOS(5, _omitFieldNames ? '' : 'localAttemptId')
    ..aInt64(6, _omitFieldNames ? '' : 'localAttemptStartedAtEpochMs')
    ..aInt64(7, _omitFieldNames ? '' : 'localAttemptCompletedAtEpochMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisTextRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisTextRequest copyWith(
          void Function(MealAnalysisTextRequest) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisTextRequest))
          as MealAnalysisTextRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisTextRequest create() => MealAnalysisTextRequest._();
  @$core.override
  MealAnalysisTextRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisTextRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisTextRequest>(create);
  static MealAnalysisTextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get textDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set textDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTextDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get localAttempted => $_getBF(2);
  @$pb.TagNumber(3)
  set localAttempted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocalAttempted() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalAttempted() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.MealAnalysisFallbackReason get fallbackReason => $_getN(3);
  @$pb.TagNumber(4)
  set fallbackReason($0.MealAnalysisFallbackReason value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFallbackReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearFallbackReason() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get localAttemptId => $_getSZ(4);
  @$pb.TagNumber(5)
  set localAttemptId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLocalAttemptId() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocalAttemptId() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get localAttemptStartedAtEpochMs => $_getI64(5);
  @$pb.TagNumber(6)
  set localAttemptStartedAtEpochMs($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLocalAttemptStartedAtEpochMs() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocalAttemptStartedAtEpochMs() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get localAttemptCompletedAtEpochMs => $_getI64(6);
  @$pb.TagNumber(7)
  set localAttemptCompletedAtEpochMs($fixnum.Int64 value) =>
      $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLocalAttemptCompletedAtEpochMs() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocalAttemptCompletedAtEpochMs() => $_clearField(7);
}

class MealAnalysisImageRequest extends $pb.GeneratedMessage {
  factory MealAnalysisImageRequest({
    $core.String? analysisId,
    $core.String? imageUrl,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (imageUrl != null) result.imageUrl = imageUrl;
    return result;
  }

  MealAnalysisImageRequest._();

  factory MealAnalysisImageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisImageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisImageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'imageUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisImageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisImageRequest copyWith(
          void Function(MealAnalysisImageRequest) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisImageRequest))
          as MealAnalysisImageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisImageRequest create() => MealAnalysisImageRequest._();
  @$core.override
  MealAnalysisImageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisImageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisImageRequest>(create);
  static MealAnalysisImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImageUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageUrl() => $_clearField(2);
}

class MealAnalysisProposalRequest extends $pb.GeneratedMessage {
  factory MealAnalysisProposalRequest({
    $core.String? analysisId,
    $0.IngredientProposalV1? proposal,
    $core.String? localAttemptId,
    $fixnum.Int64? localAttemptStartedAtEpochMs,
    $fixnum.Int64? localAttemptCompletedAtEpochMs,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (proposal != null) result.proposal = proposal;
    if (localAttemptId != null) result.localAttemptId = localAttemptId;
    if (localAttemptStartedAtEpochMs != null)
      result.localAttemptStartedAtEpochMs = localAttemptStartedAtEpochMs;
    if (localAttemptCompletedAtEpochMs != null)
      result.localAttemptCompletedAtEpochMs = localAttemptCompletedAtEpochMs;
    return result;
  }

  MealAnalysisProposalRequest._();

  factory MealAnalysisProposalRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisProposalRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisProposalRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOM<$0.IngredientProposalV1>(2, _omitFieldNames ? '' : 'proposal',
        subBuilder: $0.IngredientProposalV1.create)
    ..aOS(3, _omitFieldNames ? '' : 'localAttemptId')
    ..aInt64(4, _omitFieldNames ? '' : 'localAttemptStartedAtEpochMs')
    ..aInt64(5, _omitFieldNames ? '' : 'localAttemptCompletedAtEpochMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisProposalRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisProposalRequest copyWith(
          void Function(MealAnalysisProposalRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MealAnalysisProposalRequest))
          as MealAnalysisProposalRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisProposalRequest create() =>
      MealAnalysisProposalRequest._();
  @$core.override
  MealAnalysisProposalRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisProposalRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisProposalRequest>(create);
  static MealAnalysisProposalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.IngredientProposalV1 get proposal => $_getN(1);
  @$pb.TagNumber(2)
  set proposal($0.IngredientProposalV1 value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProposal() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposal() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.IngredientProposalV1 ensureProposal() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get localAttemptId => $_getSZ(2);
  @$pb.TagNumber(3)
  set localAttemptId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocalAttemptId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalAttemptId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get localAttemptStartedAtEpochMs => $_getI64(3);
  @$pb.TagNumber(4)
  set localAttemptStartedAtEpochMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLocalAttemptStartedAtEpochMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalAttemptStartedAtEpochMs() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get localAttemptCompletedAtEpochMs => $_getI64(4);
  @$pb.TagNumber(5)
  set localAttemptCompletedAtEpochMs($fixnum.Int64 value) =>
      $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLocalAttemptCompletedAtEpochMs() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocalAttemptCompletedAtEpochMs() => $_clearField(5);
}

class LocalInferenceCapabilityPolicy extends $pb.GeneratedMessage {
  factory LocalInferenceCapabilityPolicy({
    $core.String? policyVersion,
    $core.bool? textEnabled,
    $core.bool? imageEnabled,
    $core.bool? localNutritionEnabled,
    $core.bool? privateModesEnabled,
    $core.int? maxAgeSeconds,
  }) {
    final result = create();
    if (policyVersion != null) result.policyVersion = policyVersion;
    if (textEnabled != null) result.textEnabled = textEnabled;
    if (imageEnabled != null) result.imageEnabled = imageEnabled;
    if (localNutritionEnabled != null)
      result.localNutritionEnabled = localNutritionEnabled;
    if (privateModesEnabled != null)
      result.privateModesEnabled = privateModesEnabled;
    if (maxAgeSeconds != null) result.maxAgeSeconds = maxAgeSeconds;
    return result;
  }

  LocalInferenceCapabilityPolicy._();

  factory LocalInferenceCapabilityPolicy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LocalInferenceCapabilityPolicy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LocalInferenceCapabilityPolicy',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyVersion')
    ..aOB(2, _omitFieldNames ? '' : 'textEnabled')
    ..aOB(3, _omitFieldNames ? '' : 'imageEnabled')
    ..aOB(4, _omitFieldNames ? '' : 'localNutritionEnabled')
    ..aOB(5, _omitFieldNames ? '' : 'privateModesEnabled')
    ..aI(6, _omitFieldNames ? '' : 'maxAgeSeconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalInferenceCapabilityPolicy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalInferenceCapabilityPolicy copyWith(
          void Function(LocalInferenceCapabilityPolicy) updates) =>
      super.copyWith(
              (message) => updates(message as LocalInferenceCapabilityPolicy))
          as LocalInferenceCapabilityPolicy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocalInferenceCapabilityPolicy create() =>
      LocalInferenceCapabilityPolicy._();
  @$core.override
  LocalInferenceCapabilityPolicy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LocalInferenceCapabilityPolicy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LocalInferenceCapabilityPolicy>(create);
  static LocalInferenceCapabilityPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policyVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyVersion($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPolicyVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get textEnabled => $_getBF(1);
  @$pb.TagNumber(2)
  set textEnabled($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTextEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextEnabled() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get imageEnabled => $_getBF(2);
  @$pb.TagNumber(3)
  set imageEnabled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImageEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageEnabled() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get localNutritionEnabled => $_getBF(3);
  @$pb.TagNumber(4)
  set localNutritionEnabled($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLocalNutritionEnabled() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalNutritionEnabled() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get privateModesEnabled => $_getBF(4);
  @$pb.TagNumber(5)
  set privateModesEnabled($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPrivateModesEnabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrivateModesEnabled() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxAgeSeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxAgeSeconds($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxAgeSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxAgeSeconds() => $_clearField(6);
}

class MealAnalysisFeedbackRequest extends $pb.GeneratedMessage {
  factory MealAnalysisFeedbackRequest({
    $core.String? analysisId,
    MealAnalysisFeedbackSignal? signal,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (signal != null) result.signal = signal;
    return result;
  }

  MealAnalysisFeedbackRequest._();

  factory MealAnalysisFeedbackRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisFeedbackRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisFeedbackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aE<MealAnalysisFeedbackSignal>(2, _omitFieldNames ? '' : 'signal',
        enumValues: MealAnalysisFeedbackSignal.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisFeedbackRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisFeedbackRequest copyWith(
          void Function(MealAnalysisFeedbackRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MealAnalysisFeedbackRequest))
          as MealAnalysisFeedbackRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisFeedbackRequest create() =>
      MealAnalysisFeedbackRequest._();
  @$core.override
  MealAnalysisFeedbackRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisFeedbackRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisFeedbackRequest>(create);
  static MealAnalysisFeedbackRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  MealAnalysisFeedbackSignal get signal => $_getN(1);
  @$pb.TagNumber(2)
  set signal(MealAnalysisFeedbackSignal value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSignal() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignal() => $_clearField(2);
}

class MealAnalysisConfirmLogRequest extends $pb.GeneratedMessage {
  factory MealAnalysisConfirmLogRequest({
    $core.String? analysisId,
    $core.String? loggedAt,
    $1.Meal? meal,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (loggedAt != null) result.loggedAt = loggedAt;
    if (meal != null) result.meal = meal;
    return result;
  }

  MealAnalysisConfirmLogRequest._();

  factory MealAnalysisConfirmLogRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisConfirmLogRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisConfirmLogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'loggedAt')
    ..aOM<$1.Meal>(3, _omitFieldNames ? '' : 'meal', subBuilder: $1.Meal.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisConfirmLogRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisConfirmLogRequest copyWith(
          void Function(MealAnalysisConfirmLogRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MealAnalysisConfirmLogRequest))
          as MealAnalysisConfirmLogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisConfirmLogRequest create() =>
      MealAnalysisConfirmLogRequest._();
  @$core.override
  MealAnalysisConfirmLogRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisConfirmLogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisConfirmLogRequest>(create);
  static MealAnalysisConfirmLogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get loggedAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set loggedAt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLoggedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoggedAt() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.Meal get meal => $_getN(2);
  @$pb.TagNumber(3)
  set meal($1.Meal value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMeal() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeal() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Meal ensureMeal() => $_ensure(2);
}

class MealClarificationAnswer extends $pb.GeneratedMessage {
  factory MealClarificationAnswer({
    $core.String? clarificationId,
    $core.String? selectedOptionId,
  }) {
    final result = create();
    if (clarificationId != null) result.clarificationId = clarificationId;
    if (selectedOptionId != null) result.selectedOptionId = selectedOptionId;
    return result;
  }

  MealClarificationAnswer._();

  factory MealClarificationAnswer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealClarificationAnswer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealClarificationAnswer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clarificationId')
    ..aOS(2, _omitFieldNames ? '' : 'selectedOptionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealClarificationAnswer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealClarificationAnswer copyWith(
          void Function(MealClarificationAnswer) updates) =>
      super.copyWith((message) => updates(message as MealClarificationAnswer))
          as MealClarificationAnswer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealClarificationAnswer create() => MealClarificationAnswer._();
  @$core.override
  MealClarificationAnswer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealClarificationAnswer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealClarificationAnswer>(create);
  static MealClarificationAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clarificationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clarificationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClarificationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClarificationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get selectedOptionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set selectedOptionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSelectedOptionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelectedOptionId() => $_clearField(2);
}

class MealAnalysisClarifyRequest extends $pb.GeneratedMessage {
  factory MealAnalysisClarifyRequest({
    $core.String? analysisId,
    $core.Iterable<MealClarificationAnswer>? answers,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (answers != null) result.answers.addAll(answers);
    return result;
  }

  MealAnalysisClarifyRequest._();

  factory MealAnalysisClarifyRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisClarifyRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisClarifyRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..pPM<MealClarificationAnswer>(2, _omitFieldNames ? '' : 'answers',
        subBuilder: MealClarificationAnswer.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisClarifyRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisClarifyRequest copyWith(
          void Function(MealAnalysisClarifyRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MealAnalysisClarifyRequest))
          as MealAnalysisClarifyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisClarifyRequest create() => MealAnalysisClarifyRequest._();
  @$core.override
  MealAnalysisClarifyRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisClarifyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisClarifyRequest>(create);
  static MealAnalysisClarifyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<MealClarificationAnswer> get answers => $_getList(1);
}

class MealAnalysisResumeRequest extends $pb.GeneratedMessage {
  factory MealAnalysisResumeRequest({
    $core.String? analysisId,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    return result;
  }

  MealAnalysisResumeRequest._();

  factory MealAnalysisResumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisResumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisResumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisResumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisResumeRequest copyWith(
          void Function(MealAnalysisResumeRequest) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisResumeRequest))
          as MealAnalysisResumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisResumeRequest create() => MealAnalysisResumeRequest._();
  @$core.override
  MealAnalysisResumeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisResumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisResumeRequest>(create);
  static MealAnalysisResumeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);
}

class MealAnalysisMealTypeRequest extends $pb.GeneratedMessage {
  factory MealAnalysisMealTypeRequest({
    $core.String? analysisId,
    $1.MealType? mealType,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (mealType != null) result.mealType = mealType;
    return result;
  }

  MealAnalysisMealTypeRequest._();

  factory MealAnalysisMealTypeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisMealTypeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisMealTypeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aE<$1.MealType>(2, _omitFieldNames ? '' : 'mealType',
        enumValues: $1.MealType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisMealTypeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisMealTypeRequest copyWith(
          void Function(MealAnalysisMealTypeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MealAnalysisMealTypeRequest))
          as MealAnalysisMealTypeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisMealTypeRequest create() =>
      MealAnalysisMealTypeRequest._();
  @$core.override
  MealAnalysisMealTypeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisMealTypeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisMealTypeRequest>(create);
  static MealAnalysisMealTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.MealType get mealType => $_getN(1);
  @$pb.TagNumber(2)
  set mealType($1.MealType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMealType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealType() => $_clearField(2);
}

class MealAnalysisReanalyzeRequest extends $pb.GeneratedMessage {
  factory MealAnalysisReanalyzeRequest({
    $core.String? analysisId,
    $core.Iterable<MealReanalyzeFeedbackIssue>? issues,
    $core.String? otherText,
    $core.String? newAnalysisId,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (issues != null) result.issues.addAll(issues);
    if (otherText != null) result.otherText = otherText;
    if (newAnalysisId != null) result.newAnalysisId = newAnalysisId;
    return result;
  }

  MealAnalysisReanalyzeRequest._();

  factory MealAnalysisReanalyzeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisReanalyzeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisReanalyzeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..pc<MealReanalyzeFeedbackIssue>(
        2, _omitFieldNames ? '' : 'issues', $pb.PbFieldType.KE,
        valueOf: MealReanalyzeFeedbackIssue.valueOf,
        enumValues: MealReanalyzeFeedbackIssue.values,
        defaultEnumValue: MealReanalyzeFeedbackIssue.ISSUE_UNSPECIFIED)
    ..aOS(3, _omitFieldNames ? '' : 'otherText')
    ..aOS(4, _omitFieldNames ? '' : 'newAnalysisId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisReanalyzeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisReanalyzeRequest copyWith(
          void Function(MealAnalysisReanalyzeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MealAnalysisReanalyzeRequest))
          as MealAnalysisReanalyzeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisReanalyzeRequest create() =>
      MealAnalysisReanalyzeRequest._();
  @$core.override
  MealAnalysisReanalyzeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisReanalyzeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisReanalyzeRequest>(create);
  static MealAnalysisReanalyzeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<MealReanalyzeFeedbackIssue> get issues => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get otherText => $_getSZ(2);
  @$pb.TagNumber(3)
  set otherText($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOtherText() => $_has(2);
  @$pb.TagNumber(3)
  void clearOtherText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get newAnalysisId => $_getSZ(3);
  @$pb.TagNumber(4)
  set newAnalysisId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNewAnalysisId() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewAnalysisId() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
