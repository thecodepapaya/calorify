// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_analysis_pipeline.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pipelineStepDescriptor instead')
const PipelineStep$json = {
  '1': 'PipelineStep',
  '2': [
    {'1': 'PIPELINE_STEP_UNSPECIFIED', '2': 0},
    {'1': 'STARTED', '2': 1},
    {'1': 'DECOMPOSITION', '2': 2},
    {'1': 'INGREDIENTS', '2': 3},
    {'1': 'UNCERTAINTY', '2': 4},
    {'1': 'MEAL_TYPE_QUESTION', '2': 5},
    {'1': 'RESULT', '2': 6},
    {'1': 'ERROR', '2': 7},
  ],
};

/// Descriptor for `PipelineStep`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pipelineStepDescriptor = $convert.base64Decode(
    'CgxQaXBlbGluZVN0ZXASHQoZUElQRUxJTkVfU1RFUF9VTlNQRUNJRklFRBAAEgsKB1NUQVJURU'
    'QQARIRCg1ERUNPTVBPU0lUSU9OEAISDwoLSU5HUkVESUVOVFMQAxIPCgtVTkNFUlRBSU5UWRAE'
    'EhYKEk1FQUxfVFlQRV9RVUVTVElPThAFEgoKBlJFU1VMVBAGEgkKBUVSUk9SEAc=');

@$core.Deprecated('Use portionKindDescriptor instead')
const PortionKind$json = {
  '1': 'PortionKind',
  '2': [
    {'1': 'PORTION_KIND_UNSPECIFIED', '2': 0},
    {'1': 'COUNT', '2': 1},
    {'1': 'BULK', '2': 2},
    {'1': 'PINCH', '2': 3},
    {'1': 'COUNT_QUESTION', '2': 4},
  ],
};

/// Descriptor for `PortionKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List portionKindDescriptor = $convert.base64Decode(
    'CgtQb3J0aW9uS2luZBIcChhQT1JUSU9OX0tJTkRfVU5TUEVDSUZJRUQQABIJCgVDT1VOVBABEg'
    'gKBEJVTEsQAhIJCgVQSU5DSBADEhIKDkNPVU5UX1FVRVNUSU9OEAQ=');

@$core.Deprecated('Use analysisModalityDescriptor instead')
const AnalysisModality$json = {
  '1': 'AnalysisModality',
  '2': [
    {'1': 'ANALYSIS_MODALITY_UNSPECIFIED', '2': 0},
    {'1': 'ANALYSIS_MODALITY_TEXT', '2': 1},
    {'1': 'ANALYSIS_MODALITY_IMAGE', '2': 2},
  ],
};

/// Descriptor for `AnalysisModality`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List analysisModalityDescriptor = $convert.base64Decode(
    'ChBBbmFseXNpc01vZGFsaXR5EiEKHUFOQUxZU0lTX01PREFMSVRZX1VOU1BFQ0lGSUVEEAASGg'
    'oWQU5BTFlTSVNfTU9EQUxJVFlfVEVYVBABEhsKF0FOQUxZU0lTX01PREFMSVRZX0lNQUdFEAI=');

@$core.Deprecated('Use interpretationOriginDescriptor instead')
const InterpretationOrigin$json = {
  '1': 'InterpretationOrigin',
  '2': [
    {'1': 'INTERPRETATION_ORIGIN_UNSPECIFIED', '2': 0},
    {'1': 'INTERPRETATION_ORIGIN_CLOUD_MODEL', '2': 1},
    {'1': 'INTERPRETATION_ORIGIN_LOCAL_NANO', '2': 2},
    {'1': 'INTERPRETATION_ORIGIN_MANUAL', '2': 3},
  ],
};

/// Descriptor for `InterpretationOrigin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List interpretationOriginDescriptor = $convert.base64Decode(
    'ChRJbnRlcnByZXRhdGlvbk9yaWdpbhIlCiFJTlRFUlBSRVRBVElPTl9PUklHSU5fVU5TUEVDSU'
    'ZJRUQQABIlCiFJTlRFUlBSRVRBVElPTl9PUklHSU5fQ0xPVURfTU9ERUwQARIkCiBJTlRFUlBS'
    'RVRBVElPTl9PUklHSU5fTE9DQUxfTkFOTxACEiAKHElOVEVSUFJFVEFUSU9OX09SSUdJTl9NQU'
    '5VQUwQAw==');

@$core.Deprecated('Use nutritionOriginDescriptor instead')
const NutritionOrigin$json = {
  '1': 'NutritionOrigin',
  '2': [
    {'1': 'NUTRITION_ORIGIN_UNSPECIFIED', '2': 0},
    {'1': 'NUTRITION_ORIGIN_BUNDLED_USDA', '2': 1},
    {'1': 'NUTRITION_ORIGIN_CACHED_USDA', '2': 2},
    {'1': 'NUTRITION_ORIGIN_REMOTE_USDA', '2': 3},
    {'1': 'NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT', '2': 4},
    {'1': 'NUTRITION_ORIGIN_LLM_FALLBACK', '2': 5},
    {'1': 'NUTRITION_ORIGIN_UNRESOLVED', '2': 6},
  ],
};

/// Descriptor for `NutritionOrigin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nutritionOriginDescriptor = $convert.base64Decode(
    'Cg9OdXRyaXRpb25PcmlnaW4SIAocTlVUUklUSU9OX09SSUdJTl9VTlNQRUNJRklFRBAAEiEKHU'
    '5VVFJJVElPTl9PUklHSU5fQlVORExFRF9VU0RBEAESIAocTlVUUklUSU9OX09SSUdJTl9DQUNI'
    'RURfVVNEQRACEiAKHE5VVFJJVElPTl9PUklHSU5fUkVNT1RFX1VTREEQAxIrCidOVVRSSVRJT0'
    '5fT1JJR0lOX0RFVEVSTUlOSVNUSUNfQ09OU1RBTlQQBBIhCh1OVVRSSVRJT05fT1JJR0lOX0xM'
    'TV9GQUxMQkFDSxAFEh8KG05VVFJJVElPTl9PUklHSU5fVU5SRVNPTFZFRBAG');

@$core.Deprecated('Use calculationOriginDescriptor instead')
const CalculationOrigin$json = {
  '1': 'CalculationOrigin',
  '2': [
    {'1': 'CALCULATION_ORIGIN_UNSPECIFIED', '2': 0},
    {'1': 'CALCULATION_ORIGIN_LOCAL_DETERMINISTIC', '2': 1},
    {'1': 'CALCULATION_ORIGIN_SERVER_DETERMINISTIC', '2': 2},
  ],
};

/// Descriptor for `CalculationOrigin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List calculationOriginDescriptor = $convert.base64Decode(
    'ChFDYWxjdWxhdGlvbk9yaWdpbhIiCh5DQUxDVUxBVElPTl9PUklHSU5fVU5TUEVDSUZJRUQQAB'
    'IqCiZDQUxDVUxBVElPTl9PUklHSU5fTE9DQUxfREVURVJNSU5JU1RJQxABEisKJ0NBTENVTEFU'
    'SU9OX09SSUdJTl9TRVJWRVJfREVURVJNSU5JU1RJQxAC');

