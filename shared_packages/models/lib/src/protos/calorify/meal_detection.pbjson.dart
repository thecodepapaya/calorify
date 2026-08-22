// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_detection.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mealMetadataDescriptor instead')
const MealMetadata$json = {
  '1': 'MealMetadata',
  '2': [
    {
      '1': 'image_url',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'imageUrl',
      '17': true
    },
    {
      '1': 'meal_description',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'mealDescription',
      '17': true
    },
  ],
  '8': [
    {'1': '_image_url'},
    {'1': '_meal_description'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
  '10': ['selected_variations'],
};

/// Descriptor for `MealMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealMetadataDescriptor = $convert.base64Decode(
    'CgxNZWFsTWV0YWRhdGESIAoJaW1hZ2VfdXJsGAEgASgJSABSCGltYWdlVXJsiAEBEi4KEG1lYW'
    'xfZGVzY3JpcHRpb24YAiABKAlIAVIPbWVhbERlc2NyaXB0aW9uiAEBQgwKCl9pbWFnZV91cmxC'
    'EwoRX21lYWxfZGVzY3JpcHRpb25KBAgDEARSE3NlbGVjdGVkX3ZhcmlhdGlvbnM=');

@$core.Deprecated('Use mealDetectionResultDescriptor instead')
const MealDetectionResult$json = {
  '1': 'MealDetectionResult',
  '2': [
    {'1': 'meal_identified', '3': 1, '4': 1, '5': 8, '10': 'mealIdentified'},
    {
      '1': 'calorie_confidence',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.meal.CalorieConfidence',
      '10': 'calorieConfidence'
    },
    {'1': 'tip', '3': 3, '4': 1, '5': 9, '10': 'tip'},
    {
      '1': 'meal',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.meal.Meal',
      '9': 0,
      '10': 'meal',
      '17': true
    },
    {
      '1': 'metadata',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.calorify.MealMetadata',
      '9': 1,
      '10': 'metadata',
      '17': true
    },
  ],
  '8': [
    {'1': '_meal'},
    {'1': '_metadata'},
  ],
};

/// Descriptor for `MealDetectionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDetectionResultDescriptor = $convert.base64Decode(
    'ChNNZWFsRGV0ZWN0aW9uUmVzdWx0EicKD21lYWxfaWRlbnRpZmllZBgBIAEoCFIObWVhbElkZW'
    '50aWZpZWQSRgoSY2Fsb3JpZV9jb25maWRlbmNlGAIgASgOMhcubWVhbC5DYWxvcmllQ29uZmlk'
    'ZW5jZVIRY2Fsb3JpZUNvbmZpZGVuY2USEAoDdGlwGAMgASgJUgN0aXASIwoEbWVhbBgEIAEoCz'
    'IKLm1lYWwuTWVhbEgAUgRtZWFsiAEBEjcKCG1ldGFkYXRhGAUgASgLMhYuY2Fsb3JpZnkuTWVh'
    'bE1ldGFkYXRhSAFSCG1ldGFkYXRhiAEBQgcKBV9tZWFsQgsKCV9tZXRhZGF0YQ==');

@$core.Deprecated('Use mealDetectionResponseDescriptor instead')
const MealDetectionResponse$json = {
  '1': 'MealDetectionResponse',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.calorify.MealDetectionResult',
      '10': 'result'
    },
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
  '10': ['variations'],
};

/// Descriptor for `MealDetectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDetectionResponseDescriptor = $convert.base64Decode(
    'ChVNZWFsRGV0ZWN0aW9uUmVzcG9uc2USNQoGcmVzdWx0GAEgASgLMh0uY2Fsb3JpZnkuTWVhbE'
    'RldGVjdGlvblJlc3VsdFIGcmVzdWx0SgQIAhADUgp2YXJpYXRpb25z');
