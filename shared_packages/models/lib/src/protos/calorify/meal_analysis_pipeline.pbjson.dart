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
    {'1': 'raw_name', '3': 1, '4': 1, '5': 9, '10': 'rawName'},
    {'1': 'canonical_hint', '3': 2, '4': 1, '5': 9, '10': 'canonicalHint'},
    {'1': 'grams_estimated', '3': 3, '4': 1, '5': 1, '10': 'gramsEstimated'},
    {'1': 'min_grams', '3': 4, '4': 1, '5': 1, '10': 'minGrams'},
    {'1': 'max_grams', '3': 5, '4': 1, '5': 1, '10': 'maxGrams'},
    {'1': 'notes', '3': 6, '4': 1, '5': 9, '10': 'notes'},
  ],
};

/// Descriptor for `PipelineDecomposedIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineDecomposedIngredientDescriptor = $convert.base64Decode(
    'ChxQaXBlbGluZURlY29tcG9zZWRJbmdyZWRpZW50EhkKCHJhd19uYW1lGAEgASgJUgdyYXdOYW'
    '1lEiUKDmNhbm9uaWNhbF9oaW50GAIgASgJUg1jYW5vbmljYWxIaW50EicKD2dyYW1zX2VzdGlt'
    'YXRlZBgDIAEoAVIOZ3JhbXNFc3RpbWF0ZWQSGwoJbWluX2dyYW1zGAQgASgBUghtaW5HcmFtcx'
    'IbCgltYXhfZ3JhbXMYBSABKAFSCG1heEdyYW1zEhQKBW5vdGVzGAYgASgJUgVub3Rlcw==');

