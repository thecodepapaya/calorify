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

@$core.Deprecated('Use historyMetadataDescriptor instead')
const HistoryMetadata$json = {
  '1': 'HistoryMetadata',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'meal_type', '3': 3, '4': 1, '5': 9, '10': 'mealType'},
    {'1': 'health_score', '3': 4, '4': 1, '5': 9, '10': 'healthScore'},
    {'1': 'component_count', '3': 5, '4': 1, '5': 5, '10': 'componentCount'},
  ],
};

/// Descriptor for `HistoryMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyMetadataDescriptor = $convert.base64Decode(
    'Cg9IaXN0b3J5TWV0YWRhdGESEgoEbmFtZRgBIAEoCVIEbmFtZRIaCghxdWFudGl0eRgCIAEoCV'
    'IIcXVhbnRpdHkSGwoJbWVhbF90eXBlGAMgASgJUghtZWFsVHlwZRIhCgxoZWFsdGhfc2NvcmUY'
    'BCABKAlSC2hlYWx0aFNjb3JlEicKD2NvbXBvbmVudF9jb3VudBgFIAEoBVIOY29tcG9uZW50Q2'
    '91bnQ=');

@$core.Deprecated('Use historyComponentDescriptor instead')
const HistoryComponent$json = {
  '1': 'HistoryComponent',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'canonical_name', '3': 2, '4': 1, '5': 9, '10': 'canonicalName'},
    {
      '1': 'preparation_method',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'preparationMethod'
    },
    {
      '1': 'portion',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.common.Portion',
      '10': 'portion'
    },
  ],
};

/// Descriptor for `HistoryComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyComponentDescriptor = $convert.base64Decode(
    'ChBIaXN0b3J5Q29tcG9uZW50EhIKBG5hbWUYASABKAlSBG5hbWUSJQoOY2Fub25pY2FsX25hbW'
    'UYAiABKAlSDWNhbm9uaWNhbE5hbWUSLQoScHJlcGFyYXRpb25fbWV0aG9kGAMgASgJUhFwcmVw'
    'YXJhdGlvbk1ldGhvZBIpCgdwb3J0aW9uGAQgASgLMg8uY29tbW9uLlBvcnRpb25SB3BvcnRpb2'
    '4=');

@$core.Deprecated('Use llmCallSummaryDescriptor instead')
const LlmCallSummary$json = {
  '1': 'LlmCallSummary',
  '2': [
    {'1': 'stage', '3': 1, '4': 1, '5': 9, '10': 'stage'},
    {'1': 'analysis_count', '3': 2, '4': 1, '5': 5, '10': 'analysisCount'},
    {'1': 'avg_duration_ms', '3': 3, '4': 1, '5': 1, '10': 'avgDurationMs'},
    {'1': 'avg_prompt_tokens', '3': 4, '4': 1, '5': 1, '10': 'avgPromptTokens'},
    {'1': 'avg_cached_tokens', '3': 5, '4': 1, '5': 1, '10': 'avgCachedTokens'},
    {
      '1': 'avg_completion_tokens',
      '3': 6,
      '4': 1,
      '5': 1,
      '10': 'avgCompletionTokens'
    },
  ],
};

/// Descriptor for `LlmCallSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List llmCallSummaryDescriptor = $convert.base64Decode(
    'Cg5MbG1DYWxsU3VtbWFyeRIUCgVzdGFnZRgBIAEoCVIFc3RhZ2USJQoOYW5hbHlzaXNfY291bn'
    'QYAiABKAVSDWFuYWx5c2lzQ291bnQSJgoPYXZnX2R1cmF0aW9uX21zGAMgASgBUg1hdmdEdXJh'
    'dGlvbk1zEioKEWF2Z19wcm9tcHRfdG9rZW5zGAQgASgBUg9hdmdQcm9tcHRUb2tlbnMSKgoRYX'
    'ZnX2NhY2hlZF90b2tlbnMYBSABKAFSD2F2Z0NhY2hlZFRva2VucxIyChVhdmdfY29tcGxldGlv'
    'bl90b2tlbnMYBiABKAFSE2F2Z0NvbXBsZXRpb25Ub2tlbnM=');

