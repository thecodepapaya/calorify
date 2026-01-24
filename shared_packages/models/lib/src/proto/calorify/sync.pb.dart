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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $0;
import 'sync.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'sync.pbenum.dart';

class DeleteMeal extends $pb.GeneratedMessage {
  factory DeleteMeal({
    $core.String? clientId,
    $fixnum.Int64? localId,
  }) {
    final result = create();
    if (clientId != null) result.clientId = clientId;
    if (localId != null) result.localId = localId;
    return result;
  }

  DeleteMeal._();

  factory DeleteMeal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteMeal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteMeal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientId')
    ..aInt64(2, _omitFieldNames ? '' : 'localId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteMeal clone() => DeleteMeal()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteMeal copyWith(void Function(DeleteMeal) updates) =>
      super.copyWith((message) => updates(message as DeleteMeal)) as DeleteMeal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteMeal create() => DeleteMeal._();
  @$core.override
  DeleteMeal createEmptyInstance() => create();
  static $pb.PbList<DeleteMeal> createRepeated() => $pb.PbList<DeleteMeal>();
  @$core.pragma('dart2js:noInline')
  static DeleteMeal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteMeal>(create);
  static DeleteMeal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get localId => $_getI64(1);
  @$pb.TagNumber(2)
  set localId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalId() => $_clearField(2);
}

enum SyncOp_Payload { meal, deleteMeal, profile, fcmToken, notSet }

class SyncOp extends $pb.GeneratedMessage {
  factory SyncOp({
    $core.String? idempotencyKey,
    SyncOpType? opType,
    $fixnum.Int64? createdAt,
    $0.MealInfo? meal,
    DeleteMeal? deleteMeal,
    $0.UserProfile? profile,
    $0.FcmToken? fcmToken,
  }) {
    final result = create();
    if (idempotencyKey != null) result.idempotencyKey = idempotencyKey;
    if (opType != null) result.opType = opType;
    if (createdAt != null) result.createdAt = createdAt;
    if (meal != null) result.meal = meal;
    if (deleteMeal != null) result.deleteMeal = deleteMeal;
    if (profile != null) result.profile = profile;
    if (fcmToken != null) result.fcmToken = fcmToken;
    return result;
  }

  SyncOp._();

