// This is a generated file - do not edit.
//
// Generated from calorify/models.proto.

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

@$core.Deprecated('Use mealInfoDescriptor instead')
const MealInfo$json = {
  '1': 'MealInfo',
  '2': [
    {
      '1': 'client_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'clientId',
      '17': true
    },
    {
      '1': 'local_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '9': 1,
      '10': 'localId',
      '17': true
    },
    {'1': 'meal_name', '3': 3, '4': 1, '5': 9, '10': 'mealName'},
    {'1': 'meal_quantity', '3': 4, '4': 1, '5': 9, '10': 'mealQuantity'},
    {
      '1': 'meal_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.calorify.v1.MealType',
      '10': 'mealType'
    },
    {'1': 'calories', '3': 6, '4': 1, '5': 5, '10': 'calories'},
    {'1': 'protein', '3': 7, '4': 1, '5': 5, '10': 'protein'},
    {'1': 'carbs', '3': 8, '4': 1, '5': 5, '10': 'carbs'},
    {'1': 'fat', '3': 9, '4': 1, '5': 5, '10': 'fat'},
    {'1': 'fiber', '3': 10, '4': 1, '5': 5, '10': 'fiber'},
    {'1': 'timestamp', '3': 11, '4': 1, '5': 3, '10': 'timestamp'},
    {
      '1': 'image_url',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'imageUrl',
      '17': true
    },
    {
      '1': 'health_score',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.calorify.v1.HealthScore',
      '9': 3,
      '10': 'healthScore',
      '17': true
    },
    {
      '1': 'health_score_reason',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'healthScoreReason',
      '17': true
    },
  ],
  '8': [
    {'1': '_client_id'},
    {'1': '_local_id'},
    {'1': '_image_url'},
    {'1': '_health_score'},
    {'1': '_health_score_reason'},
  ],
};

/// Descriptor for `MealInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealInfoDescriptor = $convert.base64Decode(
    'CghNZWFsSW5mbxIgCgljbGllbnRfaWQYASABKAlIAFIIY2xpZW50SWSIAQESHgoIbG9jYWxfaW'
    'QYAiABKANIAVIHbG9jYWxJZIgBARIbCgltZWFsX25hbWUYAyABKAlSCG1lYWxOYW1lEiMKDW1l'
    'YWxfcXVhbnRpdHkYBCABKAlSDG1lYWxRdWFudGl0eRIyCgltZWFsX3R5cGUYBSABKA4yFS5jYW'
    'xvcmlmeS52MS5NZWFsVHlwZVIIbWVhbFR5cGUSGgoIY2Fsb3JpZXMYBiABKAVSCGNhbG9yaWVz'
    'EhgKB3Byb3RlaW4YByABKAVSB3Byb3RlaW4SFAoFY2FyYnMYCCABKAVSBWNhcmJzEhAKA2ZhdB'
    'gJIAEoBVIDZmF0EhQKBWZpYmVyGAogASgFUgVmaWJlchIcCgl0aW1lc3RhbXAYCyABKANSCXRp'
    'bWVzdGFtcBIgCglpbWFnZV91cmwYDCABKAlIAlIIaW1hZ2VVcmyIAQESQAoMaGVhbHRoX3Njb3'
    'JlGA0gASgOMhguY2Fsb3JpZnkudjEuSGVhbHRoU2NvcmVIA1ILaGVhbHRoU2NvcmWIAQESMwoT'
    'aGVhbHRoX3Njb3JlX3JlYXNvbhgOIAEoCUgEUhFoZWFsdGhTY29yZVJlYXNvbogBAUIMCgpfY2'
    'xpZW50X2lkQgsKCV9sb2NhbF9pZEIMCgpfaW1hZ2VfdXJsQg8KDV9oZWFsdGhfc2NvcmVCFgoU'
    'X2hlYWx0aF9zY29yZV9yZWFzb24=');

@$core.Deprecated('Use mealDetectionResultDescriptor instead')
const MealDetectionResult$json = {
  '1': 'MealDetectionResult',
  '2': [
    {'1': 'meal_identified', '3': 1, '4': 1, '5': 8, '10': 'mealIdentified'},
    {
      '1': 'calorie_confidence',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'calorieConfidence'
    },
    {'1': 'tip', '3': 3, '4': 1, '5': 9, '10': 'tip'},
    {
      '1': 'meal_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.calorify.v1.MealInfo',
      '10': 'mealInfo'
    },
  ],
};

