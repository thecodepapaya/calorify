// This is a generated file - do not edit.
//
// Generated from protos/api/util.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/any.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GenericError extends $pb.GeneratedMessage {
  factory GenericError({
    $core.String? message,
    $0.Any? details,
  }) {
    final result = create();
    if (message != null) result.message = message;
    if (details != null) result.details = details;
    return result;
  }

  GenericError._();

  factory GenericError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GenericError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenericError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Any>(3, _omitFieldNames ? '' : 'details',
        subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenericError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GenericError copyWith(void Function(GenericError) updates) =>
      super.copyWith((message) => updates(message as GenericError))
          as GenericError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenericError create() => GenericError._();
  @$core.override
  GenericError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GenericError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenericError>(create);
  static GenericError? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Any get details => $_getN(1);
  @$pb.TagNumber(3)
  set details($0.Any value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDetails() => $_has(1);
  @$pb.TagNumber(3)
  void clearDetails() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Any ensureDetails() => $_ensure(1);
}

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();

  Empty._();

  factory Empty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Empty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Empty',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty copyWith(void Function(Empty) updates) =>
      super.copyWith((message) => updates(message as Empty)) as Empty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  @$core.override
  Empty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
