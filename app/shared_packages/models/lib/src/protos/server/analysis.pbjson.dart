// This is a generated file - do not edit.
//
// Generated from protos/server/analysis.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mealAnalysisStatusDescriptor instead')
const MealAnalysisStatus$json = {
  '1': 'MealAnalysisStatus',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_uid', '3': 2, '4': 1, '5': 9, '10': 'userUid'},
    {'1': 'text', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'text', '17': true},
    {
      '1': 'image_url',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'imageUrl',
      '17': true
    },
    {
      '1': 'created_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'decomposed_component',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'decomposedComponent',
      '17': true
    },
    {
      '1': 'decomposed_component_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 3,
      '10': 'decomposedComponentAt',
      '17': true
    },
    {
      '1': 'decomposed_ingredient',
      '3': 8,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'decomposedIngredient',
      '17': true
    },
    {
      '1': 'decomposed_ingredient_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 5,
      '10': 'decomposedIngredientAt',
      '17': true
    },
    {
      '1': 'usda_enriched',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'usdaEnriched',
      '17': true
    },
    {
      '1': 'usda_enriched_at',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 7,
      '10': 'usdaEnrichedAt',
      '17': true
    },
    {
      '1': 'clarification_questions',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 8,
      '10': 'clarificationQuestions',
      '17': true
    },
    {
      '1': 'clarification_questions_at',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 9,
      '10': 'clarificationQuestionsAt',
      '17': true
    },
    {
      '1': 'clarification_response',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 10,
      '10': 'clarificationResponse',
      '17': true
    },
    {
      '1': 'clarification_response_at',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 11,
      '10': 'clarificationResponseAt',
      '17': true
    },
    {
      '1': 'final_response',
      '3': 16,
      '4': 1,
      '5': 9,
      '9': 12,
      '10': 'finalResponse',
      '17': true
    },
    {
      '1': 'final_response_at',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 13,
      '10': 'finalResponseAt',
      '17': true
    },
    {
      '1': 'status',
      '3': 18,
      '4': 1,
      '5': 14,
      '6': '.server.MealAnalysisStatus.AnalysisStatus',
      '10': 'status'
    },
    {
      '1': 'updated_at',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
  ],
  '4': [MealAnalysisStatus_AnalysisStatus$json],
  '8': [
    {'1': '_text'},
    {'1': '_image_url'},
    {'1': '_decomposed_component'},
    {'1': '_decomposed_component_at'},
    {'1': '_decomposed_ingredient'},
    {'1': '_decomposed_ingredient_at'},
    {'1': '_usda_enriched'},
    {'1': '_usda_enriched_at'},
    {'1': '_clarification_questions'},
    {'1': '_clarification_questions_at'},
    {'1': '_clarification_response'},
    {'1': '_clarification_response_at'},
    {'1': '_final_response'},
    {'1': '_final_response_at'},
  ],
};

@$core.Deprecated('Use mealAnalysisStatusDescriptor instead')
const MealAnalysisStatus_AnalysisStatus$json = {
  '1': 'AnalysisStatus',
  '2': [
    {'1': 'INITIATED', '2': 0},
    {'1': 'COMPONENT_DECOMPOSED', '2': 1},
    {'1': 'INGREDIENT_DECOMPOSED', '2': 2},
    {'1': 'USDA_MACRO_HYDRATED', '2': 3},
    {'1': 'CLARIFICATION_GENERATED', '2': 4},
    {'1': 'CLARIFICATION_RESOLVED', '2': 5},
    {'1': 'PRESENTED', '2': 6},
    {'1': 'FAILED', '2': 7},
  ],
};

