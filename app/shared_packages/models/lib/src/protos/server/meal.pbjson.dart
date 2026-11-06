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
    {'1': 'canonical_name', '3': 7, '4': 1, '5': 9, '10': 'canonicalName'},
    {'1': 'component_name', '3': 8, '4': 1, '5': 9, '10': 'componentName'},
  ],
};

/// Descriptor for `EnrichedIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enrichedIngredientDescriptor = $convert.base64Decode(
    'ChJFbnJpY2hlZEluZ3JlZGllbnQSEgoEbmFtZRgBIAEoCVIEbmFtZRIVCgZmZGNfaWQYAiABKA'
    'NSBWZkY0lkEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIeCgpzaW1pbGFyaXR5'
    'GAQgASgCUgpzaW1pbGFyaXR5EikKBWdyYW1zGAUgASgLMhMuY29tbW9uLk1lYXN1cmVtZW50Ug'
    'VncmFtcxImCgZtYWNyb3MYBiABKAsyDi5jb21tb24uTWFjcm9zUgZtYWNyb3MSJQoOY2Fub25p'
    'Y2FsX25hbWUYByABKAlSDWNhbm9uaWNhbE5hbWUSJQoOY29tcG9uZW50X25hbWUYCCABKAlSDW'
    'NvbXBvbmVudE5hbWU=');

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