@$core.Deprecated('Use llmCallRecordDescriptor instead')
const LlmCallRecord$json = {
  '1': 'LlmCallRecord',
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
      '6': '.api.LlmCallRecord.Stage',
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
    {
      '1': 'component_id',
      '3': 11,
      '4': 1,
      '5': 5,
      '9': 5,
      '10': 'componentId',
      '17': true
    },
  ],
  '4': [LlmCallRecord_Stage$json],
  '8': [
    {'1': '_analysis_id'},
    {'1': '_prompt_tokens'},
    {'1': '_cached_tokens'},
    {'1': '_completion_tokens'},
    {'1': '_error'},
    {'1': '_component_id'},
  ],
};

@$core.Deprecated('Use llmCallRecordDescriptor instead')
const LlmCallRecord_Stage$json = {
  '1': 'Stage',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'PASS_1', '2': 1},
    {'1': 'PASS_2', '2': 2},
    {'1': 'SUMMARY', '2': 3},
  ],
};

/// Descriptor for `LlmCallRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List llmCallRecordDescriptor = $convert.base64Decode(
    'Cg1MbG1DYWxsUmVjb3JkEg4KAmlkGAEgASgDUgJpZBIkCgthbmFseXNpc19pZBgCIAEoCUgAUg'
    'phbmFseXNpc0lkiAEBEjkKCmNyZWF0ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wUgljcmVhdGVkQXQSLgoFc3RhZ2UYBCABKA4yGC5hcGkuTGxtQ2FsbFJlY29yZC5TdG'
    'FnZVIFc3RhZ2USFAoFbW9kZWwYBSABKAlSBW1vZGVsEigKDXByb21wdF90b2tlbnMYBiABKANI'
    'AVIMcHJvbXB0VG9rZW5ziAEBEigKDWNhY2hlZF90b2tlbnMYByABKANIAlIMY2FjaGVkVG9rZW'
    '5ziAEBEjAKEWNvbXBsZXRpb25fdG9rZW5zGAggASgDSANSEGNvbXBsZXRpb25Ub2tlbnOIAQES'
    'HwoLZHVyYXRpb25fbXMYCSABKANSCmR1cmF0aW9uTXMSGQoFZXJyb3IYCiABKAlIBFIFZXJyb3'
    'KIAQESJgoMY29tcG9uZW50X2lkGAsgASgFSAVSC2NvbXBvbmVudElkiAEBIjkKBVN0YWdlEgsK'
    'B1VOS05PV04QABIKCgZQQVNTXzEQARIKCgZQQVNTXzIQAhILCgdTVU1NQVJZEANCDgoMX2FuYW'
    'x5c2lzX2lkQhAKDl9wcm9tcHRfdG9rZW5zQhAKDl9jYWNoZWRfdG9rZW5zQhQKEl9jb21wbGV0'
    'aW9uX3Rva2Vuc0IICgZfZXJyb3JCDwoNX2NvbXBvbmVudF9pZA==');