/// Descriptor for `MealAnalysisStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mealAnalysisStatusDescriptor = $convert.base64Decode(
    'ChJNZWFsQW5hbHlzaXNTdGF0dXMSDgoCaWQYASABKAlSAmlkEhkKCHVzZXJfdWlkGAIgASgJUg'
    'd1c2VyVWlkEhcKBHRleHQYAyABKAlIAFIEdGV4dIgBARIgCglpbWFnZV91cmwYBCABKAlIAVII'
    'aW1hZ2VVcmyIAQESOQoKY3JlYXRlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSCWNyZWF0ZWRBdBI2ChRkZWNvbXBvc2VkX2NvbXBvbmVudBgGIAEoCUgCUhNkZWNvbXBv'
    'c2VkQ29tcG9uZW50iAEBElcKF2RlY29tcG9zZWRfY29tcG9uZW50X2F0GAcgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcEgDUhVkZWNvbXBvc2VkQ29tcG9uZW50QXSIAQESOAoVZGVj'
    'b21wb3NlZF9pbmdyZWRpZW50GAggASgJSARSFGRlY29tcG9zZWRJbmdyZWRpZW50iAEBElkKGG'
    'RlY29tcG9zZWRfaW5ncmVkaWVudF9hdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBIBVIWZGVjb21wb3NlZEluZ3JlZGllbnRBdIgBARIoCg11c2RhX2VucmljaGVkGAogASgJSA'
    'ZSDHVzZGFFbnJpY2hlZIgBARJJChB1c2RhX2VucmljaGVkX2F0GAsgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcEgHUg51c2RhRW5yaWNoZWRBdIgBARI8ChdjbGFyaWZpY2F0aW9uX3'
    'F1ZXN0aW9ucxgMIAEoCUgIUhZjbGFyaWZpY2F0aW9uUXVlc3Rpb25ziAEBEl0KGmNsYXJpZmlj'
    'YXRpb25fcXVlc3Rpb25zX2F0GA0gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgJUh'
    'hjbGFyaWZpY2F0aW9uUXVlc3Rpb25zQXSIAQESOgoWY2xhcmlmaWNhdGlvbl9yZXNwb25zZRgO'
    'IAEoCUgKUhVjbGFyaWZpY2F0aW9uUmVzcG9uc2WIAQESWwoZY2xhcmlmaWNhdGlvbl9yZXNwb2'
    '5zZV9hdBgPIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIC1IXY2xhcmlmaWNhdGlv'
    'blJlc3BvbnNlQXSIAQESKgoOZmluYWxfcmVzcG9uc2UYECABKAlIDFINZmluYWxSZXNwb25zZY'
    'gBARJLChFmaW5hbF9yZXNwb25zZV9hdBgRIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBIDVIPZmluYWxSZXNwb25zZUF0iAEBEkEKBnN0YXR1cxgSIAEoDjIpLnNlcnZlci5NZWFsQW'
    '5hbHlzaXNTdGF0dXMuQW5hbHlzaXNTdGF0dXNSBnN0YXR1cxI5Cgp1cGRhdGVkX2F0GBMgASgL'
    'MhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0IsEBCg5BbmFseXNpc1N0YX'
    'R1cxINCglJTklUSUFURUQQABIYChRDT01QT05FTlRfREVDT01QT1NFRBABEhkKFUlOR1JFRElF'
    'TlRfREVDT01QT1NFRBACEhcKE1VTREFfTUFDUk9fSFlEUkFURUQQAxIbChdDTEFSSUZJQ0FUSU'
    '9OX0dFTkVSQVRFRBAEEhoKFkNMQVJJRklDQVRJT05fUkVTT0xWRUQQBRINCglQUkVTRU5URUQQ'
    'BhIKCgZGQUlMRUQQB0IHCgVfdGV4dEIMCgpfaW1hZ2VfdXJsQhcKFV9kZWNvbXBvc2VkX2NvbX'
    'BvbmVudEIaChhfZGVjb21wb3NlZF9jb21wb25lbnRfYXRCGAoWX2RlY29tcG9zZWRfaW5ncmVk'
    'aWVudEIbChlfZGVjb21wb3NlZF9pbmdyZWRpZW50X2F0QhAKDl91c2RhX2VucmljaGVkQhMKEV'
    '91c2RhX2VucmljaGVkX2F0QhoKGF9jbGFyaWZpY2F0aW9uX3F1ZXN0aW9uc0IdChtfY2xhcmlm'
    'aWNhdGlvbl9xdWVzdGlvbnNfYXRCGQoXX2NsYXJpZmljYXRpb25fcmVzcG9uc2VCHAoaX2NsYX'
    'JpZmljYXRpb25fcmVzcG9uc2VfYXRCEQoPX2ZpbmFsX3Jlc3BvbnNlQhQKEl9maW5hbF9yZXNw'
    'b25zZV9hdA==');
