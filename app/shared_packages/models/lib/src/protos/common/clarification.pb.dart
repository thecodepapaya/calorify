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

import 'clarification.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'clarification.pbenum.dart';

class Clarification extends $pb.GeneratedMessage {
  factory Clarification({
    $core.int? id,
    $core.String? question,
    $core.Iterable<Option>? options,
    Clarification_Type? type,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (question != null) result.question = question;
    if (options != null) result.options.addAll(options);
    if (type != null) result.type = type;
    return result;
  }

  Clarification._();

  factory Clarification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Clarification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Clarification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'question')
    ..pPM<Option>(3, _omitFieldNames ? '' : 'options',
        subBuilder: Option.create)
    ..aE<Clarification_Type>(4, _omitFieldNames ? '' : 'type',
        enumValues: Clarification_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Clarification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Clarification copyWith(void Function(Clarification) updates) =>
      super.copyWith((message) => updates(message as Clarification))
          as Clarification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Clarification create() => Clarification._();
  @$core.override
  Clarification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Clarification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Clarification>(create);
  static Clarification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get question => $_getSZ(1);
  @$pb.TagNumber(2)
  set question($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuestion() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuestion() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Option> get options => $_getList(2);

  @$pb.TagNumber(4)
  Clarification_Type get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(Clarification_Type value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

class Clarifications extends $pb.GeneratedMessage {
  factory Clarifications({
    $core.Iterable<Clarification>? clarification,
  }) {
    final result = create();
    if (clarification != null) result.clarification.addAll(clarification);
    return result;
  }

  Clarifications._();

  factory Clarifications.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Clarifications.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Clarifications',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..pPM<Clarification>(1, _omitFieldNames ? '' : 'clarification',
        subBuilder: Clarification.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Clarifications clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Clarifications copyWith(void Function(Clarifications) updates) =>
      super.copyWith((message) => updates(message as Clarifications))
          as Clarifications;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Clarifications create() => Clarifications._();
  @$core.override
  Clarifications createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Clarifications getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Clarifications>(create);
  static Clarifications? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Clarification> get clarification => $_getList(0);
}

class Option extends $pb.GeneratedMessage {
  factory Option({
    $core.String? text,
    MacroDelta? macroDelta,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (macroDelta != null) result.macroDelta = macroDelta;
    return result;
  }

  Option._();

  factory Option.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Option.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Option',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOM<MacroDelta>(2, _omitFieldNames ? '' : 'macroDelta',
        subBuilder: MacroDelta.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Option clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Option copyWith(void Function(Option) updates) =>
      super.copyWith((message) => updates(message as Option)) as Option;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Option create() => Option._();
  @$core.override
  Option createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Option getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Option>(create);
  static Option? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  MacroDelta get macroDelta => $_getN(1);
  @$pb.TagNumber(2)
  set macroDelta(MacroDelta value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMacroDelta() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacroDelta() => $_clearField(2);
  @$pb.TagNumber(2)
  MacroDelta ensureMacroDelta() => $_ensure(1);
}

class MacroDelta extends $pb.GeneratedMessage {
  factory MacroDelta({
    $core.int? calorie,
    $core.int? carb,
    $core.int? protein,
    $core.int? fat,
    $core.int? fiber,
  }) {
    final result = create();
    if (calorie != null) result.calorie = calorie;
    if (carb != null) result.carb = carb;
    if (protein != null) result.protein = protein;
    if (fat != null) result.fat = fat;
    if (fiber != null) result.fiber = fiber;
    return result;
  }

  MacroDelta._();

  factory MacroDelta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MacroDelta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MacroDelta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'common'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'calorie')
    ..aI(2, _omitFieldNames ? '' : 'carb')
    ..aI(3, _omitFieldNames ? '' : 'protein')
    ..aI(4, _omitFieldNames ? '' : 'fat')
    ..aI(5, _omitFieldNames ? '' : 'fiber')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MacroDelta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MacroDelta copyWith(void Function(MacroDelta) updates) =>
      super.copyWith((message) => updates(message as MacroDelta)) as MacroDelta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MacroDelta create() => MacroDelta._();
  @$core.override
  MacroDelta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MacroDelta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MacroDelta>(create);
  static MacroDelta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get calorie => $_getIZ(0);
  @$pb.TagNumber(1)
  set calorie($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCalorie() => $_has(0);
  @$pb.TagNumber(1)
  void clearCalorie() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get carb => $_getIZ(1);
  @$pb.TagNumber(2)
  set carb($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCarb() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarb() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get protein => $_getIZ(2);
  @$pb.TagNumber(3)
  set protein($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProtein() => $_has(2);
  @$pb.TagNumber(3)
  void clearProtein() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get fat => $_getIZ(3);
  @$pb.TagNumber(4)
  set fat($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFat() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get fiber => $_getIZ(4);
  @$pb.TagNumber(5)
  set fiber($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFiber() => $_has(4);
  @$pb.TagNumber(5)
  void clearFiber() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
