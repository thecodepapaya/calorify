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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/meal.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'meal.pbenum.dart';

class EnrichedIngredient extends $pb.GeneratedMessage {
  factory EnrichedIngredient({
    $core.String? name,
    $fixnum.Int64? fdcId,
    $core.String? description,
    $core.double? similarity,
    $0.Measurement? grams,
    $0.Macros? macros,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (fdcId != null) result.fdcId = fdcId;
    if (description != null) result.description = description;
    if (similarity != null) result.similarity = similarity;
    if (grams != null) result.grams = grams;
    if (macros != null) result.macros = macros;
    return result;
  }

  EnrichedIngredient._();

  factory EnrichedIngredient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnrichedIngredient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnrichedIngredient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aInt64(2, _omitFieldNames ? '' : 'fdcId')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aD(4, _omitFieldNames ? '' : 'similarity', fieldType: $pb.PbFieldType.OF)
    ..aOM<$0.Measurement>(5, _omitFieldNames ? '' : 'grams',
        subBuilder: $0.Measurement.create)
    ..aOM<$0.Macros>(6, _omitFieldNames ? '' : 'macros',
        subBuilder: $0.Macros.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnrichedIngredient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnrichedIngredient copyWith(void Function(EnrichedIngredient) updates) =>
      super.copyWith((message) => updates(message as EnrichedIngredient))
          as EnrichedIngredient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnrichedIngredient create() => EnrichedIngredient._();
  @$core.override
  EnrichedIngredient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnrichedIngredient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnrichedIngredient>(create);
  static EnrichedIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fdcId => $_getI64(1);
  @$pb.TagNumber(2)
  set fdcId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFdcId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFdcId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get similarity => $_getN(3);
  @$pb.TagNumber(4)
  set similarity($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSimilarity() => $_has(3);
  @$pb.TagNumber(4)
  void clearSimilarity() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Measurement get grams => $_getN(4);
  @$pb.TagNumber(5)
  set grams($0.Measurement value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGrams() => $_has(4);
  @$pb.TagNumber(5)
  void clearGrams() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Measurement ensureGrams() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Macros get macros => $_getN(5);
  @$pb.TagNumber(6)
  set macros($0.Macros value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMacros() => $_has(5);
  @$pb.TagNumber(6)
  void clearMacros() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Macros ensureMacros() => $_ensure(5);
}

class UsdaEnriched extends $pb.GeneratedMessage {
  factory UsdaEnriched({
    $core.Iterable<EnrichedIngredient>? ingredients,
    $0.Macros? totalMacros,
  }) {
    final result = create();
    if (ingredients != null) result.ingredients.addAll(ingredients);
    if (totalMacros != null) result.totalMacros = totalMacros;
    return result;
  }

  UsdaEnriched._();

  factory UsdaEnriched.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UsdaEnriched.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UsdaEnriched',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..pPM<EnrichedIngredient>(1, _omitFieldNames ? '' : 'ingredients',
        subBuilder: EnrichedIngredient.create)
    ..aOM<$0.Macros>(2, _omitFieldNames ? '' : 'totalMacros',
        subBuilder: $0.Macros.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsdaEnriched clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsdaEnriched copyWith(void Function(UsdaEnriched) updates) =>
      super.copyWith((message) => updates(message as UsdaEnriched))
          as UsdaEnriched;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsdaEnriched create() => UsdaEnriched._();
  @$core.override
  UsdaEnriched createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UsdaEnriched getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UsdaEnriched>(create);
  static UsdaEnriched? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<EnrichedIngredient> get ingredients => $_getList(0);

  @$pb.TagNumber(2)
  $0.Macros get totalMacros => $_getN(1);
  @$pb.TagNumber(2)
  set totalMacros($0.Macros value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalMacros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalMacros() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Macros ensureTotalMacros() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
