// This is a generated file - do not edit.
//
// Generated from protos/wear/wear_protocol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../app/meal.pb.dart' as $0;
import '../calorify/meal_detection.pb.dart' as $2;
import '../user/user.pb.dart' as $1;
import 'wear_protocol.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_protocol.pbenum.dart';

class WearError extends $pb.GeneratedMessage {
  factory WearError({
    WearErrorCode? code,
    $core.String? message,
    $core.bool? retryable,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (retryable != null) result.retryable = retryable;
    return result;
  }

  WearError._();

  factory WearError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aE<WearErrorCode>(1, _omitFieldNames ? '' : 'code',
        enumValues: WearErrorCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOB(3, _omitFieldNames ? '' : 'retryable')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearError copyWith(void Function(WearError) updates) =>
      super.copyWith((message) => updates(message as WearError)) as WearError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearError create() => WearError._();
  @$core.override
  WearError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearError getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WearError>(create);
  static WearError? _defaultInstance;

  @$pb.TagNumber(1)
  WearErrorCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(WearErrorCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

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

class MealLogRequest extends $pb.GeneratedMessage {
  factory MealLogRequest({
    $0.LoggedMeal? meal,
    $core.String? operationId,
    $core.int? favoriteMealId,
  }) {
    final result = create();
    if (meal != null) result.meal = meal;
    if (operationId != null) result.operationId = operationId;
    if (favoriteMealId != null) result.favoriteMealId = favoriteMealId;
    return result;
  }

  MealLogRequest._();

  factory MealLogRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealLogRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealLogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aOM<$0.LoggedMeal>(1, _omitFieldNames ? '' : 'meal',
        subBuilder: $0.LoggedMeal.create)
    ..aOS(2, _omitFieldNames ? '' : 'operationId')
    ..aI(3, _omitFieldNames ? '' : 'favoriteMealId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealLogRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealLogRequest copyWith(void Function(MealLogRequest) updates) =>
      super.copyWith((message) => updates(message as MealLogRequest))
          as MealLogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealLogRequest create() => MealLogRequest._();
  @$core.override
  MealLogRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealLogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealLogRequest>(create);
  static MealLogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.LoggedMeal get meal => $_getN(0);
  @$pb.TagNumber(1)
  set meal($0.LoggedMeal value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMeal() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.LoggedMeal ensureMeal() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get operationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set operationId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOperationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperationId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get favoriteMealId => $_getIZ(2);
  @$pb.TagNumber(3)
  set favoriteMealId($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFavoriteMealId() => $_has(2);
  @$pb.TagNumber(3)
  void clearFavoriteMealId() => $_clearField(3);
}

class MealDeleteRequest extends $pb.GeneratedMessage {
  factory MealDeleteRequest({
    $core.int? mealId,
  }) {
    final result = create();
    if (mealId != null) result.mealId = mealId;
    return result;
  }

  MealDeleteRequest._();

  factory MealDeleteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealDeleteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealDeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'mealId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDeleteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDeleteRequest copyWith(void Function(MealDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as MealDeleteRequest))
          as MealDeleteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealDeleteRequest create() => MealDeleteRequest._();
  @$core.override
  MealDeleteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealDeleteRequest>(create);
  static MealDeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mealId => $_getIZ(0);
  @$pb.TagNumber(1)
  set mealId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMealId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMealId() => $_clearField(1);
}

class TodayMealsRequest extends $pb.GeneratedMessage {
  factory TodayMealsRequest() => create();

  TodayMealsRequest._();

  factory TodayMealsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TodayMealsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TodayMealsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TodayMealsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TodayMealsRequest copyWith(void Function(TodayMealsRequest) updates) =>
      super.copyWith((message) => updates(message as TodayMealsRequest))
          as TodayMealsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodayMealsRequest create() => TodayMealsRequest._();
  @$core.override
  TodayMealsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TodayMealsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TodayMealsRequest>(create);
  static TodayMealsRequest? _defaultInstance;
}

class CalorieGoalRequest extends $pb.GeneratedMessage {
  factory CalorieGoalRequest() => create();

  CalorieGoalRequest._();

  factory CalorieGoalRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalorieGoalRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalorieGoalRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalorieGoalRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalorieGoalRequest copyWith(void Function(CalorieGoalRequest) updates) =>
      super.copyWith((message) => updates(message as CalorieGoalRequest))
          as CalorieGoalRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalorieGoalRequest create() => CalorieGoalRequest._();
  @$core.override
  CalorieGoalRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalorieGoalRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalorieGoalRequest>(create);
  static CalorieGoalRequest? _defaultInstance;
}

class UserProfileRequest extends $pb.GeneratedMessage {
  factory UserProfileRequest() => create();

  UserProfileRequest._();

  factory UserProfileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserProfileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserProfileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfileRequest copyWith(void Function(UserProfileRequest) updates) =>
      super.copyWith((message) => updates(message as UserProfileRequest))
          as UserProfileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfileRequest create() => UserProfileRequest._();
  @$core.override
  UserProfileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserProfileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfileRequest>(create);
  static UserProfileRequest? _defaultInstance;
}

class FavoritesRequest extends $pb.GeneratedMessage {
  factory FavoritesRequest() => create();

  FavoritesRequest._();

  factory FavoritesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FavoritesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FavoritesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FavoritesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FavoritesRequest copyWith(void Function(FavoritesRequest) updates) =>
      super.copyWith((message) => updates(message as FavoritesRequest))
          as FavoritesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FavoritesRequest create() => FavoritesRequest._();
  @$core.override
  FavoritesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FavoritesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FavoritesRequest>(create);
  static FavoritesRequest? _defaultInstance;
}

class AuthSessionRequest extends $pb.GeneratedMessage {
  factory AuthSessionRequest() => create();

  AuthSessionRequest._();

  factory AuthSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthSessionRequest copyWith(void Function(AuthSessionRequest) updates) =>
      super.copyWith((message) => updates(message as AuthSessionRequest))
          as AuthSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthSessionRequest create() => AuthSessionRequest._();
  @$core.override
  AuthSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthSessionRequest>(create);
  static AuthSessionRequest? _defaultInstance;
}

class DetectTextRequest extends $pb.GeneratedMessage {
  factory DetectTextRequest({
    $core.String? textDescription,
  }) {
    final result = create();
    if (textDescription != null) result.textDescription = textDescription;
    return result;
  }

  DetectTextRequest._();

  factory DetectTextRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DetectTextRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DetectTextRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'textDescription')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DetectTextRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DetectTextRequest copyWith(void Function(DetectTextRequest) updates) =>
      super.copyWith((message) => updates(message as DetectTextRequest))
          as DetectTextRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetectTextRequest create() => DetectTextRequest._();
  @$core.override
  DetectTextRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DetectTextRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DetectTextRequest>(create);
  static DetectTextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get textDescription => $_getSZ(0);
  @$pb.TagNumber(1)
  set textDescription($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTextDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextDescription() => $_clearField(1);
}

enum WearRequest_Payload {
  mealLog,
  mealDelete,
  todayMeals,
  calorieGoal,
  userProfile,
  favorites,
  authSession,
  detectText,
  notSet
}

class WearRequest extends $pb.GeneratedMessage {
  factory WearRequest({
    MealLogRequest? mealLog,
    MealDeleteRequest? mealDelete,
    TodayMealsRequest? todayMeals,
    CalorieGoalRequest? calorieGoal,
    UserProfileRequest? userProfile,
    FavoritesRequest? favorites,
    AuthSessionRequest? authSession,
    DetectTextRequest? detectText,
  }) {
    final result = create();
    if (mealLog != null) result.mealLog = mealLog;
    if (mealDelete != null) result.mealDelete = mealDelete;
    if (todayMeals != null) result.todayMeals = todayMeals;
    if (calorieGoal != null) result.calorieGoal = calorieGoal;
    if (userProfile != null) result.userProfile = userProfile;
    if (favorites != null) result.favorites = favorites;
    if (authSession != null) result.authSession = authSession;
    if (detectText != null) result.detectText = detectText;
    return result;
  }

  WearRequest._();

  factory WearRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WearRequest_Payload>
      _WearRequest_PayloadByTag = {
    10: WearRequest_Payload.mealLog,
    11: WearRequest_Payload.mealDelete,
    12: WearRequest_Payload.todayMeals,
    13: WearRequest_Payload.calorieGoal,
    14: WearRequest_Payload.userProfile,
    15: WearRequest_Payload.favorites,
    16: WearRequest_Payload.authSession,
    17: WearRequest_Payload.detectText,
    0: WearRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17])
    ..aOM<MealLogRequest>(10, _omitFieldNames ? '' : 'mealLog',
        subBuilder: MealLogRequest.create)
    ..aOM<MealDeleteRequest>(11, _omitFieldNames ? '' : 'mealDelete',
        subBuilder: MealDeleteRequest.create)
    ..aOM<TodayMealsRequest>(12, _omitFieldNames ? '' : 'todayMeals',
        subBuilder: TodayMealsRequest.create)
    ..aOM<CalorieGoalRequest>(13, _omitFieldNames ? '' : 'calorieGoal',
        subBuilder: CalorieGoalRequest.create)
    ..aOM<UserProfileRequest>(14, _omitFieldNames ? '' : 'userProfile',
        subBuilder: UserProfileRequest.create)
    ..aOM<FavoritesRequest>(15, _omitFieldNames ? '' : 'favorites',
        subBuilder: FavoritesRequest.create)
    ..aOM<AuthSessionRequest>(16, _omitFieldNames ? '' : 'authSession',
        subBuilder: AuthSessionRequest.create)
    ..aOM<DetectTextRequest>(17, _omitFieldNames ? '' : 'detectText',
        subBuilder: DetectTextRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearRequest copyWith(void Function(WearRequest) updates) =>
      super.copyWith((message) => updates(message as WearRequest))
          as WearRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearRequest create() => WearRequest._();
  @$core.override
  WearRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearRequest>(create);
  static WearRequest? _defaultInstance;

  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  WearRequest_Payload whichPayload() =>
      _WearRequest_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(10)
  MealLogRequest get mealLog => $_getN(0);
  @$pb.TagNumber(10)
  set mealLog(MealLogRequest value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMealLog() => $_has(0);
  @$pb.TagNumber(10)
  void clearMealLog() => $_clearField(10);
  @$pb.TagNumber(10)
  MealLogRequest ensureMealLog() => $_ensure(0);

  @$pb.TagNumber(11)
  MealDeleteRequest get mealDelete => $_getN(1);
  @$pb.TagNumber(11)
  set mealDelete(MealDeleteRequest value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMealDelete() => $_has(1);
  @$pb.TagNumber(11)
  void clearMealDelete() => $_clearField(11);
  @$pb.TagNumber(11)
  MealDeleteRequest ensureMealDelete() => $_ensure(1);

  @$pb.TagNumber(12)
  TodayMealsRequest get todayMeals => $_getN(2);
  @$pb.TagNumber(12)
  set todayMeals(TodayMealsRequest value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasTodayMeals() => $_has(2);
  @$pb.TagNumber(12)
  void clearTodayMeals() => $_clearField(12);
  @$pb.TagNumber(12)
  TodayMealsRequest ensureTodayMeals() => $_ensure(2);

  @$pb.TagNumber(13)
  CalorieGoalRequest get calorieGoal => $_getN(3);
  @$pb.TagNumber(13)
  set calorieGoal(CalorieGoalRequest value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasCalorieGoal() => $_has(3);
  @$pb.TagNumber(13)
  void clearCalorieGoal() => $_clearField(13);
  @$pb.TagNumber(13)
  CalorieGoalRequest ensureCalorieGoal() => $_ensure(3);

  @$pb.TagNumber(14)
  UserProfileRequest get userProfile => $_getN(4);
  @$pb.TagNumber(14)
  set userProfile(UserProfileRequest value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasUserProfile() => $_has(4);
  @$pb.TagNumber(14)
  void clearUserProfile() => $_clearField(14);
  @$pb.TagNumber(14)
  UserProfileRequest ensureUserProfile() => $_ensure(4);

  @$pb.TagNumber(15)
  FavoritesRequest get favorites => $_getN(5);
  @$pb.TagNumber(15)
  set favorites(FavoritesRequest value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasFavorites() => $_has(5);
  @$pb.TagNumber(15)
  void clearFavorites() => $_clearField(15);
  @$pb.TagNumber(15)
  FavoritesRequest ensureFavorites() => $_ensure(5);

  @$pb.TagNumber(16)
  AuthSessionRequest get authSession => $_getN(6);
  @$pb.TagNumber(16)
  set authSession(AuthSessionRequest value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAuthSession() => $_has(6);
  @$pb.TagNumber(16)
  void clearAuthSession() => $_clearField(16);
  @$pb.TagNumber(16)
  AuthSessionRequest ensureAuthSession() => $_ensure(6);

  @$pb.TagNumber(17)
  DetectTextRequest get detectText => $_getN(7);
  @$pb.TagNumber(17)
  set detectText(DetectTextRequest value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasDetectText() => $_has(7);
  @$pb.TagNumber(17)
  void clearDetectText() => $_clearField(17);
  @$pb.TagNumber(17)
  DetectTextRequest ensureDetectText() => $_ensure(7);
}

class MealLogResponse extends $pb.GeneratedMessage {
  factory MealLogResponse() => create();

  MealLogResponse._();

  factory MealLogResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealLogResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealLogResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealLogResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealLogResponse copyWith(void Function(MealLogResponse) updates) =>
      super.copyWith((message) => updates(message as MealLogResponse))
          as MealLogResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealLogResponse create() => MealLogResponse._();
  @$core.override
  MealLogResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealLogResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealLogResponse>(create);
  static MealLogResponse? _defaultInstance;
}

class MealDeleteResponse extends $pb.GeneratedMessage {
  factory MealDeleteResponse() => create();

  MealDeleteResponse._();

  factory MealDeleteResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealDeleteResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealDeleteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDeleteResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealDeleteResponse copyWith(void Function(MealDeleteResponse) updates) =>
      super.copyWith((message) => updates(message as MealDeleteResponse))
          as MealDeleteResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealDeleteResponse create() => MealDeleteResponse._();
  @$core.override
  MealDeleteResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealDeleteResponse>(create);
  static MealDeleteResponse? _defaultInstance;
}

class TodayMealsResponse extends $pb.GeneratedMessage {
  factory TodayMealsResponse({
    $core.Iterable<$0.LoggedMeal>? meals,
  }) {
    final result = create();
    if (meals != null) result.meals.addAll(meals);
    return result;
  }

  TodayMealsResponse._();

  factory TodayMealsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TodayMealsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TodayMealsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..pPM<$0.LoggedMeal>(1, _omitFieldNames ? '' : 'meals',
        subBuilder: $0.LoggedMeal.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TodayMealsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TodayMealsResponse copyWith(void Function(TodayMealsResponse) updates) =>
      super.copyWith((message) => updates(message as TodayMealsResponse))
          as TodayMealsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TodayMealsResponse create() => TodayMealsResponse._();
  @$core.override
  TodayMealsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TodayMealsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TodayMealsResponse>(create);
  static TodayMealsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.LoggedMeal> get meals => $_getList(0);
}

class CalorieGoalResponse extends $pb.GeneratedMessage {
  factory CalorieGoalResponse({
    $core.int? goal,
  }) {
    final result = create();
    if (goal != null) result.goal = goal;
    return result;
  }

  CalorieGoalResponse._();

  factory CalorieGoalResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CalorieGoalResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CalorieGoalResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'goal')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalorieGoalResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CalorieGoalResponse copyWith(void Function(CalorieGoalResponse) updates) =>
      super.copyWith((message) => updates(message as CalorieGoalResponse))
          as CalorieGoalResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CalorieGoalResponse create() => CalorieGoalResponse._();
  @$core.override
  CalorieGoalResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CalorieGoalResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalorieGoalResponse>(create);
  static CalorieGoalResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get goal => $_getIZ(0);
  @$pb.TagNumber(1)
  set goal($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGoal() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoal() => $_clearField(1);
}

class UserProfileResponse extends $pb.GeneratedMessage {
  factory UserProfileResponse({
    $1.UserProfile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  UserProfileResponse._();

  factory UserProfileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserProfileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserProfileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aOM<$1.UserProfile>(1, _omitFieldNames ? '' : 'profile',
        subBuilder: $1.UserProfile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserProfileResponse copyWith(void Function(UserProfileResponse) updates) =>
      super.copyWith((message) => updates(message as UserProfileResponse))
          as UserProfileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProfileResponse create() => UserProfileResponse._();
  @$core.override
  UserProfileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserProfileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserProfileResponse>(create);
  static UserProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.UserProfile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile($1.UserProfile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.UserProfile ensureProfile() => $_ensure(0);
}

class FavoritesResponse extends $pb.GeneratedMessage {
  factory FavoritesResponse({
    $core.Iterable<$0.FavoriteMeal>? favorites,
  }) {
    final result = create();
    if (favorites != null) result.favorites.addAll(favorites);
    return result;
  }

  FavoritesResponse._();

  factory FavoritesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FavoritesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FavoritesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..pPM<$0.FavoriteMeal>(1, _omitFieldNames ? '' : 'favorites',
        subBuilder: $0.FavoriteMeal.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FavoritesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FavoritesResponse copyWith(void Function(FavoritesResponse) updates) =>
      super.copyWith((message) => updates(message as FavoritesResponse))
          as FavoritesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FavoritesResponse create() => FavoritesResponse._();
  @$core.override
  FavoritesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FavoritesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FavoritesResponse>(create);
  static FavoritesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.FavoriteMeal> get favorites => $_getList(0);
}

class WearAuthSession extends $pb.GeneratedMessage {
  factory WearAuthSession({
    $core.String? uid,
    $core.String? authToken,
    $core.bool? isAnonymous,
    $core.String? syncedAt,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (authToken != null) result.authToken = authToken;
    if (isAnonymous != null) result.isAnonymous = isAnonymous;
    if (syncedAt != null) result.syncedAt = syncedAt;
    return result;
  }

  WearAuthSession._();

  factory WearAuthSession.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearAuthSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearAuthSession',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'authToken')
    ..aOB(3, _omitFieldNames ? '' : 'isAnonymous')
    ..aOS(4, _omitFieldNames ? '' : 'syncedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearAuthSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearAuthSession copyWith(void Function(WearAuthSession) updates) =>
      super.copyWith((message) => updates(message as WearAuthSession))
          as WearAuthSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearAuthSession create() => WearAuthSession._();
  @$core.override
  WearAuthSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearAuthSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearAuthSession>(create);
  static WearAuthSession? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get authToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isAnonymous => $_getBF(2);
  @$pb.TagNumber(3)
  set isAnonymous($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsAnonymous() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAnonymous() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get syncedAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set syncedAt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSyncedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearSyncedAt() => $_clearField(4);
}

class AuthSessionResponse extends $pb.GeneratedMessage {
  factory AuthSessionResponse({
    WearAuthSession? session,
  }) {
    final result = create();
    if (session != null) result.session = session;
    return result;
  }

  AuthSessionResponse._();

  factory AuthSessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AuthSessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AuthSessionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aOM<WearAuthSession>(1, _omitFieldNames ? '' : 'session',
        subBuilder: WearAuthSession.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthSessionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthSessionResponse copyWith(void Function(AuthSessionResponse) updates) =>
      super.copyWith((message) => updates(message as AuthSessionResponse))
          as AuthSessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthSessionResponse create() => AuthSessionResponse._();
  @$core.override
  AuthSessionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AuthSessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AuthSessionResponse>(create);
  static AuthSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WearAuthSession get session => $_getN(0);
  @$pb.TagNumber(1)
  set session(WearAuthSession value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearSession() => $_clearField(1);
  @$pb.TagNumber(1)
  WearAuthSession ensureSession() => $_ensure(0);
}

class DetectTextResponse extends $pb.GeneratedMessage {
  factory DetectTextResponse({
    $2.MealDetectionResponse? response,
  }) {
    final result = create();
    if (response != null) result.response = response;
    return result;
  }

  DetectTextResponse._();

  factory DetectTextResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DetectTextResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DetectTextResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..aOM<$2.MealDetectionResponse>(1, _omitFieldNames ? '' : 'response',
        subBuilder: $2.MealDetectionResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DetectTextResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DetectTextResponse copyWith(void Function(DetectTextResponse) updates) =>
      super.copyWith((message) => updates(message as DetectTextResponse))
          as DetectTextResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetectTextResponse create() => DetectTextResponse._();
  @$core.override
  DetectTextResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DetectTextResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DetectTextResponse>(create);
  static DetectTextResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.MealDetectionResponse get response => $_getN(0);
  @$pb.TagNumber(1)
  set response($2.MealDetectionResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.MealDetectionResponse ensureResponse() => $_ensure(0);
}

enum WearResponse_Payload {
  mealLog,
  mealDelete,
  todayMeals,
  calorieGoal,
  userProfile,
  favorites,
  authSession,
  detectText,
  notSet
}

class WearResponse extends $pb.GeneratedMessage {
  factory WearResponse({
    WearError? error,
    MealLogResponse? mealLog,
    MealDeleteResponse? mealDelete,
    TodayMealsResponse? todayMeals,
    CalorieGoalResponse? calorieGoal,
    UserProfileResponse? userProfile,
    FavoritesResponse? favorites,
    AuthSessionResponse? authSession,
    DetectTextResponse? detectText,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (mealLog != null) result.mealLog = mealLog;
    if (mealDelete != null) result.mealDelete = mealDelete;
    if (todayMeals != null) result.todayMeals = todayMeals;
    if (calorieGoal != null) result.calorieGoal = calorieGoal;
    if (userProfile != null) result.userProfile = userProfile;
    if (favorites != null) result.favorites = favorites;
    if (authSession != null) result.authSession = authSession;
    if (detectText != null) result.detectText = detectText;
    return result;
  }

  WearResponse._();

  factory WearResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WearResponse_Payload>
      _WearResponse_PayloadByTag = {
    10: WearResponse_Payload.mealLog,
    11: WearResponse_Payload.mealDelete,
    12: WearResponse_Payload.todayMeals,
    13: WearResponse_Payload.calorieGoal,
    14: WearResponse_Payload.userProfile,
    15: WearResponse_Payload.favorites,
    16: WearResponse_Payload.authSession,
    17: WearResponse_Payload.detectText,
    0: WearResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17])
    ..aOM<WearError>(1, _omitFieldNames ? '' : 'error',
        subBuilder: WearError.create)
    ..aOM<MealLogResponse>(10, _omitFieldNames ? '' : 'mealLog',
        subBuilder: MealLogResponse.create)
    ..aOM<MealDeleteResponse>(11, _omitFieldNames ? '' : 'mealDelete',
        subBuilder: MealDeleteResponse.create)
    ..aOM<TodayMealsResponse>(12, _omitFieldNames ? '' : 'todayMeals',
        subBuilder: TodayMealsResponse.create)
    ..aOM<CalorieGoalResponse>(13, _omitFieldNames ? '' : 'calorieGoal',
        subBuilder: CalorieGoalResponse.create)
    ..aOM<UserProfileResponse>(14, _omitFieldNames ? '' : 'userProfile',
        subBuilder: UserProfileResponse.create)
    ..aOM<FavoritesResponse>(15, _omitFieldNames ? '' : 'favorites',
        subBuilder: FavoritesResponse.create)
    ..aOM<AuthSessionResponse>(16, _omitFieldNames ? '' : 'authSession',
        subBuilder: AuthSessionResponse.create)
    ..aOM<DetectTextResponse>(17, _omitFieldNames ? '' : 'detectText',
        subBuilder: DetectTextResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearResponse copyWith(void Function(WearResponse) updates) =>
      super.copyWith((message) => updates(message as WearResponse))
          as WearResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearResponse create() => WearResponse._();
  @$core.override
  WearResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearResponse>(create);
  static WearResponse? _defaultInstance;

  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  WearResponse_Payload whichPayload() =>
      _WearResponse_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WearError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(WearError value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  WearError ensureError() => $_ensure(0);

  @$pb.TagNumber(10)
  MealLogResponse get mealLog => $_getN(1);
  @$pb.TagNumber(10)
  set mealLog(MealLogResponse value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMealLog() => $_has(1);
  @$pb.TagNumber(10)
  void clearMealLog() => $_clearField(10);
  @$pb.TagNumber(10)
  MealLogResponse ensureMealLog() => $_ensure(1);

  @$pb.TagNumber(11)
  MealDeleteResponse get mealDelete => $_getN(2);
  @$pb.TagNumber(11)
  set mealDelete(MealDeleteResponse value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasMealDelete() => $_has(2);
  @$pb.TagNumber(11)
  void clearMealDelete() => $_clearField(11);
  @$pb.TagNumber(11)
  MealDeleteResponse ensureMealDelete() => $_ensure(2);

  @$pb.TagNumber(12)
  TodayMealsResponse get todayMeals => $_getN(3);
  @$pb.TagNumber(12)
  set todayMeals(TodayMealsResponse value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasTodayMeals() => $_has(3);
  @$pb.TagNumber(12)
  void clearTodayMeals() => $_clearField(12);
  @$pb.TagNumber(12)
  TodayMealsResponse ensureTodayMeals() => $_ensure(3);

  @$pb.TagNumber(13)
  CalorieGoalResponse get calorieGoal => $_getN(4);
  @$pb.TagNumber(13)
  set calorieGoal(CalorieGoalResponse value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasCalorieGoal() => $_has(4);
  @$pb.TagNumber(13)
  void clearCalorieGoal() => $_clearField(13);
  @$pb.TagNumber(13)
  CalorieGoalResponse ensureCalorieGoal() => $_ensure(4);

  @$pb.TagNumber(14)
  UserProfileResponse get userProfile => $_getN(5);
  @$pb.TagNumber(14)
  set userProfile(UserProfileResponse value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasUserProfile() => $_has(5);
  @$pb.TagNumber(14)
  void clearUserProfile() => $_clearField(14);
  @$pb.TagNumber(14)
  UserProfileResponse ensureUserProfile() => $_ensure(5);

  @$pb.TagNumber(15)
  FavoritesResponse get favorites => $_getN(6);
  @$pb.TagNumber(15)
  set favorites(FavoritesResponse value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasFavorites() => $_has(6);
  @$pb.TagNumber(15)
  void clearFavorites() => $_clearField(15);
  @$pb.TagNumber(15)
  FavoritesResponse ensureFavorites() => $_ensure(6);

  @$pb.TagNumber(16)
  AuthSessionResponse get authSession => $_getN(7);
  @$pb.TagNumber(16)
  set authSession(AuthSessionResponse value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAuthSession() => $_has(7);
  @$pb.TagNumber(16)
  void clearAuthSession() => $_clearField(16);
  @$pb.TagNumber(16)
  AuthSessionResponse ensureAuthSession() => $_ensure(7);

  @$pb.TagNumber(17)
  DetectTextResponse get detectText => $_getN(8);
  @$pb.TagNumber(17)
  set detectText(DetectTextResponse value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasDetectText() => $_has(8);
  @$pb.TagNumber(17)
  void clearDetectText() => $_clearField(17);
  @$pb.TagNumber(17)
  DetectTextResponse ensureDetectText() => $_ensure(8);
}

class DataChangedEvent extends $pb.GeneratedMessage {
  factory DataChangedEvent({
    $core.Iterable<WearOperation>? operations,
  }) {
    final result = create();
    if (operations != null) result.operations.addAll(operations);
    return result;
  }

  DataChangedEvent._();

  factory DataChangedEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataChangedEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataChangedEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..pc<WearOperation>(
        1, _omitFieldNames ? '' : 'operations', $pb.PbFieldType.KE,
        valueOf: WearOperation.valueOf,
        enumValues: WearOperation.values,
        defaultEnumValue: WearOperation.WEAR_OPERATION_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChangedEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataChangedEvent copyWith(void Function(DataChangedEvent) updates) =>
      super.copyWith((message) => updates(message as DataChangedEvent))
          as DataChangedEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataChangedEvent create() => DataChangedEvent._();
  @$core.override
  DataChangedEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataChangedEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataChangedEvent>(create);
  static DataChangedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<WearOperation> get operations => $_getList(0);
}

enum WearEvent_Payload { dataChanged, notSet }

class WearEvent extends $pb.GeneratedMessage {
  factory WearEvent({
    DataChangedEvent? dataChanged,
  }) {
    final result = create();
    if (dataChanged != null) result.dataChanged = dataChanged;
    return result;
  }

  WearEvent._();

  factory WearEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WearEvent_Payload> _WearEvent_PayloadByTag =
      {10: WearEvent_Payload.dataChanged, 0: WearEvent_Payload.notSet};
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..oo(0, [10])
    ..aOM<DataChangedEvent>(10, _omitFieldNames ? '' : 'dataChanged',
        subBuilder: DataChangedEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearEvent copyWith(void Function(WearEvent) updates) =>
      super.copyWith((message) => updates(message as WearEvent)) as WearEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearEvent create() => WearEvent._();
  @$core.override
  WearEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearEvent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WearEvent>(create);
  static WearEvent? _defaultInstance;

  @$pb.TagNumber(10)
  WearEvent_Payload whichPayload() => _WearEvent_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(10)
  DataChangedEvent get dataChanged => $_getN(0);
  @$pb.TagNumber(10)
  set dataChanged(DataChangedEvent value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasDataChanged() => $_has(0);
  @$pb.TagNumber(10)
  void clearDataChanged() => $_clearField(10);
  @$pb.TagNumber(10)
  DataChangedEvent ensureDataChanged() => $_ensure(0);
}

enum WearEnvelope_Body { request, response, event, notSet }

class WearEnvelope extends $pb.GeneratedMessage {
  factory WearEnvelope({
    $core.int? version,
    $core.String? requestId,
    WearOperation? operation,
    WearRequest? request,
    WearResponse? response,
    WearEvent? event,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (requestId != null) result.requestId = requestId;
    if (operation != null) result.operation = operation;
    if (request != null) result.request = request;
    if (response != null) result.response = response;
    if (event != null) result.event = event;
    return result;
  }

  WearEnvelope._();

  factory WearEnvelope.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearEnvelope.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WearEnvelope_Body> _WearEnvelope_BodyByTag =
      {
    10: WearEnvelope_Body.request,
    11: WearEnvelope_Body.response,
    12: WearEnvelope_Body.event,
    0: WearEnvelope_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearEnvelope',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'wear'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12])
    ..aI(1, _omitFieldNames ? '' : 'version', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'requestId')
    ..aE<WearOperation>(3, _omitFieldNames ? '' : 'operation',
        enumValues: WearOperation.values)
    ..aOM<WearRequest>(10, _omitFieldNames ? '' : 'request',
        subBuilder: WearRequest.create)
    ..aOM<WearResponse>(11, _omitFieldNames ? '' : 'response',
        subBuilder: WearResponse.create)
    ..aOM<WearEvent>(12, _omitFieldNames ? '' : 'event',
        subBuilder: WearEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearEnvelope clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearEnvelope copyWith(void Function(WearEnvelope) updates) =>
      super.copyWith((message) => updates(message as WearEnvelope))
          as WearEnvelope;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearEnvelope create() => WearEnvelope._();
  @$core.override
  WearEnvelope createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearEnvelope getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearEnvelope>(create);
  static WearEnvelope? _defaultInstance;

  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  WearEnvelope_Body whichBody() => _WearEnvelope_BodyByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  void clearBody() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  WearOperation get operation => $_getN(2);
  @$pb.TagNumber(3)
  set operation(WearOperation value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOperation() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperation() => $_clearField(3);

  @$pb.TagNumber(10)
  WearRequest get request => $_getN(3);
  @$pb.TagNumber(10)
  set request(WearRequest value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRequest() => $_has(3);
  @$pb.TagNumber(10)
  void clearRequest() => $_clearField(10);
  @$pb.TagNumber(10)
  WearRequest ensureRequest() => $_ensure(3);

  @$pb.TagNumber(11)
  WearResponse get response => $_getN(4);
  @$pb.TagNumber(11)
  set response(WearResponse value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasResponse() => $_has(4);
  @$pb.TagNumber(11)
  void clearResponse() => $_clearField(11);
  @$pb.TagNumber(11)
  WearResponse ensureResponse() => $_ensure(4);

  @$pb.TagNumber(12)
  WearEvent get event => $_getN(5);
  @$pb.TagNumber(12)
  set event(WearEvent value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasEvent() => $_has(5);
  @$pb.TagNumber(12)
  void clearEvent() => $_clearField(12);
  @$pb.TagNumber(12)
  WearEvent ensureEvent() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
