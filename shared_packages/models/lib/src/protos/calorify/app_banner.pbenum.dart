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

import 'package:protobuf/protobuf.dart' as $pb;

/// Priority order is enum numeric order: LOW (0) < MEDIUM (1) < HIGH (2).
class BannerPriority extends $pb.ProtobufEnum {
  static const BannerPriority LOW =
      BannerPriority._(0, _omitEnumNames ? '' : 'LOW');
  static const BannerPriority MEDIUM =
      BannerPriority._(1, _omitEnumNames ? '' : 'MEDIUM');
  static const BannerPriority HIGH =
      BannerPriority._(2, _omitEnumNames ? '' : 'HIGH');

  static const $core.List<BannerPriority> values = <BannerPriority>[
    LOW,
    MEDIUM,
    HIGH,
  ];

  static final $core.List<BannerPriority?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BannerPriority? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BannerPriority._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
