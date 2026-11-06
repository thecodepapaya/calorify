// This is a generated file - do not edit.
//
// Generated from protos/server/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IngredientType extends $pb.ProtobufEnum {
  static const IngredientType BASE =
      IngredientType._(0, _omitEnumNames ? '' : 'BASE');
  static const IngredientType BRANDED =
      IngredientType._(1, _omitEnumNames ? '' : 'BRANDED');

  static const $core.List<IngredientType> values = <IngredientType>[
    BASE,
    BRANDED,
  ];

  static final $core.List<IngredientType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static IngredientType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IngredientType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
