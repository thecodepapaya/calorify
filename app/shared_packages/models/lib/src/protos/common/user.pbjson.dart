// This is a generated file - do not edit.
//
// Generated from protos/common/user.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use genderDescriptor instead')
const Gender$json = {
  '1': 'Gender',
  '2': [
    {'1': 'OTHER', '2': 0},
    {'1': 'MALE', '2': 1},
    {'1': 'FEMALE', '2': 2},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert
    .base64Decode('CgZHZW5kZXISCQoFT1RIRVIQABIICgRNQUxFEAESCgoGRkVNQUxFEAI=');

@$core.Deprecated('Use weightGoalDescriptor instead')
const WeightGoal$json = {
  '1': 'WeightGoal',
  '2': [
    {'1': 'LOSE_WEIGHT', '2': 0},
    {'1': 'MAINTAIN_WEIGHT', '2': 1},
    {'1': 'GAIN_WEIGHT', '2': 2},
  ],
};

/// Descriptor for `WeightGoal`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List weightGoalDescriptor = $convert.base64Decode(
    'CgpXZWlnaHRHb2FsEg8KC0xPU0VfV0VJR0hUEAASEwoPTUFJTlRBSU5fV0VJR0hUEAESDwoLR0'
    'FJTl9XRUlHSFQQAg==');

@$core.Deprecated('Use activityLevelDescriptor instead')
const ActivityLevel$json = {
  '1': 'ActivityLevel',
  '2': [
    {'1': 'SEDENTARY', '2': 0},
    {'1': 'LIGHTLY_ACTIVE', '2': 1},
    {'1': 'MODERATELY_ACTIVE', '2': 2},
    {'1': 'VERY_ACTIVE', '2': 3},
    {'1': 'EXTREMELY_ACTIVE', '2': 4},
  ],
};

/// Descriptor for `ActivityLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List activityLevelDescriptor = $convert.base64Decode(
    'Cg1BY3Rpdml0eUxldmVsEg0KCVNFREVOVEFSWRAAEhIKDkxJR0hUTFlfQUNUSVZFEAESFQoRTU'
    '9ERVJBVEVMWV9BQ1RJVkUQAhIPCgtWRVJZX0FDVElWRRADEhQKEEVYVFJFTUVMWV9BQ1RJVkUQ'
    'BA==');

@$core.Deprecated('Use heightUnitDescriptor instead')
const HeightUnit$json = {
  '1': 'HeightUnit',
  '2': [
    {'1': 'CM', '2': 0},
    {'1': 'FT', '2': 1},
  ],
};

/// Descriptor for `HeightUnit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heightUnitDescriptor =
    $convert.base64Decode('CgpIZWlnaHRVbml0EgYKAkNNEAASBgoCRlQQAQ==');

@$core.Deprecated('Use weightUnitDescriptor instead')
const WeightUnit$json = {
  '1': 'WeightUnit',
  '2': [
    {'1': 'KG', '2': 0},
    {'1': 'LB', '2': 1},
  ],
};

/// Descriptor for `WeightUnit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List weightUnitDescriptor =
    $convert.base64Decode('CgpXZWlnaHRVbml0EgYKAktHEAASBgoCTEIQAQ==');

@$core.Deprecated('Use heightDescriptor instead')
const Height$json = {
  '1': 'Height',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
    {
      '1': 'unit',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.common.HeightUnit',
      '10': 'unit'
    },
  ],
};

/// Descriptor for `Height`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heightDescriptor = $convert.base64Decode(
    'CgZIZWlnaHQSFAoFdmFsdWUYASABKAFSBXZhbHVlEiYKBHVuaXQYAiABKA4yEi5jb21tb24uSG'
    'VpZ2h0VW5pdFIEdW5pdA==');

@$core.Deprecated('Use weightDescriptor instead')
const Weight$json = {
  '1': 'Weight',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
    {
      '1': 'unit',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.common.WeightUnit',
      '10': 'unit'
    },
  ],
};

