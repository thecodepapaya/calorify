import 'dart:developer';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:health/health.dart';

class HealthConnectSyncResult {
  const HealthConnectSyncResult({
    required this.attempted,
    required this.succeeded,
    required this.failed,
    this.permissionRequired = false,
  });

  const HealthConnectSyncResult.none({this.permissionRequired = false})
    : attempted = 0,
      succeeded = 0,
      failed = 0;

  final int attempted;
  final int succeeded;
  final int failed;
  final bool permissionRequired;

  bool get isComplete => failed == 0 && !permissionRequired;
}

/// Replays the database-backed Health Connect outbox.
///
/// Local meal mutations commit together with an outbox entry. This service can
/// therefore be called after any mutation, on resume, or after authorization;
/// process death and transient platform failures never lose the work.
class HealthConnectSyncService {
  HealthConnectSyncService({
    required DatabaseInterface database,
    required HealthService healthService,
  }) : _database = database,
       _healthService = healthService;

  final DatabaseInterface _database;
  final HealthService _healthService;
  Future<HealthConnectSyncResult>? _inFlight;

  Future<HealthConnectSyncResult> syncPending() {
    final current = _inFlight;
    if (current != null) return current;
    final operation = _syncPending();
    _inFlight = operation;
    return operation.whenComplete(() {
      if (identical(_inFlight, operation)) _inFlight = null;
    });
  }

  Future<HealthConnectSyncResult> _syncPending() async {
    if (!_healthService.isInitialized) await _healthService.init();
    await _healthService.refreshAuthorizationStatus();
    if (_healthService.status != HealthConnectSdkStatus.sdkAvailable) {
      return const HealthConnectSyncResult.none();
    }

    var syncEnabled =
        await _database.getHealthConnectNutritionSyncEnabled() ?? false;
    if (syncEnabled &&
        _healthService.nutritionWritePermission ==
            HealthPermissionState.denied) {
      await _database.setHealthConnectNutritionSyncEnabled(false);
      await _database.discardPendingHealthConnectUpserts();
      syncEnabled = false;
    } else if (!syncEnabled) {
      await _database.discardPendingHealthConnectUpserts();
    }

    final pending = await _database.getPendingHealthConnectSyncs();
    if (pending.isEmpty) return const HealthConnectSyncResult.none();

    var attempted = 0;
    var succeeded = 0;
    var failed = 0;
    var permissionRequired = false;

    for (final operation in pending) {
      if (operation.operation == HealthConnectSyncOperation.upsert &&
          (!syncEnabled || !_healthService.canWriteNutrition)) {
        permissionRequired = true;
        continue;
      }

      attempted++;
      try {
        final success = switch (operation.operation) {
          HealthConnectSyncOperation.upsert =>
            operation.meal != null && operation.loggedAt != null
                ? await _healthService.writeMealData(
                  operation.meal!,
                  loggedAt: operation.loggedAt!,
                  clientRecordId: operation.clientRecordId,
                  clientRecordVersion: operation.clientRecordVersion,
                )
                : false,
          HealthConnectSyncOperation.delete => await _healthService
              .deleteMealData(operation.clientRecordId),
        };
        if (!success) {
          throw StateError(
            'Health Connect rejected ${operation.operation.name}',
          );
        }
        await _database.markHealthConnectSyncCompleted(
          operation.id,
          operation.clientRecordVersion,
        );
        succeeded++;
      } catch (error, stackTrace) {
        failed++;
        log(
          'Health Connect sync failed for ${operation.clientRecordId}',
          error: error,
          stackTrace: stackTrace,
        );
        await _database.markHealthConnectSyncFailed(
          operation.id,
          operation.clientRecordVersion,
          error,
        );
      }
    }

    return HealthConnectSyncResult(
      attempted: attempted,
      succeeded: succeeded,
      failed: failed,
      permissionRequired: permissionRequired,
    );
  }

  /// Reconciles persisted export intent with current platform permissions.
  /// Existing installs may adopt an already-granted write permission once;
  /// normal resume checks never turn export on implicitly.
  Future<void> reconcileAuthorization({bool adoptExisting = false}) async {
    if (!_healthService.isInitialized) await _healthService.init();
    await _healthService.refreshAuthorizationStatus();
    final preference = await _database.getHealthConnectNutritionSyncEnabled();
    if (preference == null) {
      await _database.setHealthConnectNutritionSyncEnabled(
        adoptExisting && _healthService.canWriteNutrition,
      );
      return;
    }
    if (preference &&
        _healthService.nutritionWritePermission ==
            HealthPermissionState.denied) {
      await _database.setHealthConnectNutritionSyncEnabled(false);
      await _database.discardPendingHealthConnectUpserts();
    }
  }

  Future<HealthConnectSyncResult> enableNutritionSync() async {
    await _healthService.refreshAuthorizationStatus();
    if (!_healthService.canWriteNutrition) {
      throw StateError('Nutrition write permission is required');
    }
    final wasEnabled =
        await _database.getHealthConnectNutritionSyncEnabled() ?? false;
    await _database.setHealthConnectNutritionSyncEnabled(true);
    if (!wasEnabled) await _database.enqueueLinkedHealthConnectUpserts();
    return syncPending();
  }

  Future<bool> disconnect() async {
    await _database.setHealthConnectNutritionSyncEnabled(false);
    await _database.discardPendingHealthConnectUpserts();
    return _healthService.revokeAuthorization();
  }

  /// Deletes known app-owned records after a separate user confirmation.
  ///
  /// Records created by older releases had no stable client ID and cannot be
  /// safely targeted through the package API. The privacy UI directs users to
  /// Health Connect for that one-time legacy cleanup.
  Future<int> deleteSyncedMeals() async {
    await _database.enqueueAllHealthConnectDeletes();
    final deleteCount = await _database.countPendingHealthConnectDeletes();
    var remaining = deleteCount;
    while (remaining > 0) {
      final result = await syncPending();
      if (result.failed > 0 || result.attempted == 0) break;
      remaining = await _database.countPendingHealthConnectDeletes();
    }
    if (remaining > 0) {
      throw StateError('Some Health Connect meals could not be deleted');
    }
    return deleteCount;
  }
}
