// This is a generated file - do not edit.
//
// Generated from protos/app/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../calorify/meal_detection.pb.dart' as $1;
import '../meal/meal.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LoggedMeal extends $pb.GeneratedMessage {
  factory LoggedMeal({
    $core.int? clientId,
    $0.Meal? meal,
    $core.String? createdAt,
    $1.MealMetadata? metadata,
  }) {
    final result = create();
    if (clientId != null) result.clientId = clientId;
    if (meal != null) result.meal = meal;
    if (createdAt != null) result.createdAt = createdAt;
    if (metadata != null) result.metadata = metadata;
    return result;
  }

  LoggedMeal._();

  factory LoggedMeal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LoggedMeal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoggedMeal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'app'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'clientId')
    ..aOM<$0.Meal>(2, _omitFieldNames ? '' : 'meal', subBuilder: $0.Meal.create)
    ..aOS(3, _omitFieldNames ? '' : 'createdAt')
    ..aOM<$1.MealMetadata>(4, _omitFieldNames ? '' : 'metadata',
        subBuilder: $1.MealMetadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoggedMeal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoggedMeal copyWith(void Function(LoggedMeal) updates) =>
      super.copyWith((message) => updates(message as LoggedMeal)) as LoggedMeal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoggedMeal create() => LoggedMeal._();
  @$core.override
  LoggedMeal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LoggedMeal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoggedMeal>(create);
  static LoggedMeal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clientId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clientId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Meal get meal => $_getN(1);
  @$pb.TagNumber(2)
  set meal($0.Meal value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMeal() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeal() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Meal ensureMeal() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get createdAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set createdAt($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.MealMetadata get metadata => $_getN(3);
  @$pb.TagNumber(4)
  set metadata($1.MealMetadata value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadata() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.MealMetadata ensureMetadata() => $_ensure(3);
}

class FavoriteMeal extends $pb.GeneratedMessage {
  factory FavoriteMeal({
    $core.int? clientId,
    LoggedMeal? loggedMeal,
    $core.String? favoriteAt,
    $core.String? lastUsedAt,
  }) {
    final result = create();
    if (clientId != null) result.clientId = clientId;
    if (loggedMeal != null) result.loggedMeal = loggedMeal;
    if (favoriteAt != null) result.favoriteAt = favoriteAt;
    if (lastUsedAt != null) result.lastUsedAt = lastUsedAt;
    return result;
  }

  FavoriteMeal._();

  factory FavoriteMeal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FavoriteMeal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FavoriteMeal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'app'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'clientId')
    ..aOM<LoggedMeal>(2, _omitFieldNames ? '' : 'loggedMeal',
        subBuilder: LoggedMeal.create)
    ..aOS(3, _omitFieldNames ? '' : 'favoriteAt')
    ..aOS(4, _omitFieldNames ? '' : 'lastUsedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FavoriteMeal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FavoriteMeal copyWith(void Function(FavoriteMeal) updates) =>
      super.copyWith((message) => updates(message as FavoriteMeal))
          as FavoriteMeal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FavoriteMeal create() => FavoriteMeal._();
  @$core.override
  FavoriteMeal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FavoriteMeal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FavoriteMeal>(create);
  static FavoriteMeal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clientId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clientId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => $_clearField(1);

  @$pb.TagNumber(2)
  LoggedMeal get loggedMeal => $_getN(1);
  @$pb.TagNumber(2)
  set loggedMeal(LoggedMeal value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLoggedMeal() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoggedMeal() => $_clearField(2);
  @$pb.TagNumber(2)
  LoggedMeal ensureLoggedMeal() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get favoriteAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set favoriteAt($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFavoriteAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearFavoriteAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastUsedAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastUsedAt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastUsedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastUsedAt() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
