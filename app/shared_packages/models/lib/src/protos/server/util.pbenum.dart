// This is a generated file - do not edit.
//
// Generated from protos/server/util.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LLMCallMetaData_Stage extends $pb.ProtobufEnum {
  static const LLMCallMetaData_Stage UNKNOWN =
      LLMCallMetaData_Stage._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const LLMCallMetaData_Stage PASS_1 =
      LLMCallMetaData_Stage._(1, _omitEnumNames ? '' : 'PASS_1');
  static const LLMCallMetaData_Stage PASS_2 =
      LLMCallMetaData_Stage._(2, _omitEnumNames ? '' : 'PASS_2');
  static const LLMCallMetaData_Stage SUMMARY =
      LLMCallMetaData_Stage._(3, _omitEnumNames ? '' : 'SUMMARY');

  static const $core.List<LLMCallMetaData_Stage> values =
      <LLMCallMetaData_Stage>[
    UNKNOWN,
    PASS_1,
    PASS_2,
    SUMMARY,
  ];

  static final $core.List<LLMCallMetaData_Stage?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LLMCallMetaData_Stage? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LLMCallMetaData_Stage._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
