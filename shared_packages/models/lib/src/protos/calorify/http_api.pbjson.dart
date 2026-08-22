// This is a generated file - do not edit.
//
// Generated from protos/calorify/http_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mealAnalysisFeedbackSignalDescriptor instead')
const MealAnalysisFeedbackSignal$json = {
  '1': 'MealAnalysisFeedbackSignal',
  '2': [
    {'1': 'SIGNAL_UNSPECIFIED', '2': 0},
    {'1': 'UP', '2': 1},
    {'1': 'DOWN', '2': 2},
  ],
};

/// Descriptor for `MealAnalysisFeedbackSignal`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mealAnalysisFeedbackSignalDescriptor =
    $convert.base64Decode(
        'ChpNZWFsQW5hbHlzaXNGZWVkYmFja1NpZ25hbBIWChJTSUdOQUxfVU5TUEVDSUZJRUQQABIGCg'
        'JVUBABEggKBERPV04QAg==');

@$core.Deprecated('Use mealReanalyzeFeedbackIssueDescriptor instead')
const MealReanalyzeFeedbackIssue$json = {
  '1': 'MealReanalyzeFeedbackIssue',
  '2': [
    {'1': 'ISSUE_UNSPECIFIED', '2': 0},
    {'1': 'FOOD_IDENTIFICATION', '2': 1},
    {'1': 'PORTION_SIZE', '2': 2},
    {'1': 'CALORIE_DISTRIBUTION', '2': 3},
    {'1': 'MACROS_WRONG', '2': 4},
    {'1': 'MISSING_ITEMS', '2': 5},
    {'1': 'EXTRA_ITEMS', '2': 6},
    {'1': 'OTHER', '2': 7},
  ],
};

/// Descriptor for `MealReanalyzeFeedbackIssue`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mealReanalyzeFeedbackIssueDescriptor = $convert.base64Decode(
    'ChpNZWFsUmVhbmFseXplRmVlZGJhY2tJc3N1ZRIVChFJU1NVRV9VTlNQRUNJRklFRBAAEhcKE0'
    'ZPT0RfSURFTlRJRklDQVRJT04QARIQCgxQT1JUSU9OX1NJWkUQAhIYChRDQUxPUklFX0RJU1RS'
    'SUJVVElPThADEhAKDE1BQ1JPU19XUk9ORxAEEhEKDU1JU1NJTkdfSVRFTVMQBRIPCgtFWFRSQV'
    '9JVEVNUxAGEgkKBU9USEVSEAc=');

@$core.Deprecated('Use apiResultDescriptor instead')
const ApiResult$json = {
  '1': 'ApiResult',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ApiResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiResultDescriptor = $convert.base64Decode(
    'CglBcGlSZXN1bHQSDgoCb2sYASABKAhSAm9rEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use aiMealSummaryResponseDescriptor instead')
const AiMealSummaryResponse$json = {
  '1': 'AiMealSummaryResponse',
  '2': [
    {
      '1': 'summary',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'summary',
      '17': true
    },
    {
      '1': 'generated_at',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'generatedAt',
      '17': true
    },
    {'1': 'meal_count', '3': 3, '4': 1, '5': 5, '10': 'mealCount'},
    {'1': 'top_foods', '3': 4, '4': 3, '5': 9, '10': 'topFoods'},
    {
      '1': 'macro_balance_score',
      '3': 5,
      '4': 1,
      '5': 5,
      '10': 'macroBalanceScore'
    },
    {
      '1': 'trend',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.calorify.ai_meal_summary.AiMealSummaryTrend',
      '10': 'trend'
    },
  ],
  '8': [
    {'1': '_summary'},
    {'1': '_generated_at'},
  ],
};

/// Descriptor for `AiMealSummaryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiMealSummaryResponseDescriptor = $convert.base64Decode(
    'ChVBaU1lYWxTdW1tYXJ5UmVzcG9uc2USHQoHc3VtbWFyeRgBIAEoCUgAUgdzdW1tYXJ5iAEBEi'
    'YKDGdlbmVyYXRlZF9hdBgCIAEoCUgBUgtnZW5lcmF0ZWRBdIgBARIdCgptZWFsX2NvdW50GAMg'
    'ASgFUgltZWFsQ291bnQSGwoJdG9wX2Zvb2RzGAQgAygJUgh0b3BGb29kcxIuChNtYWNyb19iYW'
    'xhbmNlX3Njb3JlGAUgASgFUhFtYWNyb0JhbGFuY2VTY29yZRJCCgV0cmVuZBgGIAEoDjIsLmNh'
    'bG9yaWZ5LmFpX21lYWxfc3VtbWFyeS5BaU1lYWxTdW1tYXJ5VHJlbmRSBXRyZW5kQgoKCF9zdW'
    '1tYXJ5Qg8KDV9nZW5lcmF0ZWRfYXQ=');

