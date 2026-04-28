// This is a generated file - do not edit.
//
// Generated from protos/calorify/app_banner.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'app_banner.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'app_banner.pbenum.dart';

class Banner extends $pb.GeneratedMessage {
  factory Banner({
    $core.bool? enabled,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        messagesByLocale,
    BannerPriority? priority,
    $core.bool? dismissible,
    $core.String? linkUrl,
    $fixnum.Int64? minimumBuildInclusive,
    $fixnum.Int64? maximumBuildExclusive,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    if (messagesByLocale != null)
      result.messagesByLocale.addEntries(messagesByLocale);
    if (priority != null) result.priority = priority;
    if (dismissible != null) result.dismissible = dismissible;
    if (linkUrl != null) result.linkUrl = linkUrl;
    if (minimumBuildInclusive != null)
      result.minimumBuildInclusive = minimumBuildInclusive;
    if (maximumBuildExclusive != null)
      result.maximumBuildExclusive = maximumBuildExclusive;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  Banner._();

  factory Banner.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Banner.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Banner',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..m<$core.String, $core.String>(
        2, _omitFieldNames ? '' : 'messagesByLocale',
        entryClassName: 'Banner.MessagesByLocaleEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('calorify'))
    ..aE<BannerPriority>(3, _omitFieldNames ? '' : 'priority',
        enumValues: BannerPriority.values)
    ..aOB(4, _omitFieldNames ? '' : 'dismissible')
    ..aOS(5, _omitFieldNames ? '' : 'linkUrl')
    ..aInt64(6, _omitFieldNames ? '' : 'minimumBuildInclusive')
    ..aInt64(7, _omitFieldNames ? '' : 'maximumBuildExclusive')
    ..aInt64(8, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Banner clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Banner copyWith(void Function(Banner) updates) =>
      super.copyWith((message) => updates(message as Banner)) as Banner;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Banner create() => Banner._();
  @$core.override
  Banner createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Banner getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Banner>(create);
  static Banner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get messagesByLocale => $_getMap(1);

  @$pb.TagNumber(3)
  BannerPriority get priority => $_getN(2);
  @$pb.TagNumber(3)
  set priority(BannerPriority value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPriority() => $_has(2);
  @$pb.TagNumber(3)
  void clearPriority() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get dismissible => $_getBF(3);
  @$pb.TagNumber(4)
  set dismissible($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDismissible() => $_has(3);
  @$pb.TagNumber(4)
  void clearDismissible() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get linkUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set linkUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLinkUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearLinkUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get minimumBuildInclusive => $_getI64(5);
  @$pb.TagNumber(6)
  set minimumBuildInclusive($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMinimumBuildInclusive() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinimumBuildInclusive() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get maximumBuildExclusive => $_getI64(6);
  @$pb.TagNumber(7)
  set maximumBuildExclusive($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMaximumBuildExclusive() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaximumBuildExclusive() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createdAt => $_getI64(7);
  @$pb.TagNumber(8)
  set createdAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
