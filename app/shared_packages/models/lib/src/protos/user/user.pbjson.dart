// This is a generated file - do not edit.
//
// Generated from protos/user/user.proto.

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
    {'1': 'MALE', '2': 0},
    {'1': 'FEMALE', '2': 1},
    {'1': 'OTHER', '2': 2},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert
    .base64Decode('CgZHZW5kZXISCAoETUFMRRAAEgoKBkZFTUFMRRABEgkKBU9USEVSEAI=');

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

@$core.Deprecated('Use unitSystemDescriptor instead')
const UnitSystem$json = {
  '1': 'UnitSystem',
  '2': [
    {'1': 'METRIC', '2': 0},
    {'1': 'IMPERIAL', '2': 1},
  ],
};

/// Descriptor for `UnitSystem`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List unitSystemDescriptor = $convert
    .base64Decode('CgpVbml0U3lzdGVtEgoKBk1FVFJJQxAAEgwKCElNUEVSSUFMEAE=');

@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = {
  '1': 'UserProfile',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'height', '17': true},
    {'1': 'weight', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'weight', '17': true},
    {
      '1': 'target_weight',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'targetWeight',
      '17': true
    },
    {
      '1': 'gender',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.user.Gender',
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
      '6': '.user.WeightGoal',
      '9': 5,
      '10': 'weightGoal',
      '17': true
    },
    {
      '1': 'activity_level',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.user.ActivityLevel',
      '9': 6,
      '10': 'activityLevel',
      '17': true
    },
    {
      '1': 'height_unit',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.user.UnitSystem',
      '9': 7,
      '10': 'heightUnit',
      '17': true
    },
    {
      '1': 'weight_unit',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.user.UnitSystem',
      '9': 8,
      '10': 'weightUnit',
      '17': true
    },
    {
      '1': 'daily_calorie_goal',
      '3': 10,
      '4': 1,
      '5': 5,
      '9': 9,
      '10': 'dailyCalorieGoal',
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
    {'1': '_height_unit'},
    {'1': '_weight_unit'},
    {'1': '_daily_calorie_goal'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode(
    'CgtVc2VyUHJvZmlsZRIbCgZoZWlnaHQYASABKAFIAFIGaGVpZ2h0iAEBEhsKBndlaWdodBgCIA'
    'EoAUgBUgZ3ZWlnaHSIAQESKAoNdGFyZ2V0X3dlaWdodBgDIAEoAUgCUgx0YXJnZXRXZWlnaHSI'
    'AQESKQoGZ2VuZGVyGAQgASgOMgwudXNlci5HZW5kZXJIA1IGZ2VuZGVyiAEBEicKDWRhdGVfb2'
    'ZfYmlydGgYBSABKAlIBFILZGF0ZU9mQmlydGiIAQESNgoLd2VpZ2h0X2dvYWwYBiABKA4yEC51'
    'c2VyLldlaWdodEdvYWxIBVIKd2VpZ2h0R29hbIgBARI/Cg5hY3Rpdml0eV9sZXZlbBgHIAEoDj'
    'ITLnVzZXIuQWN0aXZpdHlMZXZlbEgGUg1hY3Rpdml0eUxldmVsiAEBEjYKC2hlaWdodF91bml0'
    'GAggASgOMhAudXNlci5Vbml0U3lzdGVtSAdSCmhlaWdodFVuaXSIAQESNgoLd2VpZ2h0X3VuaX'
    'QYCSABKA4yEC51c2VyLlVuaXRTeXN0ZW1ICFIKd2VpZ2h0VW5pdIgBARIxChJkYWlseV9jYWxv'
    'cmllX2dvYWwYCiABKAVICVIQZGFpbHlDYWxvcmllR29hbIgBAUIJCgdfaGVpZ2h0QgkKB193ZW'
    'lnaHRCEAoOX3RhcmdldF93ZWlnaHRCCQoHX2dlbmRlckIQCg5fZGF0ZV9vZl9iaXJ0aEIOCgxf'
    'd2VpZ2h0X2dvYWxCEQoPX2FjdGl2aXR5X2xldmVsQg4KDF9oZWlnaHRfdW5pdEIOCgxfd2VpZ2'
    'h0X3VuaXRCFQoTX2RhaWx5X2NhbG9yaWVfZ29hbA==');
