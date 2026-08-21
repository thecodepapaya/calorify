// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_analysis_pipeline.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PipelineStep extends $pb.ProtobufEnum {
  static const PipelineStep PIPELINE_STEP_UNSPECIFIED =
      PipelineStep._(0, _omitEnumNames ? '' : 'PIPELINE_STEP_UNSPECIFIED');
  static const PipelineStep STARTED =
      PipelineStep._(1, _omitEnumNames ? '' : 'STARTED');
  static const PipelineStep DECOMPOSITION =
      PipelineStep._(2, _omitEnumNames ? '' : 'DECOMPOSITION');
  static const PipelineStep INGREDIENTS =
      PipelineStep._(3, _omitEnumNames ? '' : 'INGREDIENTS');
  static const PipelineStep UNCERTAINTY =
      PipelineStep._(4, _omitEnumNames ? '' : 'UNCERTAINTY');
  static const PipelineStep MEAL_TYPE_QUESTION =
      PipelineStep._(5, _omitEnumNames ? '' : 'MEAL_TYPE_QUESTION');
  static const PipelineStep RESULT =
      PipelineStep._(6, _omitEnumNames ? '' : 'RESULT');
  static const PipelineStep ERROR =
      PipelineStep._(7, _omitEnumNames ? '' : 'ERROR');

  static const $core.List<PipelineStep> values = <PipelineStep>[
    PIPELINE_STEP_UNSPECIFIED,
    STARTED,
    DECOMPOSITION,
    INGREDIENTS,
    UNCERTAINTY,
    MEAL_TYPE_QUESTION,
    RESULT,
    ERROR,
  ];

  static final $core.List<PipelineStep?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static PipelineStep? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PipelineStep._(super.value, super.name);
}

class PortionKind extends $pb.ProtobufEnum {
  static const PortionKind PORTION_KIND_UNSPECIFIED =
      PortionKind._(0, _omitEnumNames ? '' : 'PORTION_KIND_UNSPECIFIED');
  static const PortionKind COUNT =
      PortionKind._(1, _omitEnumNames ? '' : 'COUNT');
  static const PortionKind BULK =
      PortionKind._(2, _omitEnumNames ? '' : 'BULK');
  static const PortionKind PINCH =
      PortionKind._(3, _omitEnumNames ? '' : 'PINCH');
  static const PortionKind COUNT_QUESTION =
      PortionKind._(4, _omitEnumNames ? '' : 'COUNT_QUESTION');

  static const $core.List<PortionKind> values = <PortionKind>[
    PORTION_KIND_UNSPECIFIED,
    COUNT,
    BULK,
    PINCH,
    COUNT_QUESTION,
  ];

  static final $core.List<PortionKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PortionKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PortionKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
