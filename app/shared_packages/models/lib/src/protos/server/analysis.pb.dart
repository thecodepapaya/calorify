// This is a generated file - do not edit.
//
// Generated from protos/server/analysis.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;
import 'analysis.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'analysis.pbenum.dart';

class MealAnalysisStatus extends $pb.GeneratedMessage {
  factory MealAnalysisStatus({
    $core.String? id,
    $core.String? userUid,
    $core.String? text,
    $core.String? imageUrl,
    $0.Timestamp? createdAt,
    $core.String? decomposedComponent,
    $0.Timestamp? decomposedComponentAt,
    $core.String? decomposedIngredient,
    $0.Timestamp? decomposedIngredientAt,
    $core.String? usdaEnriched,
    $0.Timestamp? usdaEnrichedAt,
    $core.String? clarificationQuestions,
    $0.Timestamp? clarificationQuestionsAt,
    $core.String? clarificationResponse,
    $0.Timestamp? clarificationResponseAt,
    $core.String? finalResponse,
    $0.Timestamp? finalResponseAt,
    MealAnalysisStatus_AnalysisStatus? status,
    $0.Timestamp? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userUid != null) result.userUid = userUid;
    if (text != null) result.text = text;
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (createdAt != null) result.createdAt = createdAt;
    if (decomposedComponent != null)
      result.decomposedComponent = decomposedComponent;
    if (decomposedComponentAt != null)
      result.decomposedComponentAt = decomposedComponentAt;
    if (decomposedIngredient != null)
      result.decomposedIngredient = decomposedIngredient;
    if (decomposedIngredientAt != null)
      result.decomposedIngredientAt = decomposedIngredientAt;
    if (usdaEnriched != null) result.usdaEnriched = usdaEnriched;
    if (usdaEnrichedAt != null) result.usdaEnrichedAt = usdaEnrichedAt;
    if (clarificationQuestions != null)
      result.clarificationQuestions = clarificationQuestions;
    if (clarificationQuestionsAt != null)
      result.clarificationQuestionsAt = clarificationQuestionsAt;
    if (clarificationResponse != null)
      result.clarificationResponse = clarificationResponse;
    if (clarificationResponseAt != null)
      result.clarificationResponseAt = clarificationResponseAt;
    if (finalResponse != null) result.finalResponse = finalResponse;
    if (finalResponseAt != null) result.finalResponseAt = finalResponseAt;
    if (status != null) result.status = status;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  MealAnalysisStatus._();

  factory MealAnalysisStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealAnalysisStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealAnalysisStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'server'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userUid')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..aOS(4, _omitFieldNames ? '' : 'imageUrl')
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'decomposedComponent')
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'decomposedComponentAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'decomposedIngredient')
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'decomposedIngredientAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(10, _omitFieldNames ? '' : 'usdaEnriched')
    ..aOM<$0.Timestamp>(11, _omitFieldNames ? '' : 'usdaEnrichedAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(12, _omitFieldNames ? '' : 'clarificationQuestions')
    ..aOM<$0.Timestamp>(13, _omitFieldNames ? '' : 'clarificationQuestionsAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(14, _omitFieldNames ? '' : 'clarificationResponse')
    ..aOM<$0.Timestamp>(15, _omitFieldNames ? '' : 'clarificationResponseAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(16, _omitFieldNames ? '' : 'finalResponse')
    ..aOM<$0.Timestamp>(17, _omitFieldNames ? '' : 'finalResponseAt',
        subBuilder: $0.Timestamp.create)
    ..aE<MealAnalysisStatus_AnalysisStatus>(18, _omitFieldNames ? '' : 'status',
        enumValues: MealAnalysisStatus_AnalysisStatus.values)
    ..aOM<$0.Timestamp>(19, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealAnalysisStatus copyWith(void Function(MealAnalysisStatus) updates) =>
      super.copyWith((message) => updates(message as MealAnalysisStatus))
          as MealAnalysisStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealAnalysisStatus create() => MealAnalysisStatus._();
  @$core.override
  MealAnalysisStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealAnalysisStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealAnalysisStatus>(create);
  static MealAnalysisStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userUid => $_getSZ(1);
  @$pb.TagNumber(2)
  set userUid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserUid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get decomposedComponent => $_getSZ(5);
  @$pb.TagNumber(6)
  set decomposedComponent($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDecomposedComponent() => $_has(5);
  @$pb.TagNumber(6)
  void clearDecomposedComponent() => $_clearField(6);

  @$pb.TagNumber(7)
  $0.Timestamp get decomposedComponentAt => $_getN(6);
  @$pb.TagNumber(7)
  set decomposedComponentAt($0.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasDecomposedComponentAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearDecomposedComponentAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureDecomposedComponentAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get decomposedIngredient => $_getSZ(7);
  @$pb.TagNumber(8)
  set decomposedIngredient($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDecomposedIngredient() => $_has(7);
  @$pb.TagNumber(8)
  void clearDecomposedIngredient() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.Timestamp get decomposedIngredientAt => $_getN(8);
  @$pb.TagNumber(9)
  set decomposedIngredientAt($0.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDecomposedIngredientAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearDecomposedIngredientAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureDecomposedIngredientAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get usdaEnriched => $_getSZ(9);
  @$pb.TagNumber(10)
  set usdaEnriched($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUsdaEnriched() => $_has(9);
  @$pb.TagNumber(10)
  void clearUsdaEnriched() => $_clearField(10);

  @$pb.TagNumber(11)
  $0.Timestamp get usdaEnrichedAt => $_getN(10);
  @$pb.TagNumber(11)
  set usdaEnrichedAt($0.Timestamp value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasUsdaEnrichedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUsdaEnrichedAt() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.Timestamp ensureUsdaEnrichedAt() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get clarificationQuestions => $_getSZ(11);
  @$pb.TagNumber(12)
  set clarificationQuestions($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasClarificationQuestions() => $_has(11);
  @$pb.TagNumber(12)
  void clearClarificationQuestions() => $_clearField(12);

  @$pb.TagNumber(13)
  $0.Timestamp get clarificationQuestionsAt => $_getN(12);
  @$pb.TagNumber(13)
  set clarificationQuestionsAt($0.Timestamp value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasClarificationQuestionsAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearClarificationQuestionsAt() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.Timestamp ensureClarificationQuestionsAt() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get clarificationResponse => $_getSZ(13);
  @$pb.TagNumber(14)
  set clarificationResponse($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasClarificationResponse() => $_has(13);
  @$pb.TagNumber(14)
  void clearClarificationResponse() => $_clearField(14);

  @$pb.TagNumber(15)
  $0.Timestamp get clarificationResponseAt => $_getN(14);
  @$pb.TagNumber(15)
  set clarificationResponseAt($0.Timestamp value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasClarificationResponseAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearClarificationResponseAt() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.Timestamp ensureClarificationResponseAt() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get finalResponse => $_getSZ(15);
  @$pb.TagNumber(16)
  set finalResponse($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasFinalResponse() => $_has(15);
  @$pb.TagNumber(16)
  void clearFinalResponse() => $_clearField(16);

  @$pb.TagNumber(17)
  $0.Timestamp get finalResponseAt => $_getN(16);
  @$pb.TagNumber(17)
  set finalResponseAt($0.Timestamp value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasFinalResponseAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearFinalResponseAt() => $_clearField(17);
  @$pb.TagNumber(17)
  $0.Timestamp ensureFinalResponseAt() => $_ensure(16);

  @$pb.TagNumber(18)
  MealAnalysisStatus_AnalysisStatus get status => $_getN(17);
  @$pb.TagNumber(18)
  set status(MealAnalysisStatus_AnalysisStatus value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasStatus() => $_has(17);
  @$pb.TagNumber(18)
  void clearStatus() => $_clearField(18);

  @$pb.TagNumber(19)
  $0.Timestamp get updatedAt => $_getN(18);
  @$pb.TagNumber(19)
  set updatedAt($0.Timestamp value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasUpdatedAt() => $_has(18);
  @$pb.TagNumber(19)
  void clearUpdatedAt() => $_clearField(19);
  @$pb.TagNumber(19)
  $0.Timestamp ensureUpdatedAt() => $_ensure(18);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