@$core.Deprecated('Use ingredientFieldOriginDescriptor instead')
const IngredientFieldOrigin$json = {
  '1': 'IngredientFieldOrigin',
  '2': [
    {'1': 'INGREDIENT_FIELD_ORIGIN_UNSPECIFIED', '2': 0},
    {'1': 'INGREDIENT_FIELD_ORIGIN_USER_INPUT', '2': 1},
    {'1': 'INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL', '2': 2},
    {'1': 'INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL', '2': 3},
    {'1': 'INGREDIENT_FIELD_ORIGIN_USER_EDIT', '2': 4},
    {'1': 'INGREDIENT_FIELD_ORIGIN_DETERMINISTIC', '2': 5},
  ],
};

/// Descriptor for `IngredientFieldOrigin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ingredientFieldOriginDescriptor = $convert.base64Decode(
    'ChVJbmdyZWRpZW50RmllbGRPcmlnaW4SJwojSU5HUkVESUVOVF9GSUVMRF9PUklHSU5fVU5TUE'
    'VDSUZJRUQQABImCiJJTkdSRURJRU5UX0ZJRUxEX09SSUdJTl9VU0VSX0lOUFVUEAESJwojSU5H'
    'UkVESUVOVF9GSUVMRF9PUklHSU5fTE9DQUxfTU9ERUwQAhInCiNJTkdSRURJRU5UX0ZJRUxEX0'
    '9SSUdJTl9DTE9VRF9NT0RFTBADEiUKIUlOR1JFRElFTlRfRklFTERfT1JJR0lOX1VTRVJfRURJ'
    'VBAEEikKJUlOR1JFRElFTlRfRklFTERfT1JJR0lOX0RFVEVSTUlOSVNUSUMQBQ==');

@$core.Deprecated('Use analysisAttemptStatusDescriptor instead')
const AnalysisAttemptStatus$json = {
  '1': 'AnalysisAttemptStatus',
  '2': [
    {'1': 'ANALYSIS_ATTEMPT_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'ANALYSIS_ATTEMPT_STATUS_STARTED', '2': 1},
    {'1': 'ANALYSIS_ATTEMPT_STATUS_ACCEPTED', '2': 2},
    {'1': 'ANALYSIS_ATTEMPT_STATUS_FAILED', '2': 3},
    {'1': 'ANALYSIS_ATTEMPT_STATUS_CANCELLED', '2': 4},
    {'1': 'ANALYSIS_ATTEMPT_STATUS_SUPERSEDED', '2': 5},
  ],
};

/// Descriptor for `AnalysisAttemptStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List analysisAttemptStatusDescriptor = $convert.base64Decode(
    'ChVBbmFseXNpc0F0dGVtcHRTdGF0dXMSJwojQU5BTFlTSVNfQVRURU1QVF9TVEFUVVNfVU5TUE'
    'VDSUZJRUQQABIjCh9BTkFMWVNJU19BVFRFTVBUX1NUQVRVU19TVEFSVEVEEAESJAogQU5BTFlT'
    'SVNfQVRURU1QVF9TVEFUVVNfQUNDRVBURUQQAhIiCh5BTkFMWVNJU19BVFRFTVBUX1NUQVRVU1'
    '9GQUlMRUQQAxIlCiFBTkFMWVNJU19BVFRFTVBUX1NUQVRVU19DQU5DRUxMRUQQBBImCiJBTkFM'
    'WVNJU19BVFRFTVBUX1NUQVRVU19TVVBFUlNFREVEEAU=');

@$core.Deprecated('Use mealAnalysisFallbackReasonDescriptor instead')
const MealAnalysisFallbackReason$json = {
  '1': 'MealAnalysisFallbackReason',
  '2': [
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_UNSPECIFIED', '2': 0},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_NONE', '2': 1},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE', '2': 2},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY', '2': 3},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY', '2': 4},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED', '2': 5},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_BACKGROUND_BLOCKED', '2': 6},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_THERMALLY_LIMITED', '2': 7},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_MODEL_UPDATING', '2': 8},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED', '2': 9},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_TIMED_OUT', '2': 10},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT', '2': 11},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_CANCELLED', '2': 12},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS', '2': 13},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE', '2': 14},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_USER_APPROVED', '2': 15},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_USER_DENIED', '2': 16},
    {'1': 'MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN', '2': 17},
  ],
};

/// Descriptor for `MealAnalysisFallbackReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mealAnalysisFallbackReasonDescriptor = $convert.base64Decode(
    'ChpNZWFsQW5hbHlzaXNGYWxsYmFja1JlYXNvbhItCilNRUFMX0FOQUxZU0lTX0ZBTExCQUNLX1'
    'JFQVNPTl9VTlNQRUNJRklFRBAAEiYKIk1FQUxfQU5BTFlTSVNfRkFMTEJBQ0tfUkVBU09OX05P'
    'TkUQARI0CjBNRUFMX0FOQUxZU0lTX0ZBTExCQUNLX1JFQVNPTl9VTlNVUFBPUlRFRF9ERVZJQ0'
    'UQAhIxCi1NRUFMX0FOQUxZU0lTX0ZBTExCQUNLX1JFQVNPTl9NT0RFTF9OT1RfUkVBRFkQAxIm'
    'CiJNRUFMX0FOQUxZU0lTX0ZBTExCQUNLX1JFQVNPTl9CVVNZEAQSLworTUVBTF9BTkFMWVNJU1'
    '9GQUxMQkFDS19SRUFTT05fUVVPVEFfTElNSVRFRBAFEjQKME1FQUxfQU5BTFlTSVNfRkFMTEJB'
    'Q0tfUkVBU09OX0JBQ0tHUk9VTkRfQkxPQ0tFRBAGEjMKL01FQUxfQU5BTFlTSVNfRkFMTEJBQ0'
    'tfUkVBU09OX1RIRVJNQUxMWV9MSU1JVEVEEAcSMAosTUVBTF9BTkFMWVNJU19GQUxMQkFDS19S'
    'RUFTT05fTU9ERUxfVVBEQVRJTkcQCBIyCi5NRUFMX0FOQUxZU0lTX0ZBTExCQUNLX1JFQVNPTl'
    '9ST0xMT1VUX0RJU0FCTEVEEAkSKwonTUVBTF9BTkFMWVNJU19GQUxMQkFDS19SRUFTT05fVElN'
    'RURfT1VUEAoSMAosTUVBTF9BTkFMWVNJU19GQUxMQkFDS19SRUFTT05fSU5WQUxJRF9PVVRQVV'
    'QQCxIrCidNRUFMX0FOQUxZU0lTX0ZBTExCQUNLX1JFQVNPTl9DQU5DRUxMRUQQDBI2CjJNRUFM'
    'X0FOQUxZU0lTX0ZBTExCQUNLX1JFQVNPTl9MT0NBTF9OVVRSSVRJT05fTUlTUxANEjYKMk1FQU'
    'xfQU5BTFlTSVNfRkFMTEJBQ0tfUkVBU09OX0RBVEFTRVRfSU5DT01QQVRJQkxFEA4SLworTUVB'
    'TF9BTkFMWVNJU19GQUxMQkFDS19SRUFTT05fVVNFUl9BUFBST1ZFRBAPEi0KKU1FQUxfQU5BTF'
    'lTSVNfRkFMTEJBQ0tfUkVBU09OX1VTRVJfREVOSUVEEBASKQolTUVBTF9BTkFMWVNJU19GQUxM'
    'QkFDS19SRUFTT05fVU5LTk9XThAR');

