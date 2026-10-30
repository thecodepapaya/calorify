// This is a generated file - do not edit.
//
// Generated from protos/server/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use originDescriptor instead')
const Origin$json = {
  '1': 'Origin',
  '2': [
    {'1': 'MODEL_INFERRED', '2': 0},
    {'1': 'USER_STATED', '2': 1},
    {'1': 'USER_CLARIFICATION', '2': 2},
  ],
};

/// Descriptor for `Origin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List originDescriptor = $convert.base64Decode(
    'CgZPcmlnaW4SEgoOTU9ERUxfSU5GRVJSRUQQABIPCgtVU0VSX1NUQVRFRBABEhYKElVTRVJfQ0'
    'xBUklGSUNBVElPThAC');

@$core.Deprecated('Use ingredientTypeDescriptor instead')
const IngredientType$json = {
  '1': 'IngredientType',
  '2': [
    {'1': 'BASE', '2': 0},
    {'1': 'BRANDED', '2': 1},
  ],
};

/// Descriptor for `IngredientType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ingredientTypeDescriptor = $convert
    .base64Decode('Cg5JbmdyZWRpZW50VHlwZRIICgRCQVNFEAASCwoHQlJBTkRFRBAB');

@$core.Deprecated('Use preparationMethodDescriptor instead')
const PreparationMethod$json = {
  '1': 'PreparationMethod',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'RAW', '2': 1},
    {'1': 'BOILED', '2': 2},
    {'1': 'SIMMERED', '2': 3},
    {'1': 'STEAMED', '2': 4},
    {'1': 'PRESSURE_COOKED', '2': 5},
    {'1': 'POACHED', '2': 6},
    {'1': 'BAKED', '2': 7},
    {'1': 'ROASTED', '2': 8},
    {'1': 'GRILLED', '2': 9},
    {'1': 'TOASTED', '2': 10},
    {'1': 'SAUTEED', '2': 11},
    {'1': 'STIR_FRIED', '2': 12},
    {'1': 'SHALLOW_FRIED', '2': 13},
    {'1': 'DEEP_FRIED', '2': 14},
    {'1': 'BLENDED', '2': 15},
    {'1': 'JUICED', '2': 16},
    {'1': 'FERMENTED', '2': 17},
    {'1': 'PICKLED', '2': 18},
    {'1': 'DRIED', '2': 19},
    {'1': 'SMOKED', '2': 20},
    {'1': 'COOKED_UNKNOWN', '2': 21},
    {'1': 'OTHER', '2': 22},
  ],
};

/// Descriptor for `PreparationMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List preparationMethodDescriptor = $convert.base64Decode(
    'ChFQcmVwYXJhdGlvbk1ldGhvZBILCgdVTktOT1dOEAASBwoDUkFXEAESCgoGQk9JTEVEEAISDA'
    'oIU0lNTUVSRUQQAxILCgdTVEVBTUVEEAQSEwoPUFJFU1NVUkVfQ09PS0VEEAUSCwoHUE9BQ0hF'
    'RBAGEgkKBUJBS0VEEAcSCwoHUk9BU1RFRBAIEgsKB0dSSUxMRUQQCRILCgdUT0FTVEVEEAoSCw'
    'oHU0FVVEVFRBALEg4KClNUSVJfRlJJRUQQDBIRCg1TSEFMTE9XX0ZSSUVEEA0SDgoKREVFUF9G'
    'UklFRBAOEgsKB0JMRU5ERUQQDxIKCgZKVUlDRUQQEBINCglGRVJNRU5URUQQERILCgdQSUNLTE'
    'VEEBISCQoFRFJJRUQQExIKCgZTTU9LRUQQFBISCg5DT09LRURfVU5LTk9XThAVEgkKBU9USEVS'
    'EBY=');

@$core.Deprecated('Use portionExactDescriptor instead')
const PortionExact$json = {
  '1': 'PortionExact',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
    {
      '1': 'per_unit_gram',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'perUnitGram'
    },
    {
      '1': 'origin',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.server.Origin',
      '10': 'origin'
    },
  ],
};

/// Descriptor for `PortionExact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portionExactDescriptor = $convert.base64Decode(
    'CgxQb3J0aW9uRXhhY3QSFAoFdmFsdWUYASABKAVSBXZhbHVlEjcKDXBlcl91bml0X2dyYW0YAi'
    'ABKAsyEy5jb21tb24uTWVhc3VyZW1lbnRSC3BlclVuaXRHcmFtEiYKBm9yaWdpbhgDIAEoDjIO'
    'LnNlcnZlci5PcmlnaW5SBm9yaWdpbg==');