@$core.Deprecated('Use mealAnalysisTipsResponseDescriptor instead')
const MealAnalysisTipsResponse$json = {
  '1': 'MealAnalysisTipsResponse',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    {'1': 'tips', '3': 2, '4': 3, '5': 9, '10': 'tips'},
  ],
};

/// Descriptor for `MealAnalysisTipsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisTipsResponseDescriptor =
    $convert.base64Decode(
        'ChhNZWFsQW5hbHlzaXNUaXBzUmVzcG9uc2USGAoHdmVyc2lvbhgBIAEoBVIHdmVyc2lvbhISCg'
        'R0aXBzGAIgAygJUgR0aXBz');

@$core.Deprecated('Use mealAnalysisTextRequestDescriptor instead')
const MealAnalysisTextRequest$json = {
  '1': 'MealAnalysisTextRequest',
  '2': [
    {
      '1': 'analysis_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'analysisId',
      '17': true
    },
    {'1': 'text_description', '3': 2, '4': 1, '5': 9, '10': 'textDescription'},
    {'1': 'local_attempted', '3': 3, '4': 1, '5': 8, '10': 'localAttempted'},
    {
      '1': 'fallback_reason',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.calorify.MealAnalysisFallbackReason',
      '10': 'fallbackReason'
    },
    {
      '1': 'local_attempt_id',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'localAttemptId',
      '17': true
    },
    {
      '1': 'local_attempt_started_at_epoch_ms',
      '3': 6,
      '4': 1,
      '5': 3,
      '9': 2,
      '10': 'localAttemptStartedAtEpochMs',
      '17': true
    },
    {
      '1': 'local_attempt_completed_at_epoch_ms',
      '3': 7,
      '4': 1,
      '5': 3,
      '9': 3,
      '10': 'localAttemptCompletedAtEpochMs',
      '17': true
    },
  ],
  '8': [
    {'1': '_analysis_id'},
    {'1': '_local_attempt_id'},
    {'1': '_local_attempt_started_at_epoch_ms'},
    {'1': '_local_attempt_completed_at_epoch_ms'},
  ],
};

/// Descriptor for `MealAnalysisTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisTextRequestDescriptor = $convert.base64Decode(
    'ChdNZWFsQW5hbHlzaXNUZXh0UmVxdWVzdBIkCgthbmFseXNpc19pZBgBIAEoCUgAUgphbmFseX'
    'Npc0lkiAEBEikKEHRleHRfZGVzY3JpcHRpb24YAiABKAlSD3RleHREZXNjcmlwdGlvbhInCg9s'
    'b2NhbF9hdHRlbXB0ZWQYAyABKAhSDmxvY2FsQXR0ZW1wdGVkEk0KD2ZhbGxiYWNrX3JlYXNvbh'
    'gEIAEoDjIkLmNhbG9yaWZ5Lk1lYWxBbmFseXNpc0ZhbGxiYWNrUmVhc29uUg5mYWxsYmFja1Jl'
    'YXNvbhItChBsb2NhbF9hdHRlbXB0X2lkGAUgASgJSAFSDmxvY2FsQXR0ZW1wdElkiAEBEkwKIW'
    'xvY2FsX2F0dGVtcHRfc3RhcnRlZF9hdF9lcG9jaF9tcxgGIAEoA0gCUhxsb2NhbEF0dGVtcHRT'
    'dGFydGVkQXRFcG9jaE1ziAEBElAKI2xvY2FsX2F0dGVtcHRfY29tcGxldGVkX2F0X2Vwb2NoX2'
    '1zGAcgASgDSANSHmxvY2FsQXR0ZW1wdENvbXBsZXRlZEF0RXBvY2hNc4gBAUIOCgxfYW5hbHlz'
    'aXNfaWRCEwoRX2xvY2FsX2F0dGVtcHRfaWRCJAoiX2xvY2FsX2F0dGVtcHRfc3RhcnRlZF9hdF'
    '9lcG9jaF9tc0ImCiRfbG9jYWxfYXR0ZW1wdF9jb21wbGV0ZWRfYXRfZXBvY2hfbXM=');

