// This is a generated file - do not edit.
//
// Generated from protos/common/clarification.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Clarification_Type extends $pb.ProtobufEnum {
  static const Clarification_Type QUANTITY =
      Clarification_Type._(0, _omitEnumNames ? '' : 'QUANTITY');
  static const Clarification_Type INGREDIENT_PRESENCE =
      Clarification_Type._(1, _omitEnumNames ? '' : 'INGREDIENT_PRESENCE');
  static const Clarification_Type INGREDIENT_ALTERNATIVE =
      Clarification_Type._(2, _omitEnumNames ? '' : 'INGREDIENT_ALTERNATIVE');
  static const Clarification_Type PREPARATION_METHOD =
      Clarification_Type._(3, _omitEnumNames ? '' : 'PREPARATION_METHOD');

  static const $core.List<Clarification_Type> values = <Clarification_Type>[
    QUANTITY,
    INGREDIENT_PRESENCE,
    INGREDIENT_ALTERNATIVE,
    PREPARATION_METHOD,
  ];

  static final $core.List<Clarification_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Clarification_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Clarification_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