@$core.Deprecated('Use pipelineCalorieBandDescriptor instead')
const PipelineCalorieBand$json = {
  '1': 'PipelineCalorieBand',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 5, '10': 'min'},
    {'1': 'max', '3': 2, '4': 1, '5': 5, '10': 'max'},
  ],
};

/// Descriptor for `PipelineCalorieBand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineCalorieBandDescriptor = $convert.base64Decode(
    'ChNQaXBlbGluZUNhbG9yaWVCYW5kEhAKA21pbhgBIAEoBVIDbWluEhAKA21heBgCIAEoBVIDbW'
    'F4');

@$core.Deprecated('Use pipelineMacrosDescriptor instead')
const PipelineMacros$json = {
  '1': 'PipelineMacros',
  '2': [
    {'1': 'calories', '3': 1, '4': 1, '5': 1, '10': 'calories'},
    {'1': 'protein', '3': 2, '4': 1, '5': 1, '10': 'protein'},
    {'1': 'carbs', '3': 3, '4': 1, '5': 1, '10': 'carbs'},
    {'1': 'fat', '3': 4, '4': 1, '5': 1, '10': 'fat'},
    {'1': 'fiber', '3': 5, '4': 1, '5': 1, '10': 'fiber'},
  ],
};

/// Descriptor for `PipelineMacros`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineMacrosDescriptor = $convert.base64Decode(
    'Cg5QaXBlbGluZU1hY3JvcxIaCghjYWxvcmllcxgBIAEoAVIIY2Fsb3JpZXMSGAoHcHJvdGVpbh'
    'gCIAEoAVIHcHJvdGVpbhIUCgVjYXJicxgDIAEoAVIFY2FyYnMSEAoDZmF0GAQgASgBUgNmYXQS'
    'FAoFZmliZXIYBSABKAFSBWZpYmVy');

@$core.Deprecated('Use ingredientFieldProvenanceDescriptor instead')
const IngredientFieldProvenance$json = {
  '1': 'IngredientFieldProvenance',
  '2': [
    {'1': 'field_name', '3': 1, '4': 1, '5': 9, '10': 'fieldName'},
    {
      '1': 'origin',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.calorify.IngredientFieldOrigin',
      '10': 'origin'
    },
  ],
};

/// Descriptor for `IngredientFieldProvenance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingredientFieldProvenanceDescriptor = $convert.base64Decode(
    'ChlJbmdyZWRpZW50RmllbGRQcm92ZW5hbmNlEh0KCmZpZWxkX25hbWUYASABKAlSCWZpZWxkTm'
    'FtZRI3CgZvcmlnaW4YAiABKA4yHy5jYWxvcmlmeS5JbmdyZWRpZW50RmllbGRPcmlnaW5SBm9y'
    'aWdpbg==');

@$core.Deprecated('Use ingredientProposalItemV1Descriptor instead')
const IngredientProposalItemV1$json = {
  '1': 'IngredientProposalItemV1',
  '2': [
    {'1': 'row_id', '3': 1, '4': 1, '5': 9, '10': 'rowId'},
    {'1': 'raw_name', '3': 2, '4': 1, '5': 9, '10': 'rawName'},
    {'1': 'canonical_hint', '3': 3, '4': 1, '5': 9, '10': 'canonicalHint'},
    {'1': 'preparation', '3': 4, '4': 1, '5': 9, '10': 'preparation'},
    {'1': 'grams_estimated', '3': 5, '4': 1, '5': 1, '10': 'gramsEstimated'},
    {'1': 'min_grams', '3': 6, '4': 1, '5': 1, '10': 'minGrams'},
    {'1': 'max_grams', '3': 7, '4': 1, '5': 1, '10': 'maxGrams'},
    {'1': 'notes', '3': 8, '4': 1, '5': 9, '10': 'notes'},
    {
      '1': 'portion_kind',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.calorify.PortionKind',
      '10': 'portionKind'
    },
    {'1': 'count', '3': 10, '4': 1, '5': 1, '9': 0, '10': 'count', '17': true},
    {
      '1': 'per_unit_grams',
      '3': 11,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'perUnitGrams',
      '17': true
    },
    {
      '1': 'per_unit_min_grams',
      '3': 12,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'perUnitMinGrams',
      '17': true
    },
    {
      '1': 'per_unit_max_grams',
      '3': 13,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'perUnitMaxGrams',
      '17': true
    },
    {
      '1': 'size_specified_by_user',
      '3': 14,
      '4': 1,
      '5': 8,
      '10': 'sizeSpecifiedByUser'
    },
    {'1': 'confidence', '3': 15, '4': 1, '5': 1, '10': 'confidence'},
    {
      '1': 'field_provenance',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.calorify.IngredientFieldProvenance',
      '10': 'fieldProvenance'
    },
  ],
  '8': [
    {'1': '_count'},
    {'1': '_per_unit_grams'},
    {'1': '_per_unit_min_grams'},
    {'1': '_per_unit_max_grams'},
  ],
};

/// Descriptor for `IngredientProposalItemV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingredientProposalItemV1Descriptor = $convert.base64Decode(
    'ChhJbmdyZWRpZW50UHJvcG9zYWxJdGVtVjESFQoGcm93X2lkGAEgASgJUgVyb3dJZBIZCghyYX'
    'dfbmFtZRgCIAEoCVIHcmF3TmFtZRIlCg5jYW5vbmljYWxfaGludBgDIAEoCVINY2Fub25pY2Fs'
    'SGludBIgCgtwcmVwYXJhdGlvbhgEIAEoCVILcHJlcGFyYXRpb24SJwoPZ3JhbXNfZXN0aW1hdG'
    'VkGAUgASgBUg5ncmFtc0VzdGltYXRlZBIbCgltaW5fZ3JhbXMYBiABKAFSCG1pbkdyYW1zEhsK'
    'CW1heF9ncmFtcxgHIAEoAVIIbWF4R3JhbXMSFAoFbm90ZXMYCCABKAlSBW5vdGVzEjgKDHBvcn'
    'Rpb25fa2luZBgJIAEoDjIVLmNhbG9yaWZ5LlBvcnRpb25LaW5kUgtwb3J0aW9uS2luZBIZCgVj'
    'b3VudBgKIAEoAUgAUgVjb3VudIgBARIpCg5wZXJfdW5pdF9ncmFtcxgLIAEoAUgBUgxwZXJVbm'
    'l0R3JhbXOIAQESMAoScGVyX3VuaXRfbWluX2dyYW1zGAwgASgBSAJSD3BlclVuaXRNaW5HcmFt'
    'c4gBARIwChJwZXJfdW5pdF9tYXhfZ3JhbXMYDSABKAFIA1IPcGVyVW5pdE1heEdyYW1ziAEBEj'
    'MKFnNpemVfc3BlY2lmaWVkX2J5X3VzZXIYDiABKAhSE3NpemVTcGVjaWZpZWRCeVVzZXISHgoK'
    'Y29uZmlkZW5jZRgPIAEoAVIKY29uZmlkZW5jZRJOChBmaWVsZF9wcm92ZW5hbmNlGBAgAygLMi'
    'MuY2Fsb3JpZnkuSW5ncmVkaWVudEZpZWxkUHJvdmVuYW5jZVIPZmllbGRQcm92ZW5hbmNlQggK'
    'Bl9jb3VudEIRCg9fcGVyX3VuaXRfZ3JhbXNCFQoTX3Blcl91bml0X21pbl9ncmFtc0IVChNfcG'
    'VyX3VuaXRfbWF4X2dyYW1z');