@$core.Deprecated('Use mealAnalysisImageRequestDescriptor instead')
const MealAnalysisImageRequest$json = {
  '1': 'MealAnalysisImageRequest',
  '2': [
    {
      '1': 'analysis_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'analysisId',
      '17': true
    },
    {'1': 'image_url', '3': 2, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
  '8': [
    {'1': '_analysis_id'},
  ],
};

/// Descriptor for `MealAnalysisImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisImageRequestDescriptor = $convert.base64Decode(
    'ChhNZWFsQW5hbHlzaXNJbWFnZVJlcXVlc3QSJAoLYW5hbHlzaXNfaWQYASABKAlIAFIKYW5hbH'
    'lzaXNJZIgBARIbCglpbWFnZV91cmwYAiABKAlSCGltYWdlVXJsQg4KDF9hbmFseXNpc19pZA==');

@$core.Deprecated('Use mealAnalysisProposalRequestDescriptor instead')
const MealAnalysisProposalRequest$json = {
  '1': 'MealAnalysisProposalRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'proposal',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.calorify.IngredientProposalV1',
      '10': 'proposal'
    },
    {'1': 'local_attempt_id', '3': 3, '4': 1, '5': 9, '10': 'localAttemptId'},
    {
      '1': 'local_attempt_started_at_epoch_ms',
      '3': 4,
      '4': 1,
      '5': 3,
      '10': 'localAttemptStartedAtEpochMs'
    },
    {
      '1': 'local_attempt_completed_at_epoch_ms',
      '3': 5,
      '4': 1,
      '5': 3,
      '10': 'localAttemptCompletedAtEpochMs'
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
};

/// Descriptor for `MealAnalysisProposalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisProposalRequestDescriptor = $convert.base64Decode(
    'ChtNZWFsQW5hbHlzaXNQcm9wb3NhbFJlcXVlc3QSHwoLYW5hbHlzaXNfaWQYASABKAlSCmFuYW'
    'x5c2lzSWQSOgoIcHJvcG9zYWwYAiABKAsyHi5jYWxvcmlmeS5JbmdyZWRpZW50UHJvcG9zYWxW'
    'MVIIcHJvcG9zYWwSKAoQbG9jYWxfYXR0ZW1wdF9pZBgDIAEoCVIObG9jYWxBdHRlbXB0SWQSRw'
    'ohbG9jYWxfYXR0ZW1wdF9zdGFydGVkX2F0X2Vwb2NoX21zGAQgASgDUhxsb2NhbEF0dGVtcHRT'
    'dGFydGVkQXRFcG9jaE1zEksKI2xvY2FsX2F0dGVtcHRfY29tcGxldGVkX2F0X2Vwb2NoX21zGA'
    'UgASgDUh5sb2NhbEF0dGVtcHRDb21wbGV0ZWRBdEVwb2NoTXMSTQoPZmFsbGJhY2tfcmVhc29u'
    'GAYgASgOMiQuY2Fsb3JpZnkuTWVhbEFuYWx5c2lzRmFsbGJhY2tSZWFzb25SDmZhbGxiYWNrUm'
    'Vhc29u');

@$core.Deprecated('Use localInferenceCapabilityPolicyDescriptor instead')
const LocalInferenceCapabilityPolicy$json = {
  '1': 'LocalInferenceCapabilityPolicy',
  '2': [
    {'1': 'policy_version', '3': 1, '4': 1, '5': 9, '10': 'policyVersion'},
    {'1': 'text_enabled', '3': 2, '4': 1, '5': 8, '10': 'textEnabled'},
    {'1': 'image_enabled', '3': 3, '4': 1, '5': 8, '10': 'imageEnabled'},
    {
      '1': 'local_nutrition_enabled',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'localNutritionEnabled'
    },
    {
      '1': 'private_modes_enabled',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'privateModesEnabled'
    },
    {'1': 'max_age_seconds', '3': 6, '4': 1, '5': 5, '10': 'maxAgeSeconds'},
    {
      '1': 'local_nutrition_manifest_url',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'localNutritionManifestUrl',
      '17': true
    },
  ],
  '8': [
    {'1': '_local_nutrition_manifest_url'},
  ],
};

