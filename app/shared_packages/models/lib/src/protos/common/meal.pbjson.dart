// This is a generated file - do not edit.
//
// Generated from protos/common/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mealTypeDescriptor instead')
const MealType$json = {
  '1': 'MealType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'BREAKFAST', '2': 1},
    {'1': 'LUNCH', '2': 2},
    {'1': 'DINNER', '2': 3},
    {'1': 'SNACK', '2': 4},
  ],
};

/// Descriptor for `MealType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mealTypeDescriptor = $convert.base64Decode(
    'CghNZWFsVHlwZRILCgdVTktOT1dOEAASDQoJQlJFQUtGQVNUEAESCQoFTFVOQ0gQAhIKCgZESU'
    '5ORVIQAxIJCgVTTkFDSxAE');

@$core.Deprecated('Use healthScoreDescriptor instead')
const HealthScore$json = {
  '1': 'HealthScore',
  '2': [
    {'1': 'NEUTRAL', '2': 0},
    {'1': 'HEALTHY', '2': 1},
    {'1': 'UNHEALTHY', '2': 2},
  ],
};

/// Descriptor for `HealthScore`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List healthScoreDescriptor = $convert.base64Decode(
    'CgtIZWFsdGhTY29yZRILCgdORVVUUkFMEAASCwoHSEVBTFRIWRABEg0KCVVOSEVBTFRIWRAC');

@$core.Deprecated('Use calorieConfidenceDescriptor instead')
const CalorieConfidence$json = {
  '1': 'CalorieConfidence',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'LOW', '2': 1},
    {'1': 'MEDIUM', '2': 2},
    {'1': 'HIGH', '2': 3},
  ],
};

/// Descriptor for `CalorieConfidence`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List calorieConfidenceDescriptor = $convert.base64Decode(
    'ChFDYWxvcmllQ29uZmlkZW5jZRIPCgtVTlNQRUNJRklFRBAAEgcKA0xPVxABEgoKBk1FRElVTR'
    'ACEggKBEhJR0gQAw==');

@$core.Deprecated('Use measurementDescriptor instead')
const Measurement$json = {
  '1': 'Measurement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
    {'1': 'min_value', '3': 2, '4': 1, '5': 5, '10': 'minValue'},
    {'1': 'max_value', '3': 3, '4': 1, '5': 5, '10': 'maxValue'},
  ],
};

/// Descriptor for `Measurement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List measurementDescriptor = $convert.base64Decode(
    'CgtNZWFzdXJlbWVudBIUCgV2YWx1ZRgBIAEoBVIFdmFsdWUSGwoJbWluX3ZhbHVlGAIgASgFUg'
    'htaW5WYWx1ZRIbCgltYXhfdmFsdWUYAyABKAVSCG1heFZhbHVl');

@$core.Deprecated('Use macrosDescriptor instead')
const Macros$json = {
  '1': 'Macros',
  '2': [
    {
      '1': 'calorie',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'calorie'
    },
    {
      '1': 'carb',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'carb'
    },
    {
      '1': 'protein',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'protein'
    },
    {
      '1': 'fat',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'fat'
    },
    {
      '1': 'fiber',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'fiber'
    },
  ],
};

/// Descriptor for `Macros`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macrosDescriptor = $convert.base64Decode(
    'CgZNYWNyb3MSLQoHY2Fsb3JpZRgBIAEoCzITLmNvbW1vbi5NZWFzdXJlbWVudFIHY2Fsb3JpZR'
    'InCgRjYXJiGAIgASgLMhMuY29tbW9uLk1lYXN1cmVtZW50UgRjYXJiEi0KB3Byb3RlaW4YAyAB'
    'KAsyEy5jb21tb24uTWVhc3VyZW1lbnRSB3Byb3RlaW4SJQoDZmF0GAQgASgLMhMuY29tbW9uLk'
    '1lYXN1cmVtZW50UgNmYXQSKQoFZmliZXIYBSABKAsyEy5jb21tb24uTWVhc3VyZW1lbnRSBWZp'
    'YmVy');

