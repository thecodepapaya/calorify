// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_detection.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../meal/meal.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MealMetadata extends $pb.GeneratedMessage {
  factory MealMetadata({
    $core.String? imageUrl,
    $core.String? mealDescription,
  }) {
    final result = create();
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (mealDescription != null) result.mealDescription = mealDescription;
    return result;
  }

  MealMetadata._();

  factory MealMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealMetadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imageUrl')
    ..aOS(2, _omitFieldNames ? '' : 'mealDescription')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealMetadata copyWith(void Function(MealMetadata) updates) =>
      super.copyWith((message) => updates(message as MealMetadata))
          as MealMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealMetadata create() => MealMetadata._();
  @$core.override
  MealMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealMetadata>(create);
  static MealMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imageUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImageUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealDescription() => $_clearField(2);
}

class MealDetectionResult extends $pb.GeneratedMessage {
  factory MealDetectionResult({
    $core.bool? mealIdentified,
    $0.CalorieConfidence? calorieConfidence,
    $core.String? tip,
    $0.Meal? meal,
    MealMetadata? metadata,
  }) {
    final result = create();
    if (mealIdentified != null) result.mealIdentified = mealIdentified;
    if (calorieConfidence != null) result.calorieConfidence = calorieConfidence;
    if (tip != null) result.tip = tip;
    if (meal != null) result.meal = meal;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  MealDetectionResult._();

  factory MealDetectionResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealDetectionResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealDetectionResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'mealIdentified')
    ..aE<$0.CalorieConfidence>(2, _omitFieldNames ? '' : 'calorieConfidence',
        enumValues: $0.CalorieConfidence.values)
    ..aOS(3, _omitFieldNames ? '' : 'tip')
    ..aOM<$0.Meal>(4, _omitFieldNames ? '' : 'meal', subBuilder: $0.Meal.create)
    ..aOM<MealMetadata>(5, _omitFieldNames ? '' : 'metadata',
        subBuilder: MealMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDetectionResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDetectionResult copyWith(void Function(MealDetectionResult) updates) =>
      super.copyWith((message) => updates(message as MealDetectionResult))
          as MealDetectionResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealDetectionResult create() => MealDetectionResult._();
  @$core.override
  MealDetectionResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealDetectionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealDetectionResult>(create);
  static MealDetectionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get mealIdentified => $_getBF(0);
  @$pb.TagNumber(1)
  set mealIdentified($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMealIdentified() => $_has(0);
  @$pb.TagNumber(1)
  void clearMealIdentified() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.CalorieConfidence get calorieConfidence => $_getN(1);
  @$pb.TagNumber(2)
  set calorieConfidence($0.CalorieConfidence value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCalorieConfidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearCalorieConfidence() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get tip => $_getSZ(2);
  @$pb.TagNumber(3)
  set tip($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTip() => $_has(2);
  @$pb.TagNumber(3)
  void clearTip() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Meal get meal => $_getN(3);
  @$pb.TagNumber(4)
  set meal($0.Meal value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMeal() => $_has(3);
  @$pb.TagNumber(4)
  void clearMeal() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Meal ensureMeal() => $_ensure(3);

  @$pb.TagNumber(5)
  MealMetadata get metadata => $_getN(4);
  @$pb.TagNumber(5)
  set metadata(MealMetadata value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMetadata() => $_has(4);
  @$pb.TagNumber(5)
  void clearMetadata() => $_clearField(5);
  @$pb.TagNumber(5)
  MealMetadata ensureMetadata() => $_ensure(4);
}

class MealDetectionResponse extends $pb.GeneratedMessage {
  factory MealDetectionResponse({
    MealDetectionResult? result,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    return result$;
  }

  MealDetectionResponse._();

  factory MealDetectionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealDetectionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealDetectionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOM<MealDetectionResult>(1, _omitFieldNames ? '' : 'result',
        subBuilder: MealDetectionResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDetectionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDetectionResponse copyWith(
          void Function(MealDetectionResponse) updates) =>
      super.copyWith((message) => updates(message as MealDetectionResponse))
          as MealDetectionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealDetectionResponse create() => MealDetectionResponse._();
  @$core.override
  MealDetectionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealDetectionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealDetectionResponse>(create);
  static MealDetectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  MealDetectionResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(MealDetectionResult value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  MealDetectionResult ensureResult() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
