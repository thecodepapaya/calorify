// This is a generated file - do not edit.
//
// Generated from protos/api/user_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../common/user.pb.dart' as $0;
import '../server/notifications.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserDetailsRequest extends $pb.GeneratedMessage {
  factory UserDetailsRequest() => create();

  UserDetailsRequest._();

  factory UserDetailsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserDetailsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserDetailsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserDetailsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserDetailsRequest copyWith(void Function(UserDetailsRequest) updates) =>
      super.copyWith((message) => updates(message as UserDetailsRequest))
          as UserDetailsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDetailsRequest create() => UserDetailsRequest._();
  @$core.override
  UserDetailsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserDetailsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserDetailsRequest>(create);
  static UserDetailsRequest? _defaultInstance;
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  factory UpdateUserRequest({
    $0.User? user,
  }) {
    final result = create();
    if (user != null) result.user = user;
    return result;
  }

  UpdateUserRequest._();

  factory UpdateUserRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateUserRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateUserRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$0.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $0.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserRequest copyWith(void Function(UpdateUserRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateUserRequest))
          as UpdateUserRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest create() => UpdateUserRequest._();
  @$core.override
  UpdateUserRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateUserRequest>(create);
  static UpdateUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($0.User value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.User ensureUser() => $_ensure(0);
}

class UserDetailsResponse extends $pb.GeneratedMessage {
  factory UserDetailsResponse({
    $0.User? user,
  }) {
    final result = create();
    if (user != null) result.user = user;
    return result;
  }

  UserDetailsResponse._();

  factory UserDetailsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserDetailsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserDetailsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$0.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $0.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserDetailsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserDetailsResponse copyWith(void Function(UserDetailsResponse) updates) =>
      super.copyWith((message) => updates(message as UserDetailsResponse))
          as UserDetailsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDetailsResponse create() => UserDetailsResponse._();
  @$core.override
  UserDetailsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserDetailsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserDetailsResponse>(create);
  static UserDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($0.User value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.User ensureUser() => $_ensure(0);
}

class UpdateFcmTokenRequest extends $pb.GeneratedMessage {
  factory UpdateFcmTokenRequest({
    $1.Fcm? fcm,
  }) {
    final result = create();
    if (fcm != null) result.fcm = fcm;
    return result;
  }

  UpdateFcmTokenRequest._();

  factory UpdateFcmTokenRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateFcmTokenRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateFcmTokenRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$1.Fcm>(1, _omitFieldNames ? '' : 'fcm', subBuilder: $1.Fcm.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateFcmTokenRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateFcmTokenRequest copyWith(
          void Function(UpdateFcmTokenRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateFcmTokenRequest))
          as UpdateFcmTokenRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateFcmTokenRequest create() => UpdateFcmTokenRequest._();
  @$core.override
  UpdateFcmTokenRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateFcmTokenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateFcmTokenRequest>(create);
  static UpdateFcmTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fcm get fcm => $_getN(0);
  @$pb.TagNumber(1)
  set fcm($1.Fcm value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFcm() => $_has(0);
  @$pb.TagNumber(1)
  void clearFcm() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Fcm ensureFcm() => $_ensure(0);
}

class HealthDataRequest extends $pb.GeneratedMessage {
  factory HealthDataRequest({
    $0.HealthData? healthData,
  }) {
    final result = create();
    if (healthData != null) result.healthData = healthData;
    return result;
  }

  HealthDataRequest._();

  factory HealthDataRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthDataRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthDataRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$0.HealthData>(1, _omitFieldNames ? '' : 'healthData',
        subBuilder: $0.HealthData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthDataRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthDataRequest copyWith(void Function(HealthDataRequest) updates) =>
      super.copyWith((message) => updates(message as HealthDataRequest))
          as HealthDataRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthDataRequest create() => HealthDataRequest._();
  @$core.override
  HealthDataRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthDataRequest>(create);
  static HealthDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.HealthData get healthData => $_getN(0);
  @$pb.TagNumber(1)
  set healthData($0.HealthData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHealthData() => $_has(0);
  @$pb.TagNumber(1)
  void clearHealthData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.HealthData ensureHealthData() => $_ensure(0);
}

class HealthDataResponse extends $pb.GeneratedMessage {
  factory HealthDataResponse({
    $0.HealthData? healthData,
  }) {
    final result = create();
    if (healthData != null) result.healthData = healthData;
    return result;
  }

  HealthDataResponse._();

  factory HealthDataResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthDataResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthDataResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<$0.HealthData>(1, _omitFieldNames ? '' : 'healthData',
        subBuilder: $0.HealthData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthDataResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthDataResponse copyWith(void Function(HealthDataResponse) updates) =>
      super.copyWith((message) => updates(message as HealthDataResponse))
          as HealthDataResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthDataResponse create() => HealthDataResponse._();
  @$core.override
  HealthDataResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthDataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthDataResponse>(create);
  static HealthDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.HealthData get healthData => $_getN(0);
  @$pb.TagNumber(1)
  set healthData($0.HealthData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHealthData() => $_has(0);
  @$pb.TagNumber(1)
  void clearHealthData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.HealthData ensureHealthData() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