/// Descriptor for `LocalInferenceCapabilityPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localInferenceCapabilityPolicyDescriptor = $convert.base64Decode(
    'Ch5Mb2NhbEluZmVyZW5jZUNhcGFiaWxpdHlQb2xpY3kSJQoOcG9saWN5X3ZlcnNpb24YASABKA'
    'lSDXBvbGljeVZlcnNpb24SIQoMdGV4dF9lbmFibGVkGAIgASgIUgt0ZXh0RW5hYmxlZBIjCg1p'
    'bWFnZV9lbmFibGVkGAMgASgIUgxpbWFnZUVuYWJsZWQSNgoXbG9jYWxfbnV0cml0aW9uX2VuYW'
    'JsZWQYBCABKAhSFWxvY2FsTnV0cml0aW9uRW5hYmxlZBIyChVwcml2YXRlX21vZGVzX2VuYWJs'
    'ZWQYBSABKAhSE3ByaXZhdGVNb2Rlc0VuYWJsZWQSJgoPbWF4X2FnZV9zZWNvbmRzGAYgASgFUg'
    '1tYXhBZ2VTZWNvbmRzEkQKHGxvY2FsX251dHJpdGlvbl9tYW5pZmVzdF91cmwYByABKAlIAFIZ'
    'bG9jYWxOdXRyaXRpb25NYW5pZmVzdFVybIgBAUIfCh1fbG9jYWxfbnV0cml0aW9uX21hbmlmZX'
    'N0X3VybA==');

@$core.Deprecated('Use localNutritionPackManifestDescriptor instead')
const LocalNutritionPackManifest$json = {
  '1': 'LocalNutritionPackManifest',
  '2': [
    {'1': 'schema_version', '3': 1, '4': 1, '5': 13, '10': 'schemaVersion'},
    {'1': 'pack_version', '3': 2, '4': 1, '5': 9, '10': 'packVersion'},
    {'1': 'dataset_version', '3': 3, '4': 1, '5': 9, '10': 'datasetVersion'},
    {'1': 'object_name', '3': 4, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'size_bytes', '3': 5, '4': 1, '5': 3, '10': 'sizeBytes'},
    {'1': 'signature', '3': 7, '4': 1, '5': 9, '10': 'signature'},
    {'1': 'signing_key_id', '3': 8, '4': 1, '5': 9, '10': 'signingKeyId'},
    {
      '1': 'created_at_epoch_ms',
      '3': 9,
      '4': 1,
      '5': 3,
      '10': 'createdAtEpochMs'
    },
    {'1': 'record_count', '3': 10, '4': 1, '5': 13, '10': 'recordCount'},
    {
      '1': 'calculation_version',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'calculationVersion'
    },
  ],
  '9': [
    {'1': 6, '2': 7},
  ],
};

/// Descriptor for `LocalNutritionPackManifest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localNutritionPackManifestDescriptor = $convert.base64Decode(
    'ChpMb2NhbE51dHJpdGlvblBhY2tNYW5pZmVzdBIlCg5zY2hlbWFfdmVyc2lvbhgBIAEoDVINc2'
    'NoZW1hVmVyc2lvbhIhCgxwYWNrX3ZlcnNpb24YAiABKAlSC3BhY2tWZXJzaW9uEicKD2RhdGFz'
    'ZXRfdmVyc2lvbhgDIAEoCVIOZGF0YXNldFZlcnNpb24SHwoLb2JqZWN0X25hbWUYBCABKAlSCm'
    '9iamVjdE5hbWUSHQoKc2l6ZV9ieXRlcxgFIAEoA1IJc2l6ZUJ5dGVzEhwKCXNpZ25hdHVyZRgH'
    'IAEoCVIJc2lnbmF0dXJlEiQKDnNpZ25pbmdfa2V5X2lkGAggASgJUgxzaWduaW5nS2V5SWQSLQ'
    'oTY3JlYXRlZF9hdF9lcG9jaF9tcxgJIAEoA1IQY3JlYXRlZEF0RXBvY2hNcxIhCgxyZWNvcmRf'
    'Y291bnQYCiABKA1SC3JlY29yZENvdW50Ei8KE2NhbGN1bGF0aW9uX3ZlcnNpb24YCyABKAlSEm'
    'NhbGN1bGF0aW9uVmVyc2lvbkoECAYQBw==');

