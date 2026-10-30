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

class Origin extends $pb.ProtobufEnum {
  static const Origin MODEL_INFERRED =
      Origin._(0, _omitEnumNames ? '' : 'MODEL_INFERRED');
  static const Origin USER_STATED =
      Origin._(1, _omitEnumNames ? '' : 'USER_STATED');
  static const Origin USER_CLARIFICATION =
      Origin._(2, _omitEnumNames ? '' : 'USER_CLARIFICATION');

  static const $core.List<Origin> values = <Origin>[
    MODEL_INFERRED,
    USER_STATED,
    USER_CLARIFICATION,
  ];

  static final $core.List<Origin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Origin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Origin._(super.value, super.name);
}

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

class PreparationMethod extends $pb.ProtobufEnum {
  static const PreparationMethod UNKNOWN =
      PreparationMethod._(0, _omitEnumNames ? '' : 'UNKNOWN');

  /// Raw
  static const PreparationMethod RAW =
      PreparationMethod._(1, _omitEnumNames ? '' : 'RAW');

  /// Moist Heat
  static const PreparationMethod BOILED =
      PreparationMethod._(2, _omitEnumNames ? '' : 'BOILED');
  static const PreparationMethod SIMMERED =
      PreparationMethod._(3, _omitEnumNames ? '' : 'SIMMERED');
  static const PreparationMethod STEAMED =
      PreparationMethod._(4, _omitEnumNames ? '' : 'STEAMED');
  static const PreparationMethod PRESSURE_COOKED =
      PreparationMethod._(5, _omitEnumNames ? '' : 'PRESSURE_COOKED');
  static const PreparationMethod POACHED =
      PreparationMethod._(6, _omitEnumNames ? '' : 'POACHED');

  /// Dry Heat
  static const PreparationMethod BAKED =
      PreparationMethod._(7, _omitEnumNames ? '' : 'BAKED');
  static const PreparationMethod ROASTED =
      PreparationMethod._(8, _omitEnumNames ? '' : 'ROASTED');
  static const PreparationMethod GRILLED =
      PreparationMethod._(9, _omitEnumNames ? '' : 'GRILLED');
  static const PreparationMethod TOASTED =
      PreparationMethod._(10, _omitEnumNames ? '' : 'TOASTED');

  /// Fat-Based Heat
  static const PreparationMethod SAUTEED =
      PreparationMethod._(11, _omitEnumNames ? '' : 'SAUTEED');
  static const PreparationMethod STIR_FRIED =
      PreparationMethod._(12, _omitEnumNames ? '' : 'STIR_FRIED');
  static const PreparationMethod SHALLOW_FRIED =
      PreparationMethod._(13, _omitEnumNames ? '' : 'SHALLOW_FRIED');
  static const PreparationMethod DEEP_FRIED =
      PreparationMethod._(14, _omitEnumNames ? '' : 'DEEP_FRIED');

  /// Mechanical & Processing
  static const PreparationMethod BLENDED =
      PreparationMethod._(15, _omitEnumNames ? '' : 'BLENDED');
  static const PreparationMethod JUICED =
      PreparationMethod._(16, _omitEnumNames ? '' : 'JUICED');
  static const PreparationMethod FERMENTED =
      PreparationMethod._(17, _omitEnumNames ? '' : 'FERMENTED');
  static const PreparationMethod PICKLED =
      PreparationMethod._(18, _omitEnumNames ? '' : 'PICKLED');
  static const PreparationMethod DRIED =
      PreparationMethod._(19, _omitEnumNames ? '' : 'DRIED');
  static const PreparationMethod SMOKED =
      PreparationMethod._(20, _omitEnumNames ? '' : 'SMOKED');

  /// Fallbacks
  static const PreparationMethod COOKED_UNKNOWN =
      PreparationMethod._(21, _omitEnumNames ? '' : 'COOKED_UNKNOWN');
  static const PreparationMethod OTHER =
      PreparationMethod._(22, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<PreparationMethod> values = <PreparationMethod>[
    UNKNOWN,
    RAW,
    BOILED,
    SIMMERED,
    STEAMED,
    PRESSURE_COOKED,
    POACHED,
    BAKED,
    ROASTED,
    GRILLED,
    TOASTED,
    SAUTEED,
    STIR_FRIED,
    SHALLOW_FRIED,
    DEEP_FRIED,
    BLENDED,
    JUICED,
    FERMENTED,
    PICKLED,
    DRIED,
    SMOKED,
    COOKED_UNKNOWN,
    OTHER,
  ];

  static final $core.List<PreparationMethod?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 22);
  static PreparationMethod? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PreparationMethod._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
