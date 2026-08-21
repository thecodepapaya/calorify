// This is a generated file - do not edit.
//
// Generated from protos/wear/wear_protocol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use wearProtocolVersionDescriptor instead')
const WearProtocolVersion$json = {
  '1': 'WearProtocolVersion',
  '2': [
    {'1': 'WEAR_PROTOCOL_VERSION_UNSPECIFIED', '2': 0},
    {'1': 'WEAR_PROTOCOL_VERSION_LEGACY_V1', '2': 1},
    {'1': 'WEAR_PROTOCOL_VERSION_V2', '2': 2},
  ],
};

/// Descriptor for `WearProtocolVersion`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wearProtocolVersionDescriptor = $convert.base64Decode(
    'ChNXZWFyUHJvdG9jb2xWZXJzaW9uEiUKIVdFQVJfUFJPVE9DT0xfVkVSU0lPTl9VTlNQRUNJRk'
    'lFRBAAEiMKH1dFQVJfUFJPVE9DT0xfVkVSU0lPTl9MRUdBQ1lfVjEQARIcChhXRUFSX1BST1RP'
    'Q09MX1ZFUlNJT05fVjIQAg==');

@$core.Deprecated('Use wearOperationDescriptor instead')
const WearOperation$json = {
  '1': 'WearOperation',
  '2': [
    {'1': 'WEAR_OPERATION_UNSPECIFIED', '2': 0},
    {'1': 'WEAR_OPERATION_MEAL_LOG', '2': 1},
    {'1': 'WEAR_OPERATION_MEAL_DELETE', '2': 2},
    {'1': 'WEAR_OPERATION_TODAY_MEALS', '2': 3},
    {'1': 'WEAR_OPERATION_CALORIE_GOAL', '2': 4},
    {'1': 'WEAR_OPERATION_USER_PROFILE', '2': 5},
    {'1': 'WEAR_OPERATION_FAVORITES', '2': 6},
    {'1': 'WEAR_OPERATION_AUTH_SESSION', '2': 7},
    {'1': 'WEAR_OPERATION_DETECT_TEXT', '2': 8},
    {'1': 'WEAR_OPERATION_DATA_CHANGED', '2': 9},
  ],
};

/// Descriptor for `WearOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wearOperationDescriptor = $convert.base64Decode(
    'Cg1XZWFyT3BlcmF0aW9uEh4KGldFQVJfT1BFUkFUSU9OX1VOU1BFQ0lGSUVEEAASGwoXV0VBUl'
    '9PUEVSQVRJT05fTUVBTF9MT0cQARIeChpXRUFSX09QRVJBVElPTl9NRUFMX0RFTEVURRACEh4K'
    'GldFQVJfT1BFUkFUSU9OX1RPREFZX01FQUxTEAMSHwobV0VBUl9PUEVSQVRJT05fQ0FMT1JJRV'
    '9HT0FMEAQSHwobV0VBUl9PUEVSQVRJT05fVVNFUl9QUk9GSUxFEAUSHAoYV0VBUl9PUEVSQVRJ'
    'T05fRkFWT1JJVEVTEAYSHwobV0VBUl9PUEVSQVRJT05fQVVUSF9TRVNTSU9OEAcSHgoaV0VBUl'
    '9PUEVSQVRJT05fREVURUNUX1RFWFQQCBIfChtXRUFSX09QRVJBVElPTl9EQVRBX0NIQU5HRUQQ'
    'CQ==');

@$core.Deprecated('Use wearErrorCodeDescriptor instead')
const WearErrorCode$json = {
  '1': 'WearErrorCode',
  '2': [
    {'1': 'WEAR_ERROR_CODE_UNSPECIFIED', '2': 0},
    {'1': 'WEAR_ERROR_CODE_INVALID_VERSION', '2': 1},
    {'1': 'WEAR_ERROR_CODE_UNKNOWN_OPERATION', '2': 2},
    {'1': 'WEAR_ERROR_CODE_INVALID_PAYLOAD', '2': 3},
    {'1': 'WEAR_ERROR_CODE_UNAUTHENTICATED', '2': 4},
    {'1': 'WEAR_ERROR_CODE_NOT_FOUND', '2': 5},
    {'1': 'WEAR_ERROR_CODE_REJECTED', '2': 6},
    {'1': 'WEAR_ERROR_CODE_TIMEOUT', '2': 7},
    {'1': 'WEAR_ERROR_CODE_DISCONNECTED', '2': 8},
    {'1': 'WEAR_ERROR_CODE_UNAVAILABLE', '2': 9},
    {'1': 'WEAR_ERROR_CODE_NETWORK', '2': 10},
    {'1': 'WEAR_ERROR_CODE_INTERNAL', '2': 11},
    {'1': 'WEAR_ERROR_CODE_MALFORMED_RESPONSE', '2': 12},
    {'1': 'WEAR_ERROR_CODE_PLATFORM', '2': 13},
  ],
};

