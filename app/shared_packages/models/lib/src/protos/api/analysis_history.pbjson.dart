// This is a generated file - do not edit.
//
// Generated from protos/api/analysis_history.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use stepTimingDescriptor instead')
const StepTiming$json = {
  '1': 'StepTiming',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'duration_sec',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'durationSec',
      '17': true
    },
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    {
      '1': 'completed_at',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'completedAt',
      '17': true
    },
  ],
  '8': [
    {'1': '_duration_sec'},
    {'1': '_completed_at'},
  ],
};

/// Descriptor for `StepTiming`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepTimingDescriptor = $convert.base64Decode(
    'CgpTdGVwVGltaW5nEhIKBG5hbWUYASABKAlSBG5hbWUSJgoMZHVyYXRpb25fc2VjGAIgASgBSA'
    'BSC2R1cmF0aW9uU2VjiAEBEhYKBnN0YXR1cxgDIAEoCVIGc3RhdHVzEiYKDGNvbXBsZXRlZF9h'
    'dBgEIAEoCUgBUgtjb21wbGV0ZWRBdIgBAUIPCg1fZHVyYXRpb25fc2VjQg8KDV9jb21wbGV0ZW'
    'RfYXQ=');

@$core.Deprecated('Use mealMetadataDescriptor instead')
const MealMetadata$json = {
  '1': 'MealMetadata',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'meal_type', '3': 3, '4': 1, '5': 9, '10': 'mealType'},
    {'1': 'health_score', '3': 4, '4': 1, '5': 9, '10': 'healthScore'},
    {'1': 'component_count', '3': 5, '4': 1, '5': 5, '10': 'componentCount'},
  ],
};

/// Descriptor for `MealMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealMetadataDescriptor = $convert.base64Decode(
    'CgxNZWFsTWV0YWRhdGESEgoEbmFtZRgBIAEoCVIEbmFtZRIaCghxdWFudGl0eRgCIAEoCVIIcX'
    'VhbnRpdHkSGwoJbWVhbF90eXBlGAMgASgJUghtZWFsVHlwZRIhCgxoZWFsdGhfc2NvcmUYBCAB'
    'KAlSC2hlYWx0aFNjb3JlEicKD2NvbXBvbmVudF9jb3VudBgFIAEoBVIOY29tcG9uZW50Q291bn'
    'Q=');

@$core.Deprecated('Use analysisHistoryItemDescriptor instead')
const AnalysisHistoryItem$json = {
  '1': 'AnalysisHistoryItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_uid', '3': 2, '4': 1, '5': 9, '10': 'userUid'},
    {
      '1': 'created_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
    {'1': 'text', '3': 5, '4': 1, '5': 9, '10': 'text'},
    {'1': 'has_image', '3': 6, '4': 1, '5': 8, '10': 'hasImage'},
    {
      '1': 'failure_reason',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'failureReason',
      '17': true
    },
    {
      '1': 'failed_at_step',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'failedAtStep',
      '17': true
    },
    {
      '1': 'total_duration_sec',
      '3': 9,
      '4': 1,
      '5': 1,
      '9': 2,
      '10': 'totalDurationSec',
      '17': true
    },
    {
      '1': 'metadata',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.api.MealMetadata',
      '10': 'metadata'
    },
    {
      '1': 'steps',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.api.StepTiming',
      '10': 'steps'
    },
  ],
  '8': [
    {'1': '_failure_reason'},
    {'1': '_failed_at_step'},
    {'1': '_total_duration_sec'},
  ],
};