@$core.Deprecated('Use ingredientProposalV1Descriptor instead')
const IngredientProposalV1$json = {
  '1': 'IngredientProposalV1',
  '2': [
    {'1': 'schema_version', '3': 1, '4': 1, '5': 13, '10': 'schemaVersion'},
    {'1': 'proposal_id', '3': 2, '4': 1, '5': 9, '10': 'proposalId'},
    {
      '1': 'modality',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.calorify.AnalysisModality',
      '10': 'modality'
    },
    {'1': 'meal_name', '3': 4, '4': 1, '5': 9, '10': 'mealName'},
    {
      '1': 'inferred_meal_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'inferredMealType'
    },
    {
      '1': 'meal_type_confident',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'mealTypeConfident'
    },
    {'1': 'confidence', '3': 7, '4': 1, '5': 1, '10': 'confidence'},
    {
      '1': 'ingredients',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.calorify.IngredientProposalItemV1',
      '10': 'ingredients'
    },
    {
      '1': 'interpretation_origin',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.calorify.InterpretationOrigin',
      '10': 'interpretationOrigin'
    },
    {
      '1': 'model_name',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'modelName',
      '17': true
    },
    {
      '1': 'model_version',
      '3': 11,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'modelVersion',
      '17': true
    },
  ],
  '8': [
    {'1': '_model_name'},
    {'1': '_model_version'},
  ],
};

/// Descriptor for `IngredientProposalV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingredientProposalV1Descriptor = $convert.base64Decode(
    'ChRJbmdyZWRpZW50UHJvcG9zYWxWMRIlCg5zY2hlbWFfdmVyc2lvbhgBIAEoDVINc2NoZW1hVm'
    'Vyc2lvbhIfCgtwcm9wb3NhbF9pZBgCIAEoCVIKcHJvcG9zYWxJZBI2Cghtb2RhbGl0eRgDIAEo'
    'DjIaLmNhbG9yaWZ5LkFuYWx5c2lzTW9kYWxpdHlSCG1vZGFsaXR5EhsKCW1lYWxfbmFtZRgEIA'
    'EoCVIIbWVhbE5hbWUSPAoSaW5mZXJyZWRfbWVhbF90eXBlGAUgASgOMg4ubWVhbC5NZWFsVHlw'
    'ZVIQaW5mZXJyZWRNZWFsVHlwZRIuChNtZWFsX3R5cGVfY29uZmlkZW50GAYgASgIUhFtZWFsVH'
    'lwZUNvbmZpZGVudBIeCgpjb25maWRlbmNlGAcgASgBUgpjb25maWRlbmNlEkQKC2luZ3JlZGll'
    'bnRzGAggAygLMiIuY2Fsb3JpZnkuSW5ncmVkaWVudFByb3Bvc2FsSXRlbVYxUgtpbmdyZWRpZW'
    '50cxJTChVpbnRlcnByZXRhdGlvbl9vcmlnaW4YCSABKA4yHi5jYWxvcmlmeS5JbnRlcnByZXRh'
    'dGlvbk9yaWdpblIUaW50ZXJwcmV0YXRpb25PcmlnaW4SIgoKbW9kZWxfbmFtZRgKIAEoCUgAUg'
    'ltb2RlbE5hbWWIAQESKAoNbW9kZWxfdmVyc2lvbhgLIAEoCUgBUgxtb2RlbFZlcnNpb26IAQFC'
    'DQoLX21vZGVsX25hbWVCEAoOX21vZGVsX3ZlcnNpb24=');

@$core.Deprecated('Use analysisAttemptReceiptDescriptor instead')
const AnalysisAttemptReceipt$json = {
  '1': 'AnalysisAttemptReceipt',
  '2': [
    {'1': 'attempt_id', '3': 1, '4': 1, '5': 9, '10': 'attemptId'},
    {
      '1': 'executor_origin',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.calorify.InterpretationOrigin',
      '10': 'executorOrigin'
    },
    {
      '1': 'started_at_epoch_ms',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'startedAtEpochMs'
    },
    {
      '1': 'completed_at_epoch_ms',
      '3': 4,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'completedAtEpochMs',
      '17': true
    },
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.calorify.AnalysisAttemptStatus',
      '10': 'status'
    },
    {
      '1': 'fallback_reason',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.calorify.MealAnalysisFallbackReason',
      '10': 'fallbackReason'
    },
  ],
  '8': [
    {'1': '_completed_at_epoch_ms'},
  ],
};

/// Descriptor for `AnalysisAttemptReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisAttemptReceiptDescriptor = $convert.base64Decode(
    'ChZBbmFseXNpc0F0dGVtcHRSZWNlaXB0Eh0KCmF0dGVtcHRfaWQYASABKAlSCWF0dGVtcHRJZB'
    'JHCg9leGVjdXRvcl9vcmlnaW4YAiABKA4yHi5jYWxvcmlmeS5JbnRlcnByZXRhdGlvbk9yaWdp'
    'blIOZXhlY3V0b3JPcmlnaW4SLQoTc3RhcnRlZF9hdF9lcG9jaF9tcxgDIAEoA1IQc3RhcnRlZE'
    'F0RXBvY2hNcxI2ChVjb21wbGV0ZWRfYXRfZXBvY2hfbXMYBCABKANIAFISY29tcGxldGVkQXRF'
    'cG9jaE1ziAEBEjcKBnN0YXR1cxgFIAEoDjIfLmNhbG9yaWZ5LkFuYWx5c2lzQXR0ZW1wdFN0YX'
    'R1c1IGc3RhdHVzEk0KD2ZhbGxiYWNrX3JlYXNvbhgGIAEoDjIkLmNhbG9yaWZ5Lk1lYWxBbmFs'
    'eXNpc0ZhbGxiYWNrUmVhc29uUg5mYWxsYmFja1JlYXNvbkIYChZfY29tcGxldGVkX2F0X2Vwb2'
    'NoX21z');

@$core.Deprecated('Use mealAnalysisReceiptDescriptor instead')
const MealAnalysisReceipt$json = {
  '1': 'MealAnalysisReceipt',
  '2': [
    {'1': 'schema_version', '3': 1, '4': 1, '5': 13, '10': 'schemaVersion'},
    {
      '1': 'proposal_schema_version',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'proposalSchemaVersion'
    },
    {'1': 'local_attempted', '3': 3, '4': 1, '5': 8, '10': 'localAttempted'},
    {
      '1': 'interpretation_origin',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.calorify.InterpretationOrigin',
      '10': 'interpretationOrigin'
    },
    {
      '1': 'nutrition_origin',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.calorify.NutritionOrigin',
      '10': 'nutritionOrigin'
    },
    {
      '1': 'calculation_origin',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.calorify.CalculationOrigin',
      '10': 'calculationOrigin'
    },
    {
      '1': 'usda_dataset_version',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'usdaDatasetVersion',
      '17': true
    },
    {
      '1': 'calculation_version',
      '3': 8,
      '4': 1,
      '5': 9,
      '10': 'calculationVersion'
    },
    {
      '1': 'attempts',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.calorify.AnalysisAttemptReceipt',
      '10': 'attempts'
    },
    {
      '1': 'fallback_reason',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.calorify.MealAnalysisFallbackReason',
      '10': 'fallbackReason'
    },
  ],
  '8': [
    {'1': '_usda_dataset_version'},
  ],
};