/// Descriptor for `WearErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wearErrorCodeDescriptor = $convert.base64Decode(
    'Cg1XZWFyRXJyb3JDb2RlEh8KG1dFQVJfRVJST1JfQ09ERV9VTlNQRUNJRklFRBAAEiMKH1dFQV'
    'JfRVJST1JfQ09ERV9JTlZBTElEX1ZFUlNJT04QARIlCiFXRUFSX0VSUk9SX0NPREVfVU5LTk9X'
    'Tl9PUEVSQVRJT04QAhIjCh9XRUFSX0VSUk9SX0NPREVfSU5WQUxJRF9QQVlMT0FEEAMSIwofV0'
    'VBUl9FUlJPUl9DT0RFX1VOQVVUSEVOVElDQVRFRBAEEh0KGVdFQVJfRVJST1JfQ09ERV9OT1Rf'
    'Rk9VTkQQBRIcChhXRUFSX0VSUk9SX0NPREVfUkVKRUNURUQQBhIbChdXRUFSX0VSUk9SX0NPRE'
    'VfVElNRU9VVBAHEiAKHFdFQVJfRVJST1JfQ09ERV9ESVNDT05ORUNURUQQCBIfChtXRUFSX0VS'
    'Uk9SX0NPREVfVU5BVkFJTEFCTEUQCRIbChdXRUFSX0VSUk9SX0NPREVfTkVUV09SSxAKEhwKGF'
    'dFQVJfRVJST1JfQ09ERV9JTlRFUk5BTBALEiYKIldFQVJfRVJST1JfQ09ERV9NQUxGT1JNRURf'
    'UkVTUE9OU0UQDBIcChhXRUFSX0VSUk9SX0NPREVfUExBVEZPUk0QDQ==');

@$core.Deprecated('Use wearErrorDescriptor instead')
const WearError$json = {
  '1': 'WearError',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.wear.WearErrorCode',
      '10': 'code'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'retryable', '3': 3, '4': 1, '5': 8, '10': 'retryable'},
  ],
};

/// Descriptor for `WearError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearErrorDescriptor = $convert.base64Decode(
    'CglXZWFyRXJyb3ISJwoEY29kZRgBIAEoDjITLndlYXIuV2VhckVycm9yQ29kZVIEY29kZRIYCg'
    'dtZXNzYWdlGAIgASgJUgdtZXNzYWdlEhwKCXJldHJ5YWJsZRgDIAEoCFIJcmV0cnlhYmxl');

@$core.Deprecated('Use mealLogRequestDescriptor instead')
const MealLogRequest$json = {
  '1': 'MealLogRequest',
  '2': [
    {
      '1': 'meal',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.app.LoggedMeal',
      '10': 'meal'
    },
    {'1': 'operation_id', '3': 2, '4': 1, '5': 9, '10': 'operationId'},
    {
      '1': 'favorite_meal_id',
      '3': 3,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'favoriteMealId',
      '17': true
    },
  ],
  '8': [
    {'1': '_favorite_meal_id'},
  ],
};

/// Descriptor for `MealLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealLogRequestDescriptor = $convert.base64Decode(
    'Cg5NZWFsTG9nUmVxdWVzdBIjCgRtZWFsGAEgASgLMg8uYXBwLkxvZ2dlZE1lYWxSBG1lYWwSIQ'
    'oMb3BlcmF0aW9uX2lkGAIgASgJUgtvcGVyYXRpb25JZBItChBmYXZvcml0ZV9tZWFsX2lkGAMg'
    'ASgFSABSDmZhdm9yaXRlTWVhbElkiAEBQhMKEV9mYXZvcml0ZV9tZWFsX2lk');

