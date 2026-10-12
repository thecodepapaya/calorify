// This is a generated file - do not edit.
//
// Generated from protos/meal/meal.proto.

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
    {'1': 'HEALTHY', '2': 0},
    {'1': 'NEUTRAL', '2': 1},
    {'1': 'UNHEALTHY', '2': 2},
  ],
};

/// Descriptor for `HealthScore`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List healthScoreDescriptor = $convert.base64Decode(
    'CgtIZWFsdGhTY29yZRILCgdIRUFMVEhZEAASCwoHTkVVVFJBTBABEg0KCVVOSEVBTFRIWRAC');

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

@$core.Deprecated('Use mealMacroDescriptor instead')
const MealMacro$json = {
  '1': 'MealMacro',
  '2': [
    {'1': 'calories', '3': 1, '4': 1, '5': 5, '10': 'calories'},
    {'1': 'carbs', '3': 2, '4': 1, '5': 5, '10': 'carbs'},
    {'1': 'protein', '3': 3, '4': 1, '5': 5, '10': 'protein'},
    {'1': 'fat', '3': 4, '4': 1, '5': 5, '10': 'fat'},
    {'1': 'fiber', '3': 5, '4': 1, '5': 5, '10': 'fiber'},
  ],
};

/// Descriptor for `MealMacro`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealMacroDescriptor = $convert.base64Decode(
    'CglNZWFsTWFjcm8SGgoIY2Fsb3JpZXMYASABKAVSCGNhbG9yaWVzEhQKBWNhcmJzGAIgASgFUg'
    'VjYXJicxIYCgdwcm90ZWluGAMgASgFUgdwcm90ZWluEhAKA2ZhdBgEIAEoBVIDZmF0EhQKBWZp'
    'YmVyGAUgASgFUgVmaWJlcg==');

@$core.Deprecated('Use mealHealthDescriptor instead')
const MealHealth$json = {
  '1': 'MealHealth',
  '2': [
    {
      '1': 'health_score',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.meal.HealthScore',
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
    'CgpNZWFsSGVhbHRoEjkKDGhlYWx0aF9zY29yZRgBIAEoDjIRLm1lYWwuSGVhbHRoU2NvcmVIAF'
    'ILaGVhbHRoU2NvcmWIAQESMwoTaGVhbHRoX3Njb3JlX3JlYXNvbhgCIAEoCUgBUhFoZWFsdGhT'
    'Y29yZVJlYXNvbogBAUIPCg1faGVhbHRoX3Njb3JlQhYKFF9oZWFsdGhfc2NvcmVfcmVhc29u');

@$core.Deprecated('Use mealDescriptor instead')
const Meal$json = {
  '1': 'Meal',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.meal.MealType', '10': 'type'},
    {
      '1': 'macros',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.meal.MealMacro',
      '10': 'macros'
    },
    {
      '1': 'health',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.meal.MealHealth',
      '9': 0,
      '10': 'health',
      '17': true
    },
  ],
  '8': [
    {'1': '_health'},
  ],
};

/// Descriptor for `Meal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDescriptor = $convert.base64Decode(
    'CgRNZWFsEhIKBG5hbWUYASABKAlSBG5hbWUSGgoIcXVhbnRpdHkYAiABKAlSCHF1YW50aXR5Ei'
    'IKBHR5cGUYAyABKA4yDi5tZWFsLk1lYWxUeXBlUgR0eXBlEicKBm1hY3JvcxgFIAEoCzIPLm1l'
    'YWwuTWVhbE1hY3JvUgZtYWNyb3MSLQoGaGVhbHRoGAYgASgLMhAubWVhbC5NZWFsSGVhbHRoSA'
    'BSBmhlYWx0aIgBAUIJCgdfaGVhbHRo');
