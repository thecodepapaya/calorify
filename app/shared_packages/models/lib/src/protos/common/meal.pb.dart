// This is a generated file - do not edit.
//
// Generated from protos/common/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'meal.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'meal.pbenum.dart';

class Measurement extends $pb.GeneratedMessage {
  factory Measurement({
    $core.int? value,
    $core.int? minValue,
    $core.int? maxValue,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (minValue != null) result.minValue = minValue;
    if (maxValue != null) result.maxValue = maxValue;
    return result;
  }

  Measurement._();

  factory Measurement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Measurement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Measurement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value')
    ..aI(2, _omitFieldNames ? '' : 'minValue')
    ..aI(3, _omitFieldNames ? '' : 'maxValue')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Measurement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Measurement copyWith(void Function(Measurement) updates) =>
      super.copyWith((message) => updates(message as Measurement))
          as Measurement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Measurement create() => Measurement._();
  @$core.override
  Measurement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Measurement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Measurement>(create);
  static Measurement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get minValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set minValue($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxValue($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxValue() => $_clearField(3);
}

class Macros extends $pb.GeneratedMessage {
  factory Macros({
    Measurement? calorie,
    Measurement? carb,
    Measurement? protein,
    Measurement? fat,
    Measurement? fiber,
  }) {
    final result = create();
    if (calorie != null) result.calorie = calorie;
    if (carb != null) result.carb = carb;
    if (protein != null) result.protein = protein;
    if (fat != null) result.fat = fat;
    if (fiber != null) result.fiber = fiber;
    return result;
  }

  Macros._();

  factory Macros.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Macros.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Macros',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aOM<Measurement>(1, _omitFieldNames ? '' : 'calorie',
        subBuilder: Measurement.create)
    ..aOM<Measurement>(2, _omitFieldNames ? '' : 'carb',
        subBuilder: Measurement.create)
    ..aOM<Measurement>(3, _omitFieldNames ? '' : 'protein',
        subBuilder: Measurement.create)
    ..aOM<Measurement>(4, _omitFieldNames ? '' : 'fat',
        subBuilder: Measurement.create)
    ..aOM<Measurement>(5, _omitFieldNames ? '' : 'fiber',
        subBuilder: Measurement.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Macros clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Macros copyWith(void Function(Macros) updates) =>
      super.copyWith((message) => updates(message as Macros)) as Macros;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Macros create() => Macros._();
  @$core.override
  Macros createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Macros getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Macros>(create);
  static Macros? _defaultInstance;

  @$pb.TagNumber(1)
  Measurement get calorie => $_getN(0);
  @$pb.TagNumber(1)
  set calorie(Measurement value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCalorie() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalorie() => $_clearField(1);
  @$pb.TagNumber(1)
  Measurement ensureCalorie() => $_ensure(0);

  @$pb.TagNumber(2)
  Measurement get carb => $_getN(1);
  @$pb.TagNumber(2)
  set carb(Measurement value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCarb() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarb() => $_clearField(2);
  @$pb.TagNumber(2)
  Measurement ensureCarb() => $_ensure(1);

  @$pb.TagNumber(3)
  Measurement get protein => $_getN(2);
  @$pb.TagNumber(3)
  set protein(Measurement value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasProtein() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtein() => $_clearField(3);
  @$pb.TagNumber(3)
  Measurement ensureProtein() => $_ensure(2);

  @$pb.TagNumber(4)
  Measurement get fat => $_getN(3);
  @$pb.TagNumber(4)
  set fat(Measurement value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFat() => $_clearField(4);
  @$pb.TagNumber(4)
  Measurement ensureFat() => $_ensure(3);

  @$pb.TagNumber(5)
  Measurement get fiber => $_getN(4);
  @$pb.TagNumber(5)
  set fiber(Measurement value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFiber() => $_has(4);
  @$pb.TagNumber(5)
  void clearFiber() => $_clearField(5);
  @$pb.TagNumber(5)
  Measurement ensureFiber() => $_ensure(4);
}

class MealHealth extends $pb.GeneratedMessage {
  factory MealHealth({
    HealthScore? healthScore,
    $core.String? healthScoreReason,
  }) {
    final result = create();
    if (healthScore != null) result.healthScore = healthScore;
    if (healthScoreReason != null) result.healthScoreReason = healthScoreReason;
    return result;
  }

  MealHealth._();

  factory MealHealth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealHealth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealHealth',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aE<HealthScore>(1, _omitFieldNames ? '' : 'healthScore',
        enumValues: HealthScore.values)
    ..aOS(2, _omitFieldNames ? '' : 'healthScoreReason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealHealth clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealHealth copyWith(void Function(MealHealth) updates) =>
      super.copyWith((message) => updates(message as MealHealth)) as MealHealth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealHealth create() => MealHealth._();
  @$core.override
  MealHealth createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealHealth getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealHealth>(create);
  static MealHealth? _defaultInstance;

  @$pb.TagNumber(1)
  HealthScore get healthScore => $_getN(0);
  @$pb.TagNumber(1)
  set healthScore(HealthScore value) => $_setField(1, value);
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

class MealMetadata extends $pb.GeneratedMessage {
  factory MealMetadata({
    $core.String? imageBase64,
    $core.String? mealDescription,
    $core.String? timestamp,
    $core.String? tip,
    $core.String? imageUrl,
  }) {
    final result = create();
    if (imageBase64 != null) result.imageBase64 = imageBase64;
    if (mealDescription != null) result.mealDescription = mealDescription;
    if (timestamp != null) result.timestamp = timestamp;
    if (tip != null) result.tip = tip;
    if (imageUrl != null) result.imageUrl = imageUrl;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imageBase64')
    ..aOS(2, _omitFieldNames ? '' : 'mealDescription')
    ..aOS(3, _omitFieldNames ? '' : 'timestamp')
    ..aOS(4, _omitFieldNames ? '' : 'tip')
    ..aOS(5, _omitFieldNames ? '' : 'imageUrl')
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
  $core.String get imageBase64 => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageBase64($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImageBase64() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageBase64() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mealDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set mealDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMealDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearMealDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get timestamp => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get tip => $_getSZ(3);
  @$pb.TagNumber(4)
  set tip($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTip() => $_has(3);
  @$pb.TagNumber(4)
  void clearTip() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => $_clearField(5);
}

class Meal extends $pb.GeneratedMessage {
  factory Meal({
    $core.String? name,
    $core.String? quantity,
    MealType? type,
    Macros? macros,
    MealHealth? health,
    MealMetadata? metadata,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (quantity != null) result.quantity = quantity;
    if (type != null) result.type = type;
    if (macros != null) result.macros = macros;
    if (health != null) result.health = health;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  Meal._();

  factory Meal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Meal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Meal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'quantity')
    ..aE<MealType>(4, _omitFieldNames ? '' : 'type',
        enumValues: MealType.values)
    ..aOM<Macros>(5, _omitFieldNames ? '' : 'macros', subBuilder: Macros.create)
    ..aOM<MealHealth>(6, _omitFieldNames ? '' : 'health',
        subBuilder: MealHealth.create)
    ..aOM<MealMetadata>(7, _omitFieldNames ? '' : 'metadata',
        subBuilder: MealMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Meal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Meal copyWith(void Function(Meal) updates) =>
      super.copyWith((message) => updates(message as Meal)) as Meal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Meal create() => Meal._();
  @$core.override
  Meal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Meal getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Meal>(create);
  static Meal? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get quantity => $_getSZ(1);
  @$pb.TagNumber(3)
  set quantity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(3)
  void clearQuantity() => $_clearField(3);

  @$pb.TagNumber(4)
  MealType get type => $_getN(2);
  @$pb.TagNumber(4)
  set type(MealType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  Macros get macros => $_getN(3);
  @$pb.TagNumber(5)
  set macros(Macros value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMacros() => $_has(3);
  @$pb.TagNumber(5)
  void clearMacros() => $_clearField(5);
  @$pb.TagNumber(5)
  Macros ensureMacros() => $_ensure(3);

  @$pb.TagNumber(6)
  MealHealth get health => $_getN(4);
  @$pb.TagNumber(6)
  set health(MealHealth value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHealth() => $_has(4);
  @$pb.TagNumber(6)
  void clearHealth() => $_clearField(6);
  @$pb.TagNumber(6)
  MealHealth ensureHealth() => $_ensure(4);

  @$pb.TagNumber(7)
  MealMetadata get metadata => $_getN(5);
  @$pb.TagNumber(7)
  set metadata(MealMetadata value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(7)
  void clearMetadata() => $_clearField(7);
  @$pb.TagNumber(7)
  MealMetadata ensureMetadata() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