@$core.Deprecated('Use mealDeleteRequestDescriptor instead')
const MealDeleteRequest$json = {
  '1': 'MealDeleteRequest',
  '2': [
    {'1': 'meal_id', '3': 1, '4': 1, '5': 5, '10': 'mealId'},
  ],
};

/// Descriptor for `MealDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDeleteRequestDescriptor = $convert.base64Decode(
    'ChFNZWFsRGVsZXRlUmVxdWVzdBIXCgdtZWFsX2lkGAEgASgFUgZtZWFsSWQ=');

@$core.Deprecated('Use todayMealsRequestDescriptor instead')
const TodayMealsRequest$json = {
  '1': 'TodayMealsRequest',
};

/// Descriptor for `TodayMealsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todayMealsRequestDescriptor =
    $convert.base64Decode('ChFUb2RheU1lYWxzUmVxdWVzdA==');

@$core.Deprecated('Use calorieGoalRequestDescriptor instead')
const CalorieGoalRequest$json = {
  '1': 'CalorieGoalRequest',
};

/// Descriptor for `CalorieGoalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calorieGoalRequestDescriptor =
    $convert.base64Decode('ChJDYWxvcmllR29hbFJlcXVlc3Q=');

@$core.Deprecated('Use userProfileRequestDescriptor instead')
const UserProfileRequest$json = {
  '1': 'UserProfileRequest',
};

/// Descriptor for `UserProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileRequestDescriptor =
    $convert.base64Decode('ChJVc2VyUHJvZmlsZVJlcXVlc3Q=');

@$core.Deprecated('Use favoritesRequestDescriptor instead')
const FavoritesRequest$json = {
  '1': 'FavoritesRequest',
};

/// Descriptor for `FavoritesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoritesRequestDescriptor =
    $convert.base64Decode('ChBGYXZvcml0ZXNSZXF1ZXN0');

@$core.Deprecated('Use authSessionRequestDescriptor instead')
const AuthSessionRequest$json = {
  '1': 'AuthSessionRequest',
};

/// Descriptor for `AuthSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authSessionRequestDescriptor =
    $convert.base64Decode('ChJBdXRoU2Vzc2lvblJlcXVlc3Q=');

@$core.Deprecated('Use detectTextRequestDescriptor instead')
const DetectTextRequest$json = {
  '1': 'DetectTextRequest',
  '2': [
    {'1': 'text_description', '3': 1, '4': 1, '5': 9, '10': 'textDescription'},
  ],
};

/// Descriptor for `DetectTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detectTextRequestDescriptor = $convert.base64Decode(
    'ChFEZXRlY3RUZXh0UmVxdWVzdBIpChB0ZXh0X2Rlc2NyaXB0aW9uGAEgASgJUg90ZXh0RGVzY3'
    'JpcHRpb24=');

