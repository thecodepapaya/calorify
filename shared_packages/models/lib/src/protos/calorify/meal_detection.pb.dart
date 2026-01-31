// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_detection.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../meal/meal.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Variation_Option extends $pb.GeneratedMessage {
  factory Variation_Option({
    $core.String? option,
    $0.MealMacro? macroDiff,
  }) {
    final result = create();
    if (option != null) result.option = option;
    if (macroDiff != null) result.macroDiff = macroDiff;
    return result;
  }

  Variation_Option._();

  factory Variation_Option.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Variation_Option.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Variation.Option',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'option')
    ..aOM<$0.MealMacro>(2, _omitFieldNames ? '' : 'macroDiff',
        subBuilder: $0.MealMacro.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Variation_Option clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Variation_Option copyWith(void Function(Variation_Option) updates) =>
      super.copyWith((message) => updates(message as Variation_Option))
          as Variation_Option;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Variation_Option create() => Variation_Option._();
  @$core.override
  Variation_Option createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Variation_Option getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Variation_Option>(create);
  static Variation_Option? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get option => $_getSZ(0);
  @$pb.TagNumber(1)
  set option($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOption() => $_has(0);
  @$pb.TagNumber(1)
  void clearOption() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.MealMacro get macroDiff => $_getN(1);
  @$pb.TagNumber(2)
  set macroDiff($0.MealMacro value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMacroDiff() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacroDiff() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.MealMacro ensureMacroDiff() => $_ensure(1);
}

class Variation extends $pb.GeneratedMessage {
  factory Variation({
    $core.String? question,
    $core.Iterable<Variation_Option>? options,
  }) {
    final result = create();
    if (question != null) result.question = question;
    if (options != null) result.options.addAll(options);
    return result;
  }

  Variation._();

  factory Variation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Variation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Variation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'question')
    ..pPM<Variation_Option>(2, _omitFieldNames ? '' : 'options',
        subBuilder: Variation_Option.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Variation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Variation copyWith(void Function(Variation) updates) =>
      super.copyWith((message) => updates(message as Variation)) as Variation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Variation create() => Variation._();
  @$core.override
  Variation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Variation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Variation>(create);
  static Variation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get question => $_getSZ(0);
  @$pb.TagNumber(1)
  set question($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuestion() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestion() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Variation_Option> get options => $_getList(1);
}

class MealMetadata extends $pb.GeneratedMessage {
  factory MealMetadata({
    $core.String? imageUrl,
    $core.String? mealDescription,
    $core.Iterable<Variation>? selectedVariations,
  }) {
    final result = create();
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (mealDescription != null) result.mealDescription = mealDescription;
    if (selectedVariations != null)
      result.selectedVariations.addAll(selectedVariations);
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
    ..pPM<Variation>(3, _omitFieldNames ? '' : 'selectedVariations',
        subBuilder: Variation.create)
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

  @$pb.TagNumber(3)
  $pb.PbList<Variation> get selectedVariations => $_getList(2);
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

class ImageMealDetectionRequest extends $pb.GeneratedMessage {
  factory ImageMealDetectionRequest({
    $core.String? imageUrl,
    $core.String? mimeType,
  }) {
    final result = create();
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (mimeType != null) result.mimeType = mimeType;
    return result;
  }

  ImageMealDetectionRequest._();

  factory ImageMealDetectionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImageMealDetectionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageMealDetectionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imageUrl')
    ..aOS(3, _omitFieldNames ? '' : 'mimeType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImageMealDetectionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImageMealDetectionRequest copyWith(
          void Function(ImageMealDetectionRequest) updates) =>
      super.copyWith((message) => updates(message as ImageMealDetectionRequest))
          as ImageMealDetectionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageMealDetectionRequest create() => ImageMealDetectionRequest._();
  @$core.override
  ImageMealDetectionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImageMealDetectionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageMealDetectionRequest>(create);
  static ImageMealDetectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imageUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImageUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageUrl() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.String get mimeType => $_getSZ(1);
  @$pb.TagNumber(3)
  set mimeType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasMimeType() => $_has(1);
  @$pb.TagNumber(3)
  void clearMimeType() => $_clearField(3);
}

class TextMealDetectionRequest extends $pb.GeneratedMessage {
  factory TextMealDetectionRequest({
    $core.String? textDescription,
  }) {
    final result = create();
    if (textDescription != null) result.textDescription = textDescription;
    return result;
  }

  TextMealDetectionRequest._();

  factory TextMealDetectionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextMealDetectionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextMealDetectionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'textDescription')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextMealDetectionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextMealDetectionRequest copyWith(
          void Function(TextMealDetectionRequest) updates) =>
      super.copyWith((message) => updates(message as TextMealDetectionRequest))
          as TextMealDetectionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextMealDetectionRequest create() => TextMealDetectionRequest._();
  @$core.override
  TextMealDetectionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextMealDetectionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextMealDetectionRequest>(create);
  static TextMealDetectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get textDescription => $_getSZ(0);
  @$pb.TagNumber(1)
  set textDescription($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTextDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextDescription() => $_clearField(1);
}

class MealDetectionResponse extends $pb.GeneratedMessage {
  factory MealDetectionResponse({
    MealDetectionResult? result,
    $core.Iterable<Variation>? variations,
  }) {
    final result$ = create();
    if (result != null) result$.result = result;
    if (variations != null) result$.variations.addAll(variations);
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
    ..pPM<Variation>(2, _omitFieldNames ? '' : 'variations',
        subBuilder: Variation.create)
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

  @$pb.TagNumber(2)
  $pb.PbList<Variation> get variations => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