/// Descriptor for `MealAnalysisReceipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisReceiptDescriptor = $convert.base64Decode(
    'ChNNZWFsQW5hbHlzaXNSZWNlaXB0EiUKDnNjaGVtYV92ZXJzaW9uGAEgASgNUg1zY2hlbWFWZX'
    'JzaW9uEjYKF3Byb3Bvc2FsX3NjaGVtYV92ZXJzaW9uGAIgASgNUhVwcm9wb3NhbFNjaGVtYVZl'
    'cnNpb24SJwoPbG9jYWxfYXR0ZW1wdGVkGAMgASgIUg5sb2NhbEF0dGVtcHRlZBJTChVpbnRlcn'
    'ByZXRhdGlvbl9vcmlnaW4YBCABKA4yHi5jYWxvcmlmeS5JbnRlcnByZXRhdGlvbk9yaWdpblIU'
    'aW50ZXJwcmV0YXRpb25PcmlnaW4SRAoQbnV0cml0aW9uX29yaWdpbhgFIAEoDjIZLmNhbG9yaW'
    'Z5Lk51dHJpdGlvbk9yaWdpblIPbnV0cml0aW9uT3JpZ2luEkoKEmNhbGN1bGF0aW9uX29yaWdp'
    'bhgGIAEoDjIbLmNhbG9yaWZ5LkNhbGN1bGF0aW9uT3JpZ2luUhFjYWxjdWxhdGlvbk9yaWdpbh'
    'I1ChR1c2RhX2RhdGFzZXRfdmVyc2lvbhgHIAEoCUgAUhJ1c2RhRGF0YXNldFZlcnNpb26IAQES'
    'LwoTY2FsY3VsYXRpb25fdmVyc2lvbhgIIAEoCVISY2FsY3VsYXRpb25WZXJzaW9uEjwKCGF0dG'
    'VtcHRzGAkgAygLMiAuY2Fsb3JpZnkuQW5hbHlzaXNBdHRlbXB0UmVjZWlwdFIIYXR0ZW1wdHMS'
    'TQoPZmFsbGJhY2tfcmVhc29uGAogASgOMiQuY2Fsb3JpZnkuTWVhbEFuYWx5c2lzRmFsbGJhY2'
    'tSZWFzb25SDmZhbGxiYWNrUmVhc29uQhcKFV91c2RhX2RhdGFzZXRfdmVyc2lvbg==');

@$core.Deprecated('Use pipelineMealHealthDescriptor instead')
const PipelineMealHealth$json = {
  '1': 'PipelineMealHealth',
  '2': [
    {
      '1': 'health_score',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.meal.HealthScore',
      '10': 'healthScore'
    },
    {
      '1': 'health_score_reason',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'healthScoreReason'
    },
  ],
};

/// Descriptor for `PipelineMealHealth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineMealHealthDescriptor = $convert.base64Decode(
    'ChJQaXBlbGluZU1lYWxIZWFsdGgSNAoMaGVhbHRoX3Njb3JlGAEgASgOMhEubWVhbC5IZWFsdG'
    'hTY29yZVILaGVhbHRoU2NvcmUSLgoTaGVhbHRoX3Njb3JlX3JlYXNvbhgCIAEoCVIRaGVhbHRo'
    'U2NvcmVSZWFzb24=');

@$core.Deprecated('Use pipelineDecomposedIngredientDescriptor instead')
const PipelineDecomposedIngredient$json = {
  '1': 'PipelineDecomposedIngredient',
  '2': [
    {'1': 'row_id', '3': 1, '4': 1, '5': 9, '10': 'rowId'},
    {'1': 'raw_name', '3': 2, '4': 1, '5': 9, '10': 'rawName'},
    {'1': 'canonical_hint', '3': 3, '4': 1, '5': 9, '10': 'canonicalHint'},
    {'1': 'grams_estimated', '3': 4, '4': 1, '5': 1, '10': 'gramsEstimated'},
    {'1': 'min_grams', '3': 5, '4': 1, '5': 1, '10': 'minGrams'},
    {'1': 'max_grams', '3': 6, '4': 1, '5': 1, '10': 'maxGrams'},
    {'1': 'notes', '3': 7, '4': 1, '5': 9, '10': 'notes'},
    {
      '1': 'portion_kind',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.calorify.PortionKind',
      '10': 'portionKind'
    },
    {'1': 'count', '3': 9, '4': 1, '5': 1, '9': 0, '10': 'count', '17': true},
    {
      '1': 'per_unit_grams',
      '3': 10,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'perUnitGrams',
      '17': true
    },
    {
      '1': 'per_unit_min_grams',
      '3': 11,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'perUnitMinGrams',
      '17': true
    },
    {
      '1': 'per_unit_max_grams',
      '3': 12,
      '4': 1,
      '5': 1,
      '9': 3,
      '10': 'perUnitMaxGrams',
      '17': true
    },
    {
      '1': 'size_specified_by_user',
      '3': 13,
      '4': 1,
      '5': 8,
      '10': 'sizeSpecifiedByUser'
    },
  ],
  '8': [
    {'1': '_count'},
    {'1': '_per_unit_grams'},
    {'1': '_per_unit_min_grams'},
    {'1': '_per_unit_max_grams'},
  ],
};

/// Descriptor for `PipelineDecomposedIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineDecomposedIngredientDescriptor = $convert.base64Decode(
    'ChxQaXBlbGluZURlY29tcG9zZWRJbmdyZWRpZW50EhUKBnJvd19pZBgBIAEoCVIFcm93SWQSGQ'
    'oIcmF3X25hbWUYAiABKAlSB3Jhd05hbWUSJQoOY2Fub25pY2FsX2hpbnQYAyABKAlSDWNhbm9u'
    'aWNhbEhpbnQSJwoPZ3JhbXNfZXN0aW1hdGVkGAQgASgBUg5ncmFtc0VzdGltYXRlZBIbCgltaW'
    '5fZ3JhbXMYBSABKAFSCG1pbkdyYW1zEhsKCW1heF9ncmFtcxgGIAEoAVIIbWF4R3JhbXMSFAoF'
    'bm90ZXMYByABKAlSBW5vdGVzEjgKDHBvcnRpb25fa2luZBgIIAEoDjIVLmNhbG9yaWZ5LlBvcn'
    'Rpb25LaW5kUgtwb3J0aW9uS2luZBIZCgVjb3VudBgJIAEoAUgAUgVjb3VudIgBARIpCg5wZXJf'
    'dW5pdF9ncmFtcxgKIAEoAUgBUgxwZXJVbml0R3JhbXOIAQESMAoScGVyX3VuaXRfbWluX2dyYW'
    '1zGAsgASgBSAJSD3BlclVuaXRNaW5HcmFtc4gBARIwChJwZXJfdW5pdF9tYXhfZ3JhbXMYDCAB'
    'KAFIA1IPcGVyVW5pdE1heEdyYW1ziAEBEjMKFnNpemVfc3BlY2lmaWVkX2J5X3VzZXIYDSABKA'
    'hSE3NpemVTcGVjaWZpZWRCeVVzZXJCCAoGX2NvdW50QhEKD19wZXJfdW5pdF9ncmFtc0IVChNf'
    'cGVyX3VuaXRfbWluX2dyYW1zQhUKE19wZXJfdW5pdF9tYXhfZ3JhbXM=');

