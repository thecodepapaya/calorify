// This is a generated file - do not edit.
//
// Generated from calorify/sync.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SyncOpType extends $pb.ProtobufEnum {
  static const SyncOpType SYNC_OP_TYPE_UNSPECIFIED =
      SyncOpType._(0, _omitEnumNames ? '' : 'SYNC_OP_TYPE_UNSPECIFIED');
  static const SyncOpType SYNC_OP_TYPE_UPSERT_MEAL =
      SyncOpType._(1, _omitEnumNames ? '' : 'SYNC_OP_TYPE_UPSERT_MEAL');
  static const SyncOpType SYNC_OP_TYPE_DELETE_MEAL =
      SyncOpType._(2, _omitEnumNames ? '' : 'SYNC_OP_TYPE_DELETE_MEAL');
  static const SyncOpType SYNC_OP_TYPE_UPSERT_PROFILE =
      SyncOpType._(3, _omitEnumNames ? '' : 'SYNC_OP_TYPE_UPSERT_PROFILE');
  static const SyncOpType SYNC_OP_TYPE_FCM_TOKEN =
      SyncOpType._(4, _omitEnumNames ? '' : 'SYNC_OP_TYPE_FCM_TOKEN');

  static const $core.List<SyncOpType> values = <SyncOpType>[
    SYNC_OP_TYPE_UNSPECIFIED,
    SYNC_OP_TYPE_UPSERT_MEAL,
    SYNC_OP_TYPE_DELETE_MEAL,
    SYNC_OP_TYPE_UPSERT_PROFILE,
    SYNC_OP_TYPE_FCM_TOKEN,
  ];

  static final $core.List<SyncOpType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static SyncOpType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SyncOpType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
