// This is a generated file - do not edit.
//
// Generated from protos/api/meal_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;
import '../common/meal.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MetaInfo extends $pb.GeneratedMessage {
  factory MetaInfo({
    $core.String? locale,
    $core.String? timezone,
    $core.String? countryCode,
    $0.Timestamp? timestamp,
  }) {
    final result = create();
    if (locale != null) result.locale = locale;
    if (timezone != null) result.timezone = timezone;
    if (countryCode != null) result.countryCode = countryCode;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  MetaInfo._();

  factory MetaInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MetaInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MetaInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aOS(2, _omitFieldNames ? '' : 'timezone')
    ..aOS(3, _omitFieldNames ? '' : 'countryCode')
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MetaInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MetaInfo copyWith(void Function(MetaInfo) updates) =>
      super.copyWith((message) => updates(message as MetaInfo)) as MetaInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetaInfo create() => MetaInfo._();
  @$core.override
  MetaInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MetaInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetaInfo>(create);
  static MetaInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get timezone => $_getSZ(1);
  @$pb.TagNumber(2)
  set timezone($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimezone() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimezone() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get countryCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set countryCode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCountryCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountryCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureTimestamp() => $_ensure(3);
}

class MealAnalysisRequest extends $pb.GeneratedMessage {
  factory MealAnalysisRequest({
    $core.String? text,
    $core.String? imageBase64,
    MetaInfo? metaInfo,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (imageBase64 != null) result.imageBase64 = imageBase64;
    if (metaInfo != null) result.metaInfo = metaInfo;
    return result;
  }

  MealAnalysisRequest._();

  factory MealAnalysisRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'imageBase64')
    ..aOM<MetaInfo>(3, _omitFieldNames ? '' : 'metaInfo',
        subBuilder: MetaInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisRequest copyWith(void Function(MealAnalysisRequest) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisRequest))
          as MealAnalysisRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisRequest create() => MealAnalysisRequest._();
  @$core.override
  MealAnalysisRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisRequest>(create);
  static MealAnalysisRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageBase64 => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageBase64($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImageBase64() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageBase64() => $_clearField(2);

  @$pb.TagNumber(3)
  MetaInfo get metaInfo => $_getN(2);
  @$pb.TagNumber(3)
  set metaInfo(MetaInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMetaInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetaInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  MetaInfo ensureMetaInfo() => $_ensure(2);
}

class MealAnalysisResponse extends $pb.GeneratedMessage {
  factory MealAnalysisResponse({
    $core.String? analysisId,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    return result;
  }

  MealAnalysisResponse._();

  factory MealAnalysisResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisResponse copyWith(void Function(MealAnalysisResponse) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisResponse))
          as MealAnalysisResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisResponse create() => MealAnalysisResponse._();
  @$core.override
  MealAnalysisResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisResponse>(create);
  static MealAnalysisResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);
}

class AnalysisStatusRequest extends $pb.GeneratedMessage {
  factory AnalysisStatusRequest({
    $core.String? analysisId,
  }) {
    final result = create();
    if (analysisId != null) result.analysisId = analysisId;
    return result;
  }

  AnalysisStatusRequest._();

  factory AnalysisStatusRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisStatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'analysisId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisStatusRequest copyWith(
          void Function(AnalysisStatusRequest) updates) =>
      super.copyWith((message) => updates(message as AnalysisStatusRequest))
          as AnalysisStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisStatusRequest create() => AnalysisStatusRequest._();
  @$core.override
  AnalysisStatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisStatusRequest>(create);
  static AnalysisStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analysisId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analysisId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAnalysisId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalysisId() => $_clearField(1);
}

class AnalysisStatusResponse extends $pb.GeneratedMessage {
  factory AnalysisStatusResponse({
    $1.Meal? meal,
    $core.String? analysisId,
  }) {
    final result = create();
    if (meal != null) result.meal = meal;
    if (analysisId != null) result.analysisId = analysisId;
    return result;
  }

  AnalysisStatusResponse._();

  factory AnalysisStatusResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisStatusResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$1.Meal>(1, _omitFieldNames ? '' : 'meal', subBuilder: $1.Meal.create)
    ..aOS(2, _omitFieldNames ? '' : 'analysisId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisStatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisStatusResponse copyWith(
          void Function(AnalysisStatusResponse) updates) =>
      super.copyWith((message) => updates(message as AnalysisStatusResponse))
          as AnalysisStatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisStatusResponse create() => AnalysisStatusResponse._();
  @$core.override
  AnalysisStatusResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisStatusResponse>(create);
  static AnalysisStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Meal get meal => $_getN(0);
  @$pb.TagNumber(1)
  set meal($1.Meal value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMeal() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeal() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Meal ensureMeal() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get analysisId => $_getSZ(1);
  @$pb.TagNumber(2)
  set analysisId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAnalysisId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnalysisId() => $_clearField(2);
}

class GetMealRequest extends $pb.GeneratedMessage {
  factory GetMealRequest({
    $core.int? mealId,
  }) {
    final result = create();
    if (mealId != null) result.mealId = mealId;
    return result;
  }

  GetMealRequest._();

  factory GetMealRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMealRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMealRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'mealId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMealRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMealRequest copyWith(void Function(GetMealRequest) updates) =>
      super.copyWith((message) => updates(message as GetMealRequest))
          as GetMealRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMealRequest create() => GetMealRequest._();
  @$core.override
  GetMealRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMealRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMealRequest>(create);
  static GetMealRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mealId => $_getIZ(0);
  @$pb.TagNumber(1)
  set mealId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMealId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMealId() => $_clearField(1);
}

class GetMealResponse extends $pb.GeneratedMessage {
  factory GetMealResponse({
    $1.Meal? meal,
  }) {
    final result = create();
    if (meal != null) result.meal = meal;
    return result;
  }

  GetMealResponse._();

  factory GetMealResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMealResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMealResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$1.Meal>(1, _omitFieldNames ? '' : 'meal', subBuilder: $1.Meal.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMealResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMealResponse copyWith(void Function(GetMealResponse) updates) =>
      super.copyWith((message) => updates(message as GetMealResponse))
          as GetMealResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMealResponse create() => GetMealResponse._();
  @$core.override
  GetMealResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMealResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMealResponse>(create);
  static GetMealResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Meal get meal => $_getN(0);
  @$pb.TagNumber(1)
  set meal($1.Meal value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMeal() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeal() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Meal ensureMeal() => $_ensure(0);
}

class ListMealRequest extends $pb.GeneratedMessage {
  factory ListMealRequest({
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final result = create();
    if (pageSize != null) result.pageSize = pageSize;
    if (pageToken != null) result.pageToken = pageToken;
    return result;
  }

  ListMealRequest._();

  factory ListMealRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListMealRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListMealRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pageSize')
    ..aOS(2, _omitFieldNames ? '' : 'pageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMealRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMealRequest copyWith(void Function(ListMealRequest) updates) =>
      super.copyWith((message) => updates(message as ListMealRequest))
          as ListMealRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMealRequest create() => ListMealRequest._();
  @$core.override
  ListMealRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListMealRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListMealRequest>(create);
  static ListMealRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => $_clearField(2);
}

class ListMealResponse extends $pb.GeneratedMessage {
  factory ListMealResponse({
    $core.Iterable<$1.Meal>? meals,
    $core.String? nextPageToken,
  }) {
    final result = create();
    if (meals != null) result.meals.addAll(meals);
    if (nextPageToken != null) result.nextPageToken = nextPageToken;
    return result;
  }

  ListMealResponse._();

  factory ListMealResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListMealResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListMealResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..pPM<$1.Meal>(1, _omitFieldNames ? '' : 'meals',
        subBuilder: $1.Meal.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMealResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListMealResponse copyWith(void Function(ListMealResponse) updates) =>
      super.copyWith((message) => updates(message as ListMealResponse))
          as ListMealResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMealResponse create() => ListMealResponse._();
  @$core.override
  ListMealResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListMealResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListMealResponse>(create);
  static ListMealResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Meal> get meals => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => $_clearField(2);
}

class LogMealRequest extends $pb.GeneratedMessage {
  factory LogMealRequest({
    $core.int? mealId,
  }) {
    final result = create();
    if (mealId != null) result.mealId = mealId;
    return result;
  }

  LogMealRequest._();

  factory LogMealRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LogMealRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LogMealRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'mealId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogMealRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogMealRequest copyWith(void Function(LogMealRequest) updates) =>
      super.copyWith((message) => updates(message as LogMealRequest))
          as LogMealRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogMealRequest create() => LogMealRequest._();
  @$core.override
  LogMealRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LogMealRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogMealRequest>(create);
  static LogMealRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mealId => $_getIZ(0);
  @$pb.TagNumber(1)
  set mealId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMealId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMealId() => $_clearField(1);
}

class LogMealResponse extends $pb.GeneratedMessage {
  factory LogMealResponse() => create();

  LogMealResponse._();

  factory LogMealResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LogMealResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LogMealResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogMealResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LogMealResponse copyWith(void Function(LogMealResponse) updates) =>
      super.copyWith((message) => updates(message as LogMealResponse))
          as LogMealResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogMealResponse create() => LogMealResponse._();
  @$core.override
  LogMealResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LogMealResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogMealResponse>(create);
  static LogMealResponse? _defaultInstance;
}

class UpdateMealRequest extends $pb.GeneratedMessage {
  factory UpdateMealRequest({
    $core.int? mealId,
  }) {
    final result = create();
    if (mealId != null) result.mealId = mealId;
    return result;
  }

  UpdateMealRequest._();

  factory UpdateMealRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateMealRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateMealRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'mealId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateMealRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateMealRequest copyWith(void Function(UpdateMealRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateMealRequest))
          as UpdateMealRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateMealRequest create() => UpdateMealRequest._();
  @$core.override
  UpdateMealRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateMealRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateMealRequest>(create);
  static UpdateMealRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mealId => $_getIZ(0);
  @$pb.TagNumber(1)
  set mealId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMealId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMealId() => $_clearField(1);
}

class UpdateMealResponse extends $pb.GeneratedMessage {
  factory UpdateMealResponse() => create();

  UpdateMealResponse._();

  factory UpdateMealResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateMealResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateMealResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateMealResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateMealResponse copyWith(void Function(UpdateMealResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateMealResponse))
          as UpdateMealResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateMealResponse create() => UpdateMealResponse._();
  @$core.override
  UpdateMealResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateMealResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateMealResponse>(create);
  static UpdateMealResponse? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
