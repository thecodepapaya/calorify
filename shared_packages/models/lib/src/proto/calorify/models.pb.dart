// This is a generated file - do not edit.
//
// Generated from calorify/models.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'models.pbenum.dart';

class MealInfo extends $pb.GeneratedMessage {
  factory MealInfo({
    $core.String? clientId,
    $fixnum.Int64? localId,
    $core.String? mealName,
    $core.String? mealQuantity,
    MealType? mealType,
    $core.int? calories,
    $core.int? protein,
    $core.int? carbs,
    $core.int? fat,
    $core.int? fiber,
    $fixnum.Int64? timestamp,
    $core.String? imageUrl,
    HealthScore? healthScore,
    $core.String? healthScoreReason,
  }) {
    final result = create();
    if (clientId != null) result.clientId = clientId;
    if (localId != null) result.localId = localId;
    if (mealName != null) result.mealName = mealName;
    if (mealQuantity != null) result.mealQuantity = mealQuantity;
    if (mealType != null) result.mealType = mealType;
    if (calories != null) result.calories = calories;
    if (protein != null) result.protein = protein;
    if (carbs != null) result.carbs = carbs;
    if (fat != null) result.fat = fat;
    if (fiber != null) result.fiber = fiber;
    if (timestamp != null) result.timestamp = timestamp;
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (healthScore != null) result.healthScore = healthScore;
    if (healthScoreReason != null) result.healthScoreReason = healthScoreReason;
    return result;
  }

  MealInfo._();