@$core.Deprecated('Use portionBulkDescriptor instead')
const PortionBulk$json = {
  '1': 'PortionBulk',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'value'
    },
    {
      '1': 'origin',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.server.Origin',
      '10': 'origin'
    },
  ],
};

/// Descriptor for `PortionBulk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portionBulkDescriptor = $convert.base64Decode(
    'CgtQb3J0aW9uQnVsaxIpCgV2YWx1ZRgBIAEoCzITLmNvbW1vbi5NZWFzdXJlbWVudFIFdmFsdW'
    'USJgoGb3JpZ2luGAIgASgOMg4uc2VydmVyLk9yaWdpblIGb3JpZ2lu');

@$core.Deprecated('Use portionPinchDescriptor instead')
const PortionPinch$json = {
  '1': 'PortionPinch',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
    {
      '1': 'origin',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.server.Origin',
      '10': 'origin'
    },
  ],
};

/// Descriptor for `PortionPinch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portionPinchDescriptor = $convert.base64Decode(
    'CgxQb3J0aW9uUGluY2gSFAoFdmFsdWUYASABKAVSBXZhbHVlEiYKBm9yaWdpbhgCIAEoDjIOLn'
    'NlcnZlci5PcmlnaW5SBm9yaWdpbg==');

@$core.Deprecated('Use mealComponentDescriptor instead')
const MealComponent$json = {
  '1': 'MealComponent',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'alias', '3': 2, '4': 3, '5': 9, '10': 'alias'},
    {
      '1': 'exact',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.server.PortionExact',
      '9': 0,
      '10': 'exact'
    },
    {
      '1': 'bulk',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.server.PortionBulk',
      '9': 0,
      '10': 'bulk'
    },
    {
      '1': 'pinch',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.server.PortionPinch',
      '9': 0,
      '10': 'pinch'
    },
    {
      '1': 'preparation_method',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.server.PreparationMethod',
      '10': 'preparationMethod'
    },
  ],
  '8': [
    {'1': 'portion'},
  ],
};

/// Descriptor for `MealComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealComponentDescriptor = $convert.base64Decode(
    'Cg1NZWFsQ29tcG9uZW50EhIKBG5hbWUYASABKAlSBG5hbWUSFAoFYWxpYXMYAiADKAlSBWFsaW'
    'FzEiwKBWV4YWN0GAMgASgLMhQuc2VydmVyLlBvcnRpb25FeGFjdEgAUgVleGFjdBIpCgRidWxr'
    'GAQgASgLMhMuc2VydmVyLlBvcnRpb25CdWxrSABSBGJ1bGsSLAoFcGluY2gYBSABKAsyFC5zZX'
    'J2ZXIuUG9ydGlvblBpbmNoSABSBXBpbmNoEkgKEnByZXBhcmF0aW9uX21ldGhvZBgGIAEoDjIZ'
    'LnNlcnZlci5QcmVwYXJhdGlvbk1ldGhvZFIRcHJlcGFyYXRpb25NZXRob2RCCQoHcG9ydGlvbg'
    '==');

@$core.Deprecated('Use mealIngredientDescriptor instead')
const MealIngredient$json = {
  '1': 'MealIngredient',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'alias', '3': 2, '4': 3, '5': 9, '10': 'alias'},
    {
      '1': 'exact',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.server.PortionExact',
      '9': 0,
      '10': 'exact'
    },
    {
      '1': 'bulk',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.server.PortionBulk',
      '9': 0,
      '10': 'bulk'
    },
    {
      '1': 'pinch',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.server.PortionPinch',
      '9': 0,
      '10': 'pinch'
    },
    {
      '1': 'ingredient_type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.server.IngredientType',
      '10': 'ingredientType'
    },
  ],
  '8': [
    {'1': 'portion'},
  ],
};

/// Descriptor for `MealIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealIngredientDescriptor = $convert.base64Decode(
    'Cg5NZWFsSW5ncmVkaWVudBISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWFsaWFzGAIgAygJUgVhbG'
    'lhcxIsCgVleGFjdBgDIAEoCzIULnNlcnZlci5Qb3J0aW9uRXhhY3RIAFIFZXhhY3QSKQoEYnVs'
    'axgEIAEoCzITLnNlcnZlci5Qb3J0aW9uQnVsa0gAUgRidWxrEiwKBXBpbmNoGAUgASgLMhQuc2'
    'VydmVyLlBvcnRpb25QaW5jaEgAUgVwaW5jaBI/Cg9pbmdyZWRpZW50X3R5cGUYBiABKA4yFi5z'
    'ZXJ2ZXIuSW5ncmVkaWVudFR5cGVSDmluZ3JlZGllbnRUeXBlQgkKB3BvcnRpb24=');

