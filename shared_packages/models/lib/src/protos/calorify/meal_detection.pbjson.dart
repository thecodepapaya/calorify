// This is a generated file - do not edit.
//
// Generated from protos/calorify/meal_detection.proto.

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

@$core.Deprecated('Use clarificationDescriptor instead')
const Clarification$json = {
  '1': 'Clarification',
  '2': [
    {'1': 'question', '3': 1, '4': 1, '5': 9, '10': 'question'},
    {
      '1': 'options',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.calorify.Clarification.Option',
      '10': 'options'
    },
  ],
  '3': [Clarification_Option$json],
};

@$core.Deprecated('Use clarificationDescriptor instead')
const Clarification_Option$json = {
  '1': 'Option',
  '2': [
    {'1': 'option', '3': 1, '4': 1, '5': 9, '10': 'option'},
    {
      '1': 'macro_diff',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.meal.MealMacro',
      '10': 'macroDiff'
    },
  ],
};

/// Descriptor for `Clarification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clarificationDescriptor = $convert.base64Decode(
    'Cg1DbGFyaWZpY2F0aW9uEhoKCHF1ZXN0aW9uGAEgASgJUghxdWVzdGlvbhI4CgdvcHRpb25zGA'
    'IgAygLMh4uY2Fsb3JpZnkuQ2xhcmlmaWNhdGlvbi5PcHRpb25SB29wdGlvbnMaUAoGT3B0aW9u'
    'EhYKBm9wdGlvbhgBIAEoCVIGb3B0aW9uEi4KCm1hY3JvX2RpZmYYAiABKAsyDy5tZWFsLk1lYW'
    'xNYWNyb1IJbWFjcm9EaWZm');

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
    {
      '1': 'selected_clarifications',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.calorify.Clarification',
      '10': 'selectedClarifications'
    },
  ],
  '8': [
    {'1': '_image_url'},
    {'1': '_meal_description'},
  ],
};

/// Descriptor for `MealMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealMetadataDescriptor = $convert.base64Decode(
    'CgxNZWFsTWV0YWRhdGESIAoJaW1hZ2VfdXJsGAEgASgJSABSCGltYWdlVXJsiAEBEi4KEG1lYW'
    'xfZGVzY3JpcHRpb24YAiABKAlIAVIPbWVhbERlc2NyaXB0aW9uiAEBElAKF3NlbGVjdGVkX2Ns'
    'YXJpZmljYXRpb25zGAMgAygLMhcuY2Fsb3JpZnkuQ2xhcmlmaWNhdGlvblIWc2VsZWN0ZWRDbG'
    'FyaWZpY2F0aW9uc0IMCgpfaW1hZ2VfdXJsQhMKEV9tZWFsX2Rlc2NyaXB0aW9u');

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

@$core.Deprecated('Use imageMealDetectionRequestDescriptor instead')
const ImageMealDetectionRequest$json = {
  '1': 'ImageMealDetectionRequest',
  '2': [
    {'1': 'image_url', '3': 1, '4': 1, '5': 9, '10': 'imageUrl'},
    {
      '1': 'mime_type',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'mimeType',
      '17': true
    },
  ],
  '8': [
    {'1': '_mime_type'},
  ],
};

/// Descriptor for `ImageMealDetectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageMealDetectionRequestDescriptor =
    $convert.base64Decode(
        'ChlJbWFnZU1lYWxEZXRlY3Rpb25SZXF1ZXN0EhsKCWltYWdlX3VybBgBIAEoCVIIaW1hZ2VVcm'
        'wSIAoJbWltZV90eXBlGAMgASgJSABSCG1pbWVUeXBliAEBQgwKCl9taW1lX3R5cGU=');

@$core.Deprecated('Use textMealDetectionRequestDescriptor instead')
const TextMealDetectionRequest$json = {
  '1': 'TextMealDetectionRequest',
  '2': [
    {'1': 'text_description', '3': 1, '4': 1, '5': 9, '10': 'textDescription'},
  ],
};

/// Descriptor for `TextMealDetectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textMealDetectionRequestDescriptor =
    $convert.base64Decode(
        'ChhUZXh0TWVhbERldGVjdGlvblJlcXVlc3QSKQoQdGV4dF9kZXNjcmlwdGlvbhgBIAEoCVIPdG'
        'V4dERlc2NyaXB0aW9u');

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
    {
      '1': 'clarifications',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.calorify.Clarification',
      '10': 'clarifications'
    },
  ],
};

/// Descriptor for `MealDetectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDetectionResponseDescriptor = $convert.base64Decode(
    'ChVNZWFsRGV0ZWN0aW9uUmVzcG9uc2USNQoGcmVzdWx0GAEgASgLMh0uY2Fsb3JpZnkuTWVhbE'
    'RldGVjdGlvblJlc3VsdFIGcmVzdWx0Ej8KDmNsYXJpZmljYXRpb25zGAIgAygLMhcuY2Fsb3Jp'
    'ZnkuQ2xhcmlmaWNhdGlvblIOY2xhcmlmaWNhdGlvbnM=');
