// This is a generated file - do not edit.
//
// Generated from protos/api/analysis_history.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class StepTiming extends $pb.GeneratedMessage {
  factory StepTiming({
    $core.String? name,
    $core.double? durationSec,
    $core.String? status,
    $core.String? completedAt,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (durationSec != null) result.durationSec = durationSec;
    if (status != null) result.status = status;
    if (completedAt != null) result.completedAt = completedAt;
    return result;
  }

  StepTiming._();

  factory StepTiming.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StepTiming.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StepTiming',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aD(2, _omitFieldNames ? '' : 'durationSec')
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..aOS(4, _omitFieldNames ? '' : 'completedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StepTiming clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StepTiming copyWith(void Function(StepTiming) updates) =>
      super.copyWith((message) => updates(message as StepTiming)) as StepTiming;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StepTiming create() => StepTiming._();
  @$core.override
  StepTiming createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StepTiming getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StepTiming>(create);
  static StepTiming? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get durationSec => $_getN(1);
  @$pb.TagNumber(2)
  set durationSec($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDurationSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationSec() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get completedAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set completedAt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCompletedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompletedAt() => $_clearField(4);
}

class MealMetadata extends $pb.GeneratedMessage {
  factory MealMetadata({
    $core.String? name,
    $core.String? quantity,
    $core.String? mealType,
    $core.String? healthScore,
    $core.int? componentCount,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (quantity != null) result.quantity = quantity;
    if (mealType != null) result.mealType = mealType;
    if (healthScore != null) result.healthScore = healthScore;
    if (componentCount != null) result.componentCount = componentCount;
    return result;
  }

  MealMetadata._();

  factory MealMetadata.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MealMetadata.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MealMetadata',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'quantity')
    ..aOS(3, _omitFieldNames ? '' : 'mealType')
    ..aOS(4, _omitFieldNames ? '' : 'healthScore')
    ..aI(5, _omitFieldNames ? '' : 'componentCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealMetadata clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MealMetadata copyWith(void Function(MealMetadata) updates) =>
      super.copyWith((message) => updates(message as MealMetadata))
          as MealMetadata;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MealMetadata create() => MealMetadata._();
  @$core.override
  MealMetadata createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MealMetadata getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MealMetadata>(create);
  static MealMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get quantity => $_getSZ(1);
  @$pb.TagNumber(2)
  set quantity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mealType => $_getSZ(2);
  @$pb.TagNumber(3)
  set mealType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMealType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMealType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get healthScore => $_getSZ(3);
  @$pb.TagNumber(4)
  set healthScore($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHealthScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearHealthScore() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get componentCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set componentCount($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasComponentCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearComponentCount() => $_clearField(5);
}

class AnalysisHistoryItem extends $pb.GeneratedMessage {
  factory AnalysisHistoryItem({
    $core.String? id,
    $core.String? userUid,
    $0.Timestamp? createdAt,
    $core.String? status,
    $core.String? text,
    $core.bool? hasImage,
    $core.String? failureReason,
    $core.String? failedAtStep,
    $core.double? totalDurationSec,
    MealMetadata? metadata,
    $core.Iterable<StepTiming>? steps,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userUid != null) result.userUid = userUid;
    if (createdAt != null) result.createdAt = createdAt;
    if (status != null) result.status = status;
    if (text != null) result.text = text;
    if (hasImage != null) result.hasImage = hasImage;
    if (failureReason != null) result.failureReason = failureReason;
    if (failedAtStep != null) result.failedAtStep = failedAtStep;
    if (totalDurationSec != null) result.totalDurationSec = totalDurationSec;
    if (metadata != null) result.metadata = metadata;
    if (steps != null) result.steps.addAll(steps);
    return result;
  }

  AnalysisHistoryItem._();

  factory AnalysisHistoryItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisHistoryItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisHistoryItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userUid')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..aOS(5, _omitFieldNames ? '' : 'text')
    ..aOB(6, _omitFieldNames ? '' : 'hasImage')
    ..aOS(7, _omitFieldNames ? '' : 'failureReason')
    ..aOS(8, _omitFieldNames ? '' : 'failedAtStep')
    ..aD(9, _omitFieldNames ? '' : 'totalDurationSec')
    ..aOM<MealMetadata>(10, _omitFieldNames ? '' : 'metadata',
        subBuilder: MealMetadata.create)
    ..pPM<StepTiming>(11, _omitFieldNames ? '' : 'steps',
        subBuilder: StepTiming.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistoryItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistoryItem copyWith(void Function(AnalysisHistoryItem) updates) =>
      super.copyWith((message) => updates(message as AnalysisHistoryItem))
          as AnalysisHistoryItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisHistoryItem create() => AnalysisHistoryItem._();
  @$core.override
  AnalysisHistoryItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisHistoryItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisHistoryItem>(create);
  static AnalysisHistoryItem? _defaultInstance;

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
  $0.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get text => $_getSZ(4);
  @$pb.TagNumber(5)
  set text($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasText() => $_has(4);
  @$pb.TagNumber(5)
  void clearText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hasImage => $_getBF(5);
  @$pb.TagNumber(6)
  set hasImage($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasImage() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get failureReason => $_getSZ(6);
  @$pb.TagNumber(7)
  set failureReason($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFailureReason() => $_has(6);
  @$pb.TagNumber(7)
  void clearFailureReason() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get failedAtStep => $_getSZ(7);
  @$pb.TagNumber(8)
  set failedAtStep($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFailedAtStep() => $_has(7);
  @$pb.TagNumber(8)
  void clearFailedAtStep() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get totalDurationSec => $_getN(8);
  @$pb.TagNumber(9)
  set totalDurationSec($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTotalDurationSec() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalDurationSec() => $_clearField(9);

  @$pb.TagNumber(10)
  MealMetadata get metadata => $_getN(9);
  @$pb.TagNumber(10)
  set metadata(MealMetadata value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMetadata() => $_has(9);
  @$pb.TagNumber(10)
  void clearMetadata() => $_clearField(10);
  @$pb.TagNumber(10)
  MealMetadata ensureMetadata() => $_ensure(9);

  @$pb.TagNumber(11)
  $pb.PbList<StepTiming> get steps => $_getList(10);
}

class AnalysisHistorySummary extends $pb.GeneratedMessage {
  factory AnalysisHistorySummary({
    $core.String? timeRange,
    $core.int? totalRequests,
    $core.int? successCount,
    $core.int? failedCount,
    $core.double? failureRatePct,
    $core.double? avgTotalDurationSec,
    $core.Iterable<$core.MapEntry<$core.String, $core.double>>?
        avgStepDurationsSec,
    $core.Iterable<$core.MapEntry<$core.String, $core.int>>? failuresByStep,
  }) {
    final result = create();
    if (timeRange != null) result.timeRange = timeRange;
    if (totalRequests != null) result.totalRequests = totalRequests;
    if (successCount != null) result.successCount = successCount;
    if (failedCount != null) result.failedCount = failedCount;
    if (failureRatePct != null) result.failureRatePct = failureRatePct;
    if (avgTotalDurationSec != null)
      result.avgTotalDurationSec = avgTotalDurationSec;
    if (avgStepDurationsSec != null)
      result.avgStepDurationsSec.addEntries(avgStepDurationsSec);
    if (failuresByStep != null)
      result.failuresByStep.addEntries(failuresByStep);
    return result;
  }

  AnalysisHistorySummary._();

  factory AnalysisHistorySummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisHistorySummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisHistorySummary',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'timeRange')
    ..aI(2, _omitFieldNames ? '' : 'totalRequests')
    ..aI(3, _omitFieldNames ? '' : 'successCount')
    ..aI(4, _omitFieldNames ? '' : 'failedCount')
    ..aD(5, _omitFieldNames ? '' : 'failureRatePct')
    ..aD(6, _omitFieldNames ? '' : 'avgTotalDurationSec')
    ..m<$core.String, $core.double>(
        7, _omitFieldNames ? '' : 'avgStepDurationsSec',
        entryClassName: 'AnalysisHistorySummary.AvgStepDurationsSecEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OD,
        packageName: const $pb.PackageName('api'))
    ..m<$core.String, $core.int>(8, _omitFieldNames ? '' : 'failuresByStep',
        entryClassName: 'AnalysisHistorySummary.FailuresByStepEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('api'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistorySummary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistorySummary copyWith(
          void Function(AnalysisHistorySummary) updates) =>
      super.copyWith((message) => updates(message as AnalysisHistorySummary))
          as AnalysisHistorySummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisHistorySummary create() => AnalysisHistorySummary._();
  @$core.override
  AnalysisHistorySummary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisHistorySummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisHistorySummary>(create);
  static AnalysisHistorySummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get timeRange => $_getSZ(0);
  @$pb.TagNumber(1)
  set timeRange($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimeRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeRange() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalRequests => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalRequests($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalRequests() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalRequests() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get successCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set successCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSuccessCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuccessCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get failedCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set failedCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFailedCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailedCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get failureRatePct => $_getN(4);
  @$pb.TagNumber(5)
  set failureRatePct($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFailureRatePct() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailureRatePct() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get avgTotalDurationSec => $_getN(5);
  @$pb.TagNumber(6)
  set avgTotalDurationSec($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAvgTotalDurationSec() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvgTotalDurationSec() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbMap<$core.String, $core.double> get avgStepDurationsSec => $_getMap(6);

  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.int> get failuresByStep => $_getMap(7);
}

class AnalysisHistoryRequest extends $pb.GeneratedMessage {
  factory AnalysisHistoryRequest({
    $core.String? timeRange,
    $core.String? status,
    $core.int? page,
    $core.int? pageSize,
  }) {
    final result = create();
    if (timeRange != null) result.timeRange = timeRange;
    if (status != null) result.status = status;
    if (page != null) result.page = page;
    if (pageSize != null) result.pageSize = pageSize;
    return result;
  }

  AnalysisHistoryRequest._();

  factory AnalysisHistoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisHistoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisHistoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'timeRange')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aI(3, _omitFieldNames ? '' : 'page')
    ..aI(4, _omitFieldNames ? '' : 'pageSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistoryRequest copyWith(
          void Function(AnalysisHistoryRequest) updates) =>
      super.copyWith((message) => updates(message as AnalysisHistoryRequest))
          as AnalysisHistoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisHistoryRequest create() => AnalysisHistoryRequest._();
  @$core.override
  AnalysisHistoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisHistoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisHistoryRequest>(create);
  static AnalysisHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get timeRange => $_getSZ(0);
  @$pb.TagNumber(1)
  set timeRange($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimeRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeRange() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get page => $_getIZ(2);
  @$pb.TagNumber(3)
  set page($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => $_clearField(4);
}

class AnalysisHistoryResponse extends $pb.GeneratedMessage {
  factory AnalysisHistoryResponse({
    AnalysisHistorySummary? summary,
    $core.Iterable<AnalysisHistoryItem>? items,
    $core.int? page,
    $core.int? pageSize,
    $core.int? totalItems,
    $core.int? totalPages,
    $core.String? filterRange,
    $core.String? filterStatus,
  }) {
    final result = create();
    if (summary != null) result.summary = summary;
    if (items != null) result.items.addAll(items);
    if (page != null) result.page = page;
    if (pageSize != null) result.pageSize = pageSize;
    if (totalItems != null) result.totalItems = totalItems;
    if (totalPages != null) result.totalPages = totalPages;
    if (filterRange != null) result.filterRange = filterRange;
    if (filterStatus != null) result.filterStatus = filterStatus;
    return result;
  }

  AnalysisHistoryResponse._();

  factory AnalysisHistoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalysisHistoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalysisHistoryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'api'),
      createEmptyInstance: create)
    ..aOM<AnalysisHistorySummary>(1, _omitFieldNames ? '' : 'summary',
        subBuilder: AnalysisHistorySummary.create)
    ..pPM<AnalysisHistoryItem>(2, _omitFieldNames ? '' : 'items',
        subBuilder: AnalysisHistoryItem.create)
    ..aI(3, _omitFieldNames ? '' : 'page')
    ..aI(4, _omitFieldNames ? '' : 'pageSize')
    ..aI(5, _omitFieldNames ? '' : 'totalItems')
    ..aI(6, _omitFieldNames ? '' : 'totalPages')
    ..aOS(7, _omitFieldNames ? '' : 'filterRange')
    ..aOS(8, _omitFieldNames ? '' : 'filterStatus')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistoryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalysisHistoryResponse copyWith(
          void Function(AnalysisHistoryResponse) updates) =>
      super.copyWith((message) => updates(message as AnalysisHistoryResponse))
          as AnalysisHistoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisHistoryResponse create() => AnalysisHistoryResponse._();
  @$core.override
  AnalysisHistoryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalysisHistoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalysisHistoryResponse>(create);
  static AnalysisHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AnalysisHistorySummary get summary => $_getN(0);
  @$pb.TagNumber(1)
  set summary(AnalysisHistorySummary value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearSummary() => $_clearField(1);
  @$pb.TagNumber(1)
  AnalysisHistorySummary ensureSummary() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<AnalysisHistoryItem> get items => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get page => $_getIZ(2);
  @$pb.TagNumber(3)
  set page($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalItems => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalItems($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalItems() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalItems() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalPages => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalPages($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTotalPages() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalPages() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get filterRange => $_getSZ(6);
  @$pb.TagNumber(7)
  set filterRange($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFilterRange() => $_has(6);
  @$pb.TagNumber(7)
  void clearFilterRange() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get filterStatus => $_getSZ(7);
  @$pb.TagNumber(8)
  set filterStatus($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFilterStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearFilterStatus() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