@$core.Deprecated('Use pipelineResolvedIngredientDescriptor instead')
const PipelineResolvedIngredient$json = {
  '1': 'PipelineResolvedIngredient',
  '2': [
    {'1': 'row_id', '3': 1, '4': 1, '5': 9, '10': 'rowId'},
    {'1': 'raw_name', '3': 2, '4': 1, '5': 9, '10': 'rawName'},
    {'1': 'canonical_name', '3': 3, '4': 1, '5': 9, '10': 'canonicalName'},
    {'1': 'match_type', '3': 4, '4': 1, '5': 9, '10': 'matchType'},
    {'1': 'grams', '3': 5, '4': 1, '5': 1, '10': 'grams'},
    {
      '1': 'macros',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineMacros',
      '10': 'macros'
    },
    {'1': 'source', '3': 7, '4': 1, '5': 9, '10': 'source'},
    {
      '1': 'portion_kind',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.calorify.PortionKind',
      '10': 'portionKind'
    },
    {'1': 'count', '3': 9, '4': 1, '5': 1, '9': 0, '10': 'count', '17': true},
    {
      '1': 'per_unit_grams',
      '3': 10,
      '4': 1,
      '5': 1,
      '9': 1,
      '10': 'perUnitGrams',
      '17': true
    },
    {
      '1': 'nutrition_origin',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.calorify.NutritionOrigin',
      '10': 'nutritionOrigin'
    },
    {'1': 'fdc_id', '3': 12, '4': 1, '5': 9, '9': 2, '10': 'fdcId', '17': true},
    {
      '1': 'usda_dataset_version',
      '3': 13,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'usdaDatasetVersion',
      '17': true
    },
    {
      '1': 'nutrients_per_100g',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineMacros',
      '9': 4,
      '10': 'nutrientsPer100g',
      '17': true
    },
    {
      '1': 'field_provenance',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.calorify.IngredientFieldProvenance',
      '10': 'fieldProvenance'
    },
  ],
  '8': [
    {'1': '_count'},
    {'1': '_per_unit_grams'},
    {'1': '_fdc_id'},
    {'1': '_usda_dataset_version'},
    {'1': '_nutrients_per_100g'},
  ],
};

/// Descriptor for `PipelineResolvedIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineResolvedIngredientDescriptor = $convert.base64Decode(
    'ChpQaXBlbGluZVJlc29sdmVkSW5ncmVkaWVudBIVCgZyb3dfaWQYASABKAlSBXJvd0lkEhkKCH'
    'Jhd19uYW1lGAIgASgJUgdyYXdOYW1lEiUKDmNhbm9uaWNhbF9uYW1lGAMgASgJUg1jYW5vbmlj'
    'YWxOYW1lEh0KCm1hdGNoX3R5cGUYBCABKAlSCW1hdGNoVHlwZRIUCgVncmFtcxgFIAEoAVIFZ3'
    'JhbXMSMAoGbWFjcm9zGAYgASgLMhguY2Fsb3JpZnkuUGlwZWxpbmVNYWNyb3NSBm1hY3JvcxIW'
    'CgZzb3VyY2UYByABKAlSBnNvdXJjZRI4Cgxwb3J0aW9uX2tpbmQYCCABKA4yFS5jYWxvcmlmeS'
    '5Qb3J0aW9uS2luZFILcG9ydGlvbktpbmQSGQoFY291bnQYCSABKAFIAFIFY291bnSIAQESKQoO'
    'cGVyX3VuaXRfZ3JhbXMYCiABKAFIAVIMcGVyVW5pdEdyYW1ziAEBEkQKEG51dHJpdGlvbl9vcm'
    'lnaW4YCyABKA4yGS5jYWxvcmlmeS5OdXRyaXRpb25PcmlnaW5SD251dHJpdGlvbk9yaWdpbhIa'
    'CgZmZGNfaWQYDCABKAlIAlIFZmRjSWSIAQESNQoUdXNkYV9kYXRhc2V0X3ZlcnNpb24YDSABKA'
    'lIA1ISdXNkYURhdGFzZXRWZXJzaW9uiAEBEksKEm51dHJpZW50c19wZXJfMTAwZxgOIAEoCzIY'
    'LmNhbG9yaWZ5LlBpcGVsaW5lTWFjcm9zSARSEG51dHJpZW50c1BlcjEwMGeIAQESTgoQZmllbG'
    'RfcHJvdmVuYW5jZRgPIAMoCzIjLmNhbG9yaWZ5LkluZ3JlZGllbnRGaWVsZFByb3ZlbmFuY2VS'
    'D2ZpZWxkUHJvdmVuYW5jZUIICgZfY291bnRCEQoPX3Blcl91bml0X2dyYW1zQgkKB19mZGNfaW'
    'RCFwoVX3VzZGFfZGF0YXNldF92ZXJzaW9uQhUKE19udXRyaWVudHNfcGVyXzEwMGc=');

@$core.Deprecated('Use pipelineClarificationOptionDescriptor instead')
const PipelineClarificationOption$json = {
  '1': 'PipelineClarificationOption',
  '2': [
    {'1': 'option_id', '3': 1, '4': 1, '5': 9, '10': 'optionId'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {'1': 'detail', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'detail', '17': true},
    {'1': 'grams', '3': 4, '4': 1, '5': 1, '10': 'grams'},
    {'1': 'calorie_delta', '3': 5, '4': 1, '5': 5, '10': 'calorieDelta'},
  ],
  '8': [
    {'1': '_detail'},
  ],
};

/// Descriptor for `PipelineClarificationOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineClarificationOptionDescriptor = $convert.base64Decode(
    'ChtQaXBlbGluZUNsYXJpZmljYXRpb25PcHRpb24SGwoJb3B0aW9uX2lkGAEgASgJUghvcHRpb2'
    '5JZBIUCgVsYWJlbBgCIAEoCVIFbGFiZWwSGwoGZGV0YWlsGAMgASgJSABSBmRldGFpbIgBARIU'
    'CgVncmFtcxgEIAEoAVIFZ3JhbXMSIwoNY2Fsb3JpZV9kZWx0YRgFIAEoBVIMY2Fsb3JpZURlbH'
    'RhQgkKB19kZXRhaWw=');

@$core.Deprecated('Use pipelineClarificationDescriptor instead')
const PipelineClarification$json = {
  '1': 'PipelineClarification',
  '2': [
    {'1': 'clarification_id', '3': 1, '4': 1, '5': 9, '10': 'clarificationId'},
    {'1': 'row_id', '3': 2, '4': 1, '5': 9, '10': 'rowId'},
    {'1': 'ingredient_name', '3': 3, '4': 1, '5': 9, '10': 'ingredientName'},
    {
      '1': 'portion_kind',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.calorify.PortionKind',
      '10': 'portionKind'
    },
    {'1': 'question', '3': 5, '4': 1, '5': 9, '10': 'question'},
    {
      '1': 'options',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.calorify.PipelineClarificationOption',
      '10': 'options'
    },
    {'1': 'default_option_id', '3': 7, '4': 1, '5': 9, '10': 'defaultOptionId'},
  ],
};