@$core.Deprecated('Use pipelineResolvedIngredientDescriptor instead')
const PipelineResolvedIngredient$json = {
  '1': 'PipelineResolvedIngredient',
  '2': [
    {'1': 'raw_name', '3': 1, '4': 1, '5': 9, '10': 'rawName'},
    {'1': 'canonical_name', '3': 2, '4': 1, '5': 9, '10': 'canonicalName'},
    {'1': 'match_type', '3': 3, '4': 1, '5': 9, '10': 'matchType'},
    {'1': 'grams', '3': 4, '4': 1, '5': 1, '10': 'grams'},
    {
      '1': 'macros',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineMacros',
      '10': 'macros'
    },
    {'1': 'source', '3': 6, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `PipelineResolvedIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineResolvedIngredientDescriptor = $convert.base64Decode(
    'ChpQaXBlbGluZVJlc29sdmVkSW5ncmVkaWVudBIZCghyYXdfbmFtZRgBIAEoCVIHcmF3TmFtZR'
    'IlCg5jYW5vbmljYWxfbmFtZRgCIAEoCVINY2Fub25pY2FsTmFtZRIdCgptYXRjaF90eXBlGAMg'
    'ASgJUgltYXRjaFR5cGUSFAoFZ3JhbXMYBCABKAFSBWdyYW1zEjAKBm1hY3JvcxgFIAEoCzIYLm'
    'NhbG9yaWZ5LlBpcGVsaW5lTWFjcm9zUgZtYWNyb3MSFgoGc291cmNlGAYgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use pipelineClarificationOptionDescriptor instead')
const PipelineClarificationOption$json = {
  '1': 'PipelineClarificationOption',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'grams', '3': 2, '4': 1, '5': 1, '10': 'grams'},
    {'1': 'calorie_delta', '3': 3, '4': 1, '5': 5, '10': 'calorieDelta'},
  ],
};

/// Descriptor for `PipelineClarificationOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineClarificationOptionDescriptor =
    $convert.base64Decode(
        'ChtQaXBlbGluZUNsYXJpZmljYXRpb25PcHRpb24SFAoFbGFiZWwYASABKAlSBWxhYmVsEhQKBW'
        'dyYW1zGAIgASgBUgVncmFtcxIjCg1jYWxvcmllX2RlbHRhGAMgASgFUgxjYWxvcmllRGVsdGE=');

@$core.Deprecated('Use pipelineClarificationDescriptor instead')
const PipelineClarification$json = {
  '1': 'PipelineClarification',
  '2': [
    {'1': 'ingredient_name', '3': 1, '4': 1, '5': 9, '10': 'ingredientName'},
    {'1': 'question', '3': 2, '4': 1, '5': 9, '10': 'question'},
    {
      '1': 'options',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.calorify.PipelineClarificationOption',
      '10': 'options'
    },
    {
      '1': 'default_option_index',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'defaultOptionIndex'
    },
  ],
};

/// Descriptor for `PipelineClarification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipelineClarificationDescriptor = $convert.base64Decode(
    'ChVQaXBlbGluZUNsYXJpZmljYXRpb24SJwoPaW5ncmVkaWVudF9uYW1lGAEgASgJUg5pbmdyZW'
    'RpZW50TmFtZRIaCghxdWVzdGlvbhgCIAEoCVIIcXVlc3Rpb24SPwoHb3B0aW9ucxgDIAMoCzIl'
    'LmNhbG9yaWZ5LlBpcGVsaW5lQ2xhcmlmaWNhdGlvbk9wdGlvblIHb3B0aW9ucxIwChRkZWZhdW'
    'x0X29wdGlvbl9pbmRleBgEIAEoBVISZGVmYXVsdE9wdGlvbkluZGV4');

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
    {
      '1': 'ingredients',
      '3': 2,
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
    'NJZBJGCgtpbmdyZWRpZW50cxgCIAMoCzIkLmNhbG9yaWZ5LlBpcGVsaW5lUmVzb2x2ZWRJbmdy'
    'ZWRpZW50UgtpbmdyZWRpZW50cw==');

@$core.Deprecated('Use pipelineUncertaintyDataDescriptor instead')
const PipelineUncertaintyData$json = {
  '1': 'PipelineUncertaintyData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'variance_percent', '3': 2, '4': 1, '5': 1, '10': 'variancePercent'},
    {
      '1': 'needs_clarification',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'needsClarification'
    },
    {
      '1': 'calorie_band',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineCalorieBand',
      '10': 'calorieBand'
    },
    {
      '1': 'clarifications',
      '3': 5,
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
    'NJZBIpChB2YXJpYW5jZV9wZXJjZW50GAIgASgBUg92YXJpYW5jZVBlcmNlbnQSLwoTbmVlZHNf'
    'Y2xhcmlmaWNhdGlvbhgDIAEoCFISbmVlZHNDbGFyaWZpY2F0aW9uEkAKDGNhbG9yaWVfYmFuZB'
    'gEIAEoCzIdLmNhbG9yaWZ5LlBpcGVsaW5lQ2Fsb3JpZUJhbmRSC2NhbG9yaWVCYW5kEkcKDmNs'
    'YXJpZmljYXRpb25zGAUgAygLMh8uY2Fsb3JpZnkuUGlwZWxpbmVDbGFyaWZpY2F0aW9uUg5jbG'
    'FyaWZpY2F0aW9ucw==');

@$core.Deprecated('Use pipelineMealTypeQuestionDataDescriptor instead')
const PipelineMealTypeQuestionData$json = {
  '1': 'PipelineMealTypeQuestionData',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'question', '3': 2, '4': 1, '5': 9, '10': 'question'},
    {
      '1': 'options',
      '3': 3,
      '4': 3,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'options'
    },
    {
      '1': 'inferred_meal_type',
      '3': 4,
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
    'FseXNpc0lkEhoKCHF1ZXN0aW9uGAIgASgJUghxdWVzdGlvbhIoCgdvcHRpb25zGAMgAygOMg4u'
    'bWVhbC5NZWFsVHlwZVIHb3B0aW9ucxI8ChJpbmZlcnJlZF9tZWFsX3R5cGUYBCABKA4yDi5tZW'
    'FsLk1lYWxUeXBlUhBpbmZlcnJlZE1lYWxUeXBl');

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
    'xpbmVSZXNvbHZlZEluZ3JlZGllbnRSC2luZ3JlZGllbnRzQgkKB19oZWFsdGg=');

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