  factory MealInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientId')
    ..aInt64(2, _omitFieldNames ? '' : 'localId')
    ..aOS(3, _omitFieldNames ? '' : 'mealName')
    ..aOS(4, _omitFieldNames ? '' : 'mealQuantity')
    ..e<MealType>(5, _omitFieldNames ? '' : 'mealType', $pb.PbFieldType.OE,
        defaultOrMaker: MealType.UNKNOWN,
        valueOf: MealType.valueOf,
        enumValues: MealType.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'calories', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'protein', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'carbs', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'fat', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'fiber', $pb.PbFieldType.O3)
    ..aInt64(11, _omitFieldNames ? '' : 'timestamp')
    ..aOS(12, _omitFieldNames ? '' : 'imageUrl')
    ..e<HealthScore>(
        13, _omitFieldNames ? '' : 'healthScore', $pb.PbFieldType.OE,
        defaultOrMaker: HealthScore.HEALTHY,
        valueOf: HealthScore.valueOf,
        enumValues: HealthScore.values)
    ..aOS(14, _omitFieldNames ? '' : 'healthScoreReason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealInfo clone() => MealInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealInfo copyWith(void Function(MealInfo) updates) =>
      super.copyWith((message) => updates(message as MealInfo)) as MealInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealInfo create() => MealInfo._();
  @$core.override
  MealInfo createEmptyInstance() => create();
  static $pb.PbList<MealInfo> createRepeated() => $pb.PbList<MealInfo>();
  @$core.pragma('dart2js:noInline')
  static MealInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MealInfo>(create);
  static MealInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get localId => $_getI64(1);
  @$pb.TagNumber(2)
  set localId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mealName => $_getSZ(2);
  @$pb.TagNumber(3)
  set mealName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMealName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMealName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mealQuantity => $_getSZ(3);
  @$pb.TagNumber(4)
  set mealQuantity($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMealQuantity() => $_has(3);
  @$pb.TagNumber(4)
  void clearMealQuantity() => $_clearField(4);

  @$pb.TagNumber(5)
  MealType get mealType => $_getN(4);
  @$pb.TagNumber(5)
  set mealType(MealType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMealType() => $_has(4);
  @$pb.TagNumber(5)
  void clearMealType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get calories => $_getIZ(5);
  @$pb.TagNumber(6)
  set calories($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCalories() => $_has(5);
  @$pb.TagNumber(6)
  void clearCalories() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get protein => $_getIZ(6);
  @$pb.TagNumber(7)
  set protein($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasProtein() => $_has(6);
  @$pb.TagNumber(7)
  void clearProtein() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get carbs => $_getIZ(7);
  @$pb.TagNumber(8)
  set carbs($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCarbs() => $_has(7);
  @$pb.TagNumber(8)
  void clearCarbs() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get fat => $_getIZ(8);
  @$pb.TagNumber(9)
  set fat($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFat() => $_has(8);
  @$pb.TagNumber(9)
  void clearFat() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get fiber => $_getIZ(9);
  @$pb.TagNumber(10)
  set fiber($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFiber() => $_has(9);
  @$pb.TagNumber(10)
  void clearFiber() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get timestamp => $_getI64(10);
  @$pb.TagNumber(11)
  set timestamp($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTimestamp() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimestamp() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get imageUrl => $_getSZ(11);
  @$pb.TagNumber(12)
  set imageUrl($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasImageUrl() => $_has(11);
  @$pb.TagNumber(12)
  void clearImageUrl() => $_clearField(12);

  @$pb.TagNumber(13)
  HealthScore get healthScore => $_getN(12);
  @$pb.TagNumber(13)
  set healthScore(HealthScore value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasHealthScore() => $_has(12);
  @$pb.TagNumber(13)
  void clearHealthScore() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get healthScoreReason => $_getSZ(13);
  @$pb.TagNumber(14)
  set healthScoreReason($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasHealthScoreReason() => $_has(13);
  @$pb.TagNumber(14)
  void clearHealthScoreReason() => $_clearField(14);
}

class MealDetectionResult extends $pb.GeneratedMessage {
  factory MealDetectionResult({
    $core.bool? mealIdentified,
    $core.int? calorieConfidence,
    $core.String? tip,
    MealInfo? mealInfo,
  }) {
    final result = create();
    if (mealIdentified != null) result.mealIdentified = mealIdentified;
    if (calorieConfidence != null) result.calorieConfidence = calorieConfidence;
    if (tip != null) result.tip = tip;
    if (mealInfo != null) result.mealInfo = mealInfo;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'mealIdentified')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'calorieConfidence', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'tip')
    ..aOM<MealInfo>(4, _omitFieldNames ? '' : 'mealInfo',
        subBuilder: MealInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDetectionResult clone() => MealDetectionResult()..mergeFromMessage(this);
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
  static $pb.PbList<MealDetectionResult> createRepeated() =>
      $pb.PbList<MealDetectionResult>();
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
  $core.int get calorieConfidence => $_getIZ(1);
  @$pb.TagNumber(2)
  set calorieConfidence($core.int value) => $_setSignedInt32(1, value);
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
  MealInfo get mealInfo => $_getN(3);
  @$pb.TagNumber(4)
  set mealInfo(MealInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMealInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearMealInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  MealInfo ensureMealInfo() => $_ensure(3);
}

class UserProfile extends $pb.GeneratedMessage {
  factory UserProfile({
    $core.double? height,
    $core.double? weight,
    $core.double? targetWeight,
    Gender? gender,
    $fixnum.Int64? dateOfBirth,
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OD)
    ..a<$core.double>(
        3, _omitFieldNames ? '' : 'targetWeight', $pb.PbFieldType.OD)
    ..e<Gender>(4, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE,
        defaultOrMaker: Gender.MALE,
        valueOf: Gender.valueOf,
        enumValues: Gender.values)
    ..aInt64(5, _omitFieldNames ? '' : 'dateOfBirth')
    ..e<WeightGoal>(6, _omitFieldNames ? '' : 'weightGoal', $pb.PbFieldType.OE,
        defaultOrMaker: WeightGoal.LOSE_WEIGHT,
        valueOf: WeightGoal.valueOf,
        enumValues: WeightGoal.values)
    ..e<ActivityLevel>(
        7, _omitFieldNames ? '' : 'activityLevel', $pb.PbFieldType.OE,
        defaultOrMaker: ActivityLevel.SEDENTARY,
        valueOf: ActivityLevel.valueOf,
        enumValues: ActivityLevel.values)
    ..e<UnitSystem>(8, _omitFieldNames ? '' : 'heightUnit', $pb.PbFieldType.OE,
        defaultOrMaker: UnitSystem.METRIC,
        valueOf: UnitSystem.valueOf,
        enumValues: UnitSystem.values)
    ..e<UnitSystem>(9, _omitFieldNames ? '' : 'weightUnit', $pb.PbFieldType.OE,
        defaultOrMaker: UnitSystem.METRIC,
        valueOf: UnitSystem.valueOf,
        enumValues: UnitSystem.values)
    ..a<$core.int>(
        10, _omitFieldNames ? '' : 'dailyCalorieGoal', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfile clone() => UserProfile()..mergeFromMessage(this);
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
  static $pb.PbList<UserProfile> createRepeated() => $pb.PbList<UserProfile>();
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
  $fixnum.Int64 get dateOfBirth => $_getI64(4);
  @$pb.TagNumber(5)
  set dateOfBirth($fixnum.Int64 value) => $_setInt64(4, value);
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

class FcmToken extends $pb.GeneratedMessage {
  factory FcmToken({
    $core.String? token,
    $core.String? deviceType,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (deviceType != null) result.deviceType = deviceType;
    return result;
  }

  FcmToken._();

  factory FcmToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FcmToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FcmToken',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOS(2, _omitFieldNames ? '' : 'deviceType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FcmToken clone() => FcmToken()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FcmToken copyWith(void Function(FcmToken) updates) =>
      super.copyWith((message) => updates(message as FcmToken)) as FcmToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FcmToken create() => FcmToken._();
  @$core.override
  FcmToken createEmptyInstance() => create();
  static $pb.PbList<FcmToken> createRepeated() => $pb.PbList<FcmToken>();
  @$core.pragma('dart2js:noInline')
  static FcmToken getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FcmToken>(create);
  static FcmToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceType => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceType() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
