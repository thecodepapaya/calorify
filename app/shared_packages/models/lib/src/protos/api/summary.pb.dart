// This is a generated file - do not edit.
//
// Generated from protos/api/summary.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'summary.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'summary.pbenum.dart';

class AiMealSummaryResponse extends $pb.GeneratedMessage {
  factory AiMealSummaryResponse({
    $core.String? summary,
    $core.String? generatedAt,
    $core.int? mealCount,
    $core.Iterable<$core.String>? topFoods,
    $core.int? macroBalanceScore,
    AiMealSummaryTrend? trend,
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
    ..aE<AiMealSummaryTrend>(6, _omitFieldNames ? '' : 'trend',
        enumValues: AiMealSummaryTrend.values)
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
  AiMealSummaryTrend get trend => $_getN(5);
  @$pb.TagNumber(6)
  set trend(AiMealSummaryTrend value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTrend() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrend() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
