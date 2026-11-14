// This is a generated file - do not edit.
//
// Generated from protos/server/util.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use healthResponseDescriptor instead')
const HealthResponse$json = {
  '1': 'HealthResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `HealthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthResponseDescriptor = $convert
    .base64Decode('Cg5IZWFsdGhSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use lLMCallMetaDataDescriptor instead')
const LLMCallMetaData$json = {
  '1': 'LLMCallMetaData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'analysis_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'analysisId',
      '17': true
    },
    {
      '1': 'created_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'stage',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.server.LLMCallMetaData.Stage',
      '10': 'stage'
    },
    {'1': 'model', '3': 5, '4': 1, '5': 9, '10': 'model'},
    {
      '1': 'prompt_tokens',
      '3': 6,
      '4': 1,
      '5': 3,
      '9': 1,
      '10': 'promptTokens',
      '17': true
    },
    {
      '1': 'cached_tokens',
      '3': 7,
      '4': 1,
      '5': 3,
      '9': 2,
      '10': 'cachedTokens',
      '17': true
    },
    {
      '1': 'completion_tokens',
      '3': 8,
      '4': 1,
      '5': 3,
      '9': 3,
      '10': 'completionTokens',
      '17': true
    },
    {'1': 'duration_ms', '3': 9, '4': 1, '5': 3, '10': 'durationMs'},
    {'1': 'error', '3': 10, '4': 1, '5': 9, '9': 4, '10': 'error', '17': true},
  ],
  '4': [LLMCallMetaData_Stage$json],
  '8': [
    {'1': '_analysis_id'},
    {'1': '_prompt_tokens'},
    {'1': '_cached_tokens'},
    {'1': '_completion_tokens'},
    {'1': '_error'},
  ],
};

@$core.Deprecated('Use lLMCallMetaDataDescriptor instead')
const LLMCallMetaData_Stage$json = {
  '1': 'Stage',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'PASS_1', '2': 1},
    {'1': 'PASS_2', '2': 2},
    {'1': 'SUMMARY', '2': 3},
  ],
};

/// Descriptor for `LLMCallMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lLMCallMetaDataDescriptor = $convert.base64Decode(
    'Cg9MTE1DYWxsTWV0YURhdGESDgoCaWQYASABKANSAmlkEiQKC2FuYWx5c2lzX2lkGAIgASgJSA'
    'BSCmFuYWx5c2lzSWSIAQESOQoKY3JlYXRlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBSCWNyZWF0ZWRBdBIzCgVzdGFnZRgEIAEoDjIdLnNlcnZlci5MTE1DYWxsTWV0YU'
    'RhdGEuU3RhZ2VSBXN0YWdlEhQKBW1vZGVsGAUgASgJUgVtb2RlbBIoCg1wcm9tcHRfdG9rZW5z'
    'GAYgASgDSAFSDHByb21wdFRva2Vuc4gBARIoCg1jYWNoZWRfdG9rZW5zGAcgASgDSAJSDGNhY2'
    'hlZFRva2Vuc4gBARIwChFjb21wbGV0aW9uX3Rva2VucxgIIAEoA0gDUhBjb21wbGV0aW9uVG9r'
    'ZW5ziAEBEh8KC2R1cmF0aW9uX21zGAkgASgDUgpkdXJhdGlvbk1zEhkKBWVycm9yGAogASgJSA'
    'RSBWVycm9yiAEBIjkKBVN0YWdlEgsKB1VOS05PV04QABIKCgZQQVNTXzEQARIKCgZQQVNTXzIQ'
    'AhILCgdTVU1NQVJZEANCDgoMX2FuYWx5c2lzX2lkQhAKDl9wcm9tcHRfdG9rZW5zQhAKDl9jYW'
    'NoZWRfdG9rZW5zQhQKEl9jb21wbGV0aW9uX3Rva2Vuc0IICgZfZXJyb3I=');
