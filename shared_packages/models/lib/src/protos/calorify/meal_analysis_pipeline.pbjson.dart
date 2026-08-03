// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_analysis_pipeline.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

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
  ],
  '8': [
    {'1': '_count'},
    {'1': '_per_unit_grams'},
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
    'cGVyX3VuaXRfZ3JhbXMYCiABKAFIAVIMcGVyVW5pdEdyYW1ziAEBQggKBl9jb3VudEIRCg9fcG'
    'VyX3VuaXRfZ3JhbXM=');

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
  ],
};

/// Descriptor for `PipelineDecompositionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineDecompositionDataDescriptor = $convert.base64Decode(
    'ChlQaXBlbGluZURlY29tcG9zaXRpb25EYXRhEh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbmFseX'
    'Npc0lkEhsKCW1lYWxfbmFtZRgCIAEoCVIIbWVhbE5hbWUSHgoKY29uZmlkZW5jZRgDIAEoAVIK'
    'Y29uZmlkZW5jZRJICgtpbmdyZWRpZW50cxgEIAMoCzImLmNhbG9yaWZ5LlBpcGVsaW5lRGVjb2'
    '1wb3NlZEluZ3JlZGllbnRSC2luZ3JlZGllbnRzEjwKEmluZmVycmVkX21lYWxfdHlwZRgFIAEo'
    'DjIOLm1lYWwuTWVhbFR5cGVSEGluZmVycmVkTWVhbFR5cGUSLgoTbWVhbF90eXBlX2NvbmZpZG'
    'VudBgGIAEoCFIRbWVhbFR5cGVDb25maWRlbnQ=');

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
  ],
  '8': [
    {'1': '_health'},
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
    'cxgMIAMoCVIRY29uZmlkZW5jZVJlYXNvbnNCCQoHX2hlYWx0aA==');

@$core.Deprecated('Use pipelineErrorDataDescriptor instead')
const PipelineErrorData$json = {
  '1': 'PipelineErrorData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PipelineErrorData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineErrorDataDescriptor = $convert.base64Decode(
    'ChFQaXBlbGluZUVycm9yRGF0YRIfCgthbmFseXNpc19pZBgBIAEoCVIKYW5hbHlzaXNJZBIYCg'
    'dtZXNzYWdlGAIgASgJUgdtZXNzYWdl');

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
