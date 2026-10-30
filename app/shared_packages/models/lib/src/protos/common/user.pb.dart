// This is a generated file - do not edit.
//
// Generated from protos/common/user.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;
import 'meal.pb.dart' as $1;
import 'user.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'user.pbenum.dart';

class Height extends $pb.GeneratedMessage {
  factory Height({
    $core.double? value,
    HeightUnit? unit,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (unit != null) result.unit = unit;
    return result;
  }

  Height._();

  factory Height.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Height.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Height',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value')
    ..aE<HeightUnit>(2, _omitFieldNames ? '' : 'unit',
        enumValues: HeightUnit.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Height clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Height copyWith(void Function(Height) updates) =>
      super.copyWith((message) => updates(message as Height)) as Height;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Height create() => Height._();
  @$core.override
  Height createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Height getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Height>(create);
  static Height? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  HeightUnit get unit => $_getN(1);
  @$pb.TagNumber(2)
  set unit(HeightUnit value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnit() => $_clearField(2);
}

class Weight extends $pb.GeneratedMessage {
  factory Weight({
    $core.double? value,
    WeightUnit? unit,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (unit != null) result.unit = unit;
    return result;
  }

  Weight._();

  factory Weight.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Weight.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Weight',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value')
    ..aE<WeightUnit>(2, _omitFieldNames ? '' : 'unit',
        enumValues: WeightUnit.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Weight clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Weight copyWith(void Function(Weight) updates) =>
      super.copyWith((message) => updates(message as Weight)) as Weight;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Weight create() => Weight._();
  @$core.override
  Weight createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Weight getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Weight>(create);
  static Weight? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  WeightUnit get unit => $_getN(1);
  @$pb.TagNumber(2)
  set unit(WeightUnit value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnit() => $_clearField(2);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? name,
    $core.String? email,
    $0.Timestamp? createdAt,
    $0.Timestamp? lastActiveAt,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (email != null) result.email = email;
    if (createdAt != null) result.createdAt = createdAt;
    if (lastActiveAt != null) result.lastActiveAt = lastActiveAt;
    return result;
  }

  User._();

  factory User.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory User.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'lastActiveAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  @$core.override
  User createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => $_clearField(2);

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
  $0.Timestamp get lastActiveAt => $_getN(3);
  @$pb.TagNumber(4)
  set lastActiveAt($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLastActiveAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastActiveAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureLastActiveAt() => $_ensure(3);
}

class HealthData extends $pb.GeneratedMessage {
  factory HealthData({
    Height? height,
    Weight? weight,
    Weight? targetWeight,
    Gender? gender,
    $core.String? dateOfBirth,
    WeightGoal? weightGoal,
    ActivityLevel? activityLevel,
    $1.Macros? dailyMacroGoal,
  }) {
    final result = create();
    if (height != null) result.height = height;
    if (weight != null) result.weight = weight;
    if (targetWeight != null) result.targetWeight = targetWeight;
    if (gender != null) result.gender = gender;
    if (dateOfBirth != null) result.dateOfBirth = dateOfBirth;
    if (weightGoal != null) result.weightGoal = weightGoal;
    if (activityLevel != null) result.activityLevel = activityLevel;
    if (dailyMacroGoal != null) result.dailyMacroGoal = dailyMacroGoal;
    return result;
  }

  HealthData._();

  factory HealthData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aOM<Height>(1, _omitFieldNames ? '' : 'height', subBuilder: Height.create)
    ..aOM<Weight>(2, _omitFieldNames ? '' : 'weight', subBuilder: Weight.create)
    ..aOM<Weight>(3, _omitFieldNames ? '' : 'targetWeight',
        subBuilder: Weight.create)
    ..aE<Gender>(4, _omitFieldNames ? '' : 'gender', enumValues: Gender.values)
    ..aOS(5, _omitFieldNames ? '' : 'dateOfBirth')
    ..aE<WeightGoal>(6, _omitFieldNames ? '' : 'weightGoal',
        enumValues: WeightGoal.values)
    ..aE<ActivityLevel>(7, _omitFieldNames ? '' : 'activityLevel',
        enumValues: ActivityLevel.values)
    ..aOM<$1.Macros>(8, _omitFieldNames ? '' : 'dailyMacroGoal',
        subBuilder: $1.Macros.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthData copyWith(void Function(HealthData) updates) =>
      super.copyWith((message) => updates(message as HealthData)) as HealthData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthData create() => HealthData._();
  @$core.override
  HealthData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthData>(create);
  static HealthData? _defaultInstance;

  @$pb.TagNumber(1)
  Height get height => $_getN(0);
  @$pb.TagNumber(1)
  set height(Height value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => $_clearField(1);
  @$pb.TagNumber(1)
  Height ensureHeight() => $_ensure(0);

  @$pb.TagNumber(2)
  Weight get weight => $_getN(1);
  @$pb.TagNumber(2)
  set weight(Weight value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => $_clearField(2);
  @$pb.TagNumber(2)
  Weight ensureWeight() => $_ensure(1);

  @$pb.TagNumber(3)
  Weight get targetWeight => $_getN(2);
  @$pb.TagNumber(3)
  set targetWeight(Weight value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetWeight() => $_clearField(3);
  @$pb.TagNumber(3)
  Weight ensureTargetWeight() => $_ensure(2);

  @$pb.TagNumber(4)
  Gender get gender => $_getN(3);
  @$pb.TagNumber(4)
  set gender(Gender value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGender() => $_has(3);
  @$pb.TagNumber(4)
  void clearGender() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get dateOfBirth => $_getSZ(4);
  @$pb.TagNumber(5)
  set dateOfBirth($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDateOfBirth() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateOfBirth() => $_clearField(5);

  @$pb.TagNumber(6)
  WeightGoal get weightGoal => $_getN(5);
  @$pb.TagNumber(6)
  set weightGoal(WeightGoal value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasWeightGoal() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeightGoal() => $_clearField(6);

  @$pb.TagNumber(7)
  ActivityLevel get activityLevel => $_getN(6);
  @$pb.TagNumber(7)
  set activityLevel(ActivityLevel value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasActivityLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearActivityLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $1.Macros get dailyMacroGoal => $_getN(7);
  @$pb.TagNumber(8)
  set dailyMacroGoal($1.Macros value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDailyMacroGoal() => $_has(7);
  @$pb.TagNumber(8)
  void clearDailyMacroGoal() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Macros ensureDailyMacroGoal() => $_ensure(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