/// Descriptor for `PipelineClarification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineClarificationDescriptor = $convert.base64Decode(
    'ChVQaXBlbGluZUNsYXJpZmljYXRpb24SKQoQY2xhcmlmaWNhdGlvbl9pZBgBIAEoCVIPY2xhcm'
    'lmaWNhdGlvbklkEhUKBnJvd19pZBgCIAEoCVIFcm93SWQSJwoPaW5ncmVkaWVudF9uYW1lGAMg'
    'ASgJUg5pbmdyZWRpZW50TmFtZRI4Cgxwb3J0aW9uX2tpbmQYBCABKA4yFS5jYWxvcmlmeS5Qb3'
    'J0aW9uS2luZFILcG9ydGlvbktpbmQSGgoIcXVlc3Rpb24YBSABKAlSCHF1ZXN0aW9uEj8KB29w'
    'dGlvbnMYBiADKAsyJS5jYWxvcmlmeS5QaXBlbGluZUNsYXJpZmljYXRpb25PcHRpb25SB29wdG'
    'lvbnMSKgoRZGVmYXVsdF9vcHRpb25faWQYByABKAlSD2RlZmF1bHRPcHRpb25JZA==');

@$core.Deprecated('Use pipelineStartedDataDescriptor instead')
const PipelineStartedData$json = {
  '1': 'PipelineStartedData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
  ],
};

/// Descriptor for `PipelineStartedData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineStartedDataDescriptor = $convert.base64Decode(
    'ChNQaXBlbGluZVN0YXJ0ZWREYXRhEh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbmFseXNpc0lk');

@$core.Deprecated('Use pipelineDecompositionDataDescriptor instead')
const PipelineDecompositionData$json = {
  '1': 'PipelineDecompositionData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'meal_name', '3': 2, '4': 1, '5': 9, '10': 'mealName'},
    {'1': 'confidence', '3': 3, '4': 1, '5': 1, '10': 'confidence'},
    {
      '1': 'ingredients',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.calorify.PipelineDecomposedIngredient',
      '10': 'ingredients'
    },
    {
      '1': 'inferred_meal_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'inferredMealType'
    },
    {
      '1': 'meal_type_confident',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'mealTypeConfident'
    },
    {
      '1': 'interpretation_origin',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.calorify.InterpretationOrigin',
      '10': 'interpretationOrigin'
    },
    {
      '1': 'proposal',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.calorify.IngredientProposalV1',
      '9': 0,
      '10': 'proposal',
      '17': true
    },
  ],
  '8': [
    {'1': '_proposal'},
  ],
};

/// Descriptor for `PipelineDecompositionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineDecompositionDataDescriptor = $convert.base64Decode(
    'ChlQaXBlbGluZURlY29tcG9zaXRpb25EYXRhEh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbmFseX'
    'Npc0lkEhsKCW1lYWxfbmFtZRgCIAEoCVIIbWVhbE5hbWUSHgoKY29uZmlkZW5jZRgDIAEoAVIK'
    'Y29uZmlkZW5jZRJICgtpbmdyZWRpZW50cxgEIAMoCzImLmNhbG9yaWZ5LlBpcGVsaW5lRGVjb2'
    '1wb3NlZEluZ3JlZGllbnRSC2luZ3JlZGllbnRzEjwKEmluZmVycmVkX21lYWxfdHlwZRgFIAEo'
    'DjIOLm1lYWwuTWVhbFR5cGVSEGluZmVycmVkTWVhbFR5cGUSLgoTbWVhbF90eXBlX2NvbmZpZG'
    'VudBgGIAEoCFIRbWVhbFR5cGVDb25maWRlbnQSUwoVaW50ZXJwcmV0YXRpb25fb3JpZ2luGAcg'
    'ASgOMh4uY2Fsb3JpZnkuSW50ZXJwcmV0YXRpb25PcmlnaW5SFGludGVycHJldGF0aW9uT3JpZ2'
    'luEj8KCHByb3Bvc2FsGAggASgLMh4uY2Fsb3JpZnkuSW5ncmVkaWVudFByb3Bvc2FsVjFIAFII'
    'cHJvcG9zYWyIAQFCCwoJX3Byb3Bvc2Fs');

@$core.Deprecated('Use pipelineIngredientsDataDescriptor instead')
const PipelineIngredientsData$json = {
  '1': 'PipelineIngredientsData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'meal_name', '3': 2, '4': 1, '5': 9, '10': 'mealName'},
    {
      '1': 'ingredients',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.calorify.PipelineResolvedIngredient',
      '10': 'ingredients'
    },
  ],
};

/// Descriptor for `PipelineIngredientsData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineIngredientsDataDescriptor = $convert.base64Decode(
    'ChdQaXBlbGluZUluZ3JlZGllbnRzRGF0YRIfCgthbmFseXNpc19pZBgBIAEoCVIKYW5hbHlzaX'
    'NJZBIbCgltZWFsX25hbWUYAiABKAlSCG1lYWxOYW1lEkYKC2luZ3JlZGllbnRzGAMgAygLMiQu'
    'Y2Fsb3JpZnkuUGlwZWxpbmVSZXNvbHZlZEluZ3JlZGllbnRSC2luZ3JlZGllbnRz');

@$core.Deprecated('Use pipelineUncertaintyDataDescriptor instead')
const PipelineUncertaintyData$json = {
  '1': 'PipelineUncertaintyData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'meal_name', '3': 2, '4': 1, '5': 9, '10': 'mealName'},
    {'1': 'variance_percent', '3': 3, '4': 1, '5': 1, '10': 'variancePercent'},
    {
      '1': 'needs_clarification',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'needsClarification'
    },
    {
      '1': 'calorie_band',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineCalorieBand',
      '10': 'calorieBand'
    },
    {
      '1': 'clarifications',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.calorify.PipelineClarification',
      '10': 'clarifications'
    },
  ],
};

/// Descriptor for `PipelineUncertaintyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineUncertaintyDataDescriptor = $convert.base64Decode(
    'ChdQaXBlbGluZVVuY2VydGFpbnR5RGF0YRIfCgthbmFseXNpc19pZBgBIAEoCVIKYW5hbHlzaX'
    'NJZBIbCgltZWFsX25hbWUYAiABKAlSCG1lYWxOYW1lEikKEHZhcmlhbmNlX3BlcmNlbnQYAyAB'
    'KAFSD3ZhcmlhbmNlUGVyY2VudBIvChNuZWVkc19jbGFyaWZpY2F0aW9uGAQgASgIUhJuZWVkc0'
    'NsYXJpZmljYXRpb24SQAoMY2Fsb3JpZV9iYW5kGAUgASgLMh0uY2Fsb3JpZnkuUGlwZWxpbmVD'
    'YWxvcmllQmFuZFILY2Fsb3JpZUJhbmQSRwoOY2xhcmlmaWNhdGlvbnMYBiADKAsyHy5jYWxvcm'
    'lmeS5QaXBlbGluZUNsYXJpZmljYXRpb25SDmNsYXJpZmljYXRpb25z');

@$core.Deprecated('Use pipelineMealTypeQuestionDataDescriptor instead')
const PipelineMealTypeQuestionData$json = {
  '1': 'PipelineMealTypeQuestionData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'meal_name', '3': 2, '4': 1, '5': 9, '10': 'mealName'},
    {'1': 'question', '3': 3, '4': 1, '5': 9, '10': 'question'},
    {
      '1': 'options',
      '3': 4,
      '4': 3,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'options'
    },
    {
      '1': 'inferred_meal_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'inferredMealType'
    },
  ],
};