@$core.Deprecated('Use llmCallPointDescriptor instead')
const LlmCallPoint$json = {
  '1': 'LlmCallPoint',
  '2': [
    {
      '1': 'at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {'1': 'duration_sec', '3': 2, '4': 1, '5': 1, '10': 'durationSec'},
  ],
};

/// Descriptor for `LlmCallPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List llmCallPointDescriptor = $convert.base64Decode(
    'CgxMbG1DYWxsUG9pbnQSKgoCYXQYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    'JhdBIhCgxkdXJhdGlvbl9zZWMYAiABKAFSC2R1cmF0aW9uU2Vj');

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
      '6': '.api.HistoryMetadata',
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
    {
      '1': 'locale',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'locale',
      '17': true
    },
    {
      '1': 'country_code',
      '3': 13,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'countryCode',
      '17': true
    },
    {
      '1': 'timezone',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 5,
      '10': 'timezone',
      '17': true
    },
    {
      '1': 'local_captured_at',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 6,
      '10': 'localCapturedAt',
      '17': true
    },
    {
      '1': 'is_liked',
      '3': 16,
      '4': 1,
      '5': 8,
      '9': 7,
      '10': 'isLiked',
      '17': true
    },
    {
      '1': 'updated_at',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
    {
      '1': 'components',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.api.HistoryComponent',
      '10': 'components'
    },
    {
      '1': 'enriched_components',
      '3': 19,
      '4': 3,
      '5': 11,
      '6': '.server.EnrichedComponent',
      '10': 'enrichedComponents'
    },
    {
      '1': 'clarifications',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.common.Clarification',
      '10': 'clarifications'
    },
    {
      '1': 'final',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.common.Meal',
      '9': 8,
      '10': 'final',
      '17': true
    },
    {
      '1': 'llm_calls',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.api.LlmCallRecord',
      '10': 'llmCalls'
    },
  ],
  '8': [
    {'1': '_failure_reason'},
    {'1': '_failed_at_step'},
    {'1': '_total_duration_sec'},
    {'1': '_locale'},
    {'1': '_country_code'},
    {'1': '_timezone'},
    {'1': '_local_captured_at'},
    {'1': '_is_liked'},
    {'1': '_final'},
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
    'ARIwCghtZXRhZGF0YRgKIAEoCzIULmFwaS5IaXN0b3J5TWV0YWRhdGFSCG1ldGFkYXRhEiUKBX'
    'N0ZXBzGAsgAygLMg8uYXBpLlN0ZXBUaW1pbmdSBXN0ZXBzEhsKBmxvY2FsZRgMIAEoCUgDUgZs'
    'b2NhbGWIAQESJgoMY291bnRyeV9jb2RlGA0gASgJSARSC2NvdW50cnlDb2RliAEBEh8KCHRpbW'
    'V6b25lGA4gASgJSAVSCHRpbWV6b25liAEBEksKEWxvY2FsX2NhcHR1cmVkX2F0GA8gASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgGUg9sb2NhbENhcHR1cmVkQXSIAQESHgoIaXNfbG'
    'lrZWQYECABKAhIB1IHaXNMaWtlZIgBARI5Cgp1cGRhdGVkX2F0GBEgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0EjUKCmNvbXBvbmVudHMYEiADKAsyFS5hcGkuSG'
    'lzdG9yeUNvbXBvbmVudFIKY29tcG9uZW50cxJKChNlbnJpY2hlZF9jb21wb25lbnRzGBMgAygL'
    'Mhkuc2VydmVyLkVucmljaGVkQ29tcG9uZW50UhJlbnJpY2hlZENvbXBvbmVudHMSPQoOY2xhcm'
    'lmaWNhdGlvbnMYFCADKAsyFS5jb21tb24uQ2xhcmlmaWNhdGlvblIOY2xhcmlmaWNhdGlvbnMS'
    'JwoFZmluYWwYFSABKAsyDC5jb21tb24uTWVhbEgIUgVmaW5hbIgBARIvCglsbG1fY2FsbHMYFi'
    'ADKAsyEi5hcGkuTGxtQ2FsbFJlY29yZFIIbGxtQ2FsbHNCEQoPX2ZhaWx1cmVfcmVhc29uQhEK'
    'D19mYWlsZWRfYXRfc3RlcEIVChNfdG90YWxfZHVyYXRpb25fc2VjQgkKB19sb2NhbGVCDwoNX2'
    'NvdW50cnlfY29kZUILCglfdGltZXpvbmVCFAoSX2xvY2FsX2NhcHR1cmVkX2F0QgsKCV9pc19s'
    'aWtlZEIICgZfZmluYWw=');

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
    {
      '1': 'llm_calls',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.api.LlmCallSummary',
      '10': 'llmCalls'
    },
    {
      '1': 'p2_wall_time_series',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.api.LlmCallPoint',
      '10': 'p2WallTimeSeries'
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
    'DmZhaWx1cmVzQnlTdGVwEjAKCWxsbV9jYWxscxgJIAMoCzITLmFwaS5MbG1DYWxsU3VtbWFyeV'
    'IIbGxtQ2FsbHMSQAoTcDJfd2FsbF90aW1lX3NlcmllcxgKIAMoCzIRLmFwaS5MbG1DYWxsUG9p'
    'bnRSEHAyV2FsbFRpbWVTZXJpZXMaRgoYQXZnU3RlcER1cmF0aW9uc1NlY0VudHJ5EhAKA2tleR'
    'gBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgBUgV2YWx1ZToCOAEaQQoTRmFpbHVyZXNCeVN0ZXBF'
    'bnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgB');

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