@$core.Deprecated('Use wearRequestDescriptor instead')
const WearRequest$json = {
  '1': 'WearRequest',
  '2': [
    {
      '1': 'meal_log',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.wear.MealLogRequest',
      '9': 0,
      '10': 'mealLog'
    },
    {
      '1': 'meal_delete',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.wear.MealDeleteRequest',
      '9': 0,
      '10': 'mealDelete'
    },
    {
      '1': 'today_meals',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.wear.TodayMealsRequest',
      '9': 0,
      '10': 'todayMeals'
    },
    {
      '1': 'calorie_goal',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.wear.CalorieGoalRequest',
      '9': 0,
      '10': 'calorieGoal'
    },
    {
      '1': 'user_profile',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.wear.UserProfileRequest',
      '9': 0,
      '10': 'userProfile'
    },
    {
      '1': 'favorites',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.wear.FavoritesRequest',
      '9': 0,
      '10': 'favorites'
    },
    {
      '1': 'auth_session',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.wear.AuthSessionRequest',
      '9': 0,
      '10': 'authSession'
    },
    {
      '1': 'detect_text',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.wear.DetectTextRequest',
      '9': 0,
      '10': 'detectText'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `WearRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearRequestDescriptor = $convert.base64Decode(
    'CgtXZWFyUmVxdWVzdBIxCghtZWFsX2xvZxgKIAEoCzIULndlYXIuTWVhbExvZ1JlcXVlc3RIAF'
    'IHbWVhbExvZxI6CgttZWFsX2RlbGV0ZRgLIAEoCzIXLndlYXIuTWVhbERlbGV0ZVJlcXVlc3RI'
    'AFIKbWVhbERlbGV0ZRI6Cgt0b2RheV9tZWFscxgMIAEoCzIXLndlYXIuVG9kYXlNZWFsc1JlcX'
    'Vlc3RIAFIKdG9kYXlNZWFscxI9CgxjYWxvcmllX2dvYWwYDSABKAsyGC53ZWFyLkNhbG9yaWVH'
    'b2FsUmVxdWVzdEgAUgtjYWxvcmllR29hbBI9Cgx1c2VyX3Byb2ZpbGUYDiABKAsyGC53ZWFyLl'
    'VzZXJQcm9maWxlUmVxdWVzdEgAUgt1c2VyUHJvZmlsZRI2CglmYXZvcml0ZXMYDyABKAsyFi53'
    'ZWFyLkZhdm9yaXRlc1JlcXVlc3RIAFIJZmF2b3JpdGVzEj0KDGF1dGhfc2Vzc2lvbhgQIAEoCz'
    'IYLndlYXIuQXV0aFNlc3Npb25SZXF1ZXN0SABSC2F1dGhTZXNzaW9uEjoKC2RldGVjdF90ZXh0'
    'GBEgASgLMhcud2Vhci5EZXRlY3RUZXh0UmVxdWVzdEgAUgpkZXRlY3RUZXh0QgkKB3BheWxvYW'
    'Q=');

@$core.Deprecated('Use mealLogResponseDescriptor instead')
const MealLogResponse$json = {
  '1': 'MealLogResponse',
};

/// Descriptor for `MealLogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealLogResponseDescriptor =
    $convert.base64Decode('Cg9NZWFsTG9nUmVzcG9uc2U=');

@$core.Deprecated('Use mealDeleteResponseDescriptor instead')
const MealDeleteResponse$json = {
  '1': 'MealDeleteResponse',
};

/// Descriptor for `MealDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealDeleteResponseDescriptor =
    $convert.base64Decode('ChJNZWFsRGVsZXRlUmVzcG9uc2U=');

@$core.Deprecated('Use todayMealsResponseDescriptor instead')
const TodayMealsResponse$json = {
  '1': 'TodayMealsResponse',
  '2': [
    {
      '1': 'meals',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.app.LoggedMeal',
      '10': 'meals'
    },
  ],
};

/// Descriptor for `TodayMealsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todayMealsResponseDescriptor = $convert.base64Decode(
    'ChJUb2RheU1lYWxzUmVzcG9uc2USJQoFbWVhbHMYASADKAsyDy5hcHAuTG9nZ2VkTWVhbFIFbW'
    'VhbHM=');

@$core.Deprecated('Use calorieGoalResponseDescriptor instead')
const CalorieGoalResponse$json = {
  '1': 'CalorieGoalResponse',
  '2': [
    {'1': 'goal', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'goal', '17': true},
  ],
  '8': [
    {'1': '_goal'},
  ],
};

/// Descriptor for `CalorieGoalResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calorieGoalResponseDescriptor = $convert.base64Decode(
    'ChNDYWxvcmllR29hbFJlc3BvbnNlEhcKBGdvYWwYASABKAVIAFIEZ29hbIgBAUIHCgVfZ29hbA'
    '==');

@$core.Deprecated('Use userProfileResponseDescriptor instead')
const UserProfileResponse$json = {
  '1': 'UserProfileResponse',
  '2': [
    {
      '1': 'profile',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.user.UserProfile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `UserProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileResponseDescriptor = $convert.base64Decode(
    'ChNVc2VyUHJvZmlsZVJlc3BvbnNlEisKB3Byb2ZpbGUYASABKAsyES51c2VyLlVzZXJQcm9maW'
    'xlUgdwcm9maWxl');

@$core.Deprecated('Use favoritesResponseDescriptor instead')
const FavoritesResponse$json = {
  '1': 'FavoritesResponse',
  '2': [
    {
      '1': 'favorites',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.app.FavoriteMeal',
      '10': 'favorites'
    },
  ],
};

/// Descriptor for `FavoritesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoritesResponseDescriptor = $convert.base64Decode(
    'ChFGYXZvcml0ZXNSZXNwb25zZRIvCglmYXZvcml0ZXMYASADKAsyES5hcHAuRmF2b3JpdGVNZW'
    'FsUglmYXZvcml0ZXM=');

@$core.Deprecated('Use wearAuthSessionDescriptor instead')
const WearAuthSession$json = {
  '1': 'WearAuthSession',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'auth_token', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
    {'1': 'is_anonymous', '3': 3, '4': 1, '5': 8, '10': 'isAnonymous'},
    {'1': 'synced_at', '3': 4, '4': 1, '5': 9, '10': 'syncedAt'},
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
  '10': ['fcm_token'],
};

/// Descriptor for `WearAuthSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearAuthSessionDescriptor = $convert.base64Decode(
    'Cg9XZWFyQXV0aFNlc3Npb24SEAoDdWlkGAEgASgJUgN1aWQSHQoKYXV0aF90b2tlbhgCIAEoCV'
    'IJYXV0aFRva2VuEiEKDGlzX2Fub255bW91cxgDIAEoCFILaXNBbm9ueW1vdXMSGwoJc3luY2Vk'
    'X2F0GAQgASgJUghzeW5jZWRBdEoECAUQBlIJZmNtX3Rva2Vu');

@$core.Deprecated('Use authSessionResponseDescriptor instead')
const AuthSessionResponse$json = {
  '1': 'AuthSessionResponse',
  '2': [
    {
      '1': 'session',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.wear.WearAuthSession',
      '10': 'session'
    },
  ],
};

/// Descriptor for `AuthSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authSessionResponseDescriptor = $convert.base64Decode(
    'ChNBdXRoU2Vzc2lvblJlc3BvbnNlEi8KB3Nlc3Npb24YASABKAsyFS53ZWFyLldlYXJBdXRoU2'
    'Vzc2lvblIHc2Vzc2lvbg==');

@$core.Deprecated('Use detectTextResponseDescriptor instead')
const DetectTextResponse$json = {
  '1': 'DetectTextResponse',
  '2': [
    {
      '1': 'response',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.calorify.MealDetectionResponse',
      '10': 'response'
    },
  ],
};

/// Descriptor for `DetectTextResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detectTextResponseDescriptor = $convert.base64Decode(
    'ChJEZXRlY3RUZXh0UmVzcG9uc2USOwoIcmVzcG9uc2UYASABKAsyHy5jYWxvcmlmeS5NZWFsRG'
    'V0ZWN0aW9uUmVzcG9uc2VSCHJlc3BvbnNl');

@$core.Deprecated('Use wearResponseDescriptor instead')
const WearResponse$json = {
  '1': 'WearResponse',
  '2': [
    {
      '1': 'error',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.wear.WearError',
      '9': 1,
      '10': 'error',
      '17': true
    },
    {
      '1': 'meal_log',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.wear.MealLogResponse',
      '9': 0,
      '10': 'mealLog'
    },
    {
      '1': 'meal_delete',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.wear.MealDeleteResponse',
      '9': 0,
      '10': 'mealDelete'
    },
    {
      '1': 'today_meals',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.wear.TodayMealsResponse',
      '9': 0,
      '10': 'todayMeals'
    },
    {
      '1': 'calorie_goal',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.wear.CalorieGoalResponse',
      '9': 0,
      '10': 'calorieGoal'
    },
    {
      '1': 'user_profile',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.wear.UserProfileResponse',
      '9': 0,
      '10': 'userProfile'
    },
    {
      '1': 'favorites',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.wear.FavoritesResponse',
      '9': 0,
      '10': 'favorites'
    },
    {
      '1': 'auth_session',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.wear.AuthSessionResponse',
      '9': 0,
      '10': 'authSession'
    },
    {
      '1': 'detect_text',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.wear.DetectTextResponse',
      '9': 0,
      '10': 'detectText'
    },
  ],
  '8': [
    {'1': 'payload'},
    {'1': '_error'},
  ],
};

/// Descriptor for `WearResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearResponseDescriptor = $convert.base64Decode(
    'CgxXZWFyUmVzcG9uc2USKgoFZXJyb3IYASABKAsyDy53ZWFyLldlYXJFcnJvckgBUgVlcnJvco'
    'gBARIyCghtZWFsX2xvZxgKIAEoCzIVLndlYXIuTWVhbExvZ1Jlc3BvbnNlSABSB21lYWxMb2cS'
    'OwoLbWVhbF9kZWxldGUYCyABKAsyGC53ZWFyLk1lYWxEZWxldGVSZXNwb25zZUgAUgptZWFsRG'
    'VsZXRlEjsKC3RvZGF5X21lYWxzGAwgASgLMhgud2Vhci5Ub2RheU1lYWxzUmVzcG9uc2VIAFIK'
    'dG9kYXlNZWFscxI+CgxjYWxvcmllX2dvYWwYDSABKAsyGS53ZWFyLkNhbG9yaWVHb2FsUmVzcG'
    '9uc2VIAFILY2Fsb3JpZUdvYWwSPgoMdXNlcl9wcm9maWxlGA4gASgLMhkud2Vhci5Vc2VyUHJv'
    'ZmlsZVJlc3BvbnNlSABSC3VzZXJQcm9maWxlEjcKCWZhdm9yaXRlcxgPIAEoCzIXLndlYXIuRm'
    'F2b3JpdGVzUmVzcG9uc2VIAFIJZmF2b3JpdGVzEj4KDGF1dGhfc2Vzc2lvbhgQIAEoCzIZLndl'
    'YXIuQXV0aFNlc3Npb25SZXNwb25zZUgAUgthdXRoU2Vzc2lvbhI7CgtkZXRlY3RfdGV4dBgRIA'
    'EoCzIYLndlYXIuRGV0ZWN0VGV4dFJlc3BvbnNlSABSCmRldGVjdFRleHRCCQoHcGF5bG9hZEII'
    'CgZfZXJyb3I=');

