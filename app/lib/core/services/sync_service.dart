import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/network/dio_client.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

class SyncService {
  SyncService._();

  static final SyncService instance = SyncService._();

  final Uuid _uuid = const Uuid();
  Timer? _timer;
  bool _initialized = false;
  bool _syncInProgress = false;

  String generateClientId() => _uuid.v4();

  String generateIdempotencyKey() => _uuid.v4();

  Future<void> initialize() async {
    if (_initialized) return;
    _initialized = true;
    _timer = Timer.periodic(
      const Duration(seconds: 30),
      (_) => unawaited(syncPending()),
    );
    unawaited(syncPending());
  }

  Future<void> enqueueMealUpsert(MealInfo meal) async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return;
    final op = SyncQueueTableCompanion.insert(
      opType: SyncOpType.SYNC_OP_TYPE_UPSERT_MEAL.value,
      idempotencyKey: generateIdempotencyKey(),
      payload: Uint8List.fromList(meal.writeToBuffer()),
    );
    await db.into(db.syncQueueTable).insert(op);
  }

  Future<void> enqueueMealDelete({
    String? clientId,
    int? localId,
  }) async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return;
    if (clientId == null && localId == null) return;
    final payload = DeleteMeal(
      clientId: clientId,
      localId: int64FromInt(localId),
    );
    final op = SyncQueueTableCompanion.insert(
      opType: SyncOpType.SYNC_OP_TYPE_DELETE_MEAL.value,
      idempotencyKey: generateIdempotencyKey(),
      payload: Uint8List.fromList(payload.writeToBuffer()),
    );
    await db.into(db.syncQueueTable).insert(op);
  }

  Future<void> enqueueUserProfile(UserProfile profile) async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return;
    final op = SyncQueueTableCompanion.insert(
      opType: SyncOpType.SYNC_OP_TYPE_UPSERT_PROFILE.value,
      idempotencyKey: generateIdempotencyKey(),
      payload: Uint8List.fromList(profile.writeToBuffer()),
    );
    await db.into(db.syncQueueTable).insert(op);
  }

  Future<void> enqueueFcmToken(FcmToken token) async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return;
    final op = SyncQueueTableCompanion.insert(
      opType: SyncOpType.SYNC_OP_TYPE_FCM_TOKEN.value,
      idempotencyKey: generateIdempotencyKey(),
      payload: Uint8List.fromList(token.writeToBuffer()),
    );
    await db.into(db.syncQueueTable).insert(op);
  }

  Future<void> syncPending() async {
    if (_syncInProgress) return;
    final db = DatabaseService.rawDatabase;
    if (db == null) return;

    _syncInProgress = true;
    try {
      final now = DateTime.now();
      final pending =
          await (db.select(db.syncQueueTable)
                ..where(
                  (tbl) =>
                      tbl.nextRetryAt.isNull() |
                      tbl.nextRetryAt.isSmallerOrEqualValue(now),
                )
                ..orderBy([(tbl) => OrderingTerm(expression: tbl.createdAt)])
                ..limit(50))
              .get();

      if (pending.isEmpty) return;

      final ops = pending
          .map((row) => _buildSyncOp(row))
          .whereType<SyncOp>()
          .toList();
      if (ops.isEmpty) return;

      final batch = SyncBatch()..ops.addAll(ops);

      final response = await DioClient.instance.client.post(
        '/api/v1/sync',
        data: batch.writeToBuffer(),
        options: Options(responseType: ResponseType.bytes),
      );

      final data = response.data;
      if (data is! List<int>) {
        await _markBatchFailed(pending, 'Invalid sync response');
        return;
      }

      final ack = SyncAck.fromBuffer(data);
      final resultsByKey = {
        for (final result in ack.results) result.idempotencyKey: result,
      };

      for (final row in pending) {
        final result = resultsByKey[row.idempotencyKey];
        if (result == null) {
          await _markFailed(row, 'Missing sync result');
          continue;
        }
        if (result.success) {
          await (db.delete(db.syncQueueTable)
                ..where((tbl) => tbl.id.equals(row.id)))
              .go();
        } else {
          await _markFailed(row, result.error);
        }
      }
    } catch (e) {
      await _markBatchFailed(
        await _loadPendingRows(),
        e.toString(),
      );
    } finally {
      _syncInProgress = false;
    }
  }

  SyncOp? _buildSyncOp(SyncQueueTableData row) {
    final opType =
        SyncOpType.valueOf(row.opType) ??
        SyncOpType.SYNC_OP_TYPE_UNSPECIFIED;

    final op = SyncOp(
      idempotencyKey: row.idempotencyKey,
      opType: opType,
      createdAt: dateTimeToTimestamp(row.createdAt),
    );

    switch (opType) {
      case SyncOpType.SYNC_OP_TYPE_UPSERT_MEAL:
        op.meal = MealInfo.fromBuffer(row.payload);
        return op;
      case SyncOpType.SYNC_OP_TYPE_DELETE_MEAL:
        op.deleteMeal = DeleteMeal.fromBuffer(row.payload);
        return op;
      case SyncOpType.SYNC_OP_TYPE_UPSERT_PROFILE:
        op.profile = UserProfile.fromBuffer(row.payload);
        return op;
      case SyncOpType.SYNC_OP_TYPE_FCM_TOKEN:
        op.fcmToken = FcmToken.fromBuffer(row.payload);
        return op;
      case SyncOpType.SYNC_OP_TYPE_UNSPECIFIED:
        return null;
    }
    return null;
  }

  Future<void> _markBatchFailed(
    List<SyncQueueTableData> rows,
    String error,
  ) async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return;
    for (final row in rows) {
      await _markFailed(row, error);
    }
  }

  Future<void> _markFailed(SyncQueueTableData row, String? error) async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return;
    final now = DateTime.now();
    final attempt = row.attemptCount + 1;
    final delaySeconds = min(300, pow(2, attempt).toInt());
    final nextRetryAt = now.add(Duration(seconds: delaySeconds));
    await (db.update(db.syncQueueTable)
          ..where((tbl) => tbl.id.equals(row.id)))
        .write(
      SyncQueueTableCompanion(
        attemptCount: Value(attempt),
        lastAttemptAt: Value(now),
        nextRetryAt: Value(nextRetryAt),
        lastError: Value(error),
      ),
    );
  }

  Future<List<SyncQueueTableData>> _loadPendingRows() async {
    final db = DatabaseService.rawDatabase;
    if (db == null) return [];
    return db.select(db.syncQueueTable).get();
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
    _initialized = false;
  }
}
