// This is a generated file - do not edit.
//
// Generated from protos/api/meal_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use metaInfoDescriptor instead')
const MetaInfo$json = {
  '1': 'MetaInfo',
  '2': [
    {'1': 'locale', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'locale', '17': true},
    {
      '1': 'timezone',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'timezone',
      '17': true
    },
    {
      '1': 'country_code',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'countryCode',
      '17': true
    },
    {
      '1': 'timestamp',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 3,
      '10': 'timestamp',
      '17': true
    },
  ],
  '8': [
    {'1': '_locale'},
    {'1': '_timezone'},
    {'1': '_country_code'},
    {'1': '_timestamp'},
  ],
};

/// Descriptor for `MetaInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaInfoDescriptor = $convert.base64Decode(
    'CghNZXRhSW5mbxIbCgZsb2NhbGUYASABKAlIAFIGbG9jYWxliAEBEh8KCHRpbWV6b25lGAIgAS'
    'gJSAFSCHRpbWV6b25liAEBEiYKDGNvdW50cnlfY29kZRgDIAEoCUgCUgtjb3VudHJ5Q29kZYgB'
    'ARI9Cgl0aW1lc3RhbXAYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSANSCXRpbW'
    'VzdGFtcIgBAUIJCgdfbG9jYWxlQgsKCV90aW1lem9uZUIPCg1fY291bnRyeV9jb2RlQgwKCl90'
    'aW1lc3RhbXA=');

@$core.Deprecated('Use mealAnalysisRequestDescriptor instead')
const MealAnalysisRequest$json = {
  '1': 'MealAnalysisRequest',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'text', '17': true},
    {
      '1': 'image_base64',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'imageBase64',
      '17': true
    },
    {
      '1': 'meta_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.api.MetaInfo',
      '10': 'metaInfo'
    },
  ],
  '8': [
    {'1': '_text'},
    {'1': '_image_base64'},
  ],
};

/// Descriptor for `MealAnalysisRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisRequestDescriptor = $convert.base64Decode(
    'ChNNZWFsQW5hbHlzaXNSZXF1ZXN0EhcKBHRleHQYASABKAlIAFIEdGV4dIgBARImCgxpbWFnZV'
    '9iYXNlNjQYAiABKAlIAVILaW1hZ2VCYXNlNjSIAQESKgoJbWV0YV9pbmZvGAMgASgLMg0uYXBp'
    'Lk1ldGFJbmZvUghtZXRhSW5mb0IHCgVfdGV4dEIPCg1faW1hZ2VfYmFzZTY0');

@$core.Deprecated('Use mealAnalysisResponseDescriptor instead')
const MealAnalysisResponse$json = {
  '1': 'MealAnalysisResponse',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
  ],
};

/// Descriptor for `MealAnalysisResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisResponseDescriptor = $convert.base64Decode(
    'ChRNZWFsQW5hbHlzaXNSZXNwb25zZRIfCgthbmFseXNpc19pZBgBIAEoCVIKYW5hbHlzaXNJZA'
    '==');

@$core.Deprecated('Use analysisStatusRequestDescriptor instead')
const AnalysisStatusRequest$json = {
  '1': 'AnalysisStatusRequest',
  '2': [
    {'1': 'analysis_id', '3': 1, '4': 1, '5': 9, '10': 'analysisId'},
  ],
};

/// Descriptor for `AnalysisStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisStatusRequestDescriptor = $convert.base64Decode(
    'ChVBbmFseXNpc1N0YXR1c1JlcXVlc3QSHwoLYW5hbHlzaXNfaWQYASABKAlSCmFuYWx5c2lzSW'
    'Q=');

@$core.Deprecated('Use analysisStatusResponseDescriptor instead')
const AnalysisStatusResponse$json = {
  '1': 'AnalysisStatusResponse',
  '2': [
    {'1': 'meal', '3': 1, '4': 1, '5': 11, '6': '.common.Meal', '10': 'meal'},
    {'1': 'analysis_id', '3': 2, '4': 1, '5': 9, '10': 'analysisId'},
  ],
};

/// Descriptor for `AnalysisStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisStatusResponseDescriptor =
    $convert.base64Decode(
        'ChZBbmFseXNpc1N0YXR1c1Jlc3BvbnNlEiAKBG1lYWwYASABKAsyDC5jb21tb24uTWVhbFIEbW'
        'VhbBIfCgthbmFseXNpc19pZBgCIAEoCVIKYW5hbHlzaXNJZA==');

