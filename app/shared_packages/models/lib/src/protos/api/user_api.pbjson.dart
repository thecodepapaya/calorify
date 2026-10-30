// This is a generated file - do not edit.
//
// Generated from protos/api/user_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDetailsRequestDescriptor instead')
const UserDetailsRequest$json = {
  '1': 'UserDetailsRequest',
};

/// Descriptor for `UserDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDetailsRequestDescriptor =
    $convert.base64Decode('ChJVc2VyRGV0YWlsc1JlcXVlc3Q=');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.common.User', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIgCgR1c2VyGAEgASgLMgwuY29tbW9uLlVzZXJSBHVzZXI=');

@$core.Deprecated('Use userDetailsResponseDescriptor instead')
const UserDetailsResponse$json = {
  '1': 'UserDetailsResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.common.User', '10': 'user'},
  ],
};

/// Descriptor for `UserDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDetailsResponseDescriptor = $convert.base64Decode(
    'ChNVc2VyRGV0YWlsc1Jlc3BvbnNlEiAKBHVzZXIYASABKAsyDC5jb21tb24uVXNlclIEdXNlcg'
    '==');

@$core.Deprecated('Use updateFcmTokenRequestDescriptor instead')
const UpdateFcmTokenRequest$json = {
  '1': 'UpdateFcmTokenRequest',
  '2': [
    {'1': 'fcm', '3': 1, '4': 1, '5': 11, '6': '.server.Fcm', '10': 'fcm'},
  ],
};

/// Descriptor for `UpdateFcmTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFcmTokenRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVGY21Ub2tlblJlcXVlc3QSHQoDZmNtGAEgASgLMgsuc2VydmVyLkZjbVIDZmNt');

@$core.Deprecated('Use healthDataRequestDescriptor instead')
const HealthDataRequest$json = {
  '1': 'HealthDataRequest',
  '2': [
    {
      '1': 'health_data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.common.HealthData',
      '10': 'healthData'
    },
  ],
};

/// Descriptor for `HealthDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthDataRequestDescriptor = $convert.base64Decode(
    'ChFIZWFsdGhEYXRhUmVxdWVzdBIzCgtoZWFsdGhfZGF0YRgBIAEoCzISLmNvbW1vbi5IZWFsdG'
    'hEYXRhUgpoZWFsdGhEYXRh');

@$core.Deprecated('Use healthDataResponseDescriptor instead')
const HealthDataResponse$json = {
  '1': 'HealthDataResponse',
  '2': [
    {
      '1': 'health_data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.common.HealthData',
      '10': 'healthData'
    },
  ],
};

/// Descriptor for `HealthDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthDataResponseDescriptor = $convert.base64Decode(
    'ChJIZWFsdGhEYXRhUmVzcG9uc2USMwoLaGVhbHRoX2RhdGEYASABKAsyEi5jb21tb24uSGVhbH'
    'RoRGF0YVIKaGVhbHRoRGF0YQ==');