@$core.Deprecated('Use localNutritionLookupDescriptor instead')
const LocalNutritionLookup$json = {
  '1': 'LocalNutritionLookup',
  '2': [
    {'1': 'row_id', '3': 1, '4': 1, '5': 9, '10': 'rowId'},
    {'1': 'canonical_hint', '3': 2, '4': 1, '5': 9, '10': 'canonicalHint'},
    {'1': 'preparation', '3': 3, '4': 1, '5': 9, '10': 'preparation'},
  ],
};

/// Descriptor for `LocalNutritionLookup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localNutritionLookupDescriptor = $convert.base64Decode(
    'ChRMb2NhbE51dHJpdGlvbkxvb2t1cBIVCgZyb3dfaWQYASABKAlSBXJvd0lkEiUKDmNhbm9uaW'
    'NhbF9oaW50GAIgASgJUg1jYW5vbmljYWxIaW50EiAKC3ByZXBhcmF0aW9uGAMgASgJUgtwcmVw'
    'YXJhdGlvbg==');

@$core.Deprecated('Use cacheableNutritionRecordDescriptor instead')
const CacheableNutritionRecord$json = {
  '1': 'CacheableNutritionRecord',
  '2': [
    {'1': 'row_id', '3': 1, '4': 1, '5': 9, '10': 'rowId'},
    {'1': 'fdc_id', '3': 2, '4': 1, '5': 9, '10': 'fdcId'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'normalized_name', '3': 4, '4': 1, '5': 9, '10': 'normalizedName'},
    {'1': 'data_type', '3': 5, '4': 1, '5': 9, '10': 'dataType'},
    {
      '1': 'nutrients_per_100g',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.calorify.PipelineMacros',
      '10': 'nutrientsPer100g'
    },
    {'1': 'dataset_version', '3': 7, '4': 1, '5': 9, '10': 'datasetVersion'},
    {
      '1': 'retrieved_at_epoch_ms',
      '3': 8,
      '4': 1,
      '5': 3,
      '10': 'retrievedAtEpochMs'
    },
    {'1': 'lookup_keys', '3': 10, '4': 3, '5': 9, '10': 'lookupKeys'},
    {'1': 'match_type', '3': 11, '4': 1, '5': 9, '10': 'matchType'},
    {'1': 'match_confidence', '3': 12, '4': 1, '5': 1, '10': 'matchConfidence'},
  ],
  '9': [
    {'1': 9, '2': 10},
  ],
};

/// Descriptor for `CacheableNutritionRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cacheableNutritionRecordDescriptor = $convert.base64Decode(
    'ChhDYWNoZWFibGVOdXRyaXRpb25SZWNvcmQSFQoGcm93X2lkGAEgASgJUgVyb3dJZBIVCgZmZG'
    'NfaWQYAiABKAlSBWZkY0lkEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhInCg9u'
    'b3JtYWxpemVkX25hbWUYBCABKAlSDm5vcm1hbGl6ZWROYW1lEhsKCWRhdGFfdHlwZRgFIAEoCV'
    'IIZGF0YVR5cGUSRgoSbnV0cmllbnRzX3Blcl8xMDBnGAYgASgLMhguY2Fsb3JpZnkuUGlwZWxp'
    'bmVNYWNyb3NSEG51dHJpZW50c1BlcjEwMGcSJwoPZGF0YXNldF92ZXJzaW9uGAcgASgJUg5kYX'
    'Rhc2V0VmVyc2lvbhIxChVyZXRyaWV2ZWRfYXRfZXBvY2hfbXMYCCABKANSEnJldHJpZXZlZEF0'
    'RXBvY2hNcxIfCgtsb29rdXBfa2V5cxgKIAMoCVIKbG9va3VwS2V5cxIdCgptYXRjaF90eXBlGA'
    'sgASgJUgltYXRjaFR5cGUSKQoQbWF0Y2hfY29uZmlkZW5jZRgMIAEoAVIPbWF0Y2hDb25maWRl'
    'bmNlSgQICRAK');

