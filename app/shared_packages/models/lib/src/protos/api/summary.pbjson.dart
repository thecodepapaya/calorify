// This is a generated file - do not edit.
//
// Generated from protos/api/summary.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aiMealSummaryTrendDescriptor instead')
const AiMealSummaryTrend$json = {
  '1': 'AiMealSummaryTrend',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'UP', '2': 1},
    {'1': 'DOWN', '2': 2},
    {'1': 'STEADY', '2': 3},
  ],
};

/// Descriptor for `AiMealSummaryTrend`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiMealSummaryTrendDescriptor = $convert.base64Decode(
    'ChJBaU1lYWxTdW1tYXJ5VHJlbmQSDwoLVU5TUEVDSUZJRUQQABIGCgJVUBABEggKBERPV04QAh'
    'IKCgZTVEVBRFkQAw==');

@$core.Deprecated('Use aiMealSummaryResponseDescriptor instead')
const AiMealSummaryResponse$json = {
  '1': 'AiMealSummaryResponse',
  '2': [
    {'1': 'summary', '3': 1, '4': 1, '5': 9, '10': 'summary'},
    {'1': 'generated_at', '3': 2, '4': 1, '5': 9, '10': 'generatedAt'},
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
      '6': '.calorify.AiMealSummaryTrend',
      '10': 'trend'
    },
  ],
};

/// Descriptor for `AiMealSummaryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiMealSummaryResponseDescriptor = $convert.base64Decode(
    'ChVBaU1lYWxTdW1tYXJ5UmVzcG9uc2USGAoHc3VtbWFyeRgBIAEoCVIHc3VtbWFyeRIhCgxnZW'
    '5lcmF0ZWRfYXQYAiABKAlSC2dlbmVyYXRlZEF0Eh0KCm1lYWxfY291bnQYAyABKAVSCW1lYWxD'
    'b3VudBIbCgl0b3BfZm9vZHMYBCADKAlSCHRvcEZvb2RzEi4KE21hY3JvX2JhbGFuY2Vfc2Nvcm'
    'UYBSABKAVSEW1hY3JvQmFsYW5jZVNjb3JlEjIKBXRyZW5kGAYgASgOMhwuY2Fsb3JpZnkuQWlN'
    'ZWFsU3VtbWFyeVRyZW5kUgV0cmVuZA==');