/// Descriptor for `Weight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weightDescriptor = $convert.base64Decode(
    'CgZXZWlnaHQSFAoFdmFsdWUYASABKAFSBXZhbHVlEiYKBHVuaXQYAiABKA4yEi5jb21tb24uV2'
    'VpZ2h0VW5pdFIEdW5pdA==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    {
      '1': 'created_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 2,
      '10': 'createdAt',
      '17': true
    },
    {
      '1': 'last_active_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 3,
      '10': 'lastActiveAt',
      '17': true
    },
  ],
  '8': [
    {'1': '_name'},
    {'1': '_email'},
    {'1': '_created_at'},
    {'1': '_last_active_at'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhcKBG5hbWUYASABKAlIAFIEbmFtZYgBARIZCgVlbWFpbBgCIAEoCUgBUgVlbWFpbI'
    'gBARI+CgpjcmVhdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgCUglj'
    'cmVhdGVkQXSIAQESRQoObGFzdF9hY3RpdmVfYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVG'
    'ltZXN0YW1wSANSDGxhc3RBY3RpdmVBdIgBAUIHCgVfbmFtZUIICgZfZW1haWxCDQoLX2NyZWF0'
    'ZWRfYXRCEQoPX2xhc3RfYWN0aXZlX2F0');

@$core.Deprecated('Use healthDataDescriptor instead')
const HealthData$json = {
  '1': 'HealthData',
  '2': [
    {
      '1': 'height',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.common.Height',
      '9': 0,
      '10': 'height',
      '17': true
    },
    {
      '1': 'weight',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.common.Weight',
      '9': 1,
      '10': 'weight',
      '17': true
    },
    {
      '1': 'target_weight',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.common.Weight',
      '9': 2,
      '10': 'targetWeight',
      '17': true
    },
    {
      '1': 'gender',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.common.Gender',
      '9': 3,
      '10': 'gender',
      '17': true
    },
    {
      '1': 'date_of_birth',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'dateOfBirth',
      '17': true
    },
    {
      '1': 'weight_goal',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.common.WeightGoal',
      '9': 5,
      '10': 'weightGoal',
      '17': true
    },
    {
      '1': 'activity_level',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.common.ActivityLevel',
      '9': 6,
      '10': 'activityLevel',
      '17': true
    },
    {
      '1': 'daily_macro_goal',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.common.Macros',
      '9': 7,
      '10': 'dailyMacroGoal',
      '17': true
    },
  ],
  '8': [
    {'1': '_height'},
    {'1': '_weight'},
    {'1': '_target_weight'},
    {'1': '_gender'},
    {'1': '_date_of_birth'},
    {'1': '_weight_goal'},
    {'1': '_activity_level'},
    {'1': '_daily_macro_goal'},
  ],
};

/// Descriptor for `HealthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthDataDescriptor = $convert.base64Decode(
    'CgpIZWFsdGhEYXRhEisKBmhlaWdodBgBIAEoCzIOLmNvbW1vbi5IZWlnaHRIAFIGaGVpZ2h0iA'
    'EBEisKBndlaWdodBgCIAEoCzIOLmNvbW1vbi5XZWlnaHRIAVIGd2VpZ2h0iAEBEjgKDXRhcmdl'
    'dF93ZWlnaHQYAyABKAsyDi5jb21tb24uV2VpZ2h0SAJSDHRhcmdldFdlaWdodIgBARIrCgZnZW'
    '5kZXIYBCABKA4yDi5jb21tb24uR2VuZGVySANSBmdlbmRlcogBARInCg1kYXRlX29mX2JpcnRo'
    'GAUgASgJSARSC2RhdGVPZkJpcnRoiAEBEjgKC3dlaWdodF9nb2FsGAYgASgOMhIuY29tbW9uLl'
    'dlaWdodEdvYWxIBVIKd2VpZ2h0R29hbIgBARJBCg5hY3Rpdml0eV9sZXZlbBgHIAEoDjIVLmNv'
    'bW1vbi5BY3Rpdml0eUxldmVsSAZSDWFjdGl2aXR5TGV2ZWyIAQESPQoQZGFpbHlfbWFjcm9fZ2'
    '9hbBgIIAEoCzIOLmNvbW1vbi5NYWNyb3NIB1IOZGFpbHlNYWNyb0dvYWyIAQFCCQoHX2hlaWdo'
    'dEIJCgdfd2VpZ2h0QhAKDl90YXJnZXRfd2VpZ2h0QgkKB19nZW5kZXJCEAoOX2RhdGVfb2ZfYm'
    'lydGhCDgoMX3dlaWdodF9nb2FsQhEKD19hY3Rpdml0eV9sZXZlbEITChFfZGFpbHlfbWFjcm9f'
    'Z29hbA==');
