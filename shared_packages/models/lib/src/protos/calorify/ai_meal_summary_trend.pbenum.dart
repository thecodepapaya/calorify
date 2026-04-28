// This is a generated file - do not edit.
//
// Generated from protos/calorify/ai_meal_summary_trend.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Calorie trend vs prior window for GET /api/v1/food/ai-summary (proto3 JSON: UNSPECIFIED, UP, DOWN, STEADY).
class AiMealSummaryTrend extends $pb.ProtobufEnum {
  static const AiMealSummaryTrend UNSPECIFIED =
      AiMealSummaryTrend._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const AiMealSummaryTrend UP =
      AiMealSummaryTrend._(1, _omitEnumNames ? '' : 'UP');
  static const AiMealSummaryTrend DOWN =
      AiMealSummaryTrend._(2, _omitEnumNames ? '' : 'DOWN');
  static const AiMealSummaryTrend STEADY =
      AiMealSummaryTrend._(3, _omitEnumNames ? '' : 'STEADY');

  static const $core.List<AiMealSummaryTrend> values = <AiMealSummaryTrend>[
    UNSPECIFIED,
    UP,
    DOWN,
    STEADY,
  ];

  static final $core.List<AiMealSummaryTrend?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static AiMealSummaryTrend? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AiMealSummaryTrend._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