@$core.Deprecated('Use localNutritionResolveRequestDescriptor instead')
const LocalNutritionResolveRequest$json = {
  '1': 'LocalNutritionResolveRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'lookups',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.calorify.LocalNutritionLookup',
      '10': 'lookups'
    },
  ],
};

/// Descriptor for `LocalNutritionResolveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localNutritionResolveRequestDescriptor =
    $convert.base64Decode(
        'ChxMb2NhbE51dHJpdGlvblJlc29sdmVSZXF1ZXN0Eh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbm'
        'FseXNpc0lkEjgKB2xvb2t1cHMYAiADKAsyHi5jYWxvcmlmeS5Mb2NhbE51dHJpdGlvbkxvb2t1'
        'cFIHbG9va3Vwcw==');

@$core.Deprecated('Use localNutritionResolveResponseDescriptor instead')
const LocalNutritionResolveResponse$json = {
  '1': 'LocalNutritionResolveResponse',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'records',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.calorify.CacheableNutritionRecord',
      '10': 'records'
    },
    {
      '1': 'unresolved_row_ids',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'unresolvedRowIds'
    },
  ],
};

/// Descriptor for `LocalNutritionResolveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localNutritionResolveResponseDescriptor = $convert.base64Decode(
    'Ch1Mb2NhbE51dHJpdGlvblJlc29sdmVSZXNwb25zZRIfCgthbmFseXNpc19pZBgBIAEoCVIKYW'
    '5hbHlzaXNJZBI8CgdyZWNvcmRzGAIgAygLMiIuY2Fsb3JpZnkuQ2FjaGVhYmxlTnV0cml0aW9u'
    'UmVjb3JkUgdyZWNvcmRzEiwKEnVucmVzb2x2ZWRfcm93X2lkcxgDIAMoCVIQdW5yZXNvbHZlZF'
    'Jvd0lkcw==');

@$core.Deprecated('Use mealAnalysisFeedbackRequestDescriptor instead')
const MealAnalysisFeedbackRequest$json = {
  '1': 'MealAnalysisFeedbackRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'signal',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.calorify.MealAnalysisFeedbackSignal',
      '10': 'signal'
    },
  ],
};

/// Descriptor for `MealAnalysisFeedbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisFeedbackRequestDescriptor =
    $convert.base64Decode(
        'ChtNZWFsQW5hbHlzaXNGZWVkYmFja1JlcXVlc3QSHwoLYW5hbHlzaXNfaWQYASABKAlSCmFuYW'
        'x5c2lzSWQSPAoGc2lnbmFsGAIgASgOMiQuY2Fsb3JpZnkuTWVhbEFuYWx5c2lzRmVlZGJhY2tT'
        'aWduYWxSBnNpZ25hbA==');

@$core.Deprecated('Use mealAnalysisConfirmLogRequestDescriptor instead')
const MealAnalysisConfirmLogRequest$json = {
  '1': 'MealAnalysisConfirmLogRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {'1': 'logged_at', '3': 2, '4': 1, '5': 9, '10': 'loggedAt'},
    {'1': 'meal', '3': 3, '4': 1, '5': 11, '6': '.meal.Meal', '10': 'meal'},
  ],
};

/// Descriptor for `MealAnalysisConfirmLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisConfirmLogRequestDescriptor =
    $convert.base64Decode(
        'Ch1NZWFsQW5hbHlzaXNDb25maXJtTG9nUmVxdWVzdBIfCgthbmFseXNpc19pZBgBIAEoCVIKYW'
        '5hbHlzaXNJZBIbCglsb2dnZWRfYXQYAiABKAlSCGxvZ2dlZEF0Eh4KBG1lYWwYAyABKAsyCi5t'
        'ZWFsLk1lYWxSBG1lYWw=');

@$core.Deprecated('Use mealClarificationAnswerDescriptor instead')
const MealClarificationAnswer$json = {
  '1': 'MealClarificationAnswer',
  '2': [
    {'1': 'clarification_id', '3': 1, '4': 1, '5': 9, '10': 'clarificationId'},
    {
      '1': 'selected_option_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'selectedOptionId'
    },
  ],
};

