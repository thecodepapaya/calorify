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

class Gender extends $pb.ProtobufEnum {
  static const Gender MALE = Gender._(0, _omitEnumNames ? '' : 'MALE');
  static const Gender FEMALE = Gender._(1, _omitEnumNames ? '' : 'FEMALE');
  static const Gender OTHER = Gender._(2, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<Gender> values = <Gender>[
    MALE,
    FEMALE,
    OTHER,
  ];

  static final $core.List<Gender?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Gender? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Gender._(super.value, super.name);
}

class WeightGoal extends $pb.ProtobufEnum {
  static const WeightGoal LOSE_WEIGHT =
      WeightGoal._(0, _omitEnumNames ? '' : 'LOSE_WEIGHT');
  static const WeightGoal MAINTAIN_WEIGHT =
      WeightGoal._(1, _omitEnumNames ? '' : 'MAINTAIN_WEIGHT');
  static const WeightGoal GAIN_WEIGHT =
      WeightGoal._(2, _omitEnumNames ? '' : 'GAIN_WEIGHT');

  static const $core.List<WeightGoal> values = <WeightGoal>[
    LOSE_WEIGHT,
    MAINTAIN_WEIGHT,
    GAIN_WEIGHT,
  ];

  static final $core.List<WeightGoal?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WeightGoal? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WeightGoal._(super.value, super.name);
}

class ActivityLevel extends $pb.ProtobufEnum {
  static const ActivityLevel SEDENTARY =
      ActivityLevel._(0, _omitEnumNames ? '' : 'SEDENTARY');
  static const ActivityLevel LIGHTLY_ACTIVE =
      ActivityLevel._(1, _omitEnumNames ? '' : 'LIGHTLY_ACTIVE');
  static const ActivityLevel MODERATELY_ACTIVE =
      ActivityLevel._(2, _omitEnumNames ? '' : 'MODERATELY_ACTIVE');
  static const ActivityLevel VERY_ACTIVE =
      ActivityLevel._(3, _omitEnumNames ? '' : 'VERY_ACTIVE');
  static const ActivityLevel EXTREMELY_ACTIVE =
      ActivityLevel._(4, _omitEnumNames ? '' : 'EXTREMELY_ACTIVE');

  static const $core.List<ActivityLevel> values = <ActivityLevel>[
    SEDENTARY,
    LIGHTLY_ACTIVE,
    MODERATELY_ACTIVE,
    VERY_ACTIVE,
    EXTREMELY_ACTIVE,
  ];

  static final $core.List<ActivityLevel?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ActivityLevel? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ActivityLevel._(super.value, super.name);
}

class UnitSystem extends $pb.ProtobufEnum {
  static const UnitSystem METRIC =
      UnitSystem._(0, _omitEnumNames ? '' : 'METRIC');
  static const UnitSystem IMPERIAL =
      UnitSystem._(1, _omitEnumNames ? '' : 'IMPERIAL');

  static const $core.List<UnitSystem> values = <UnitSystem>[
    METRIC,
    IMPERIAL,
  ];

  static final $core.List<UnitSystem?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static UnitSystem? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UnitSystem._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
