// This is a generated file - do not edit.
//
// Generated from protos/meal/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MealType extends $pb.ProtobufEnum {
  static const MealType UNKNOWN =
      MealType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const MealType BREAKFAST =
      MealType._(1, _omitEnumNames ? '' : 'BREAKFAST');
  static const MealType LUNCH = MealType._(2, _omitEnumNames ? '' : 'LUNCH');
  static const MealType DINNER = MealType._(3, _omitEnumNames ? '' : 'DINNER');
  static const MealType SNACK = MealType._(4, _omitEnumNames ? '' : 'SNACK');

  static const $core.List<MealType> values = <MealType>[
    UNKNOWN,
    BREAKFAST,
    LUNCH,
    DINNER,
    SNACK,
  ];

  static final $core.List<MealType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static MealType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MealType._(super.value, super.name);
}

class HealthScore extends $pb.ProtobufEnum {
  static const HealthScore HEALTHY =
      HealthScore._(0, _omitEnumNames ? '' : 'HEALTHY');
  static const HealthScore NEUTRAL =
      HealthScore._(1, _omitEnumNames ? '' : 'NEUTRAL');
  static const HealthScore UNHEALTHY =
      HealthScore._(2, _omitEnumNames ? '' : 'UNHEALTHY');

  static const $core.List<HealthScore> values = <HealthScore>[
    HEALTHY,
    NEUTRAL,
    UNHEALTHY,
  ];

  static final $core.List<HealthScore?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HealthScore? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HealthScore._(super.value, super.name);
}

class CalorieConfidence extends $pb.ProtobufEnum {
  static const CalorieConfidence UNSPECIFIED =
      CalorieConfidence._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const CalorieConfidence LOW =
      CalorieConfidence._(1, _omitEnumNames ? '' : 'LOW');
  static const CalorieConfidence MEDIUM =
      CalorieConfidence._(2, _omitEnumNames ? '' : 'MEDIUM');
  static const CalorieConfidence HIGH =
      CalorieConfidence._(3, _omitEnumNames ? '' : 'HIGH');

  static const $core.List<CalorieConfidence> values = <CalorieConfidence>[
    UNSPECIFIED,
    LOW,
    MEDIUM,
    HIGH,
  ];

  static final $core.List<CalorieConfidence?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static CalorieConfidence? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CalorieConfidence._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
