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

class AnalysisModality extends $pb.ProtobufEnum {
  static const AnalysisModality ANALYSIS_MODALITY_UNSPECIFIED =
      AnalysisModality._(
          0, _omitEnumNames ? '' : 'ANALYSIS_MODALITY_UNSPECIFIED');
  static const AnalysisModality ANALYSIS_MODALITY_TEXT =
      AnalysisModality._(1, _omitEnumNames ? '' : 'ANALYSIS_MODALITY_TEXT');
  static const AnalysisModality ANALYSIS_MODALITY_IMAGE =
      AnalysisModality._(2, _omitEnumNames ? '' : 'ANALYSIS_MODALITY_IMAGE');

  static const $core.List<AnalysisModality> values = <AnalysisModality>[
    ANALYSIS_MODALITY_UNSPECIFIED,
    ANALYSIS_MODALITY_TEXT,
    ANALYSIS_MODALITY_IMAGE,
  ];

  static final $core.List<AnalysisModality?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AnalysisModality? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AnalysisModality._(super.value, super.name);
}

class InterpretationOrigin extends $pb.ProtobufEnum {
  static const InterpretationOrigin INTERPRETATION_ORIGIN_UNSPECIFIED =
      InterpretationOrigin._(
          0, _omitEnumNames ? '' : 'INTERPRETATION_ORIGIN_UNSPECIFIED');
  static const InterpretationOrigin INTERPRETATION_ORIGIN_CLOUD_MODEL =
      InterpretationOrigin._(
          1, _omitEnumNames ? '' : 'INTERPRETATION_ORIGIN_CLOUD_MODEL');
  static const InterpretationOrigin INTERPRETATION_ORIGIN_LOCAL_NANO =
      InterpretationOrigin._(
          2, _omitEnumNames ? '' : 'INTERPRETATION_ORIGIN_LOCAL_NANO');
  static const InterpretationOrigin INTERPRETATION_ORIGIN_MANUAL =
      InterpretationOrigin._(
          3, _omitEnumNames ? '' : 'INTERPRETATION_ORIGIN_MANUAL');

  static const $core.List<InterpretationOrigin> values = <InterpretationOrigin>[
    INTERPRETATION_ORIGIN_UNSPECIFIED,
    INTERPRETATION_ORIGIN_CLOUD_MODEL,
    INTERPRETATION_ORIGIN_LOCAL_NANO,
    INTERPRETATION_ORIGIN_MANUAL,
  ];

  static final $core.List<InterpretationOrigin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static InterpretationOrigin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const InterpretationOrigin._(super.value, super.name);
}

