// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_analysis_pipeline.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../meal/meal.pbenum.dart' as $0;
import 'meal_analysis_pipeline.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'meal_analysis_pipeline.pbenum.dart';

class PipelineCalorieBand extends $pb.GeneratedMessage {
  factory PipelineCalorieBand({
    $core.int? min,
    $core.int? max,
  }) {
    final result = create();
    if (min != null) result.min = min;
    if (max != null) result.max = max;
    return result;
  }

  PipelineCalorieBand._();

  factory PipelineCalorieBand.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineCalorieBand.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineCalorieBand',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'min')
    ..aI(2, _omitFieldNames ? '' : 'max')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineCalorieBand clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineCalorieBand copyWith(void Function(PipelineCalorieBand) updates) =>
      super.copyWith((message) => updates(message as PipelineCalorieBand))
          as PipelineCalorieBand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineCalorieBand create() => PipelineCalorieBand._();
  @$core.override
  PipelineCalorieBand createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineCalorieBand getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineCalorieBand>(create);
  static PipelineCalorieBand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get min => $_getIZ(0);
  @$pb.TagNumber(1)
  set min($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get max => $_getIZ(1);
  @$pb.TagNumber(2)
  set max($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => $_clearField(2);
}

class PipelineMacros extends $pb.GeneratedMessage {
  factory PipelineMacros({
    $core.double? calories,
    $core.double? protein,
    $core.double? carbs,
    $core.double? fat,
    $core.double? fiber,
  }) {
    final result = create();
    if (calories != null) result.calories = calories;
    if (protein != null) result.protein = protein;
    if (carbs != null) result.carbs = carbs;
    if (fat != null) result.fat = fat;
    if (fiber != null) result.fiber = fiber;
    return result;
  }

  PipelineMacros._();

  factory PipelineMacros.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineMacros.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineMacros',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'calories')
    ..aD(2, _omitFieldNames ? '' : 'protein')
    ..aD(3, _omitFieldNames ? '' : 'carbs')
    ..aD(4, _omitFieldNames ? '' : 'fat')
    ..aD(5, _omitFieldNames ? '' : 'fiber')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineMacros clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineMacros copyWith(void Function(PipelineMacros) updates) =>
      super.copyWith((message) => updates(message as PipelineMacros))
          as PipelineMacros;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineMacros create() => PipelineMacros._();
  @$core.override
  PipelineMacros createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineMacros getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineMacros>(create);
  static PipelineMacros? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get calories => $_getN(0);
  @$pb.TagNumber(1)
  set calories($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCalories() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalories() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get protein => $_getN(1);
  @$pb.TagNumber(2)
  set protein($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProtein() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtein() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get carbs => $_getN(2);
  @$pb.TagNumber(3)
  set carbs($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCarbs() => $_has(2);
  @$pb.TagNumber(3)
  void clearCarbs() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get fat => $_getN(3);
  @$pb.TagNumber(4)
  set fat($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFat() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get fiber => $_getN(4);
  @$pb.TagNumber(5)
  set fiber($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFiber() => $_has(4);
  @$pb.TagNumber(5)
  void clearFiber() => $_clearField(5);
}

class IngredientFieldProvenance extends $pb.GeneratedMessage {
  factory IngredientFieldProvenance({
    $core.String? fieldName,
    IngredientFieldOrigin? origin,
  }) {
    final result = create();
    if (fieldName != null) result.fieldName = fieldName;
    if (origin != null) result.origin = origin;
    return result;
  }

  IngredientFieldProvenance._();

  factory IngredientFieldProvenance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IngredientFieldProvenance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IngredientFieldProvenance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fieldName')
    ..aE<IngredientFieldOrigin>(2, _omitFieldNames ? '' : 'origin',
        enumValues: IngredientFieldOrigin.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngredientFieldProvenance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngredientFieldProvenance copyWith(
          void Function(IngredientFieldProvenance) updates) =>
      super.copyWith((message) => updates(message as IngredientFieldProvenance))
          as IngredientFieldProvenance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngredientFieldProvenance create() => IngredientFieldProvenance._();
  @$core.override
  IngredientFieldProvenance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IngredientFieldProvenance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IngredientFieldProvenance>(create);
  static IngredientFieldProvenance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fieldName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fieldName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFieldName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldName() => $_clearField(1);

  @$pb.TagNumber(2)
  IngredientFieldOrigin get origin => $_getN(1);
  @$pb.TagNumber(2)
  set origin(IngredientFieldOrigin value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => $_clearField(2);
}

/// Models may propose identity and portion information only. Nutrient values
/// intentionally do not exist in this contract.
class UsdaLookupProposalV2 extends $pb.GeneratedMessage {
  factory UsdaLookupProposalV2({
    $core.String? proposedCanonicalName,
    $core.Iterable<$core.String>? aliases,
    $core.Iterable<$core.String>? preparationStates,
  }) {
    final result = create();
    if (proposedCanonicalName != null)
      result.proposedCanonicalName = proposedCanonicalName;
    if (aliases != null) result.aliases.addAll(aliases);
    if (preparationStates != null)
      result.preparationStates.addAll(preparationStates);
    return result;
  }

  UsdaLookupProposalV2._();

  factory UsdaLookupProposalV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UsdaLookupProposalV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UsdaLookupProposalV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'proposedCanonicalName')
    ..pPS(2, _omitFieldNames ? '' : 'aliases')
    ..pPS(3, _omitFieldNames ? '' : 'preparationStates')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsdaLookupProposalV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsdaLookupProposalV2 copyWith(void Function(UsdaLookupProposalV2) updates) =>
      super.copyWith((message) => updates(message as UsdaLookupProposalV2))
          as UsdaLookupProposalV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsdaLookupProposalV2 create() => UsdaLookupProposalV2._();
  @$core.override
  UsdaLookupProposalV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UsdaLookupProposalV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UsdaLookupProposalV2>(create);
  static UsdaLookupProposalV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get proposedCanonicalName => $_getSZ(0);
  @$pb.TagNumber(1)
  set proposedCanonicalName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProposedCanonicalName() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposedCanonicalName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get aliases => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get preparationStates => $_getList(2);
}

class PortionProposalV2 extends $pb.GeneratedMessage {
  factory PortionProposalV2({
    PortionKind? kind,
    $core.double? gramsEstimated,
    $core.double? minGrams,
    $core.double? maxGrams,
    $core.double? count,
    $core.double? perUnitGrams,
    $core.double? perUnitMinGrams,
    $core.double? perUnitMaxGrams,
    $core.bool? sizeSpecifiedByUser,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (gramsEstimated != null) result.gramsEstimated = gramsEstimated;
    if (minGrams != null) result.minGrams = minGrams;
    if (maxGrams != null) result.maxGrams = maxGrams;
    if (count != null) result.count = count;
    if (perUnitGrams != null) result.perUnitGrams = perUnitGrams;
    if (perUnitMinGrams != null) result.perUnitMinGrams = perUnitMinGrams;
    if (perUnitMaxGrams != null) result.perUnitMaxGrams = perUnitMaxGrams;
    if (sizeSpecifiedByUser != null)
      result.sizeSpecifiedByUser = sizeSpecifiedByUser;
    return result;
  }

  PortionProposalV2._();

  factory PortionProposalV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortionProposalV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortionProposalV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aE<PortionKind>(1, _omitFieldNames ? '' : 'kind',
        enumValues: PortionKind.values)
    ..aD(2, _omitFieldNames ? '' : 'gramsEstimated')
    ..aD(3, _omitFieldNames ? '' : 'minGrams')
    ..aD(4, _omitFieldNames ? '' : 'maxGrams')
    ..aD(5, _omitFieldNames ? '' : 'count')
    ..aD(6, _omitFieldNames ? '' : 'perUnitGrams')
    ..aD(7, _omitFieldNames ? '' : 'perUnitMinGrams')
    ..aD(8, _omitFieldNames ? '' : 'perUnitMaxGrams')
    ..aOB(9, _omitFieldNames ? '' : 'sizeSpecifiedByUser')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionProposalV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionProposalV2 copyWith(void Function(PortionProposalV2) updates) =>
      super.copyWith((message) => updates(message as PortionProposalV2))
          as PortionProposalV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortionProposalV2 create() => PortionProposalV2._();
  @$core.override
  PortionProposalV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortionProposalV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortionProposalV2>(create);
  static PortionProposalV2? _defaultInstance;

  @$pb.TagNumber(1)
  PortionKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(PortionKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get gramsEstimated => $_getN(1);
  @$pb.TagNumber(2)
  set gramsEstimated($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGramsEstimated() => $_has(1);
  @$pb.TagNumber(2)
  void clearGramsEstimated() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get minGrams => $_getN(2);
  @$pb.TagNumber(3)
  set minGrams($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMinGrams() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinGrams() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get maxGrams => $_getN(3);
  @$pb.TagNumber(4)
  set maxGrams($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxGrams() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxGrams() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get count => $_getN(4);
  @$pb.TagNumber(5)
  set count($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get perUnitGrams => $_getN(5);
  @$pb.TagNumber(6)
  set perUnitGrams($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPerUnitGrams() => $_has(5);
  @$pb.TagNumber(6)
  void clearPerUnitGrams() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get perUnitMinGrams => $_getN(6);
  @$pb.TagNumber(7)
  set perUnitMinGrams($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPerUnitMinGrams() => $_has(6);
  @$pb.TagNumber(7)
  void clearPerUnitMinGrams() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get perUnitMaxGrams => $_getN(7);
  @$pb.TagNumber(8)
  set perUnitMaxGrams($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPerUnitMaxGrams() => $_has(7);
  @$pb.TagNumber(8)
  void clearPerUnitMaxGrams() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get sizeSpecifiedByUser => $_getBF(8);
  @$pb.TagNumber(9)
  set sizeSpecifiedByUser($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSizeSpecifiedByUser() => $_has(8);
  @$pb.TagNumber(9)
  void clearSizeSpecifiedByUser() => $_clearField(9);
}

class IngredientProposalItemV2 extends $pb.GeneratedMessage {
  factory IngredientProposalItemV2({
    $core.String? rowId,
    $core.String? rawName,
    $core.String? isFoodReason,
    $core.double? isFoodConfidence,
    UsdaLookupProposalV2? usdaLookup,
    PortionProposalV2? portion,
  }) {
    final result = create();
    if (rowId != null) result.rowId = rowId;
    if (rawName != null) result.rawName = rawName;
    if (isFoodReason != null) result.isFoodReason = isFoodReason;
    if (isFoodConfidence != null) result.isFoodConfidence = isFoodConfidence;
    if (usdaLookup != null) result.usdaLookup = usdaLookup;
    if (portion != null) result.portion = portion;
    return result;
  }

  IngredientProposalItemV2._();

  factory IngredientProposalItemV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IngredientProposalItemV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IngredientProposalItemV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rowId')
    ..aOS(2, _omitFieldNames ? '' : 'rawName')
    ..aOS(3, _omitFieldNames ? '' : 'isFoodReason')
    ..aD(4, _omitFieldNames ? '' : 'isFoodConfidence')
    ..aOM<UsdaLookupProposalV2>(5, _omitFieldNames ? '' : 'usdaLookup',
        subBuilder: UsdaLookupProposalV2.create)
    ..aOM<PortionProposalV2>(6, _omitFieldNames ? '' : 'portion',
        subBuilder: PortionProposalV2.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngredientProposalItemV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngredientProposalItemV2 copyWith(
          void Function(IngredientProposalItemV2) updates) =>
      super.copyWith((message) => updates(message as IngredientProposalItemV2))
          as IngredientProposalItemV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngredientProposalItemV2 create() => IngredientProposalItemV2._();
  @$core.override
  IngredientProposalItemV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IngredientProposalItemV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IngredientProposalItemV2>(create);
  static IngredientProposalItemV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set rowId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRowId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get rawName => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRawName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get isFoodReason => $_getSZ(2);
  @$pb.TagNumber(3)
  set isFoodReason($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsFoodReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFoodReason() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get isFoodConfidence => $_getN(3);
  @$pb.TagNumber(4)
  set isFoodConfidence($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsFoodConfidence() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsFoodConfidence() => $_clearField(4);

  @$pb.TagNumber(5)
  UsdaLookupProposalV2 get usdaLookup => $_getN(4);
  @$pb.TagNumber(5)
  set usdaLookup(UsdaLookupProposalV2 value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUsdaLookup() => $_has(4);
  @$pb.TagNumber(5)
  void clearUsdaLookup() => $_clearField(5);
  @$pb.TagNumber(5)
  UsdaLookupProposalV2 ensureUsdaLookup() => $_ensure(4);

  @$pb.TagNumber(6)
  PortionProposalV2 get portion => $_getN(5);
  @$pb.TagNumber(6)
  set portion(PortionProposalV2 value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPortion() => $_has(5);
  @$pb.TagNumber(6)
  void clearPortion() => $_clearField(6);
  @$pb.TagNumber(6)
  PortionProposalV2 ensurePortion() => $_ensure(5);
}

class IngredientProposalV2 extends $pb.GeneratedMessage {
  factory IngredientProposalV2({
    $core.int? schemaVersion,
    $core.String? proposalId,
    AnalysisModality? modality,
    $core.String? mealName,
    $core.String? outcomeReason,
    $core.double? outcomeConfidence,
    $0.MealType? inferredMealType,
    $core.String? mealTypeReason,
    $core.bool? mealTypeConfident,
    $core.Iterable<IngredientProposalItemV2>? items,
    InterpretationOrigin? interpretationOrigin,
    $core.String? modelName,
    $core.String? modelVersion,
    DecompositionOutcome? outcome,
  }) {
    final result = create();
    if (schemaVersion != null) result.schemaVersion = schemaVersion;
    if (proposalId != null) result.proposalId = proposalId;
    if (modality != null) result.modality = modality;
    if (mealName != null) result.mealName = mealName;
    if (outcomeReason != null) result.outcomeReason = outcomeReason;
    if (outcomeConfidence != null) result.outcomeConfidence = outcomeConfidence;
    if (inferredMealType != null) result.inferredMealType = inferredMealType;
    if (mealTypeReason != null) result.mealTypeReason = mealTypeReason;
    if (mealTypeConfident != null) result.mealTypeConfident = mealTypeConfident;
    if (items != null) result.items.addAll(items);
    if (interpretationOrigin != null)
      result.interpretationOrigin = interpretationOrigin;
    if (modelName != null) result.modelName = modelName;
    if (modelVersion != null) result.modelVersion = modelVersion;
    if (outcome != null) result.outcome = outcome;
    return result;
  }

  IngredientProposalV2._();

  factory IngredientProposalV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IngredientProposalV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IngredientProposalV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'schemaVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'proposalId')
    ..aE<AnalysisModality>(3, _omitFieldNames ? '' : 'modality',
        enumValues: AnalysisModality.values)
    ..aOS(4, _omitFieldNames ? '' : 'mealName')
    ..aOS(5, _omitFieldNames ? '' : 'outcomeReason')
    ..aD(6, _omitFieldNames ? '' : 'outcomeConfidence')
    ..aE<$0.MealType>(7, _omitFieldNames ? '' : 'inferredMealType',
        enumValues: $0.MealType.values)
    ..aOS(8, _omitFieldNames ? '' : 'mealTypeReason')
    ..aOB(9, _omitFieldNames ? '' : 'mealTypeConfident')
    ..pPM<IngredientProposalItemV2>(10, _omitFieldNames ? '' : 'items',
        subBuilder: IngredientProposalItemV2.create)
    ..aE<InterpretationOrigin>(
        11, _omitFieldNames ? '' : 'interpretationOrigin',
        enumValues: InterpretationOrigin.values)
    ..aOS(12, _omitFieldNames ? '' : 'modelName')
    ..aOS(13, _omitFieldNames ? '' : 'modelVersion')
    ..aE<DecompositionOutcome>(14, _omitFieldNames ? '' : 'outcome',
        enumValues: DecompositionOutcome.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngredientProposalV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IngredientProposalV2 copyWith(void Function(IngredientProposalV2) updates) =>
      super.copyWith((message) => updates(message as IngredientProposalV2))
          as IngredientProposalV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngredientProposalV2 create() => IngredientProposalV2._();
  @$core.override
  IngredientProposalV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IngredientProposalV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IngredientProposalV2>(create);
  static IngredientProposalV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get schemaVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set schemaVersion($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSchemaVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchemaVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get proposalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set proposalId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProposalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposalId() => $_clearField(2);

  @$pb.TagNumber(3)
  AnalysisModality get modality => $_getN(2);
  @$pb.TagNumber(3)
  set modality(AnalysisModality value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasModality() => $_has(2);
  @$pb.TagNumber(3)
  void clearModality() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mealName => $_getSZ(3);
  @$pb.TagNumber(4)
  set mealName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMealName() => $_has(3);
  @$pb.TagNumber(4)
  void clearMealName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get outcomeReason => $_getSZ(4);
  @$pb.TagNumber(5)
  set outcomeReason($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOutcomeReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearOutcomeReason() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get outcomeConfidence => $_getN(5);
  @$pb.TagNumber(6)
  set outcomeConfidence($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOutcomeConfidence() => $_has(5);
  @$pb.TagNumber(6)
  void clearOutcomeConfidence() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.MealType get inferredMealType => $_getN(6);
  @$pb.TagNumber(7)
  set inferredMealType($0.MealType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasInferredMealType() => $_has(6);
  @$pb.TagNumber(7)
  void clearInferredMealType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get mealTypeReason => $_getSZ(7);
  @$pb.TagNumber(8)
  set mealTypeReason($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMealTypeReason() => $_has(7);
  @$pb.TagNumber(8)
  void clearMealTypeReason() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get mealTypeConfident => $_getBF(8);
  @$pb.TagNumber(9)
  set mealTypeConfident($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMealTypeConfident() => $_has(8);
  @$pb.TagNumber(9)
  void clearMealTypeConfident() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<IngredientProposalItemV2> get items => $_getList(9);

  @$pb.TagNumber(11)
  InterpretationOrigin get interpretationOrigin => $_getN(10);
  @$pb.TagNumber(11)
  set interpretationOrigin(InterpretationOrigin value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasInterpretationOrigin() => $_has(10);
  @$pb.TagNumber(11)
  void clearInterpretationOrigin() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get modelName => $_getSZ(11);
  @$pb.TagNumber(12)
  set modelName($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasModelName() => $_has(11);
  @$pb.TagNumber(12)
  void clearModelName() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get modelVersion => $_getSZ(12);
  @$pb.TagNumber(13)
  set modelVersion($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasModelVersion() => $_has(12);
  @$pb.TagNumber(13)
  void clearModelVersion() => $_clearField(13);

  @$pb.TagNumber(14)
  DecompositionOutcome get outcome => $_getN(13);
  @$pb.TagNumber(14)
  set outcome(DecompositionOutcome value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasOutcome() => $_has(13);
  @$pb.TagNumber(14)
  void clearOutcome() => $_clearField(14);
}

class AnalysisAttemptReceipt extends $pb.GeneratedMessage {
  factory AnalysisAttemptReceipt({
    $core.String? attemptId,
    InterpretationOrigin? executorOrigin,
    $fixnum.Int64? startedAtEpochMs,
    $fixnum.Int64? completedAtEpochMs,
    AnalysisAttemptStatus? status,
    MealAnalysisFallbackReason? fallbackReason,
  }) {
    final result = create();
    if (attemptId != null) result.attemptId = attemptId;
    if (executorOrigin != null) result.executorOrigin = executorOrigin;
    if (startedAtEpochMs != null) result.startedAtEpochMs = startedAtEpochMs;
    if (completedAtEpochMs != null)
      result.completedAtEpochMs = completedAtEpochMs;
    if (status != null) result.status = status;
    if (fallbackReason != null) result.fallbackReason = fallbackReason;
    return result;
  }

  AnalysisAttemptReceipt._();

  factory AnalysisAttemptReceipt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisAttemptReceipt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisAttemptReceipt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'attemptId')
    ..aE<InterpretationOrigin>(2, _omitFieldNames ? '' : 'executorOrigin',
        enumValues: InterpretationOrigin.values)
    ..aInt64(3, _omitFieldNames ? '' : 'startedAtEpochMs')
    ..aInt64(4, _omitFieldNames ? '' : 'completedAtEpochMs')
    ..aE<AnalysisAttemptStatus>(5, _omitFieldNames ? '' : 'status',
        enumValues: AnalysisAttemptStatus.values)
    ..aE<MealAnalysisFallbackReason>(6, _omitFieldNames ? '' : 'fallbackReason',
        enumValues: MealAnalysisFallbackReason.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisAttemptReceipt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisAttemptReceipt copyWith(
          void Function(AnalysisAttemptReceipt) updates) =>
      super.copyWith((message) => updates(message as AnalysisAttemptReceipt))
          as AnalysisAttemptReceipt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisAttemptReceipt create() => AnalysisAttemptReceipt._();
  @$core.override
  AnalysisAttemptReceipt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisAttemptReceipt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisAttemptReceipt>(create);
  static AnalysisAttemptReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get attemptId => $_getSZ(0);
  @$pb.TagNumber(1)
  set attemptId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAttemptId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttemptId() => $_clearField(1);

  @$pb.TagNumber(2)
  InterpretationOrigin get executorOrigin => $_getN(1);
  @$pb.TagNumber(2)
  set executorOrigin(InterpretationOrigin value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExecutorOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecutorOrigin() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get startedAtEpochMs => $_getI64(2);
  @$pb.TagNumber(3)
  set startedAtEpochMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStartedAtEpochMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartedAtEpochMs() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get completedAtEpochMs => $_getI64(3);
  @$pb.TagNumber(4)
  set completedAtEpochMs($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCompletedAtEpochMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompletedAtEpochMs() => $_clearField(4);

  @$pb.TagNumber(5)
  AnalysisAttemptStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(AnalysisAttemptStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  MealAnalysisFallbackReason get fallbackReason => $_getN(5);
  @$pb.TagNumber(6)
  set fallbackReason(MealAnalysisFallbackReason value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasFallbackReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearFallbackReason() => $_clearField(6);
}

class MealAnalysisReceipt extends $pb.GeneratedMessage {
  factory MealAnalysisReceipt({
    $core.int? schemaVersion,
    $core.int? proposalSchemaVersion,
    $core.bool? localAttempted,
    InterpretationOrigin? interpretationOrigin,
    NutritionOrigin? nutritionOrigin,
    CalculationOrigin? calculationOrigin,
    $core.String? usdaDatasetVersion,
    $core.String? calculationVersion,
    $core.Iterable<AnalysisAttemptReceipt>? attempts,
    MealAnalysisFallbackReason? fallbackReason,
  }) {
    final result = create();
    if (schemaVersion != null) result.schemaVersion = schemaVersion;
    if (proposalSchemaVersion != null)
      result.proposalSchemaVersion = proposalSchemaVersion;
    if (localAttempted != null) result.localAttempted = localAttempted;
    if (interpretationOrigin != null)
      result.interpretationOrigin = interpretationOrigin;
    if (nutritionOrigin != null) result.nutritionOrigin = nutritionOrigin;
    if (calculationOrigin != null) result.calculationOrigin = calculationOrigin;
    if (usdaDatasetVersion != null)
      result.usdaDatasetVersion = usdaDatasetVersion;
    if (calculationVersion != null)
      result.calculationVersion = calculationVersion;
    if (attempts != null) result.attempts.addAll(attempts);
    if (fallbackReason != null) result.fallbackReason = fallbackReason;
    return result;
  }

  MealAnalysisReceipt._();

  factory MealAnalysisReceipt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisReceipt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisReceipt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'schemaVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'proposalSchemaVersion',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'localAttempted')
    ..aE<InterpretationOrigin>(4, _omitFieldNames ? '' : 'interpretationOrigin',
        enumValues: InterpretationOrigin.values)
    ..aE<NutritionOrigin>(5, _omitFieldNames ? '' : 'nutritionOrigin',
        enumValues: NutritionOrigin.values)
    ..aE<CalculationOrigin>(6, _omitFieldNames ? '' : 'calculationOrigin',
        enumValues: CalculationOrigin.values)
    ..aOS(7, _omitFieldNames ? '' : 'usdaDatasetVersion')
    ..aOS(8, _omitFieldNames ? '' : 'calculationVersion')
    ..pPM<AnalysisAttemptReceipt>(9, _omitFieldNames ? '' : 'attempts',
        subBuilder: AnalysisAttemptReceipt.create)
    ..aE<MealAnalysisFallbackReason>(
        10, _omitFieldNames ? '' : 'fallbackReason',
        enumValues: MealAnalysisFallbackReason.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisReceipt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisReceipt copyWith(void Function(MealAnalysisReceipt) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisReceipt))
          as MealAnalysisReceipt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisReceipt create() => MealAnalysisReceipt._();
  @$core.override
  MealAnalysisReceipt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisReceipt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisReceipt>(create);
  static MealAnalysisReceipt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get schemaVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set schemaVersion($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSchemaVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchemaVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get proposalSchemaVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set proposalSchemaVersion($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProposalSchemaVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposalSchemaVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get localAttempted => $_getBF(2);
  @$pb.TagNumber(3)
  set localAttempted($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocalAttempted() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalAttempted() => $_clearField(3);

  @$pb.TagNumber(4)
  InterpretationOrigin get interpretationOrigin => $_getN(3);
  @$pb.TagNumber(4)
  set interpretationOrigin(InterpretationOrigin value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasInterpretationOrigin() => $_has(3);
  @$pb.TagNumber(4)
  void clearInterpretationOrigin() => $_clearField(4);

  @$pb.TagNumber(5)
  NutritionOrigin get nutritionOrigin => $_getN(4);
  @$pb.TagNumber(5)
  set nutritionOrigin(NutritionOrigin value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasNutritionOrigin() => $_has(4);
  @$pb.TagNumber(5)
  void clearNutritionOrigin() => $_clearField(5);

  @$pb.TagNumber(6)
  CalculationOrigin get calculationOrigin => $_getN(5);
  @$pb.TagNumber(6)
  set calculationOrigin(CalculationOrigin value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCalculationOrigin() => $_has(5);
  @$pb.TagNumber(6)
  void clearCalculationOrigin() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get usdaDatasetVersion => $_getSZ(6);
  @$pb.TagNumber(7)
  set usdaDatasetVersion($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUsdaDatasetVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearUsdaDatasetVersion() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get calculationVersion => $_getSZ(7);
  @$pb.TagNumber(8)
  set calculationVersion($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCalculationVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearCalculationVersion() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<AnalysisAttemptReceipt> get attempts => $_getList(8);

  @$pb.TagNumber(10)
  MealAnalysisFallbackReason get fallbackReason => $_getN(9);
  @$pb.TagNumber(10)
  set fallbackReason(MealAnalysisFallbackReason value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFallbackReason() => $_has(9);
  @$pb.TagNumber(10)
  void clearFallbackReason() => $_clearField(10);
}

class PipelineMealHealth extends $pb.GeneratedMessage {
  factory PipelineMealHealth({
    $0.HealthScore? healthScore,
    $core.String? healthScoreReason,
  }) {
    final result = create();
    if (healthScore != null) result.healthScore = healthScore;
    if (healthScoreReason != null) result.healthScoreReason = healthScoreReason;
    return result;
  }

  PipelineMealHealth._();

  factory PipelineMealHealth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineMealHealth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineMealHealth',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aE<$0.HealthScore>(1, _omitFieldNames ? '' : 'healthScore',
        enumValues: $0.HealthScore.values)
    ..aOS(2, _omitFieldNames ? '' : 'healthScoreReason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineMealHealth clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineMealHealth copyWith(void Function(PipelineMealHealth) updates) =>
      super.copyWith((message) => updates(message as PipelineMealHealth))
          as PipelineMealHealth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineMealHealth create() => PipelineMealHealth._();
  @$core.override
  PipelineMealHealth createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineMealHealth getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineMealHealth>(create);
  static PipelineMealHealth? _defaultInstance;

  @$pb.TagNumber(1)
  $0.HealthScore get healthScore => $_getN(0);
  @$pb.TagNumber(1)
  set healthScore($0.HealthScore value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHealthScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearHealthScore() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get healthScoreReason => $_getSZ(1);
  @$pb.TagNumber(2)
  set healthScoreReason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHealthScoreReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearHealthScoreReason() => $_clearField(2);
}

class PipelineDecomposedIngredient extends $pb.GeneratedMessage {
  factory PipelineDecomposedIngredient({
    $core.String? rowId,
    $core.String? rawName,
    $core.double? gramsEstimated,
    $core.double? minGrams,
    $core.double? maxGrams,
    PortionKind? portionKind,
    $core.double? count,
    $core.double? perUnitGrams,
    $core.double? perUnitMinGrams,
    $core.double? perUnitMaxGrams,
    $core.bool? sizeSpecifiedByUser,
  }) {
    final result = create();
    if (rowId != null) result.rowId = rowId;
    if (rawName != null) result.rawName = rawName;
    if (gramsEstimated != null) result.gramsEstimated = gramsEstimated;
    if (minGrams != null) result.minGrams = minGrams;
    if (maxGrams != null) result.maxGrams = maxGrams;
    if (portionKind != null) result.portionKind = portionKind;
    if (count != null) result.count = count;
    if (perUnitGrams != null) result.perUnitGrams = perUnitGrams;
    if (perUnitMinGrams != null) result.perUnitMinGrams = perUnitMinGrams;
    if (perUnitMaxGrams != null) result.perUnitMaxGrams = perUnitMaxGrams;
    if (sizeSpecifiedByUser != null)
      result.sizeSpecifiedByUser = sizeSpecifiedByUser;
    return result;
  }

  PipelineDecomposedIngredient._();

  factory PipelineDecomposedIngredient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineDecomposedIngredient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineDecomposedIngredient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rowId')
    ..aOS(2, _omitFieldNames ? '' : 'rawName')
    ..aD(4, _omitFieldNames ? '' : 'gramsEstimated')
    ..aD(5, _omitFieldNames ? '' : 'minGrams')
    ..aD(6, _omitFieldNames ? '' : 'maxGrams')
    ..aE<PortionKind>(8, _omitFieldNames ? '' : 'portionKind',
        enumValues: PortionKind.values)
    ..aD(9, _omitFieldNames ? '' : 'count')
    ..aD(10, _omitFieldNames ? '' : 'perUnitGrams')
    ..aD(11, _omitFieldNames ? '' : 'perUnitMinGrams')
    ..aD(12, _omitFieldNames ? '' : 'perUnitMaxGrams')
    ..aOB(13, _omitFieldNames ? '' : 'sizeSpecifiedByUser')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineDecomposedIngredient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineDecomposedIngredient copyWith(
          void Function(PipelineDecomposedIngredient) updates) =>
      super.copyWith(
              (message) => updates(message as PipelineDecomposedIngredient))
          as PipelineDecomposedIngredient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineDecomposedIngredient create() =>
      PipelineDecomposedIngredient._();
  @$core.override
  PipelineDecomposedIngredient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineDecomposedIngredient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineDecomposedIngredient>(create);
  static PipelineDecomposedIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set rowId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRowId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get rawName => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRawName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawName() => $_clearField(2);

  /// Total grams used downstream for macro math. Server enforces:
  ///   if portion_kind == COUNT: grams_estimated = count * per_unit_grams
  @$pb.TagNumber(4)
  $core.double get gramsEstimated => $_getN(2);
  @$pb.TagNumber(4)
  set gramsEstimated($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(4)
  $core.bool hasGramsEstimated() => $_has(2);
  @$pb.TagNumber(4)
  void clearGramsEstimated() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get minGrams => $_getN(3);
  @$pb.TagNumber(5)
  set minGrams($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(5)
  $core.bool hasMinGrams() => $_has(3);
  @$pb.TagNumber(5)
  void clearMinGrams() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get maxGrams => $_getN(4);
  @$pb.TagNumber(6)
  set maxGrams($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxGrams() => $_has(4);
  @$pb.TagNumber(6)
  void clearMaxGrams() => $_clearField(6);

  @$pb.TagNumber(8)
  PortionKind get portionKind => $_getN(5);
  @$pb.TagNumber(8)
  set portionKind(PortionKind value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPortionKind() => $_has(5);
  @$pb.TagNumber(8)
  void clearPortionKind() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get count => $_getN(6);
  @$pb.TagNumber(9)
  set count($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(9)
  $core.bool hasCount() => $_has(6);
  @$pb.TagNumber(9)
  void clearCount() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get perUnitGrams => $_getN(7);
  @$pb.TagNumber(10)
  set perUnitGrams($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(10)
  $core.bool hasPerUnitGrams() => $_has(7);
  @$pb.TagNumber(10)
  void clearPerUnitGrams() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get perUnitMinGrams => $_getN(8);
  @$pb.TagNumber(11)
  set perUnitMinGrams($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(11)
  $core.bool hasPerUnitMinGrams() => $_has(8);
  @$pb.TagNumber(11)
  void clearPerUnitMinGrams() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get perUnitMaxGrams => $_getN(9);
  @$pb.TagNumber(12)
  set perUnitMaxGrams($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(12)
  $core.bool hasPerUnitMaxGrams() => $_has(9);
  @$pb.TagNumber(12)
  void clearPerUnitMaxGrams() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get sizeSpecifiedByUser => $_getBF(10);
  @$pb.TagNumber(13)
  set sizeSpecifiedByUser($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(13)
  $core.bool hasSizeSpecifiedByUser() => $_has(10);
  @$pb.TagNumber(13)
  void clearSizeSpecifiedByUser() => $_clearField(13);
}

class PipelineResolvedIngredient extends $pb.GeneratedMessage {
  factory PipelineResolvedIngredient({
    $core.String? rowId,
    $core.String? rawName,
    $core.double? grams,
    PipelineMacros? macros,
    PortionKind? portionKind,
    $core.double? count,
    $core.double? perUnitGrams,
  }) {
    final result = create();
    if (rowId != null) result.rowId = rowId;
    if (rawName != null) result.rawName = rawName;
    if (grams != null) result.grams = grams;
    if (macros != null) result.macros = macros;
    if (portionKind != null) result.portionKind = portionKind;
    if (count != null) result.count = count;
    if (perUnitGrams != null) result.perUnitGrams = perUnitGrams;
    return result;
  }

  PipelineResolvedIngredient._();

  factory PipelineResolvedIngredient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineResolvedIngredient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineResolvedIngredient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rowId')
    ..aOS(2, _omitFieldNames ? '' : 'rawName')
    ..aD(5, _omitFieldNames ? '' : 'grams')
    ..aOM<PipelineMacros>(6, _omitFieldNames ? '' : 'macros',
        subBuilder: PipelineMacros.create)
    ..aE<PortionKind>(8, _omitFieldNames ? '' : 'portionKind',
        enumValues: PortionKind.values)
    ..aD(9, _omitFieldNames ? '' : 'count')
    ..aD(10, _omitFieldNames ? '' : 'perUnitGrams')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineResolvedIngredient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineResolvedIngredient copyWith(
          void Function(PipelineResolvedIngredient) updates) =>
      super.copyWith(
              (message) => updates(message as PipelineResolvedIngredient))
          as PipelineResolvedIngredient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineResolvedIngredient create() => PipelineResolvedIngredient._();
  @$core.override
  PipelineResolvedIngredient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineResolvedIngredient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineResolvedIngredient>(create);
  static PipelineResolvedIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rowId => $_getSZ(0);
  @$pb.TagNumber(1)
  set rowId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRowId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRowId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get rawName => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRawName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawName() => $_clearField(2);

  @$pb.TagNumber(5)
  $core.double get grams => $_getN(2);
  @$pb.TagNumber(5)
  set grams($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(5)
  $core.bool hasGrams() => $_has(2);
  @$pb.TagNumber(5)
  void clearGrams() => $_clearField(5);

  @$pb.TagNumber(6)
  PipelineMacros get macros => $_getN(3);
  @$pb.TagNumber(6)
  set macros(PipelineMacros value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMacros() => $_has(3);
  @$pb.TagNumber(6)
  void clearMacros() => $_clearField(6);
  @$pb.TagNumber(6)
  PipelineMacros ensureMacros() => $_ensure(3);

  @$pb.TagNumber(8)
  PortionKind get portionKind => $_getN(4);
  @$pb.TagNumber(8)
  set portionKind(PortionKind value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPortionKind() => $_has(4);
  @$pb.TagNumber(8)
  void clearPortionKind() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get count => $_getN(5);
  @$pb.TagNumber(9)
  set count($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(9)
  $core.bool hasCount() => $_has(5);
  @$pb.TagNumber(9)
  void clearCount() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get perUnitGrams => $_getN(6);
  @$pb.TagNumber(10)
  set perUnitGrams($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(10)
  $core.bool hasPerUnitGrams() => $_has(6);
  @$pb.TagNumber(10)
  void clearPerUnitGrams() => $_clearField(10);
}

class PipelineClarificationOption extends $pb.GeneratedMessage {
  factory PipelineClarificationOption({
    $core.String? optionId,
    $core.double? grams,
    $core.int? calorieDelta,
  }) {
    final result = create();
    if (optionId != null) result.optionId = optionId;
    if (grams != null) result.grams = grams;
    if (calorieDelta != null) result.calorieDelta = calorieDelta;
    return result;
  }

  PipelineClarificationOption._();

  factory PipelineClarificationOption.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineClarificationOption.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineClarificationOption',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'optionId')
    ..aD(4, _omitFieldNames ? '' : 'grams')
    ..aI(5, _omitFieldNames ? '' : 'calorieDelta')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineClarificationOption clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineClarificationOption copyWith(
          void Function(PipelineClarificationOption) updates) =>
      super.copyWith(
              (message) => updates(message as PipelineClarificationOption))
          as PipelineClarificationOption;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineClarificationOption create() =>
      PipelineClarificationOption._();
  @$core.override
  PipelineClarificationOption createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineClarificationOption getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineClarificationOption>(create);
  static PipelineClarificationOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get optionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set optionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionId() => $_clearField(1);

  @$pb.TagNumber(4)
  $core.double get grams => $_getN(1);
  @$pb.TagNumber(4)
  set grams($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(4)
  $core.bool hasGrams() => $_has(1);
  @$pb.TagNumber(4)
  void clearGrams() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get calorieDelta => $_getIZ(2);
  @$pb.TagNumber(5)
  set calorieDelta($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(5)
  $core.bool hasCalorieDelta() => $_has(2);
  @$pb.TagNumber(5)
  void clearCalorieDelta() => $_clearField(5);
}

class PipelineClarification extends $pb.GeneratedMessage {
  factory PipelineClarification({
    $core.String? clarificationId,
    $core.String? rowId,
    $core.String? ingredientName,
    PortionKind? portionKind,
    $core.Iterable<PipelineClarificationOption>? options,
    $core.String? defaultOptionId,
  }) {
    final result = create();
    if (clarificationId != null) result.clarificationId = clarificationId;
    if (rowId != null) result.rowId = rowId;
    if (ingredientName != null) result.ingredientName = ingredientName;
    if (portionKind != null) result.portionKind = portionKind;
    if (options != null) result.options.addAll(options);
    if (defaultOptionId != null) result.defaultOptionId = defaultOptionId;
    return result;
  }

  PipelineClarification._();

  factory PipelineClarification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineClarification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineClarification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clarificationId')
    ..aOS(2, _omitFieldNames ? '' : 'rowId')
    ..aOS(3, _omitFieldNames ? '' : 'ingredientName')
    ..aE<PortionKind>(4, _omitFieldNames ? '' : 'portionKind',
        enumValues: PortionKind.values)
    ..pPM<PipelineClarificationOption>(6, _omitFieldNames ? '' : 'options',
        subBuilder: PipelineClarificationOption.create)
    ..aOS(7, _omitFieldNames ? '' : 'defaultOptionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineClarification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineClarification copyWith(
          void Function(PipelineClarification) updates) =>
      super.copyWith((message) => updates(message as PipelineClarification))
          as PipelineClarification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineClarification create() => PipelineClarification._();
  @$core.override
  PipelineClarification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineClarification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineClarification>(create);
  static PipelineClarification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clarificationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clarificationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClarificationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClarificationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get rowId => $_getSZ(1);
  @$pb.TagNumber(2)
  set rowId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRowId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRowId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get ingredientName => $_getSZ(2);
  @$pb.TagNumber(3)
  set ingredientName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIngredientName() => $_has(2);
  @$pb.TagNumber(3)
  void clearIngredientName() => $_clearField(3);

  @$pb.TagNumber(4)
  PortionKind get portionKind => $_getN(3);
  @$pb.TagNumber(4)
  set portionKind(PortionKind value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPortionKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearPortionKind() => $_clearField(4);

  @$pb.TagNumber(6)
  $pb.PbList<PipelineClarificationOption> get options => $_getList(4);

  @$pb.TagNumber(7)
  $core.String get defaultOptionId => $_getSZ(5);
  @$pb.TagNumber(7)
  set defaultOptionId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasDefaultOptionId() => $_has(5);
  @$pb.TagNumber(7)
  void clearDefaultOptionId() => $_clearField(7);
}

class PipelineStartedData extends $pb.GeneratedMessage {
  factory PipelineStartedData({
    $core.String? analysisId,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    return result;
  }

  PipelineStartedData._();

  factory PipelineStartedData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineStartedData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineStartedData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineStartedData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineStartedData copyWith(void Function(PipelineStartedData) updates) =>
      super.copyWith((message) => updates(message as PipelineStartedData))
          as PipelineStartedData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineStartedData create() => PipelineStartedData._();
  @$core.override
  PipelineStartedData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineStartedData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineStartedData>(create);
  static PipelineStartedData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);
}

class PipelineDecompositionData extends $pb.GeneratedMessage {
  factory PipelineDecompositionData({
    $core.String? analysisId,
    $core.String? mealName,
    $core.double? confidence,
    $core.Iterable<PipelineDecomposedIngredient>? ingredients,
    $0.MealType? inferredMealType,
    $core.bool? mealTypeConfident,
    InterpretationOrigin? interpretationOrigin,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (mealName != null) result.mealName = mealName;
    if (confidence != null) result.confidence = confidence;
    if (ingredients != null) result.ingredients.addAll(ingredients);
    if (inferredMealType != null) result.inferredMealType = inferredMealType;
    if (mealTypeConfident != null) result.mealTypeConfident = mealTypeConfident;
    if (interpretationOrigin != null)
      result.interpretationOrigin = interpretationOrigin;
    return result;
  }

  PipelineDecompositionData._();

  factory PipelineDecompositionData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineDecompositionData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineDecompositionData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'mealName')
    ..aD(3, _omitFieldNames ? '' : 'confidence')
    ..pPM<PipelineDecomposedIngredient>(4, _omitFieldNames ? '' : 'ingredients',
        subBuilder: PipelineDecomposedIngredient.create)
    ..aE<$0.MealType>(5, _omitFieldNames ? '' : 'inferredMealType',
        enumValues: $0.MealType.values)
    ..aOB(6, _omitFieldNames ? '' : 'mealTypeConfident')
    ..aE<InterpretationOrigin>(7, _omitFieldNames ? '' : 'interpretationOrigin',
        enumValues: InterpretationOrigin.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineDecompositionData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineDecompositionData copyWith(
          void Function(PipelineDecompositionData) updates) =>
      super.copyWith((message) => updates(message as PipelineDecompositionData))
          as PipelineDecompositionData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineDecompositionData create() => PipelineDecompositionData._();
  @$core.override
  PipelineDecompositionData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineDecompositionData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineDecompositionData>(create);
  static PipelineDecompositionData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealName => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get confidence => $_getN(2);
  @$pb.TagNumber(3)
  set confidence($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConfidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfidence() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<PipelineDecomposedIngredient> get ingredients => $_getList(3);

  @$pb.TagNumber(5)
  $0.MealType get inferredMealType => $_getN(4);
  @$pb.TagNumber(5)
  set inferredMealType($0.MealType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInferredMealType() => $_has(4);
  @$pb.TagNumber(5)
  void clearInferredMealType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get mealTypeConfident => $_getBF(5);
  @$pb.TagNumber(6)
  set mealTypeConfident($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMealTypeConfident() => $_has(5);
  @$pb.TagNumber(6)
  void clearMealTypeConfident() => $_clearField(6);

  @$pb.TagNumber(7)
  InterpretationOrigin get interpretationOrigin => $_getN(6);
  @$pb.TagNumber(7)
  set interpretationOrigin(InterpretationOrigin value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasInterpretationOrigin() => $_has(6);
  @$pb.TagNumber(7)
  void clearInterpretationOrigin() => $_clearField(7);
}

class PipelineIngredientsData extends $pb.GeneratedMessage {
  factory PipelineIngredientsData({
    $core.String? analysisId,
    $core.String? mealName,
    $core.Iterable<PipelineResolvedIngredient>? ingredients,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (mealName != null) result.mealName = mealName;
    if (ingredients != null) result.ingredients.addAll(ingredients);
    return result;
  }

  PipelineIngredientsData._();

  factory PipelineIngredientsData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineIngredientsData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineIngredientsData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'mealName')
    ..pPM<PipelineResolvedIngredient>(3, _omitFieldNames ? '' : 'ingredients',
        subBuilder: PipelineResolvedIngredient.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineIngredientsData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineIngredientsData copyWith(
          void Function(PipelineIngredientsData) updates) =>
      super.copyWith((message) => updates(message as PipelineIngredientsData))
          as PipelineIngredientsData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineIngredientsData create() => PipelineIngredientsData._();
  @$core.override
  PipelineIngredientsData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineIngredientsData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineIngredientsData>(create);
  static PipelineIngredientsData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealName => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<PipelineResolvedIngredient> get ingredients => $_getList(2);
}

class PipelineUncertaintyData extends $pb.GeneratedMessage {
  factory PipelineUncertaintyData({
    $core.String? analysisId,
    $core.String? mealName,
    $core.double? variancePercent,
    $core.bool? needsClarification,
    PipelineCalorieBand? calorieBand,
    $core.Iterable<PipelineClarification>? clarifications,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (mealName != null) result.mealName = mealName;
    if (variancePercent != null) result.variancePercent = variancePercent;
    if (needsClarification != null)
      result.needsClarification = needsClarification;
    if (calorieBand != null) result.calorieBand = calorieBand;
    if (clarifications != null) result.clarifications.addAll(clarifications);
    return result;
  }

  PipelineUncertaintyData._();

  factory PipelineUncertaintyData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineUncertaintyData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineUncertaintyData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'mealName')
    ..aD(3, _omitFieldNames ? '' : 'variancePercent')
    ..aOB(4, _omitFieldNames ? '' : 'needsClarification')
    ..aOM<PipelineCalorieBand>(5, _omitFieldNames ? '' : 'calorieBand',
        subBuilder: PipelineCalorieBand.create)
    ..pPM<PipelineClarification>(6, _omitFieldNames ? '' : 'clarifications',
        subBuilder: PipelineClarification.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineUncertaintyData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineUncertaintyData copyWith(
          void Function(PipelineUncertaintyData) updates) =>
      super.copyWith((message) => updates(message as PipelineUncertaintyData))
          as PipelineUncertaintyData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineUncertaintyData create() => PipelineUncertaintyData._();
  @$core.override
  PipelineUncertaintyData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineUncertaintyData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineUncertaintyData>(create);
  static PipelineUncertaintyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealName => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get variancePercent => $_getN(2);
  @$pb.TagNumber(3)
  set variancePercent($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVariancePercent() => $_has(2);
  @$pb.TagNumber(3)
  void clearVariancePercent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get needsClarification => $_getBF(3);
  @$pb.TagNumber(4)
  set needsClarification($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNeedsClarification() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedsClarification() => $_clearField(4);

  @$pb.TagNumber(5)
  PipelineCalorieBand get calorieBand => $_getN(4);
  @$pb.TagNumber(5)
  set calorieBand(PipelineCalorieBand value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCalorieBand() => $_has(4);
  @$pb.TagNumber(5)
  void clearCalorieBand() => $_clearField(5);
  @$pb.TagNumber(5)
  PipelineCalorieBand ensureCalorieBand() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<PipelineClarification> get clarifications => $_getList(5);
}

class PipelineMealTypeQuestionData extends $pb.GeneratedMessage {
  factory PipelineMealTypeQuestionData({
    $core.String? analysisId,
    $core.String? mealName,
    $core.Iterable<$0.MealType>? options,
    $0.MealType? inferredMealType,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (mealName != null) result.mealName = mealName;
    if (options != null) result.options.addAll(options);
    if (inferredMealType != null) result.inferredMealType = inferredMealType;
    return result;
  }

  PipelineMealTypeQuestionData._();

  factory PipelineMealTypeQuestionData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineMealTypeQuestionData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineMealTypeQuestionData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'mealName')
    ..pc<$0.MealType>(4, _omitFieldNames ? '' : 'options', $pb.PbFieldType.KE,
        valueOf: $0.MealType.valueOf,
        enumValues: $0.MealType.values,
        defaultEnumValue: $0.MealType.UNKNOWN)
    ..aE<$0.MealType>(5, _omitFieldNames ? '' : 'inferredMealType',
        enumValues: $0.MealType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineMealTypeQuestionData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineMealTypeQuestionData copyWith(
          void Function(PipelineMealTypeQuestionData) updates) =>
      super.copyWith(
              (message) => updates(message as PipelineMealTypeQuestionData))
          as PipelineMealTypeQuestionData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineMealTypeQuestionData create() =>
      PipelineMealTypeQuestionData._();
  @$core.override
  PipelineMealTypeQuestionData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineMealTypeQuestionData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineMealTypeQuestionData>(create);
  static PipelineMealTypeQuestionData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealName => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealName() => $_clearField(2);

  @$pb.TagNumber(4)
  $pb.PbList<$0.MealType> get options => $_getList(2);

  @$pb.TagNumber(5)
  $0.MealType get inferredMealType => $_getN(3);
  @$pb.TagNumber(5)
  set inferredMealType($0.MealType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInferredMealType() => $_has(3);
  @$pb.TagNumber(5)
  void clearInferredMealType() => $_clearField(5);
}

class PipelineResultData extends $pb.GeneratedMessage {
  factory PipelineResultData({
    $core.String? analysisId,
    $core.String? mealName,
    $core.String? quantity,
    $0.MealType? mealType,
    $core.String? mealTypeSource,
    $core.String? tip,
    PipelineMealHealth? health,
    PipelineMacros? macros,
    $0.CalorieConfidence? calorieConfidence,
    PipelineCalorieBand? calorieBand,
    $core.Iterable<PipelineResolvedIngredient>? ingredients,
    $core.Iterable<$core.String>? confidenceReasons,
    MealAnalysisReceipt? receipt,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (mealName != null) result.mealName = mealName;
    if (quantity != null) result.quantity = quantity;
    if (mealType != null) result.mealType = mealType;
    if (mealTypeSource != null) result.mealTypeSource = mealTypeSource;
    if (tip != null) result.tip = tip;
    if (health != null) result.health = health;
    if (macros != null) result.macros = macros;
    if (calorieConfidence != null) result.calorieConfidence = calorieConfidence;
    if (calorieBand != null) result.calorieBand = calorieBand;
    if (ingredients != null) result.ingredients.addAll(ingredients);
    if (confidenceReasons != null)
      result.confidenceReasons.addAll(confidenceReasons);
    if (receipt != null) result.receipt = receipt;
    return result;
  }

  PipelineResultData._();

  factory PipelineResultData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineResultData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineResultData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'mealName')
    ..aOS(3, _omitFieldNames ? '' : 'quantity')
    ..aE<$0.MealType>(4, _omitFieldNames ? '' : 'mealType',
        enumValues: $0.MealType.values)
    ..aOS(5, _omitFieldNames ? '' : 'mealTypeSource')
    ..aOS(6, _omitFieldNames ? '' : 'tip')
    ..aOM<PipelineMealHealth>(7, _omitFieldNames ? '' : 'health',
        subBuilder: PipelineMealHealth.create)
    ..aOM<PipelineMacros>(8, _omitFieldNames ? '' : 'macros',
        subBuilder: PipelineMacros.create)
    ..aE<$0.CalorieConfidence>(9, _omitFieldNames ? '' : 'calorieConfidence',
        enumValues: $0.CalorieConfidence.values)
    ..aOM<PipelineCalorieBand>(10, _omitFieldNames ? '' : 'calorieBand',
        subBuilder: PipelineCalorieBand.create)
    ..pPM<PipelineResolvedIngredient>(11, _omitFieldNames ? '' : 'ingredients',
        subBuilder: PipelineResolvedIngredient.create)
    ..pPS(12, _omitFieldNames ? '' : 'confidenceReasons')
    ..aOM<MealAnalysisReceipt>(13, _omitFieldNames ? '' : 'receipt',
        subBuilder: MealAnalysisReceipt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineResultData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineResultData copyWith(void Function(PipelineResultData) updates) =>
      super.copyWith((message) => updates(message as PipelineResultData))
          as PipelineResultData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineResultData create() => PipelineResultData._();
  @$core.override
  PipelineResultData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineResultData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineResultData>(create);
  static PipelineResultData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealName => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get quantity => $_getSZ(2);
  @$pb.TagNumber(3)
  set quantity($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.MealType get mealType => $_getN(3);
  @$pb.TagNumber(4)
  set mealType($0.MealType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMealType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMealType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get mealTypeSource => $_getSZ(4);
  @$pb.TagNumber(5)
  set mealTypeSource($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMealTypeSource() => $_has(4);
  @$pb.TagNumber(5)
  void clearMealTypeSource() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get tip => $_getSZ(5);
  @$pb.TagNumber(6)
  set tip($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTip() => $_has(5);
  @$pb.TagNumber(6)
  void clearTip() => $_clearField(6);

  @$pb.TagNumber(7)
  PipelineMealHealth get health => $_getN(6);
  @$pb.TagNumber(7)
  set health(PipelineMealHealth value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasHealth() => $_has(6);
  @$pb.TagNumber(7)
  void clearHealth() => $_clearField(7);
  @$pb.TagNumber(7)
  PipelineMealHealth ensureHealth() => $_ensure(6);

  @$pb.TagNumber(8)
  PipelineMacros get macros => $_getN(7);
  @$pb.TagNumber(8)
  set macros(PipelineMacros value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasMacros() => $_has(7);
  @$pb.TagNumber(8)
  void clearMacros() => $_clearField(8);
  @$pb.TagNumber(8)
  PipelineMacros ensureMacros() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.CalorieConfidence get calorieConfidence => $_getN(8);
  @$pb.TagNumber(9)
  set calorieConfidence($0.CalorieConfidence value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCalorieConfidence() => $_has(8);
  @$pb.TagNumber(9)
  void clearCalorieConfidence() => $_clearField(9);

  @$pb.TagNumber(10)
  PipelineCalorieBand get calorieBand => $_getN(9);
  @$pb.TagNumber(10)
  set calorieBand(PipelineCalorieBand value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasCalorieBand() => $_has(9);
  @$pb.TagNumber(10)
  void clearCalorieBand() => $_clearField(10);
  @$pb.TagNumber(10)
  PipelineCalorieBand ensureCalorieBand() => $_ensure(9);

  @$pb.TagNumber(11)
  $pb.PbList<PipelineResolvedIngredient> get ingredients => $_getList(10);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get confidenceReasons => $_getList(11);

  @$pb.TagNumber(13)
  MealAnalysisReceipt get receipt => $_getN(12);
  @$pb.TagNumber(13)
  set receipt(MealAnalysisReceipt value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasReceipt() => $_has(12);
  @$pb.TagNumber(13)
  void clearReceipt() => $_clearField(13);
  @$pb.TagNumber(13)
  MealAnalysisReceipt ensureReceipt() => $_ensure(12);
}

class PipelineErrorData extends $pb.GeneratedMessage {
  factory PipelineErrorData({
    $core.String? analysisId,
    $core.String? message,
    $core.bool? retryable,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (message != null) result.message = message;
    if (retryable != null) result.retryable = retryable;
    return result;
  }

  PipelineErrorData._();

  factory PipelineErrorData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineErrorData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineErrorData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOB(3, _omitFieldNames ? '' : 'retryable')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineErrorData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineErrorData copyWith(void Function(PipelineErrorData) updates) =>
      super.copyWith((message) => updates(message as PipelineErrorData))
          as PipelineErrorData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineErrorData create() => PipelineErrorData._();
  @$core.override
  PipelineErrorData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineErrorData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineErrorData>(create);
  static PipelineErrorData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get retryable => $_getBF(2);
  @$pb.TagNumber(3)
  set retryable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRetryable() => $_has(2);
  @$pb.TagNumber(3)
  void clearRetryable() => $_clearField(3);
}

class PipelineNoFoodData extends $pb.GeneratedMessage {
  factory PipelineNoFoodData({
    $core.String? analysisId,
    $core.String? outcomeReason,
    $core.double? outcomeConfidence,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    if (outcomeReason != null) result.outcomeReason = outcomeReason;
    if (outcomeConfidence != null) result.outcomeConfidence = outcomeConfidence;
    return result;
  }

  PipelineNoFoodData._();

  factory PipelineNoFoodData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PipelineNoFoodData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PipelineNoFoodData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..aOS(2, _omitFieldNames ? '' : 'outcomeReason')
    ..aD(3, _omitFieldNames ? '' : 'outcomeConfidence')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineNoFoodData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PipelineNoFoodData copyWith(void Function(PipelineNoFoodData) updates) =>
      super.copyWith((message) => updates(message as PipelineNoFoodData))
          as PipelineNoFoodData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PipelineNoFoodData create() => PipelineNoFoodData._();
  @$core.override
  PipelineNoFoodData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PipelineNoFoodData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PipelineNoFoodData>(create);
  static PipelineNoFoodData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get outcomeReason => $_getSZ(1);
  @$pb.TagNumber(2)
  set outcomeReason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOutcomeReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutcomeReason() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get outcomeConfidence => $_getN(2);
  @$pb.TagNumber(3)
  set outcomeConfidence($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOutcomeConfidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutcomeConfidence() => $_clearField(3);
}

class MealAnalysisPipelineSessionContext extends $pb.GeneratedMessage {
  factory MealAnalysisPipelineSessionContext({
    PipelineResultData? result,
    $core.List<$core.int>? imageBytes,
    $core.String? imageUrl,
    $core.String? textDescription,
    $core.bool? isRevised,
    PipelineNoFoodData? noFood,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    if (imageBytes != null) result$.imageBytes = imageBytes;
    if (imageUrl != null) result$.imageUrl = imageUrl;
    if (textDescription != null) result$.textDescription = textDescription;
    if (isRevised != null) result$.isRevised = isRevised;
    if (noFood != null) result$.noFood = noFood;
    return result$;
  }

  MealAnalysisPipelineSessionContext._();

  factory MealAnalysisPipelineSessionContext.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisPipelineSessionContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisPipelineSessionContext',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOM<PipelineResultData>(1, _omitFieldNames ? '' : 'result',
        subBuilder: PipelineResultData.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'imageBytes', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'imageUrl')
    ..aOS(4, _omitFieldNames ? '' : 'textDescription')
    ..aOB(5, _omitFieldNames ? '' : 'isRevised')
    ..aOM<PipelineNoFoodData>(6, _omitFieldNames ? '' : 'noFood',
        subBuilder: PipelineNoFoodData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisPipelineSessionContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisPipelineSessionContext copyWith(
          void Function(MealAnalysisPipelineSessionContext) updates) =>
      super.copyWith((message) =>
              updates(message as MealAnalysisPipelineSessionContext))
          as MealAnalysisPipelineSessionContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisPipelineSessionContext create() =>
      MealAnalysisPipelineSessionContext._();
  @$core.override
  MealAnalysisPipelineSessionContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisPipelineSessionContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisPipelineSessionContext>(
          create);
  static MealAnalysisPipelineSessionContext? _defaultInstance;

  @$pb.TagNumber(1)
  PipelineResultData get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PipelineResultData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  PipelineResultData ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get imageBytes => $_getN(1);
  @$pb.TagNumber(2)
  set imageBytes($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImageBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageBytes() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get imageUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set imageUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get textDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set textDescription($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTextDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isRevised => $_getBF(4);
  @$pb.TagNumber(5)
  set isRevised($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsRevised() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsRevised() => $_clearField(5);

  @$pb.TagNumber(6)
  PipelineNoFoodData get noFood => $_getN(5);
  @$pb.TagNumber(6)
  set noFood(PipelineNoFoodData value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasNoFood() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoFood() => $_clearField(6);
  @$pb.TagNumber(6)
  PipelineNoFoodData ensureNoFood() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