/// Descriptor for `PipelineMealTypeQuestionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineMealTypeQuestionDataDescriptor = $convert.base64Decode(
    'ChxQaXBlbGluZU1lYWxUeXBlUXVlc3Rpb25EYXRhEh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbm'
    'FseXNpc0lkEhsKCW1lYWxfbmFtZRgCIAEoCVIIbWVhbE5hbWUSGgoIcXVlc3Rpb24YAyABKAlS'
    'CHF1ZXN0aW9uEigKB29wdGlvbnMYBCADKA4yDi5tZWFsLk1lYWxUeXBlUgdvcHRpb25zEjwKEm'
    'luZmVycmVkX21lYWxfdHlwZRgFIAEoDjIOLm1lYWwuTWVhbFR5cGVSEGluZmVycmVkTWVhbFR5'
    'cGU=');

@$core.Deprecated('Use pipelineResultDataDescriptor instead')
const PipelineResultData$json = {
  '1': 'PipelineResultData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'meal_name', '3': 2, '4': 1, '5': 9, '10': 'mealName'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 9, '10': 'quantity'},
    {
      '1': 'meal_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'mealType'
    },
    {'1': 'meal_type_source', '3': 5, '4': 1, '5': 9, '10': 'mealTypeSource'},
    {'1': 'tip', '3': 6, '4': 1, '5': 9, '10': 'tip'},
    {
      '1': 'health',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineMealHealth',
      '9': 0,
      '10': 'health',
      '17': true
    },
    {
      '1': 'macros',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineMacros',
      '10': 'macros'
    },
    {
      '1': 'calorie_confidence',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.meal.CalorieConfidence',
      '10': 'calorieConfidence'
    },
    {
      '1': 'calorie_band',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineCalorieBand',
      '10': 'calorieBand'
    },
    {
      '1': 'ingredients',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.calorify.PipelineResolvedIngredient',
      '10': 'ingredients'
    },
    {
      '1': 'confidence_reasons',
      '3': 12,
      '4': 3,
      '5': 9,
      '10': 'confidenceReasons'
    },
    {
      '1': 'receipt',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.calorify.MealAnalysisReceipt',
      '9': 1,
      '10': 'receipt',
      '17': true
    },
  ],
  '8': [
    {'1': '_health'},
    {'1': '_receipt'},
  ],
};

/// Descriptor for `PipelineResultData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineResultDataDescriptor = $convert.base64Decode(
    'ChJQaXBlbGluZVJlc3VsdERhdGESHwoLYW5hbHlzaXNfaWQYASABKAlSCmFuYWx5c2lzSWQSGw'
    'oJbWVhbF9uYW1lGAIgASgJUghtZWFsTmFtZRIaCghxdWFudGl0eRgDIAEoCVIIcXVhbnRpdHkS'
    'KwoJbWVhbF90eXBlGAQgASgOMg4ubWVhbC5NZWFsVHlwZVIIbWVhbFR5cGUSKAoQbWVhbF90eX'
    'BlX3NvdXJjZRgFIAEoCVIObWVhbFR5cGVTb3VyY2USEAoDdGlwGAYgASgJUgN0aXASOQoGaGVh'
    'bHRoGAcgASgLMhwuY2Fsb3JpZnkuUGlwZWxpbmVNZWFsSGVhbHRoSABSBmhlYWx0aIgBARIwCg'
    'ZtYWNyb3MYCCABKAsyGC5jYWxvcmlmeS5QaXBlbGluZU1hY3Jvc1IGbWFjcm9zEkYKEmNhbG9y'
    'aWVfY29uZmlkZW5jZRgJIAEoDjIXLm1lYWwuQ2Fsb3JpZUNvbmZpZGVuY2VSEWNhbG9yaWVDb2'
    '5maWRlbmNlEkAKDGNhbG9yaWVfYmFuZBgKIAEoCzIdLmNhbG9yaWZ5LlBpcGVsaW5lQ2Fsb3Jp'
    'ZUJhbmRSC2NhbG9yaWVCYW5kEkYKC2luZ3JlZGllbnRzGAsgAygLMiQuY2Fsb3JpZnkuUGlwZW'
    'xpbmVSZXNvbHZlZEluZ3JlZGllbnRSC2luZ3JlZGllbnRzEi0KEmNvbmZpZGVuY2VfcmVhc29u'
    'cxgMIAMoCVIRY29uZmlkZW5jZVJlYXNvbnMSPAoHcmVjZWlwdBgNIAEoCzIdLmNhbG9yaWZ5Lk'
    '1lYWxBbmFseXNpc1JlY2VpcHRIAVIHcmVjZWlwdIgBAUIJCgdfaGVhbHRoQgoKCF9yZWNlaXB0');

@$core.Deprecated('Use pipelineErrorDataDescriptor instead')
const PipelineErrorData$json = {
  '1': 'PipelineErrorData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'retryable', '3': 3, '4': 1, '5': 8, '10': 'retryable'},
  ],
};

/// Descriptor for `PipelineErrorData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineErrorDataDescriptor = $convert.base64Decode(
    'ChFQaXBlbGluZUVycm9yRGF0YRIfCgthbmFseXNpc19pZBgBIAEoCVIKYW5hbHlzaXNJZBIYCg'
    'dtZXNzYWdlGAIgASgJUgdtZXNzYWdlEhwKCXJldHJ5YWJsZRgDIAEoCFIJcmV0cnlhYmxl');

@$core.Deprecated('Use mealAnalysisPipelineSessionContextDescriptor instead')
const MealAnalysisPipelineSessionContext$json = {
  '1': 'MealAnalysisPipelineSessionContext',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineResultData',
      '10': 'result'
    },
    {
      '1': 'image_bytes',
      '3': 2,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'imageBytes',
      '17': true
    },
    {
      '1': 'image_url',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'imageUrl',
      '17': true
    },
    {
      '1': 'text_description',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'textDescription',
      '17': true
    },
    {'1': 'is_revised', '3': 5, '4': 1, '5': 8, '10': 'isRevised'},
  ],
  '8': [
    {'1': '_image_bytes'},
    {'1': '_image_url'},
    {'1': '_text_description'},
  ],
};

/// Descriptor for `MealAnalysisPipelineSessionContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisPipelineSessionContextDescriptor = $convert.base64Decode(
    'CiJNZWFsQW5hbHlzaXNQaXBlbGluZVNlc3Npb25Db250ZXh0EjQKBnJlc3VsdBgBIAEoCzIcLm'
    'NhbG9yaWZ5LlBpcGVsaW5lUmVzdWx0RGF0YVIGcmVzdWx0EiQKC2ltYWdlX2J5dGVzGAIgASgM'
    'SABSCmltYWdlQnl0ZXOIAQESIAoJaW1hZ2VfdXJsGAMgASgJSAFSCGltYWdlVXJsiAEBEi4KEH'
    'RleHRfZGVzY3JpcHRpb24YBCABKAlIAlIPdGV4dERlc2NyaXB0aW9uiAEBEh0KCmlzX3Jldmlz'
    'ZWQYBSABKAhSCWlzUmV2aXNlZEIOCgxfaW1hZ2VfYnl0ZXNCDAoKX2ltYWdlX3VybEITChFfdG'
    'V4dF9kZXNjcmlwdGlvbg==');