/// Descriptor for `MealDetectionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDetectionResultDescriptor = $convert.base64Decode(
    'ChNNZWFsRGV0ZWN0aW9uUmVzdWx0EicKD21lYWxfaWRlbnRpZmllZBgBIAEoCFIObWVhbElkZW'
    '50aWZpZWQSLQoSY2Fsb3JpZV9jb25maWRlbmNlGAIgASgFUhFjYWxvcmllQ29uZmlkZW5jZRIQ'
    'CgN0aXAYAyABKAlSA3RpcBIyCgltZWFsX2luZm8YBCABKAsyFS5jYWxvcmlmeS52MS5NZWFsSW'
    '5mb1IIbWVhbEluZm8=');

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
      '6': '.calorify.v1.Gender',
      '9': 3,
      '10': 'gender',
      '17': true
    },
    {
      '1': 'date_of_birth',
      '3': 5,
      '4': 1,
      '5': 3,
      '9': 4,
      '10': 'dateOfBirth',
      '17': true
    },
    {
      '1': 'weight_goal',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.calorify.v1.WeightGoal',
      '9': 5,
      '10': 'weightGoal',
      '17': true
    },
    {
      '1': 'activity_level',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.calorify.v1.ActivityLevel',
      '9': 6,
      '10': 'activityLevel',
      '17': true
    },
    {
      '1': 'height_unit',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.calorify.v1.UnitSystem',
      '9': 7,
      '10': 'heightUnit',
      '17': true
    },
    {
      '1': 'weight_unit',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.calorify.v1.UnitSystem',
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
    'AQESMAoGZ2VuZGVyGAQgASgOMhMuY2Fsb3JpZnkudjEuR2VuZGVySANSBmdlbmRlcogBARInCg'
    '1kYXRlX29mX2JpcnRoGAUgASgDSARSC2RhdGVPZkJpcnRoiAEBEj0KC3dlaWdodF9nb2FsGAYg'
    'ASgOMhcuY2Fsb3JpZnkudjEuV2VpZ2h0R29hbEgFUgp3ZWlnaHRHb2FsiAEBEkYKDmFjdGl2aX'
    'R5X2xldmVsGAcgASgOMhouY2Fsb3JpZnkudjEuQWN0aXZpdHlMZXZlbEgGUg1hY3Rpdml0eUxl'
    'dmVsiAEBEj0KC2hlaWdodF91bml0GAggASgOMhcuY2Fsb3JpZnkudjEuVW5pdFN5c3RlbUgHUg'
    'poZWlnaHRVbml0iAEBEj0KC3dlaWdodF91bml0GAkgASgOMhcuY2Fsb3JpZnkudjEuVW5pdFN5'
    'c3RlbUgIUgp3ZWlnaHRVbml0iAEBEjEKEmRhaWx5X2NhbG9yaWVfZ29hbBgKIAEoBUgJUhBkYW'
    'lseUNhbG9yaWVHb2FsiAEBQgkKB19oZWlnaHRCCQoHX3dlaWdodEIQCg5fdGFyZ2V0X3dlaWdo'
    'dEIJCgdfZ2VuZGVyQhAKDl9kYXRlX29mX2JpcnRoQg4KDF93ZWlnaHRfZ29hbEIRCg9fYWN0aX'
    'ZpdHlfbGV2ZWxCDgoMX2hlaWdodF91bml0Qg4KDF93ZWlnaHRfdW5pdEIVChNfZGFpbHlfY2Fs'
    'b3JpZV9nb2Fs');

@$core.Deprecated('Use fcmTokenDescriptor instead')
const FcmToken$json = {
  '1': 'FcmToken',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'device_type',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'deviceType',
      '17': true
    },
  ],
  '8': [
    {'1': '_device_type'},
  ],
};

/// Descriptor for `FcmToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fcmTokenDescriptor = $convert.base64Decode(
    'CghGY21Ub2tlbhIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SJAoLZGV2aWNlX3R5cGUYAiABKAlIAF'
    'IKZGV2aWNlVHlwZYgBAUIOCgxfZGV2aWNlX3R5cGU=');