@$core.Deprecated('Use getMealRequestDescriptor instead')
const GetMealRequest$json = {
  '1': 'GetMealRequest',
  '2': [
    {'1': 'meal_id', '3': 1, '4': 1, '5': 5, '10': 'mealId'},
  ],
};

/// Descriptor for `GetMealRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMealRequestDescriptor = $convert
    .base64Decode('Cg5HZXRNZWFsUmVxdWVzdBIXCgdtZWFsX2lkGAEgASgFUgZtZWFsSWQ=');

@$core.Deprecated('Use getMealResponseDescriptor instead')
const GetMealResponse$json = {
  '1': 'GetMealResponse',
  '2': [
    {'1': 'meal', '3': 1, '4': 1, '5': 11, '6': '.common.Meal', '10': 'meal'},
  ],
};

/// Descriptor for `GetMealResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMealResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRNZWFsUmVzcG9uc2USIAoEbWVhbBgBIAEoCzIMLmNvbW1vbi5NZWFsUgRtZWFs');

@$core.Deprecated('Use listMealRequestDescriptor instead')
const ListMealRequest$json = {
  '1': 'ListMealRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListMealRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMealRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0TWVhbFJlcXVlc3QSGwoJcGFnZV9zaXplGAEgASgFUghwYWdlU2l6ZRIdCgpwYWdlX3'
    'Rva2VuGAIgASgJUglwYWdlVG9rZW4=');

@$core.Deprecated('Use listMealResponseDescriptor instead')
const ListMealResponse$json = {
  '1': 'ListMealResponse',
  '2': [
    {'1': 'meals', '3': 1, '4': 3, '5': 11, '6': '.common.Meal', '10': 'meals'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListMealResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMealResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0TWVhbFJlc3BvbnNlEiIKBW1lYWxzGAEgAygLMgwuY29tbW9uLk1lYWxSBW1lYWxzEi'
    'YKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VUb2tlbg==');

@$core.Deprecated('Use logMealRequestDescriptor instead')
const LogMealRequest$json = {
  '1': 'LogMealRequest',
  '2': [
    {'1': 'meal_id', '3': 1, '4': 1, '5': 5, '10': 'mealId'},
  ],
};

/// Descriptor for `LogMealRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logMealRequestDescriptor = $convert
    .base64Decode('Cg5Mb2dNZWFsUmVxdWVzdBIXCgdtZWFsX2lkGAEgASgFUgZtZWFsSWQ=');

@$core.Deprecated('Use logMealResponseDescriptor instead')
const LogMealResponse$json = {
  '1': 'LogMealResponse',
};

/// Descriptor for `LogMealResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logMealResponseDescriptor =
    $convert.base64Decode('Cg9Mb2dNZWFsUmVzcG9uc2U=');

@$core.Deprecated('Use updateMealRequestDescriptor instead')
const UpdateMealRequest$json = {
  '1': 'UpdateMealRequest',
  '2': [
    {'1': 'meal_id', '3': 1, '4': 1, '5': 5, '10': 'mealId'},
  ],
};

/// Descriptor for `UpdateMealRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMealRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVNZWFsUmVxdWVzdBIXCgdtZWFsX2lkGAEgASgFUgZtZWFsSWQ=');

@$core.Deprecated('Use updateMealResponseDescriptor instead')
const UpdateMealResponse$json = {
  '1': 'UpdateMealResponse',
};

/// Descriptor for `UpdateMealResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMealResponseDescriptor =
    $convert.base64Decode('ChJVcGRhdGVNZWFsUmVzcG9uc2U=');

@$core.Deprecated('Use mealFeedbackRequestDescriptor instead')
const MealFeedbackRequest$json = {
  '1': 'MealFeedbackRequest',
  '2': [
    {
      '1': 'is_liked',
      '3': 1,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'isLiked',
      '17': true
    },
  ],
  '8': [
    {'1': '_is_liked'},
  ],
};

/// Descriptor for `MealFeedbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealFeedbackRequestDescriptor = $convert.base64Decode(
    'ChNNZWFsRmVlZGJhY2tSZXF1ZXN0Eh4KCGlzX2xpa2VkGAEgASgISABSB2lzTGlrZWSIAQFCCw'
    'oJX2lzX2xpa2Vk');
