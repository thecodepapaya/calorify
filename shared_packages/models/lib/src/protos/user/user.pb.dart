// This is a generated file - do not edit.
//
// Generated from protos/user/user.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'user.pbenum.dart';

class UserProfile extends $pb.GeneratedMessage {
  factory UserProfile({
    $core.double? height,
    $core.double? weight,
    $core.double? targetWeight,
    Gender? gender,
    $core.String? dateOfBirth,
    WeightGoal? weightGoal,
    ActivityLevel? activityLevel,
    UnitSystem? heightUnit,
    UnitSystem? weightUnit,
    $core.int? dailyCalorieGoal,
  }) {
    final result = create();
    if (height != null) result.height = height;
    if (weight != null) result.weight = weight;
    if (targetWeight != null) result.targetWeight = targetWeight;
    if (gender != null) result.gender = gender;
    if (dateOfBirth != null) result.dateOfBirth = dateOfBirth;
    if (weightGoal != null) result.weightGoal = weightGoal;
    if (activityLevel != null) result.activityLevel = activityLevel;
    if (heightUnit != null) result.heightUnit = heightUnit;
    if (weightUnit != null) result.weightUnit = weightUnit;
    if (dailyCalorieGoal != null) result.dailyCalorieGoal = dailyCalorieGoal;
    return result;
  }

  UserProfile._();

  factory UserProfile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserProfile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserProfile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'user'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'height')
    ..aD(2, _omitFieldNames ? '' : 'weight')
    ..aD(3, _omitFieldNames ? '' : 'targetWeight')
    ..aE<Gender>(4, _omitFieldNames ? '' : 'gender', enumValues: Gender.values)
    ..aOS(5, _omitFieldNames ? '' : 'dateOfBirth')
    ..aE<WeightGoal>(6, _omitFieldNames ? '' : 'weightGoal',
        enumValues: WeightGoal.values)
    ..aE<ActivityLevel>(7, _omitFieldNames ? '' : 'activityLevel',
        enumValues: ActivityLevel.values)
    ..aE<UnitSystem>(8, _omitFieldNames ? '' : 'heightUnit',
        enumValues: UnitSystem.values)
    ..aE<UnitSystem>(9, _omitFieldNames ? '' : 'weightUnit',
        enumValues: UnitSystem.values)
    ..aI(10, _omitFieldNames ? '' : 'dailyCalorieGoal')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile copyWith(void Function(UserProfile) updates) =>
      super.copyWith((message) => updates(message as UserProfile))
          as UserProfile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfile create() => UserProfile._();
  @$core.override
  UserProfile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserProfile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfile>(create);
  static UserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get height => $_getN(0);
  @$pb.TagNumber(1)
  set height($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get weight => $_getN(1);
  @$pb.TagNumber(2)
  set weight($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get targetWeight => $_getN(2);
  @$pb.TagNumber(3)
  set targetWeight($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetWeight() => $_clearField(3);

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
  UnitSystem get heightUnit => $_getN(7);
  @$pb.TagNumber(8)
  set heightUnit(UnitSystem value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHeightUnit() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeightUnit() => $_clearField(8);

  @$pb.TagNumber(9)
  UnitSystem get weightUnit => $_getN(8);
  @$pb.TagNumber(9)
  set weightUnit(UnitSystem value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWeightUnit() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeightUnit() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get dailyCalorieGoal => $_getIZ(9);
  @$pb.TagNumber(10)
  set dailyCalorieGoal($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDailyCalorieGoal() => $_has(9);
  @$pb.TagNumber(10)
  void clearDailyCalorieGoal() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
