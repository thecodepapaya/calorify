// This is a generated file - do not edit.
//
// Generated from protos/calorify/http_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// POST /api/v2/food/feedback — proto3 JSON uses enumerator names ("SIGNAL_UNSPECIFIED", "UP", "DOWN", …).
class MealAnalysisFeedbackSignal extends $pb.ProtobufEnum {
  static const MealAnalysisFeedbackSignal SIGNAL_UNSPECIFIED =
      MealAnalysisFeedbackSignal._(
          0, _omitEnumNames ? '' : 'SIGNAL_UNSPECIFIED');
  static const MealAnalysisFeedbackSignal UP =
      MealAnalysisFeedbackSignal._(1, _omitEnumNames ? '' : 'UP');
  static const MealAnalysisFeedbackSignal DOWN =
      MealAnalysisFeedbackSignal._(2, _omitEnumNames ? '' : 'DOWN');

  static const $core.List<MealAnalysisFeedbackSignal> values =
      <MealAnalysisFeedbackSignal>[
    SIGNAL_UNSPECIFIED,
    UP,
    DOWN,
  ];

  static final $core.List<MealAnalysisFeedbackSignal?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static MealAnalysisFeedbackSignal? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MealAnalysisFeedbackSignal._(super.value, super.name);
}

/// POST /api/v2/food/reanalyze — JSON array uses enumerator names (e.g. "PORTION_SIZE").
class MealReanalyzeFeedbackIssue extends $pb.ProtobufEnum {
  static const MealReanalyzeFeedbackIssue ISSUE_UNSPECIFIED =
      MealReanalyzeFeedbackIssue._(
          0, _omitEnumNames ? '' : 'ISSUE_UNSPECIFIED');
  static const MealReanalyzeFeedbackIssue FOOD_IDENTIFICATION =
      MealReanalyzeFeedbackIssue._(
          1, _omitEnumNames ? '' : 'FOOD_IDENTIFICATION');
  static const MealReanalyzeFeedbackIssue PORTION_SIZE =
      MealReanalyzeFeedbackIssue._(2, _omitEnumNames ? '' : 'PORTION_SIZE');
  static const MealReanalyzeFeedbackIssue CALORIE_DISTRIBUTION =
      MealReanalyzeFeedbackIssue._(
          3, _omitEnumNames ? '' : 'CALORIE_DISTRIBUTION');
  static const MealReanalyzeFeedbackIssue MACROS_WRONG =
      MealReanalyzeFeedbackIssue._(4, _omitEnumNames ? '' : 'MACROS_WRONG');
  static const MealReanalyzeFeedbackIssue MISSING_ITEMS =
      MealReanalyzeFeedbackIssue._(5, _omitEnumNames ? '' : 'MISSING_ITEMS');
  static const MealReanalyzeFeedbackIssue EXTRA_ITEMS =
      MealReanalyzeFeedbackIssue._(6, _omitEnumNames ? '' : 'EXTRA_ITEMS');
  static const MealReanalyzeFeedbackIssue OTHER =
      MealReanalyzeFeedbackIssue._(7, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<MealReanalyzeFeedbackIssue> values =
      <MealReanalyzeFeedbackIssue>[
    ISSUE_UNSPECIFIED,
    FOOD_IDENTIFICATION,
    PORTION_SIZE,
    CALORIE_DISTRIBUTION,
    MACROS_WRONG,
    MISSING_ITEMS,
    EXTRA_ITEMS,
    OTHER,
  ];

  static final $core.List<MealReanalyzeFeedbackIssue?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static MealReanalyzeFeedbackIssue? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MealReanalyzeFeedbackIssue._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