@$core.Deprecated('Use dataChangedEventDescriptor instead')
const DataChangedEvent$json = {
  '1': 'DataChangedEvent',
  '2': [
    {
      '1': 'operations',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.wear.WearOperation',
      '10': 'operations'
    },
  ],
};

/// Descriptor for `DataChangedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataChangedEventDescriptor = $convert.base64Decode(
    'ChBEYXRhQ2hhbmdlZEV2ZW50EjMKCm9wZXJhdGlvbnMYASADKA4yEy53ZWFyLldlYXJPcGVyYX'
    'Rpb25SCm9wZXJhdGlvbnM=');

@$core.Deprecated('Use wearEventDescriptor instead')
const WearEvent$json = {
  '1': 'WearEvent',
  '2': [
    {
      '1': 'data_changed',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.wear.DataChangedEvent',
      '9': 0,
      '10': 'dataChanged'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `WearEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearEventDescriptor = $convert.base64Decode(
    'CglXZWFyRXZlbnQSOwoMZGF0YV9jaGFuZ2VkGAogASgLMhYud2Vhci5EYXRhQ2hhbmdlZEV2ZW'
    '50SABSC2RhdGFDaGFuZ2VkQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use wearEnvelopeDescriptor instead')
const WearEnvelope$json = {
  '1': 'WearEnvelope',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'operation',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.wear.WearOperation',
      '10': 'operation'
    },
    {
      '1': 'request',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.wear.WearRequest',
      '9': 0,
      '10': 'request'
    },
    {
      '1': 'response',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.wear.WearResponse',
      '9': 0,
      '10': 'response'
    },
    {
      '1': 'event',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.wear.WearEvent',
      '9': 0,
      '10': 'event'
    },
  ],
  '8': [
    {'1': 'body'},
  ],
};

/// Descriptor for `WearEnvelope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearEnvelopeDescriptor = $convert.base64Decode(
    'CgxXZWFyRW52ZWxvcGUSGAoHdmVyc2lvbhgBIAEoDVIHdmVyc2lvbhIdCgpyZXF1ZXN0X2lkGA'
    'IgASgJUglyZXF1ZXN0SWQSMQoJb3BlcmF0aW9uGAMgASgOMhMud2Vhci5XZWFyT3BlcmF0aW9u'
    'UglvcGVyYXRpb24SLQoHcmVxdWVzdBgKIAEoCzIRLndlYXIuV2VhclJlcXVlc3RIAFIHcmVxdW'
    'VzdBIwCghyZXNwb25zZRgLIAEoCzISLndlYXIuV2VhclJlc3BvbnNlSABSCHJlc3BvbnNlEicK'
    'BWV2ZW50GAwgASgLMg8ud2Vhci5XZWFyRXZlbnRIAFIFZXZlbnRCBgoEYm9keQ==');