/// Descriptor for `AnalysisHistoryItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisHistoryItemDescriptor = $convert.base64Decode(
    'ChNBbmFseXNpc0hpc3RvcnlJdGVtEg4KAmlkGAEgASgJUgJpZBIZCgh1c2VyX3VpZBgCIAEoCV'
    'IHdXNlclVpZBI5CgpjcmVhdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFt'
    'cFIJY3JlYXRlZEF0EhYKBnN0YXR1cxgEIAEoCVIGc3RhdHVzEhIKBHRleHQYBSABKAlSBHRleH'
    'QSGwoJaGFzX2ltYWdlGAYgASgIUghoYXNJbWFnZRIqCg5mYWlsdXJlX3JlYXNvbhgHIAEoCUgA'
    'Ug1mYWlsdXJlUmVhc29uiAEBEikKDmZhaWxlZF9hdF9zdGVwGAggASgJSAFSDGZhaWxlZEF0U3'
    'RlcIgBARIxChJ0b3RhbF9kdXJhdGlvbl9zZWMYCSABKAFIAlIQdG90YWxEdXJhdGlvblNlY4gB'
    'ARItCghtZXRhZGF0YRgKIAEoCzIRLmFwaS5NZWFsTWV0YWRhdGFSCG1ldGFkYXRhEiUKBXN0ZX'
    'BzGAsgAygLMg8uYXBpLlN0ZXBUaW1pbmdSBXN0ZXBzQhEKD19mYWlsdXJlX3JlYXNvbkIRCg9f'
    'ZmFpbGVkX2F0X3N0ZXBCFQoTX3RvdGFsX2R1cmF0aW9uX3NlYw==');

@$core.Deprecated('Use analysisHistorySummaryDescriptor instead')
const AnalysisHistorySummary$json = {
  '1': 'AnalysisHistorySummary',
  '2': [
    {'1': 'time_range', '3': 1, '4': 1, '5': 9, '10': 'timeRange'},
    {'1': 'total_requests', '3': 2, '4': 1, '5': 5, '10': 'totalRequests'},
    {'1': 'success_count', '3': 3, '4': 1, '5': 5, '10': 'successCount'},
    {'1': 'failed_count', '3': 4, '4': 1, '5': 5, '10': 'failedCount'},
    {'1': 'failure_rate_pct', '3': 5, '4': 1, '5': 1, '10': 'failureRatePct'},
    {
      '1': 'avg_total_duration_sec',
      '3': 6,
      '4': 1,
      '5': 1,
      '10': 'avgTotalDurationSec'
    },
    {
      '1': 'avg_step_durations_sec',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.api.AnalysisHistorySummary.AvgStepDurationsSecEntry',
      '10': 'avgStepDurationsSec'
    },
    {
      '1': 'failures_by_step',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.api.AnalysisHistorySummary.FailuresByStepEntry',
      '10': 'failuresByStep'
    },
  ],
  '3': [
    AnalysisHistorySummary_AvgStepDurationsSecEntry$json,
    AnalysisHistorySummary_FailuresByStepEntry$json
  ],
};

@$core.Deprecated('Use analysisHistorySummaryDescriptor instead')
const AnalysisHistorySummary_AvgStepDurationsSecEntry$json = {
  '1': 'AvgStepDurationsSecEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use analysisHistorySummaryDescriptor instead')
const AnalysisHistorySummary_FailuresByStepEntry$json = {
  '1': 'FailuresByStepEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AnalysisHistorySummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisHistorySummaryDescriptor = $convert.base64Decode(
    'ChZBbmFseXNpc0hpc3RvcnlTdW1tYXJ5Eh0KCnRpbWVfcmFuZ2UYASABKAlSCXRpbWVSYW5nZR'
    'IlCg50b3RhbF9yZXF1ZXN0cxgCIAEoBVINdG90YWxSZXF1ZXN0cxIjCg1zdWNjZXNzX2NvdW50'
    'GAMgASgFUgxzdWNjZXNzQ291bnQSIQoMZmFpbGVkX2NvdW50GAQgASgFUgtmYWlsZWRDb3VudB'
    'IoChBmYWlsdXJlX3JhdGVfcGN0GAUgASgBUg5mYWlsdXJlUmF0ZVBjdBIzChZhdmdfdG90YWxf'
    'ZHVyYXRpb25fc2VjGAYgASgBUhNhdmdUb3RhbER1cmF0aW9uU2VjEmkKFmF2Z19zdGVwX2R1cm'
    'F0aW9uc19zZWMYByADKAsyNC5hcGkuQW5hbHlzaXNIaXN0b3J5U3VtbWFyeS5BdmdTdGVwRHVy'
    'YXRpb25zU2VjRW50cnlSE2F2Z1N0ZXBEdXJhdGlvbnNTZWMSWQoQZmFpbHVyZXNfYnlfc3RlcB'
    'gIIAMoCzIvLmFwaS5BbmFseXNpc0hpc3RvcnlTdW1tYXJ5LkZhaWx1cmVzQnlTdGVwRW50cnlS'
    'DmZhaWx1cmVzQnlTdGVwGkYKGEF2Z1N0ZXBEdXJhdGlvbnNTZWNFbnRyeRIQCgNrZXkYASABKA'
    'lSA2tleRIUCgV2YWx1ZRgCIAEoAVIFdmFsdWU6AjgBGkEKE0ZhaWx1cmVzQnlTdGVwRW50cnkS'
    'EAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use analysisHistoryRequestDescriptor instead')
