// This is a generated file - do not edit.
//
// Generated from protos/meal/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'meal.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'meal.pbenum.dart';

class MealMacro extends $pb.GeneratedMessage {
  factory MealMacro({
    $core.int? calories,
    $core.int? carbs,
    $core.int? protein,
    $core.int? fat,
    $core.int? fiber,
  }) {
    final result = create();
    if (calories != null) result.calories = calories;
    if (carbs != null) result.carbs = carbs;
    if (protein != null) result.protein = protein;
    if (fat != null) result.fat = fat;
    if (fiber != null) result.fiber = fiber;
    return result;
  }

  MealMacro._();

  factory MealMacro.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealMacro.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealMacro',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'meal'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'calories')
    ..aI(2, _omitFieldNames ? '' : 'carbs')
    ..aI(3, _omitFieldNames ? '' : 'protein')
    ..aI(4, _omitFieldNames ? '' : 'fat')
    ..aI(5, _omitFieldNames ? '' : 'fiber')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealMacro clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealMacro copyWith(void Function(MealMacro) updates) =>
      super.copyWith((message) => updates(message as MealMacro)) as MealMacro;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealMacro create() => MealMacro._();
  @$core.override
  MealMacro createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealMacro getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MealMacro>(create);
  static MealMacro? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get calories => $_getIZ(0);
  @$pb.TagNumber(1)
  set calories($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCalories() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalories() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get carbs => $_getIZ(1);
  @$pb.TagNumber(2)
  set carbs($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCarbs() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarbs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get protein => $_getIZ(2);
  @$pb.TagNumber(3)
  set protein($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProtein() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtein() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get fat => $_getIZ(3);
  @$pb.TagNumber(4)
  set fat($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFat() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get fiber => $_getIZ(4);
  @$pb.TagNumber(5)
  set fiber($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFiber() => $_has(4);
  @$pb.TagNumber(5)
  void clearFiber() => $_clearField(5);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'meal'),
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

class Meal extends $pb.GeneratedMessage {
  factory Meal({
    $core.String? name,
    $core.String? quantity,
    MealType? type,
    MealMacro? macros,
    MealHealth? health,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (quantity != null) result.quantity = quantity;
    if (type != null) result.type = type;
    if (macros != null) result.macros = macros;
    if (health != null) result.health = health;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'meal'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'quantity')
    ..aE<MealType>(3, _omitFieldNames ? '' : 'type',
        enumValues: MealType.values)
    ..aOM<MealMacro>(5, _omitFieldNames ? '' : 'macros',
        subBuilder: MealMacro.create)
    ..aOM<MealHealth>(6, _omitFieldNames ? '' : 'health',
        subBuilder: MealHealth.create)
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

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get quantity => $_getSZ(1);
  @$pb.TagNumber(2)
  set quantity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => $_clearField(2);

  @$pb.TagNumber(3)
  MealType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(MealType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(5)
  MealMacro get macros => $_getN(3);
  @$pb.TagNumber(5)
  set macros(MealMacro value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMacros() => $_has(3);
  @$pb.TagNumber(5)
  void clearMacros() => $_clearField(5);
  @$pb.TagNumber(5)
  MealMacro ensureMacros() => $_ensure(3);

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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