class NutritionOrigin extends $pb.ProtobufEnum {
  static const NutritionOrigin NUTRITION_ORIGIN_UNSPECIFIED = NutritionOrigin._(
      0, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_UNSPECIFIED');
  static const NutritionOrigin NUTRITION_ORIGIN_BUNDLED_USDA =
      NutritionOrigin._(
          1, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_BUNDLED_USDA');
  static const NutritionOrigin NUTRITION_ORIGIN_CACHED_USDA = NutritionOrigin._(
      2, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_CACHED_USDA');
  static const NutritionOrigin NUTRITION_ORIGIN_REMOTE_USDA = NutritionOrigin._(
      3, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_REMOTE_USDA');
  static const NutritionOrigin NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT =
      NutritionOrigin._(
          4, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT');
  static const NutritionOrigin NUTRITION_ORIGIN_LLM_FALLBACK =
      NutritionOrigin._(
          5, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_LLM_FALLBACK');
  static const NutritionOrigin NUTRITION_ORIGIN_UNRESOLVED =
      NutritionOrigin._(6, _omitEnumNames ? '' : 'NUTRITION_ORIGIN_UNRESOLVED');

  static const $core.List<NutritionOrigin> values = <NutritionOrigin>[
    NUTRITION_ORIGIN_UNSPECIFIED,
    NUTRITION_ORIGIN_BUNDLED_USDA,
    NUTRITION_ORIGIN_CACHED_USDA,
    NUTRITION_ORIGIN_REMOTE_USDA,
    NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT,
    NUTRITION_ORIGIN_LLM_FALLBACK,
    NUTRITION_ORIGIN_UNRESOLVED,
  ];

  static final $core.List<NutritionOrigin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static NutritionOrigin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NutritionOrigin._(super.value, super.name);
}

class CalculationOrigin extends $pb.ProtobufEnum {
  static const CalculationOrigin CALCULATION_ORIGIN_UNSPECIFIED =
      CalculationOrigin._(
          0, _omitEnumNames ? '' : 'CALCULATION_ORIGIN_UNSPECIFIED');
  static const CalculationOrigin CALCULATION_ORIGIN_LOCAL_DETERMINISTIC =
      CalculationOrigin._(
          1, _omitEnumNames ? '' : 'CALCULATION_ORIGIN_LOCAL_DETERMINISTIC');
  static const CalculationOrigin CALCULATION_ORIGIN_SERVER_DETERMINISTIC =
      CalculationOrigin._(
          2, _omitEnumNames ? '' : 'CALCULATION_ORIGIN_SERVER_DETERMINISTIC');

  static const $core.List<CalculationOrigin> values = <CalculationOrigin>[
    CALCULATION_ORIGIN_UNSPECIFIED,
    CALCULATION_ORIGIN_LOCAL_DETERMINISTIC,
    CALCULATION_ORIGIN_SERVER_DETERMINISTIC,
  ];

  static final $core.List<CalculationOrigin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CalculationOrigin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CalculationOrigin._(super.value, super.name);
}

class IngredientFieldOrigin extends $pb.ProtobufEnum {
  static const IngredientFieldOrigin INGREDIENT_FIELD_ORIGIN_UNSPECIFIED =
      IngredientFieldOrigin._(
          0, _omitEnumNames ? '' : 'INGREDIENT_FIELD_ORIGIN_UNSPECIFIED');
  static const IngredientFieldOrigin INGREDIENT_FIELD_ORIGIN_USER_INPUT =
      IngredientFieldOrigin._(
          1, _omitEnumNames ? '' : 'INGREDIENT_FIELD_ORIGIN_USER_INPUT');
  static const IngredientFieldOrigin INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL =
      IngredientFieldOrigin._(
          2, _omitEnumNames ? '' : 'INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL');
  static const IngredientFieldOrigin INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL =
      IngredientFieldOrigin._(
          3, _omitEnumNames ? '' : 'INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL');
  static const IngredientFieldOrigin INGREDIENT_FIELD_ORIGIN_USER_EDIT =
      IngredientFieldOrigin._(
          4, _omitEnumNames ? '' : 'INGREDIENT_FIELD_ORIGIN_USER_EDIT');
  static const IngredientFieldOrigin INGREDIENT_FIELD_ORIGIN_DETERMINISTIC =
      IngredientFieldOrigin._(
          5, _omitEnumNames ? '' : 'INGREDIENT_FIELD_ORIGIN_DETERMINISTIC');

  static const $core.List<IngredientFieldOrigin> values =
      <IngredientFieldOrigin>[
    INGREDIENT_FIELD_ORIGIN_UNSPECIFIED,
    INGREDIENT_FIELD_ORIGIN_USER_INPUT,
    INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
    INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL,
    INGREDIENT_FIELD_ORIGIN_USER_EDIT,
    INGREDIENT_FIELD_ORIGIN_DETERMINISTIC,
  ];

  static final $core.List<IngredientFieldOrigin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static IngredientFieldOrigin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IngredientFieldOrigin._(super.value, super.name);
}

class AnalysisAttemptStatus extends $pb.ProtobufEnum {
  static const AnalysisAttemptStatus ANALYSIS_ATTEMPT_STATUS_UNSPECIFIED =
      AnalysisAttemptStatus._(
          0, _omitEnumNames ? '' : 'ANALYSIS_ATTEMPT_STATUS_UNSPECIFIED');
  static const AnalysisAttemptStatus ANALYSIS_ATTEMPT_STATUS_STARTED =
      AnalysisAttemptStatus._(
          1, _omitEnumNames ? '' : 'ANALYSIS_ATTEMPT_STATUS_STARTED');
  static const AnalysisAttemptStatus ANALYSIS_ATTEMPT_STATUS_ACCEPTED =
      AnalysisAttemptStatus._(
          2, _omitEnumNames ? '' : 'ANALYSIS_ATTEMPT_STATUS_ACCEPTED');
  static const AnalysisAttemptStatus ANALYSIS_ATTEMPT_STATUS_FAILED =
      AnalysisAttemptStatus._(
          3, _omitEnumNames ? '' : 'ANALYSIS_ATTEMPT_STATUS_FAILED');
  static const AnalysisAttemptStatus ANALYSIS_ATTEMPT_STATUS_CANCELLED =
      AnalysisAttemptStatus._(
          4, _omitEnumNames ? '' : 'ANALYSIS_ATTEMPT_STATUS_CANCELLED');
  static const AnalysisAttemptStatus ANALYSIS_ATTEMPT_STATUS_SUPERSEDED =
      AnalysisAttemptStatus._(
          5, _omitEnumNames ? '' : 'ANALYSIS_ATTEMPT_STATUS_SUPERSEDED');

  static const $core.List<AnalysisAttemptStatus> values =
      <AnalysisAttemptStatus>[
    ANALYSIS_ATTEMPT_STATUS_UNSPECIFIED,
    ANALYSIS_ATTEMPT_STATUS_STARTED,
    ANALYSIS_ATTEMPT_STATUS_ACCEPTED,
    ANALYSIS_ATTEMPT_STATUS_FAILED,
    ANALYSIS_ATTEMPT_STATUS_CANCELLED,
    ANALYSIS_ATTEMPT_STATUS_SUPERSEDED,
  ];

  static final $core.List<AnalysisAttemptStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static AnalysisAttemptStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AnalysisAttemptStatus._(super.value, super.name);
}

class MealAnalysisFallbackReason extends $pb.ProtobufEnum {
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_UNSPECIFIED = MealAnalysisFallbackReason._(
          0, _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_UNSPECIFIED');
  static const MealAnalysisFallbackReason MEAL_ANALYSIS_FALLBACK_REASON_NONE =
      MealAnalysisFallbackReason._(
          1, _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_NONE');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE =
      MealAnalysisFallbackReason._(
          2,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY =
      MealAnalysisFallbackReason._(
          3,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY');
  static const MealAnalysisFallbackReason MEAL_ANALYSIS_FALLBACK_REASON_BUSY =
      MealAnalysisFallbackReason._(
          4, _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED =
      MealAnalysisFallbackReason._(5,
          _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_BACKGROUND_BLOCKED =
      MealAnalysisFallbackReason._(
          6,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_BACKGROUND_BLOCKED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_THERMALLY_LIMITED =
      MealAnalysisFallbackReason._(
          7,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_THERMALLY_LIMITED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_MODEL_UPDATING =
      MealAnalysisFallbackReason._(8,
          _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_MODEL_UPDATING');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED =
      MealAnalysisFallbackReason._(
          9,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_TIMED_OUT = MealAnalysisFallbackReason._(
          10, _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_TIMED_OUT');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT =
      MealAnalysisFallbackReason._(11,
          _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_CANCELLED = MealAnalysisFallbackReason._(
          12, _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_CANCELLED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS =
      MealAnalysisFallbackReason._(
          13,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE =
      MealAnalysisFallbackReason._(
          14,
          _omitEnumNames
              ? ''
              : 'MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_USER_APPROVED =
      MealAnalysisFallbackReason._(15,
          _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_USER_APPROVED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_USER_DENIED = MealAnalysisFallbackReason._(
          16,
          _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_USER_DENIED');
  static const MealAnalysisFallbackReason
      MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN = MealAnalysisFallbackReason._(
          17, _omitEnumNames ? '' : 'MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN');

  static const $core.List<MealAnalysisFallbackReason> values =
      <MealAnalysisFallbackReason>[
    MEAL_ANALYSIS_FALLBACK_REASON_UNSPECIFIED,
    MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE,
    MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY,
    MEAL_ANALYSIS_FALLBACK_REASON_BUSY,
    MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED,
    MEAL_ANALYSIS_FALLBACK_REASON_BACKGROUND_BLOCKED,
    MEAL_ANALYSIS_FALLBACK_REASON_THERMALLY_LIMITED,
    MEAL_ANALYSIS_FALLBACK_REASON_MODEL_UPDATING,
    MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED,
    MEAL_ANALYSIS_FALLBACK_REASON_TIMED_OUT,
    MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
    MEAL_ANALYSIS_FALLBACK_REASON_CANCELLED,
    MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS,
    MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE,
    MEAL_ANALYSIS_FALLBACK_REASON_USER_APPROVED,
    MEAL_ANALYSIS_FALLBACK_REASON_USER_DENIED,
    MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN,
  ];

  static final $core.List<MealAnalysisFallbackReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 17);
  static MealAnalysisFallbackReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MealAnalysisFallbackReason._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