@$core.Deprecated('Use pass1Descriptor instead')
const Pass1$json = {
  '1': 'Pass1',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 9, '10': 'quantity'},
    {
      '1': 'meal_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.common.MealType',
      '9': 0,
      '10': 'mealType',
      '17': true
    },
    {
      '1': 'components',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.server.MealComponent',
      '10': 'components'
    },
    {'1': 'tip', '3': 5, '4': 1, '5': 9, '10': 'tip'},
    {
      '1': 'meal_health',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.common.MealHealth',
      '10': 'mealHealth'
    },
  ],
  '8': [
    {'1': '_meal_type'},
  ],
};

/// Descriptor for `Pass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pass1Descriptor = $convert.base64Decode(
    'CgVQYXNzMRISCgRuYW1lGAEgASgJUgRuYW1lEhoKCHF1YW50aXR5GAIgASgJUghxdWFudGl0eR'
    'IyCgltZWFsX3R5cGUYAyABKA4yEC5jb21tb24uTWVhbFR5cGVIAFIIbWVhbFR5cGWIAQESNQoK'
    'Y29tcG9uZW50cxgEIAMoCzIVLnNlcnZlci5NZWFsQ29tcG9uZW50Ugpjb21wb25lbnRzEhAKA3'
    'RpcBgFIAEoCVIDdGlwEjMKC21lYWxfaGVhbHRoGAYgASgLMhIuY29tbW9uLk1lYWxIZWFsdGhS'
    'Cm1lYWxIZWFsdGhCDAoKX21lYWxfdHlwZQ==');

@$core.Deprecated('Use pass2Descriptor instead')
const Pass2$json = {
  '1': 'Pass2',
  '2': [
    {
      '1': 'ingredients',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.server.MealIngredient',
      '10': 'ingredients'
    },
  ],
};

/// Descriptor for `Pass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pass2Descriptor = $convert.base64Decode(
    'CgVQYXNzMhI4CgtpbmdyZWRpZW50cxgBIAMoCzIWLnNlcnZlci5NZWFsSW5ncmVkaWVudFILaW'
    '5ncmVkaWVudHM=');

@$core.Deprecated('Use enrichedIngredientDescriptor instead')
const EnrichedIngredient$json = {
  '1': 'EnrichedIngredient',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fdc_id', '3': 2, '4': 1, '5': 3, '10': 'fdcId'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'similarity', '3': 4, '4': 1, '5': 2, '10': 'similarity'},
    {
      '1': 'grams',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.common.Measurement',
      '10': 'grams'
    },
    {
      '1': 'macros',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.common.Macros',
      '10': 'macros'
    },
  ],
};

/// Descriptor for `EnrichedIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enrichedIngredientDescriptor = $convert.base64Decode(
    'ChJFbnJpY2hlZEluZ3JlZGllbnQSEgoEbmFtZRgBIAEoCVIEbmFtZRIVCgZmZGNfaWQYAiABKA'
    'NSBWZkY0lkEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIeCgpzaW1pbGFyaXR5'
    'GAQgASgCUgpzaW1pbGFyaXR5EikKBWdyYW1zGAUgASgLMhMuY29tbW9uLk1lYXN1cmVtZW50Ug'
    'VncmFtcxImCgZtYWNyb3MYBiABKAsyDi5jb21tb24uTWFjcm9zUgZtYWNyb3M=');

@$core.Deprecated('Use usdaEnrichedDescriptor instead')
const UsdaEnriched$json = {
  '1': 'UsdaEnriched',
  '2': [
    {
      '1': 'ingredients',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.server.EnrichedIngredient',
      '10': 'ingredients'
    },
    {
      '1': 'total_macros',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.common.Macros',
      '10': 'totalMacros'
    },
  ],
};

/// Descriptor for `UsdaEnriched`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usdaEnrichedDescriptor = $convert.base64Decode(
    'CgxVc2RhRW5yaWNoZWQSPAoLaW5ncmVkaWVudHMYASADKAsyGi5zZXJ2ZXIuRW5yaWNoZWRJbm'
    'dyZWRpZW50UgtpbmdyZWRpZW50cxIxCgx0b3RhbF9tYWNyb3MYAiABKAsyDi5jb21tb24uTWFj'
    'cm9zUgt0b3RhbE1hY3Jvcw==');
