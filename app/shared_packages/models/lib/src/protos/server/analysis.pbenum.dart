// This is a generated file - do not edit.
//
// Generated from protos/server/analysis.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MealAnalysisStatus_AnalysisStatus extends $pb.ProtobufEnum {
  static const MealAnalysisStatus_AnalysisStatus INITIATED =
      MealAnalysisStatus_AnalysisStatus._(0, _omitEnumNames ? '' : 'INITIATED');
  static const MealAnalysisStatus_AnalysisStatus COMPONENT_DECOMPOSED =
      MealAnalysisStatus_AnalysisStatus._(
          1, _omitEnumNames ? '' : 'COMPONENT_DECOMPOSED');
  static const MealAnalysisStatus_AnalysisStatus INGREDIENT_DECOMPOSED =
      MealAnalysisStatus_AnalysisStatus._(
          2, _omitEnumNames ? '' : 'INGREDIENT_DECOMPOSED');
  static const MealAnalysisStatus_AnalysisStatus USDA_MACRO_HYDRATED =
      MealAnalysisStatus_AnalysisStatus._(
          3, _omitEnumNames ? '' : 'USDA_MACRO_HYDRATED');
  static const MealAnalysisStatus_AnalysisStatus CLARIFICATION_GENERATED =
      MealAnalysisStatus_AnalysisStatus._(
          4, _omitEnumNames ? '' : 'CLARIFICATION_GENERATED');
  static const MealAnalysisStatus_AnalysisStatus CLARIFICATION_RESOLVED =
      MealAnalysisStatus_AnalysisStatus._(
          5, _omitEnumNames ? '' : 'CLARIFICATION_RESOLVED');
  static const MealAnalysisStatus_AnalysisStatus PRESENTED =
      MealAnalysisStatus_AnalysisStatus._(6, _omitEnumNames ? '' : 'PRESENTED');
  static const MealAnalysisStatus_AnalysisStatus FAILED =
      MealAnalysisStatus_AnalysisStatus._(7, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<MealAnalysisStatus_AnalysisStatus> values =
      <MealAnalysisStatus_AnalysisStatus>[
    INITIATED,
    COMPONENT_DECOMPOSED,
    INGREDIENT_DECOMPOSED,
    USDA_MACRO_HYDRATED,
    CLARIFICATION_GENERATED,
    CLARIFICATION_RESOLVED,
    PRESENTED,
    FAILED,
  ];

  static final $core.List<MealAnalysisStatus_AnalysisStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static MealAnalysisStatus_AnalysisStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MealAnalysisStatus_AnalysisStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
