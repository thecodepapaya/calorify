// This is a generated file - do not edit.
//
// Generated from protos/server/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/meal.pb.dart' as $0;
import 'meal.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'meal.pbenum.dart';

class PortionExact extends $pb.GeneratedMessage {
  factory PortionExact({
    $core.int? value,
    $0.Measurement? perUnitGram,
    Origin? origin,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (perUnitGram != null) result.perUnitGram = perUnitGram;
    if (origin != null) result.origin = origin;
    return result;
  }

  PortionExact._();

  factory PortionExact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortionExact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortionExact',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value')
    ..aOM<$0.Measurement>(2, _omitFieldNames ? '' : 'perUnitGram',
        subBuilder: $0.Measurement.create)
    ..aE<Origin>(3, _omitFieldNames ? '' : 'origin', enumValues: Origin.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionExact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionExact copyWith(void Function(PortionExact) updates) =>
      super.copyWith((message) => updates(message as PortionExact))
          as PortionExact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortionExact create() => PortionExact._();
  @$core.override
  PortionExact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortionExact getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortionExact>(create);
  static PortionExact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Measurement get perUnitGram => $_getN(1);
  @$pb.TagNumber(2)
  set perUnitGram($0.Measurement value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPerUnitGram() => $_has(1);
  @$pb.TagNumber(2)
  void clearPerUnitGram() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Measurement ensurePerUnitGram() => $_ensure(1);

  @$pb.TagNumber(3)
  Origin get origin => $_getN(2);
  @$pb.TagNumber(3)
  set origin(Origin value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOrigin() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrigin() => $_clearField(3);
}

class PortionBulk extends $pb.GeneratedMessage {
  factory PortionBulk({
    $0.Measurement? value,
    Origin? origin,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (origin != null) result.origin = origin;
    return result;
  }

  PortionBulk._();

  factory PortionBulk.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortionBulk.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortionBulk',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOM<$0.Measurement>(1, _omitFieldNames ? '' : 'value',
        subBuilder: $0.Measurement.create)
    ..aE<Origin>(2, _omitFieldNames ? '' : 'origin', enumValues: Origin.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionBulk clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionBulk copyWith(void Function(PortionBulk) updates) =>
      super.copyWith((message) => updates(message as PortionBulk))
          as PortionBulk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortionBulk create() => PortionBulk._();
  @$core.override
  PortionBulk createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortionBulk getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortionBulk>(create);
  static PortionBulk? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Measurement get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Measurement value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Measurement ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  Origin get origin => $_getN(1);
  @$pb.TagNumber(2)
  set origin(Origin value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => $_clearField(2);
}

class PortionPinch extends $pb.GeneratedMessage {
  factory PortionPinch({
    $core.int? value,
    Origin? origin,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (origin != null) result.origin = origin;
    return result;
  }

  PortionPinch._();

  factory PortionPinch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PortionPinch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PortionPinch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value')
    ..aE<Origin>(2, _omitFieldNames ? '' : 'origin', enumValues: Origin.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionPinch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PortionPinch copyWith(void Function(PortionPinch) updates) =>
      super.copyWith((message) => updates(message as PortionPinch))
          as PortionPinch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PortionPinch create() => PortionPinch._();
  @$core.override
  PortionPinch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PortionPinch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PortionPinch>(create);
  static PortionPinch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  Origin get origin => $_getN(1);
  @$pb.TagNumber(2)
  set origin(Origin value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOrigin() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrigin() => $_clearField(2);
}

enum MealComponent_Portion { exact, bulk, pinch, notSet }

class MealComponent extends $pb.GeneratedMessage {
  factory MealComponent({
    $core.String? name,
    $core.Iterable<$core.String>? alias,
    PortionExact? exact,
    PortionBulk? bulk,
    PortionPinch? pinch,
    PreparationMethod? preparationMethod,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (alias != null) result.alias.addAll(alias);
    if (exact != null) result.exact = exact;
    if (bulk != null) result.bulk = bulk;
    if (pinch != null) result.pinch = pinch;
    if (preparationMethod != null) result.preparationMethod = preparationMethod;
    return result;
  }

  MealComponent._();

  factory MealComponent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealComponent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, MealComponent_Portion>
      _MealComponent_PortionByTag = {
    3: MealComponent_Portion.exact,
    4: MealComponent_Portion.bulk,
    5: MealComponent_Portion.pinch,
    0: MealComponent_Portion.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealComponent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'alias')
    ..aOM<PortionExact>(3, _omitFieldNames ? '' : 'exact',
        subBuilder: PortionExact.create)
    ..aOM<PortionBulk>(4, _omitFieldNames ? '' : 'bulk',
        subBuilder: PortionBulk.create)
    ..aOM<PortionPinch>(5, _omitFieldNames ? '' : 'pinch',
        subBuilder: PortionPinch.create)
    ..aE<PreparationMethod>(6, _omitFieldNames ? '' : 'preparationMethod',
        enumValues: PreparationMethod.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealComponent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealComponent copyWith(void Function(MealComponent) updates) =>
      super.copyWith((message) => updates(message as MealComponent))
          as MealComponent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealComponent create() => MealComponent._();
  @$core.override
  MealComponent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealComponent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealComponent>(create);
  static MealComponent? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  MealComponent_Portion whichPortion() =>
      _MealComponent_PortionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearPortion() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get alias => $_getList(1);

  @$pb.TagNumber(3)
  PortionExact get exact => $_getN(2);
  @$pb.TagNumber(3)
  set exact(PortionExact value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExact() => $_has(2);
  @$pb.TagNumber(3)
  void clearExact() => $_clearField(3);
  @$pb.TagNumber(3)
  PortionExact ensureExact() => $_ensure(2);

  @$pb.TagNumber(4)
  PortionBulk get bulk => $_getN(3);
  @$pb.TagNumber(4)
  set bulk(PortionBulk value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBulk() => $_has(3);
  @$pb.TagNumber(4)
  void clearBulk() => $_clearField(4);
  @$pb.TagNumber(4)
  PortionBulk ensureBulk() => $_ensure(3);

  @$pb.TagNumber(5)
  PortionPinch get pinch => $_getN(4);
  @$pb.TagNumber(5)
  set pinch(PortionPinch value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPinch() => $_has(4);
  @$pb.TagNumber(5)
  void clearPinch() => $_clearField(5);
  @$pb.TagNumber(5)
  PortionPinch ensurePinch() => $_ensure(4);

  @$pb.TagNumber(6)
  PreparationMethod get preparationMethod => $_getN(5);
  @$pb.TagNumber(6)
  set preparationMethod(PreparationMethod value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPreparationMethod() => $_has(5);
  @$pb.TagNumber(6)
  void clearPreparationMethod() => $_clearField(6);
}

enum MealIngredient_Portion { exact, bulk, pinch, notSet }

class MealIngredient extends $pb.GeneratedMessage {
  factory MealIngredient({
    $core.String? name,
    $core.Iterable<$core.String>? alias,
    PortionExact? exact,
    PortionBulk? bulk,
    PortionPinch? pinch,
    IngredientType? ingredientType,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (alias != null) result.alias.addAll(alias);
    if (exact != null) result.exact = exact;
    if (bulk != null) result.bulk = bulk;
    if (pinch != null) result.pinch = pinch;
    if (ingredientType != null) result.ingredientType = ingredientType;
    return result;
  }

  MealIngredient._();

  factory MealIngredient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealIngredient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, MealIngredient_Portion>
      _MealIngredient_PortionByTag = {
    3: MealIngredient_Portion.exact,
    4: MealIngredient_Portion.bulk,
    5: MealIngredient_Portion.pinch,
    0: MealIngredient_Portion.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealIngredient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'alias')
    ..aOM<PortionExact>(3, _omitFieldNames ? '' : 'exact',
        subBuilder: PortionExact.create)
    ..aOM<PortionBulk>(4, _omitFieldNames ? '' : 'bulk',
        subBuilder: PortionBulk.create)
    ..aOM<PortionPinch>(5, _omitFieldNames ? '' : 'pinch',
        subBuilder: PortionPinch.create)
    ..aE<IngredientType>(6, _omitFieldNames ? '' : 'ingredientType',
        enumValues: IngredientType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealIngredient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealIngredient copyWith(void Function(MealIngredient) updates) =>
      super.copyWith((message) => updates(message as MealIngredient))
          as MealIngredient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealIngredient create() => MealIngredient._();
  @$core.override
  MealIngredient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealIngredient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealIngredient>(create);
  static MealIngredient? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  MealIngredient_Portion whichPortion() =>
      _MealIngredient_PortionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearPortion() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get alias => $_getList(1);

  @$pb.TagNumber(3)
  PortionExact get exact => $_getN(2);
  @$pb.TagNumber(3)
  set exact(PortionExact value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExact() => $_has(2);
  @$pb.TagNumber(3)
  void clearExact() => $_clearField(3);
  @$pb.TagNumber(3)
  PortionExact ensureExact() => $_ensure(2);

  @$pb.TagNumber(4)
  PortionBulk get bulk => $_getN(3);
  @$pb.TagNumber(4)
  set bulk(PortionBulk value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBulk() => $_has(3);
  @$pb.TagNumber(4)
  void clearBulk() => $_clearField(4);
  @$pb.TagNumber(4)
  PortionBulk ensureBulk() => $_ensure(3);

  @$pb.TagNumber(5)
  PortionPinch get pinch => $_getN(4);
  @$pb.TagNumber(5)
  set pinch(PortionPinch value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPinch() => $_has(4);
  @$pb.TagNumber(5)
  void clearPinch() => $_clearField(5);
  @$pb.TagNumber(5)
  PortionPinch ensurePinch() => $_ensure(4);

  @$pb.TagNumber(6)
  IngredientType get ingredientType => $_getN(5);
  @$pb.TagNumber(6)
  set ingredientType(IngredientType value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasIngredientType() => $_has(5);
  @$pb.TagNumber(6)
  void clearIngredientType() => $_clearField(6);
}

class Pass1 extends $pb.GeneratedMessage {
  factory Pass1({
    $core.String? name,
    $core.String? quantity,
    $0.MealType? mealType,
    $core.Iterable<MealComponent>? components,
    $core.String? tip,
    $0.MealHealth? mealHealth,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (quantity != null) result.quantity = quantity;
    if (mealType != null) result.mealType = mealType;
    if (components != null) result.components.addAll(components);
    if (tip != null) result.tip = tip;
    if (mealHealth != null) result.mealHealth = mealHealth;
    return result;
  }

  Pass1._();

  factory Pass1.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pass1.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pass1',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'quantity')
    ..aE<$0.MealType>(3, _omitFieldNames ? '' : 'mealType',
        enumValues: $0.MealType.values)
    ..pPM<MealComponent>(4, _omitFieldNames ? '' : 'components',
        subBuilder: MealComponent.create)
    ..aOS(5, _omitFieldNames ? '' : 'tip')
    ..aOM<$0.MealHealth>(6, _omitFieldNames ? '' : 'mealHealth',
        subBuilder: $0.MealHealth.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pass1 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pass1 copyWith(void Function(Pass1) updates) =>
      super.copyWith((message) => updates(message as Pass1)) as Pass1;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pass1 create() => Pass1._();
  @$core.override
  Pass1 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pass1 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pass1>(create);
  static Pass1? _defaultInstance;

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
  $0.MealType get mealType => $_getN(2);
  @$pb.TagNumber(3)
  set mealType($0.MealType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMealType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMealType() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<MealComponent> get components => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get tip => $_getSZ(4);
  @$pb.TagNumber(5)
  set tip($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTip() => $_has(4);
  @$pb.TagNumber(5)
  void clearTip() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.MealHealth get mealHealth => $_getN(5);
  @$pb.TagNumber(6)
  set mealHealth($0.MealHealth value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMealHealth() => $_has(5);
  @$pb.TagNumber(6)
  void clearMealHealth() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.MealHealth ensureMealHealth() => $_ensure(5);
}

class Pass2 extends $pb.GeneratedMessage {
  factory Pass2({
    $core.Iterable<MealIngredient>? ingredients,
  }) {
    final result = create();
    if (ingredients != null) result.ingredients.addAll(ingredients);
    return result;
  }

  Pass2._();

  factory Pass2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pass2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pass2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..pPM<MealIngredient>(1, _omitFieldNames ? '' : 'ingredients',
        subBuilder: MealIngredient.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pass2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pass2 copyWith(void Function(Pass2) updates) =>
      super.copyWith((message) => updates(message as Pass2)) as Pass2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pass2 create() => Pass2._();
  @$core.override
  Pass2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pass2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pass2>(create);
  static Pass2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MealIngredient> get ingredients => $_getList(0);
}

class EnrichedIngredient extends $pb.GeneratedMessage {
  factory EnrichedIngredient({
    $core.String? name,
    $fixnum.Int64? fdcId,
    $core.String? description,
    $core.double? similarity,
    $0.Measurement? grams,
    $0.Macros? macros,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (fdcId != null) result.fdcId = fdcId;
    if (description != null) result.description = description;
    if (similarity != null) result.similarity = similarity;
    if (grams != null) result.grams = grams;
    if (macros != null) result.macros = macros;
    return result;
  }

  EnrichedIngredient._();

  factory EnrichedIngredient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnrichedIngredient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnrichedIngredient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aInt64(2, _omitFieldNames ? '' : 'fdcId')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aD(4, _omitFieldNames ? '' : 'similarity', fieldType: $pb.PbFieldType.OF)
    ..aOM<$0.Measurement>(5, _omitFieldNames ? '' : 'grams',
        subBuilder: $0.Measurement.create)
    ..aOM<$0.Macros>(6, _omitFieldNames ? '' : 'macros',
        subBuilder: $0.Macros.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnrichedIngredient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnrichedIngredient copyWith(void Function(EnrichedIngredient) updates) =>
      super.copyWith((message) => updates(message as EnrichedIngredient))
          as EnrichedIngredient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnrichedIngredient create() => EnrichedIngredient._();
  @$core.override
  EnrichedIngredient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnrichedIngredient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnrichedIngredient>(create);
  static EnrichedIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fdcId => $_getI64(1);
  @$pb.TagNumber(2)
  set fdcId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFdcId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFdcId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get similarity => $_getN(3);
  @$pb.TagNumber(4)
  set similarity($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSimilarity() => $_has(3);
  @$pb.TagNumber(4)
  void clearSimilarity() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Measurement get grams => $_getN(4);
  @$pb.TagNumber(5)
  set grams($0.Measurement value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGrams() => $_has(4);
  @$pb.TagNumber(5)
  void clearGrams() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Measurement ensureGrams() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Macros get macros => $_getN(5);
  @$pb.TagNumber(6)
  set macros($0.Macros value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMacros() => $_has(5);
  @$pb.TagNumber(6)
  void clearMacros() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Macros ensureMacros() => $_ensure(5);
}

class UsdaEnriched extends $pb.GeneratedMessage {
  factory UsdaEnriched({
    $core.Iterable<EnrichedIngredient>? ingredients,
    $0.Macros? totalMacros,
  }) {
    final result = create();
    if (ingredients != null) result.ingredients.addAll(ingredients);
    if (totalMacros != null) result.totalMacros = totalMacros;
    return result;
  }

  UsdaEnriched._();

  factory UsdaEnriched.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UsdaEnriched.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UsdaEnriched',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..pPM<EnrichedIngredient>(1, _omitFieldNames ? '' : 'ingredients',
        subBuilder: EnrichedIngredient.create)
    ..aOM<$0.Macros>(2, _omitFieldNames ? '' : 'totalMacros',
        subBuilder: $0.Macros.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsdaEnriched clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsdaEnriched copyWith(void Function(UsdaEnriched) updates) =>
      super.copyWith((message) => updates(message as UsdaEnriched))
          as UsdaEnriched;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsdaEnriched create() => UsdaEnriched._();
  @$core.override
  UsdaEnriched createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UsdaEnriched getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UsdaEnriched>(create);
  static UsdaEnriched? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<EnrichedIngredient> get ingredients => $_getList(0);

  @$pb.TagNumber(2)
  $0.Macros get totalMacros => $_getN(1);
  @$pb.TagNumber(2)
  set totalMacros($0.Macros value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalMacros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalMacros() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Macros ensureTotalMacros() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