/// Descriptor for `MealClarificationAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealClarificationAnswerDescriptor = $convert.base64Decode(
    'ChdNZWFsQ2xhcmlmaWNhdGlvbkFuc3dlchIpChBjbGFyaWZpY2F0aW9uX2lkGAEgASgJUg9jbG'
    'FyaWZpY2F0aW9uSWQSLAoSc2VsZWN0ZWRfb3B0aW9uX2lkGAIgASgJUhBzZWxlY3RlZE9wdGlv'
    'bklk');

@$core.Deprecated('Use mealAnalysisClarifyRequestDescriptor instead')
const MealAnalysisClarifyRequest$json = {
  '1': 'MealAnalysisClarifyRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'answers',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.calorify.MealClarificationAnswer',
      '10': 'answers'
    },
  ],
};

/// Descriptor for `MealAnalysisClarifyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisClarifyRequestDescriptor =
    $convert.base64Decode(
        'ChpNZWFsQW5hbHlzaXNDbGFyaWZ5UmVxdWVzdBIfCgthbmFseXNpc19pZBgBIAEoCVIKYW5hbH'
        'lzaXNJZBI7CgdhbnN3ZXJzGAIgAygLMiEuY2Fsb3JpZnkuTWVhbENsYXJpZmljYXRpb25BbnN3'
        'ZXJSB2Fuc3dlcnM=');

@$core.Deprecated('Use mealAnalysisResumeRequestDescriptor instead')
const MealAnalysisResumeRequest$json = {
  '1': 'MealAnalysisResumeRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
  ],
};

/// Descriptor for `MealAnalysisResumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisResumeRequestDescriptor =
    $convert.base64Decode(
        'ChlNZWFsQW5hbHlzaXNSZXN1bWVSZXF1ZXN0Eh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbmFseX'
        'Npc0lk');

@$core.Deprecated('Use mealAnalysisMealTypeRequestDescriptor instead')
const MealAnalysisMealTypeRequest$json = {
  '1': 'MealAnalysisMealTypeRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'meal_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.meal.MealType',
      '10': 'mealType'
    },
  ],
};

/// Descriptor for `MealAnalysisMealTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisMealTypeRequestDescriptor =
    $convert.base64Decode(
        'ChtNZWFsQW5hbHlzaXNNZWFsVHlwZVJlcXVlc3QSHwoLYW5hbHlzaXNfaWQYASABKAlSCmFuYW'
        'x5c2lzSWQSKwoJbWVhbF90eXBlGAIgASgOMg4ubWVhbC5NZWFsVHlwZVIIbWVhbFR5cGU=');

@$core.Deprecated('Use mealAnalysisReanalyzeRequestDescriptor instead')
const MealAnalysisReanalyzeRequest$json = {
  '1': 'MealAnalysisReanalyzeRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
    {
      '1': 'issues',
      '3': 2,
      '4': 3,
      '5': 14,
      '6': '.calorify.MealReanalyzeFeedbackIssue',
      '10': 'issues'
    },
    {
      '1': 'other_text',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'otherText',
      '17': true
    },
    {
      '1': 'new_analysis_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'newAnalysisId',
      '17': true
    },
  ],
  '8': [
    {'1': '_other_text'},
    {'1': '_new_analysis_id'},
  ],
};

/// Descriptor for `MealAnalysisReanalyzeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisReanalyzeRequestDescriptor = $convert.base64Decode(
    'ChxNZWFsQW5hbHlzaXNSZWFuYWx5emVSZXF1ZXN0Eh8KC2FuYWx5c2lzX2lkGAEgASgJUgphbm'
    'FseXNpc0lkEjwKBmlzc3VlcxgCIAMoDjIkLmNhbG9yaWZ5Lk1lYWxSZWFuYWx5emVGZWVkYmFj'
    'a0lzc3VlUgZpc3N1ZXMSIgoKb3RoZXJfdGV4dBgDIAEoCUgAUglvdGhlclRleHSIAQESKwoPbm'
    'V3X2FuYWx5c2lzX2lkGAQgASgJSAFSDW5ld0FuYWx5c2lzSWSIAQFCDQoLX290aGVyX3RleHRC'
    'EgoQX25ld19hbmFseXNpc19pZA==');
