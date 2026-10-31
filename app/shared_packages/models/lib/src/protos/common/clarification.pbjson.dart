// This is a generated file - do not edit.
//
// Generated from protos/common/clarification.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use clarificationDescriptor instead')
const Clarification$json = {
  '1': 'Clarification',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'question', '3': 2, '4': 1, '5': 9, '10': 'question'},
    {
      '1': 'options',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.common.Option',
      '10': 'options'
    },
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.common.Clarification.Type',
      '10': 'type'
    },
  ],
  '4': [Clarification_Type$json],
};

@$core.Deprecated('Use clarificationDescriptor instead')
const Clarification_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'QUANTITY', '2': 0},
    {'1': 'INGREDIENT_PRESENCE', '2': 1},
    {'1': 'INGREDIENT_ALTERNATIVE', '2': 2},
    {'1': 'PREPARATION_METHOD', '2': 3},
  ],
};

/// Descriptor for `Clarification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clarificationDescriptor = $convert.base64Decode(
    'Cg1DbGFyaWZpY2F0aW9uEg4KAmlkGAEgASgFUgJpZBIaCghxdWVzdGlvbhgCIAEoCVIIcXVlc3'
    'Rpb24SKAoHb3B0aW9ucxgDIAMoCzIOLmNvbW1vbi5PcHRpb25SB29wdGlvbnMSLgoEdHlwZRgE'
    'IAEoDjIaLmNvbW1vbi5DbGFyaWZpY2F0aW9uLlR5cGVSBHR5cGUiYQoEVHlwZRIMCghRVUFOVE'
    'lUWRAAEhcKE0lOR1JFRElFTlRfUFJFU0VOQ0UQARIaChZJTkdSRURJRU5UX0FMVEVSTkFUSVZF'
    'EAISFgoSUFJFUEFSQVRJT05fTUVUSE9EEAM=');

@$core.Deprecated('Use clarificationsDescriptor instead')
const Clarifications$json = {
  '1': 'Clarifications',
  '2': [
    {
      '1': 'clarification',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.common.Clarification',
      '10': 'clarification'
    },
  ],
};

/// Descriptor for `Clarifications`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clarificationsDescriptor = $convert.base64Decode(
    'Cg5DbGFyaWZpY2F0aW9ucxI7Cg1jbGFyaWZpY2F0aW9uGAEgAygLMhUuY29tbW9uLkNsYXJpZm'
    'ljYXRpb25SDWNsYXJpZmljYXRpb24=');

@$core.Deprecated('Use optionDescriptor instead')
const Option$json = {
  '1': 'Option',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {
      '1': 'macro_delta',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.common.MacroDelta',
      '10': 'macroDelta'
    },
  ],
};

/// Descriptor for `Option`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionDescriptor = $convert.base64Decode(
    'CgZPcHRpb24SEgoEdGV4dBgBIAEoCVIEdGV4dBIzCgttYWNyb19kZWx0YRgCIAEoCzISLmNvbW'
    '1vbi5NYWNyb0RlbHRhUgptYWNyb0RlbHRh');

@$core.Deprecated('Use macroDeltaDescriptor instead')
const MacroDelta$json = {
  '1': 'MacroDelta',
  '2': [
    {'1': 'calorie', '3': 1, '4': 1, '5': 5, '10': 'calorie'},
    {'1': 'carb', '3': 2, '4': 1, '5': 5, '10': 'carb'},
    {'1': 'protein', '3': 3, '4': 1, '5': 5, '10': 'protein'},
    {'1': 'fat', '3': 4, '4': 1, '5': 5, '10': 'fat'},
    {'1': 'fiber', '3': 5, '4': 1, '5': 5, '10': 'fiber'},
  ],
};

/// Descriptor for `MacroDelta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macroDeltaDescriptor = $convert.base64Decode(
    'CgpNYWNyb0RlbHRhEhgKB2NhbG9yaWUYASABKAVSB2NhbG9yaWUSEgoEY2FyYhgCIAEoBVIEY2'
    'FyYhIYCgdwcm90ZWluGAMgASgFUgdwcm90ZWluEhAKA2ZhdBgEIAEoBVIDZmF0EhQKBWZpYmVy'
    'GAUgASgFUgVmaWJlcg==');