  factory SyncOp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SyncOp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SyncOp_Payload> _SyncOp_PayloadByTag = {
    4: SyncOp_Payload.meal,
    5: SyncOp_Payload.deleteMeal,
    6: SyncOp_Payload.profile,
    7: SyncOp_Payload.fcmToken,
    0: SyncOp_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncOp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7])
    ..aOS(1, _omitFieldNames ? '' : 'idempotencyKey')
    ..e<SyncOpType>(2, _omitFieldNames ? '' : 'opType', $pb.PbFieldType.OE,
        defaultOrMaker: SyncOpType.SYNC_OP_TYPE_UNSPECIFIED,
        valueOf: SyncOpType.valueOf,
        enumValues: SyncOpType.values)
    ..aInt64(3, _omitFieldNames ? '' : 'createdAt')
    ..aOM<$0.MealInfo>(4, _omitFieldNames ? '' : 'meal',
        subBuilder: $0.MealInfo.create)
    ..aOM<DeleteMeal>(5, _omitFieldNames ? '' : 'deleteMeal',
        subBuilder: DeleteMeal.create)
    ..aOM<$0.UserProfile>(6, _omitFieldNames ? '' : 'profile',
        subBuilder: $0.UserProfile.create)
    ..aOM<$0.FcmToken>(7, _omitFieldNames ? '' : 'fcmToken',
        subBuilder: $0.FcmToken.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncOp clone() => SyncOp()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncOp copyWith(void Function(SyncOp) updates) =>
      super.copyWith((message) => updates(message as SyncOp)) as SyncOp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncOp create() => SyncOp._();
  @$core.override
  SyncOp createEmptyInstance() => create();
  static $pb.PbList<SyncOp> createRepeated() => $pb.PbList<SyncOp>();
  @$core.pragma('dart2js:noInline')
  static SyncOp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncOp>(create);
  static SyncOp? _defaultInstance;

  SyncOp_Payload whichPayload() => _SyncOp_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get idempotencyKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set idempotencyKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdempotencyKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdempotencyKey() => $_clearField(1);

  @$pb.TagNumber(2)
  SyncOpType get opType => $_getN(1);
  @$pb.TagNumber(2)
  set opType(SyncOpType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOpType() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpType() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdAt => $_getI64(2);
  @$pb.TagNumber(3)
  set createdAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.MealInfo get meal => $_getN(3);
  @$pb.TagNumber(4)
  set meal($0.MealInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMeal() => $_has(3);
  @$pb.TagNumber(4)
  void clearMeal() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.MealInfo ensureMeal() => $_ensure(3);

  @$pb.TagNumber(5)
  DeleteMeal get deleteMeal => $_getN(4);
  @$pb.TagNumber(5)
  set deleteMeal(DeleteMeal value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDeleteMeal() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeleteMeal() => $_clearField(5);
  @$pb.TagNumber(5)
  DeleteMeal ensureDeleteMeal() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.UserProfile get profile => $_getN(5);
  @$pb.TagNumber(6)
  set profile($0.UserProfile value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasProfile() => $_has(5);
  @$pb.TagNumber(6)
  void clearProfile() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.UserProfile ensureProfile() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.FcmToken get fcmToken => $_getN(6);
  @$pb.TagNumber(7)
  set fcmToken($0.FcmToken value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFcmToken() => $_has(6);
  @$pb.TagNumber(7)
  void clearFcmToken() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.FcmToken ensureFcmToken() => $_ensure(6);
}

class SyncBatch extends $pb.GeneratedMessage {
  factory SyncBatch({
    $core.Iterable<SyncOp>? ops,
  }) {
    final result = create();
    if (ops != null) result.ops.addAll(ops);
    return result;
  }

  SyncBatch._();

  factory SyncBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SyncBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncBatch',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..pc<SyncOp>(1, _omitFieldNames ? '' : 'ops', $pb.PbFieldType.PM,
        subBuilder: SyncOp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncBatch clone() => SyncBatch()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncBatch copyWith(void Function(SyncBatch) updates) =>
      super.copyWith((message) => updates(message as SyncBatch)) as SyncBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncBatch create() => SyncBatch._();
  @$core.override
  SyncBatch createEmptyInstance() => create();
  static $pb.PbList<SyncBatch> createRepeated() => $pb.PbList<SyncBatch>();
  @$core.pragma('dart2js:noInline')
  static SyncBatch getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncBatch>(create);
  static SyncBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SyncOp> get ops => $_getList(0);
}

class SyncResult extends $pb.GeneratedMessage {
  factory SyncResult({
    $core.String? idempotencyKey,
    $core.bool? success,
    $core.String? error,
    $core.String? remoteId,
  }) {
    final result = create();
    if (idempotencyKey != null) result.idempotencyKey = idempotencyKey;
    if (success != null) result.success = success;
    if (error != null) result.error = error;
    if (remoteId != null) result.remoteId = remoteId;
    return result;
  }

  SyncResult._();

  factory SyncResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SyncResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idempotencyKey')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..aOS(4, _omitFieldNames ? '' : 'remoteId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncResult clone() => SyncResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncResult copyWith(void Function(SyncResult) updates) =>
      super.copyWith((message) => updates(message as SyncResult)) as SyncResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncResult create() => SyncResult._();
  @$core.override
  SyncResult createEmptyInstance() => create();
  static $pb.PbList<SyncResult> createRepeated() => $pb.PbList<SyncResult>();
  @$core.pragma('dart2js:noInline')
  static SyncResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SyncResult>(create);
  static SyncResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idempotencyKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set idempotencyKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIdempotencyKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdempotencyKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get remoteId => $_getSZ(3);
  @$pb.TagNumber(4)
  set remoteId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRemoteId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemoteId() => $_clearField(4);
}

class SyncAck extends $pb.GeneratedMessage {
  factory SyncAck({
    $core.Iterable<SyncResult>? results,
  }) {
    final result = create();
    if (results != null) result.results.addAll(results);
    return result;
  }

  SyncAck._();

  factory SyncAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SyncAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SyncAck',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'calorify.v1'),
      createEmptyInstance: create)
    ..pc<SyncResult>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM,
        subBuilder: SyncResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncAck clone() => SyncAck()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncAck copyWith(void Function(SyncAck) updates) =>
      super.copyWith((message) => updates(message as SyncAck)) as SyncAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncAck create() => SyncAck._();
  @$core.override
  SyncAck createEmptyInstance() => create();
  static $pb.PbList<SyncAck> createRepeated() => $pb.PbList<SyncAck>();
  @$core.pragma('dart2js:noInline')
  static SyncAck getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAck>(create);
  static SyncAck? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SyncResult> get results => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