@$core.Deprecated('Use mealHealthDescriptor instead')
const MealHealth$json = {
  '1': 'MealHealth',
  '2': [
    {
      '1': 'health_score',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.common.HealthScore',
      '9': 0,
      '10': 'healthScore',
      '17': true
    },
    {
      '1': 'health_score_reason',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'healthScoreReason',
      '17': true
    },
  ],
  '8': [
    {'1': '_health_score'},
    {'1': '_health_score_reason'},
  ],
};

/// Descriptor for `MealHealth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealHealthDescriptor = $convert.base64Decode(
    'CgpNZWFsSGVhbHRoEjsKDGhlYWx0aF9zY29yZRgBIAEoDjITLmNvbW1vbi5IZWFsdGhTY29yZU'
    'gAUgtoZWFsdGhTY29yZYgBARIzChNoZWFsdGhfc2NvcmVfcmVhc29uGAIgASgJSAFSEWhlYWx0'
    'aFNjb3JlUmVhc29uiAEBQg8KDV9oZWFsdGhfc2NvcmVCFgoUX2hlYWx0aF9zY29yZV9yZWFzb2'
    '4=');

@$core.Deprecated('Use mealMetadataDescriptor instead')
const MealMetadata$json = {
  '1': 'MealMetadata',
  '2': [
    {
      '1': 'image_base64',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'imageBase64',
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
      '1': 'timestamp',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'timestamp',
      '17': true
    },
    {'1': 'tip', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'tip', '17': true},
    {
      '1': 'image_url',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'imageUrl',
      '17': true
    },
  ],
  '8': [
    {'1': '_image_base64'},
    {'1': '_meal_description'},
    {'1': '_timestamp'},
    {'1': '_tip'},
    {'1': '_image_url'},
  ],
};

/// Descriptor for `MealMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealMetadataDescriptor = $convert.base64Decode(
    'CgxNZWFsTWV0YWRhdGESJgoMaW1hZ2VfYmFzZTY0GAEgASgJSABSC2ltYWdlQmFzZTY0iAEBEi'
    '4KEG1lYWxfZGVzY3JpcHRpb24YAiABKAlIAVIPbWVhbERlc2NyaXB0aW9uiAEBEiEKCXRpbWVz'
    'dGFtcBgDIAEoCUgCUgl0aW1lc3RhbXCIAQESFQoDdGlwGAQgASgJSANSA3RpcIgBARIgCglpbW'
    'FnZV91cmwYBSABKAlIBFIIaW1hZ2VVcmyIAQFCDwoNX2ltYWdlX2Jhc2U2NEITChFfbWVhbF9k'
    'ZXNjcmlwdGlvbkIMCgpfdGltZXN0YW1wQgYKBF90aXBCDAoKX2ltYWdlX3VybA==');

@$core.Deprecated('Use mealDescriptor instead')
const Meal$json = {
  '1': 'Meal',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 9, '10': 'quantity'},
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.common.MealType',
      '10': 'type'
    },
    {
      '1': 'macros',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.common.Macros',
      '10': 'macros'
    },
    {
      '1': 'health',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.common.MealHealth',
      '9': 0,
      '10': 'health',
      '17': true
    },
    {
      '1': 'metadata',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.common.MealMetadata',
      '9': 1,
      '10': 'metadata',
      '17': true
    },
  ],
  '8': [
    {'1': '_health'},
    {'1': '_metadata'},
  ],
};

/// Descriptor for `Meal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDescriptor = $convert.base64Decode(
    'CgRNZWFsEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIcXVhbnRpdHkYAyABKAlSCHF1YW50aXR5Ei'
    'QKBHR5cGUYBCABKA4yEC5jb21tb24uTWVhbFR5cGVSBHR5cGUSJgoGbWFjcm9zGAUgASgLMg4u'
    'Y29tbW9uLk1hY3Jvc1IGbWFjcm9zEi8KBmhlYWx0aBgGIAEoCzISLmNvbW1vbi5NZWFsSGVhbH'
    'RoSABSBmhlYWx0aIgBARI1CghtZXRhZGF0YRgHIAEoCzIULmNvbW1vbi5NZWFsTWV0YWRhdGFI'
    'AVIIbWV0YWRhdGGIAQFCCQoHX2hlYWx0aEILCglfbWV0YWRhdGE=');