const AnalysisHistoryRequest$json = {
  '1': 'AnalysisHistoryRequest',
  '2': [
    {
      '1': 'time_range',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'timeRange',
      '17': true
    },
    {'1': 'status', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'status', '17': true},
    {'1': 'page', '3': 3, '4': 1, '5': 5, '9': 2, '10': 'page', '17': true},
    {
      '1': 'page_size',
      '3': 4,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'pageSize',
      '17': true
    },
  ],
  '8': [
    {'1': '_time_range'},
    {'1': '_status'},
    {'1': '_page'},
    {'1': '_page_size'},
  ],
};

/// Descriptor for `AnalysisHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisHistoryRequestDescriptor = $convert.base64Decode(
    'ChZBbmFseXNpc0hpc3RvcnlSZXF1ZXN0EiIKCnRpbWVfcmFuZ2UYASABKAlIAFIJdGltZVJhbm'
    'dliAEBEhsKBnN0YXR1cxgCIAEoCUgBUgZzdGF0dXOIAQESFwoEcGFnZRgDIAEoBUgCUgRwYWdl'
    'iAEBEiAKCXBhZ2Vfc2l6ZRgEIAEoBUgDUghwYWdlU2l6ZYgBAUINCgtfdGltZV9yYW5nZUIJCg'
    'dfc3RhdHVzQgcKBV9wYWdlQgwKCl9wYWdlX3NpemU=');

@$core.Deprecated('Use analysisHistoryResponseDescriptor instead')
const AnalysisHistoryResponse$json = {
  '1': 'AnalysisHistoryResponse',
  '2': [
    {
      '1': 'summary',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.api.AnalysisHistorySummary',
      '10': 'summary'
    },
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.api.AnalysisHistoryItem',
      '10': 'items'
    },
    {'1': 'page', '3': 3, '4': 1, '5': 5, '10': 'page'},
    {'1': 'page_size', '3': 4, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'total_items', '3': 5, '4': 1, '5': 5, '10': 'totalItems'},
    {'1': 'total_pages', '3': 6, '4': 1, '5': 5, '10': 'totalPages'},
    {'1': 'filter_range', '3': 7, '4': 1, '5': 9, '10': 'filterRange'},
    {'1': 'filter_status', '3': 8, '4': 1, '5': 9, '10': 'filterStatus'},
  ],
};

/// Descriptor for `AnalysisHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analysisHistoryResponseDescriptor = $convert.base64Decode(
    'ChdBbmFseXNpc0hpc3RvcnlSZXNwb25zZRI1CgdzdW1tYXJ5GAEgASgLMhsuYXBpLkFuYWx5c2'
    'lzSGlzdG9yeVN1bW1hcnlSB3N1bW1hcnkSLgoFaXRlbXMYAiADKAsyGC5hcGkuQW5hbHlzaXNI'
    'aXN0b3J5SXRlbVIFaXRlbXMSEgoEcGFnZRgDIAEoBVIEcGFnZRIbCglwYWdlX3NpemUYBCABKA'
    'VSCHBhZ2VTaXplEh8KC3RvdGFsX2l0ZW1zGAUgASgFUgp0b3RhbEl0ZW1zEh8KC3RvdGFsX3Bh'
    'Z2VzGAYgASgFUgp0b3RhbFBhZ2VzEiEKDGZpbHRlcl9yYW5nZRgHIAEoCVILZmlsdGVyUmFuZ2'
    'USIwoNZmlsdGVyX3N0YXR1cxgIIAEoCVIMZmlsdGVyU3RhdHVz');
