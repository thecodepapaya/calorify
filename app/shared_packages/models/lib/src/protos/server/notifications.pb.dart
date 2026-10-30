// This is a generated file - do not edit.
//
// Generated from protos/server/notifications.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'notifications.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'notifications.pbenum.dart';

class Fcm extends $pb.GeneratedMessage {
  factory Fcm({
    $core.String? token,
    DeviceType? deviceType,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (deviceType != null) result.deviceType = deviceType;
    return result;
  }

  Fcm._();

  factory Fcm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fcm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fcm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aE<DeviceType>(2, _omitFieldNames ? '' : 'deviceType',
        enumValues: DeviceType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fcm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fcm copyWith(void Function(Fcm) updates) =>
      super.copyWith((message) => updates(message as Fcm)) as Fcm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fcm create() => Fcm._();
  @$core.override
  Fcm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fcm getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fcm>(create);
  static Fcm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  DeviceType get deviceType => $_getN(1);
  @$pb.TagNumber(2)
  set deviceType(DeviceType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceType() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
