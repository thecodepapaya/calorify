import 'dart:async';
import 'dart:developer';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/food_repository.dart';

class MealLogSyncResult {
  const MealLogSyncResult({
    required this.attempted,
    required this.succeeded,
    required this.failed,
  });

  const MealLogSyncResult.none() : attempted = 0, succeeded = 0, failed = 0;

  final int attempted;
  final int succeeded;
  final int failed;
}

/// Replays the transactional outbox for the V3 confirm-log contract.
class MealLogSyncService {
  MealLogSyncService({
    required DatabaseInterface database,
    required FoodRepository foodRepository,
  }) : _database = database,
       _foodRepository = foodRepository;

  final DatabaseInterface _database;
  final FoodRepository _foodRepository;
  Future<MealLogSyncResult>? _inFlight;

  Future<MealLogSyncResult> syncPending() {
    return _inFlight ??= _syncPending().whenComplete(() => _inFlight = null);
  }

  Future<MealLogSyncResult> _syncPending() async {
    await _database.preparePendingMealLogSyncs();
    final pending = await _database.getPendingMealLogSyncs();
    if (pending.isEmpty) return const MealLogSyncResult.none();

    var succeeded = 0;
    var failed = 0;
    for (final operation in pending) {
      try {
        switch (operation.operation) {
          case MealLogSyncOperation.upsert:
            final meal = operation.meal;
            final loggedAt = operation.loggedAt;
            if (meal == null || loggedAt == null) {
              throw StateError('Meal log upsert is missing its snapshot');
            }
            await _foodRepository.confirmMealLogV3(
              analysisId: operation.analysisId,
              meal: meal,
              loggedAt: loggedAt,
            );
          case MealLogSyncOperation.delete:
            await _foodRepository.deleteMealLogV3(
              analysisId: operation.analysisId,
            );
        }
        await _database.markMealLogSyncCompleted(
          operation.id,
          operation.version,
        );
        succeeded++;
      } on Object catch (error, stackTrace) {
        failed++;
        await _database.markMealLogSyncFailed(
          operation.id,
          operation.version,
          error,
        );
        log(
          'Meal log sync failed',
          error: error,
          stackTrace: stackTrace,
          name: 'MealLogSyncService',
        );
      }
    }
    return MealLogSyncResult(
      attempted: pending.length,
      succeeded: succeeded,
      failed: failed,
    );
  }
}
