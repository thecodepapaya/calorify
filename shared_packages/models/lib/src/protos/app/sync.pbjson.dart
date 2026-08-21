// This is a generated file - do not edit.
//
// Generated from protos/app/sync.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use syncOpTypeDescriptor instead')
const SyncOpType$json = {
  '1': 'SyncOpType',
  '2': [
    {'1': 'SYNC_OP_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'SYNC_OP_TYPE_UPSERT_MEAL', '2': 1},
    {'1': 'SYNC_OP_TYPE_DELETE_MEAL', '2': 2},
    {'1': 'SYNC_OP_TYPE_UPSERT_PROFILE', '2': 3},
    {'1': 'SYNC_OP_TYPE_FCM_TOKEN', '2': 4},
  ],
};

/// Descriptor for `SyncOpType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List syncOpTypeDescriptor = $convert.base64Decode(
    'CgpTeW5jT3BUeXBlEhwKGFNZTkNfT1BfVFlQRV9VTlNQRUNJRklFRBAAEhwKGFNZTkNfT1BfVF'
    'lQRV9VUFNFUlRfTUVBTBABEhwKGFNZTkNfT1BfVFlQRV9ERUxFVEVfTUVBTBACEh8KG1NZTkNf'
    'T1BfVFlQRV9VUFNFUlRfUFJPRklMRRADEhoKFlNZTkNfT1BfVFlQRV9GQ01fVE9LRU4QBA==');

@$core.Deprecated('Use deleteMealDescriptor instead')
const DeleteMeal$json = {
  '1': 'DeleteMeal',
  '2': [
    {'1': 'client_id', '3': 1, '4': 1, '5': 9, '10': 'clientId'},
    {'1': 'local_id', '3': 2, '4': 1, '5': 3, '10': 'localId'},
  ],
};

/// Descriptor for `DeleteMeal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMealDescriptor = $convert.base64Decode(
    'CgpEZWxldGVNZWFsEhsKCWNsaWVudF9pZBgBIAEoCVIIY2xpZW50SWQSGQoIbG9jYWxfaWQYAi'
    'ABKANSB2xvY2FsSWQ=');

@$core.Deprecated('Use syncOpDescriptor instead')
const SyncOp$json = {
  '1': 'SyncOp',
  '2': [
    {'1': 'idempotency_key', '3': 1, '4': 1, '5': 9, '10': 'idempotencyKey'},
    {
      '1': 'op_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.app.SyncOpType',
      '10': 'opType'
    },
    {'1': 'created_at', '3': 3, '4': 1, '5': 9, '10': 'createdAt'},
    {
      '1': 'meal',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.app.LoggedMeal',
      '9': 0,
      '10': 'meal'
    },
    {
      '1': 'delete_meal',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.app.DeleteMeal',
      '9': 0,
      '10': 'deleteMeal'
    },
    {
      '1': 'profile',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.user.UserProfile',
      '9': 0,
      '10': 'profile'
    },
    {
      '1': 'fcm_token',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.calorify.FcmToken',
      '9': 0,
      '10': 'fcmToken'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `SyncOp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncOpDescriptor = $convert.base64Decode(
    'CgZTeW5jT3ASJwoPaWRlbXBvdGVuY3lfa2V5GAEgASgJUg5pZGVtcG90ZW5jeUtleRIoCgdvcF'
    '90eXBlGAIgASgOMg8uYXBwLlN5bmNPcFR5cGVSBm9wVHlwZRIdCgpjcmVhdGVkX2F0GAMgASgJ'
    'UgljcmVhdGVkQXQSJQoEbWVhbBgEIAEoCzIPLmFwcC5Mb2dnZWRNZWFsSABSBG1lYWwSMgoLZG'
    'VsZXRlX21lYWwYBSABKAsyDy5hcHAuRGVsZXRlTWVhbEgAUgpkZWxldGVNZWFsEi0KB3Byb2Zp'
    'bGUYBiABKAsyES51c2VyLlVzZXJQcm9maWxlSABSB3Byb2ZpbGUSMQoJZmNtX3Rva2VuGAcgAS'
    'gLMhIuY2Fsb3JpZnkuRmNtVG9rZW5IAFIIZmNtVG9rZW5CCQoHcGF5bG9hZA==');

@$core.Deprecated('Use syncBatchDescriptor instead')
const SyncBatch$json = {
  '1': 'SyncBatch',
  '2': [
    {'1': 'ops', '3': 1, '4': 3, '5': 11, '6': '.app.SyncOp', '10': 'ops'},
  ],
};

/// Descriptor for `SyncBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncBatchDescriptor = $convert
    .base64Decode('CglTeW5jQmF0Y2gSHQoDb3BzGAEgAygLMgsuYXBwLlN5bmNPcFIDb3Bz');

@$core.Deprecated('Use syncResultDescriptor instead')
const SyncResult$json = {
  '1': 'SyncResult',
  '2': [
    {'1': 'idempotency_key', '3': 1, '4': 1, '5': 9, '10': 'idempotencyKey'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
    {'1': 'remote_id', '3': 4, '4': 1, '5': 9, '10': 'remoteId'},
  ],
};

/// Descriptor for `SyncResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncResultDescriptor = $convert.base64Decode(
    'CgpTeW5jUmVzdWx0EicKD2lkZW1wb3RlbmN5X2tleRgBIAEoCVIOaWRlbXBvdGVuY3lLZXkSGA'
    'oHc3VjY2VzcxgCIAEoCFIHc3VjY2VzcxIUCgVlcnJvchgDIAEoCVIFZXJyb3ISGwoJcmVtb3Rl'
    'X2lkGAQgASgJUghyZW1vdGVJZA==');

@$core.Deprecated('Use syncAckDescriptor instead')
const SyncAck$json = {
  '1': 'SyncAck',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.app.SyncResult',
      '10': 'results'
    },
  ],
};

/// Descriptor for `SyncAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAckDescriptor = $convert.base64Decode(
    'CgdTeW5jQWNrEikKB3Jlc3VsdHMYASADKAsyDy5hcHAuU3luY1Jlc3VsdFIHcmVzdWx0cw==');
