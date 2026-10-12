import 'dart:convert';
import 'dart:io';

import 'package:calorify_watch/core/db/tables/cache_metadata.dart';
import 'package:calorify_watch/core/db/tables/cached_favorites.dart';
import 'package:calorify_watch/core/db/tables/cached_meals.dart';
import 'package:calorify_watch/core/db/tables/pending_operations.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'watch_database.g.dart';

enum PendingWatchOperationType { logMeal, deleteMeal }

class WatchCacheSnapshot {
  const WatchCacheSnapshot({
    required this.meals,
    required this.favoriteMeals,
    this.calorieGoal,
    this.dashboardLastSyncAt,
    this.favoritesLastSyncAt,
  });

  final List<LoggedMeal> meals;
  final List<FavoriteMeal> favoriteMeals;
  final int? calorieGoal;
  final DateTime? dashboardLastSyncAt;
  final DateTime? favoritesLastSyncAt;
}

class PendingWatchOperation {
  const PendingWatchOperation({
    required this.id,
    required this.type,
    required this.mealId,
    required this.createdAt,
    this.favoriteMealId,
    this.meal,
  });

  final int id;
  final PendingWatchOperationType type;
  final int mealId;
  final int? favoriteMealId;
  final DateTime createdAt;
  final LoggedMeal? meal;
}

abstract interface class WatchSyncDatabase {
  Future<WatchCacheSnapshot> loadSnapshot();

  Future<void> replaceDashboard({
    required List<LoggedMeal> meals,
    required int? calorieGoal,
    DateTime? dashboardLastSyncAt,
  });

  Future<void> replaceFavorites(
    List<FavoriteMeal> favorites, {
    required DateTime lastSyncAt,
  });

  Future<void> upsertMeal(LoggedMeal meal);

  Future<void> deleteCachedMeal(int mealId);

  Future<void> queueMealLog(LoggedMeal meal, {int? favoriteMealId});

  Future<void> queueMealDelete(int mealId);

  Future<void> cancelQueuedMealLog(int mealId);

  Future<List<PendingWatchOperation>> getPendingOperations();

  Future<void> deletePendingOperation(int operationId);

  Future<void> close();
}

@DriftDatabase(
  tables: [
    CachedMealsTable,
    CachedFavoritesTable,
    WatchCacheMetadataTable,
    PendingOperationsTable,
  ],
)
class WatchDatabase extends _$WatchDatabase implements WatchSyncDatabase {
  WatchDatabase() : super(_openConnection());

  @visibleForTesting
  WatchDatabase.forTesting(super.e);

  static const int _metadataRowId = 1;

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) => migrator.createAll(),
    onUpgrade: (migrator, from, to) async {
      if (from < 2) {
        await migrator.addColumn(
          cachedMealsTable,
          cachedMealsTable.protoPayload,
        );
        await migrator.addColumn(
          cachedFavoritesTable,
          cachedFavoritesTable.protoPayload,
        );
        await migrator.addColumn(
          watchCacheMetadataTable,
          watchCacheMetadataTable.favoritesLastSyncAt,
        );
      }
    },
  );

  @override
  Future<WatchCacheSnapshot> loadSnapshot() async {
    final meals = await select(cachedMealsTable).get();
    final favorites = await select(cachedFavoritesTable).get();
    final metadata =
        await (select(watchCacheMetadataTable)
          ..where((tbl) => tbl.id.equals(_metadataRowId))).getSingleOrNull();

    return WatchCacheSnapshot(
      meals: meals.map(_loggedMealFromCachedRow).toList(),
      favoriteMeals: favorites.map(_favoriteMealFromCachedRow).toList(),
      calorieGoal: metadata?.calorieGoal,
      dashboardLastSyncAt: metadata?.lastSyncAt,
      favoritesLastSyncAt: metadata?.favoritesLastSyncAt,
    );
  }

  @override
  Future<void> replaceDashboard({
    required List<LoggedMeal> meals,
    required int? calorieGoal,
    DateTime? dashboardLastSyncAt,
  }) async {
    await transaction(() async {
      await delete(cachedMealsTable).go();
      if (meals.isNotEmpty) {
        await batch((batch) {
          batch.insertAll(
            cachedMealsTable,
            meals.map(_cachedMealCompanionFromLoggedMeal).toList(),
            mode: InsertMode.insertOrReplace,
          );
        });
      }
      await _saveMetadata(
        calorieGoal: Value(calorieGoal),
        dashboardLastSyncAt: Value(dashboardLastSyncAt),
      );
    });
  }

  @override
  Future<void> replaceFavorites(
    List<FavoriteMeal> favorites, {
    required DateTime lastSyncAt,
  }) async {
    await transaction(() async {
      await delete(cachedFavoritesTable).go();
      if (favorites.isNotEmpty) {
        await batch((batch) {
          batch.insertAll(
            cachedFavoritesTable,
            favorites.map(_cachedFavoriteCompanionFromFavoriteMeal).toList(),
            mode: InsertMode.insertOrReplace,
          );
        });
      }
      await _saveMetadata(favoritesLastSyncAt: Value(lastSyncAt));
    });
  }

  @override
  Future<void> upsertMeal(LoggedMeal meal) {
    return into(
      cachedMealsTable,
    ).insertOnConflictUpdate(_cachedMealCompanionFromLoggedMeal(meal));
  }

  @override
  Future<void> deleteCachedMeal(int mealId) {
    return (delete(cachedMealsTable)
      ..where((tbl) => tbl.mealId.equals(mealId))).go();
  }

  @override
  Future<void> queueMealLog(LoggedMeal meal, {int? favoriteMealId}) async {
    final payloadJson = jsonEncode({
      'version': 2,
      'loggedMealProto': base64Encode(meal.writeToBuffer()),
    });
    await transaction(() async {
      await (delete(pendingOperationsTable)..where(
        (tbl) =>
            tbl.operationType.equals(PendingWatchOperationType.logMeal.name) &
            tbl.mealId.equals(meal.clientId),
      )).go();
      await into(pendingOperationsTable).insert(
        PendingOperationsTableCompanion.insert(
          operationType: PendingWatchOperationType.logMeal.name,
          mealId: meal.clientId,
          favoriteMealId: Value(favoriteMealId),
          payloadJson: Value(payloadJson),
        ),
      );
    });
  }

  @override
  Future<void> queueMealDelete(int mealId) async {
    await transaction(() async {
      await (delete(pendingOperationsTable)..where(
        (tbl) =>
            tbl.operationType.equals(
              PendingWatchOperationType.deleteMeal.name,
            ) &
            tbl.mealId.equals(mealId),
      )).go();
      await into(pendingOperationsTable).insert(
        PendingOperationsTableCompanion.insert(
          operationType: PendingWatchOperationType.deleteMeal.name,
          mealId: mealId,
        ),
      );
    });
  }

  @override
  Future<void> cancelQueuedMealLog(int mealId) {
    return (delete(pendingOperationsTable)..where(
      (tbl) =>
          tbl.operationType.equals(PendingWatchOperationType.logMeal.name) &
          tbl.mealId.equals(mealId),
    )).go();
  }

  Future<void> cancelQueuedMealDelete(int mealId) {
    return (delete(pendingOperationsTable)..where(
      (tbl) =>
          tbl.operationType.equals(PendingWatchOperationType.deleteMeal.name) &
          tbl.mealId.equals(mealId),
    )).go();
  }

  @override
  Future<List<PendingWatchOperation>> getPendingOperations() async {
    final rows =
        await (select(pendingOperationsTable)
          ..orderBy([(tbl) => OrderingTerm.asc(tbl.createdAt)])).get();

    final operations = <PendingWatchOperation>[];
    for (final row in rows) {
      final operation = _pendingOperationFromRow(row);
      if (operation != null) {
        operations.add(operation);
        continue;
      }

      _debugLog(
        'Dropping pending operation ${row.id} with unsupported payload '
        'type "${row.operationType}".',
      );
      await deletePendingOperation(row.id);
      if (row.operationType == PendingWatchOperationType.logMeal.name) {
        await deleteCachedMeal(row.mealId);
      }
    }
    return operations;
  }

  Future<bool> hasPendingOperations() async {
    final rowCount = pendingOperationsTable.id.count();
    final result =
        await (selectOnly(pendingOperationsTable)
          ..addColumns([rowCount])).getSingle();
    return result.read(rowCount)! > 0;
  }

  @override
  Future<void> deletePendingOperation(int operationId) {
    return (delete(pendingOperationsTable)
      ..where((tbl) => tbl.id.equals(operationId))).go();
  }

  Future<void> _saveMetadata({
    Value<int?>? calorieGoal,
    Value<DateTime?>? dashboardLastSyncAt,
    Value<DateTime?>? favoritesLastSyncAt,
  }) async {
    final existing =
        await (select(watchCacheMetadataTable)
          ..where((tbl) => tbl.id.equals(_metadataRowId))).getSingleOrNull();

    await into(watchCacheMetadataTable).insertOnConflictUpdate(
      WatchCacheMetadataTableCompanion(
        id: const Value(_metadataRowId),
        calorieGoal: calorieGoal ?? Value(existing?.calorieGoal),
        lastSyncAt: dashboardLastSyncAt ?? Value(existing?.lastSyncAt),
        favoritesLastSyncAt:
            favoritesLastSyncAt ?? Value(existing?.favoritesLastSyncAt),
      ),
    );
  }

  PendingWatchOperation? _pendingOperationFromRow(
    PendingOperationsTableData row,
  ) {
    final type =
        PendingWatchOperationType.values.asNameMap()[row.operationType];
    if (type == null) {
      return null;
    }

    LoggedMeal? meal;
    try {
      if (row.payloadJson != null) {
        final decoded = jsonDecode(row.payloadJson!);
        if (decoded is Map) {
          final payload = Map<String, dynamic>.from(decoded);
          final encodedProto = payload['loggedMealProto'];
          meal =
              encodedProto is String
                  ? LoggedMeal.fromBuffer(base64Decode(encodedProto))
                  : mealInfoFromLegacyJson(payload);
        }
      }
    } catch (_) {
      _debugLog(
        'Failed to decode queued operation ${row.id}; removing it from cache.',
      );
      return null;
    }

    return PendingWatchOperation(
      id: row.id,
      type: type,
      mealId: row.mealId,
      favoriteMealId: row.favoriteMealId,
      createdAt: row.createdAt,
      meal: meal,
    );
  }

  CachedMealsTableCompanion _cachedMealCompanionFromLoggedMeal(
    LoggedMeal meal,
  ) {
    final timestamp =
        meal.hasCreatedAt()
            ? iso8601StringToDateTime(meal.createdAt) ?? DateTime.now()
            : DateTime.now();
    final health = meal.meal.health;

    return CachedMealsTableCompanion.insert(
      mealId: Value(_cacheMealIdForLoggedMeal(meal, timestamp: timestamp)),
      mealName: meal.meal.name,
      mealQuantity: meal.meal.quantity,
      mealType: meal.meal.type.legacyName,
      calories: meal.meal.macros.calories,
      protein: meal.meal.macros.protein,
      carbs: meal.meal.macros.carbs,
      fat: meal.meal.macros.fat,
      fiber: meal.meal.macros.fiber,
      timestamp: timestamp,
      imageUrl: Value(
        meal.hasMetadata() && meal.metadata.hasImageUrl()
            ? meal.metadata.imageUrl
            : null,
      ),
      healthScore: Value(
        health.hasHealthScore() ? health.healthScore.legacyName : null,
      ),
      healthScoreReason: Value(
        health.hasHealthScoreReason() ? health.healthScoreReason : null,
      ),
      protoPayload: Value(meal.writeToBuffer()),
    );
  }

  CachedFavoritesTableCompanion _cachedFavoriteCompanionFromFavoriteMeal(
    FavoriteMeal favorite,
  ) {
    final loggedMeal = favorite.loggedMeal;
    final timestamp =
        loggedMeal.hasCreatedAt()
            ? iso8601StringToDateTime(loggedMeal.createdAt) ?? DateTime.now()
            : DateTime.now();
    final favoritedAt =
        DateTime.tryParse(favorite.favoriteAt) ?? loggedMeal.dateTime;
    final lastUsedAt =
        favorite.lastUsedAt.isEmpty
            ? null
            : DateTime.tryParse(favorite.lastUsedAt);
    final health = loggedMeal.meal.health;

    return CachedFavoritesTableCompanion.insert(
      mealId: Value(
        _cacheMealIdForFavoriteMeal(
          favorite,
          loggedMeal: loggedMeal,
          timestamp: timestamp,
          favoritedAt: favoritedAt,
        ),
      ),
      mealName: loggedMeal.meal.name,
      mealQuantity: loggedMeal.meal.quantity,
      mealType: loggedMeal.meal.type.legacyName,
      calories: loggedMeal.meal.macros.calories,
      protein: loggedMeal.meal.macros.protein,
      carbs: loggedMeal.meal.macros.carbs,
      fat: loggedMeal.meal.macros.fat,
      fiber: loggedMeal.meal.macros.fiber,
      timestamp: timestamp,
      favoritedAt: favoritedAt,
      lastUsedAt: Value(lastUsedAt),
      imageUrl: Value(
        loggedMeal.hasMetadata() && loggedMeal.metadata.hasImageUrl()
            ? loggedMeal.metadata.imageUrl
            : null,
      ),
      healthScore: Value(
        health.hasHealthScore() ? health.healthScore.legacyName : null,
      ),
      healthScoreReason: Value(
        health.hasHealthScoreReason() ? health.healthScoreReason : null,
      ),
      protoPayload: Value(favorite.writeToBuffer()),
    );
  }

  LoggedMeal _loggedMealFromCachedRow(CachedMealsTableData row) {
    final protoPayload = row.protoPayload;
    if (protoPayload != null) {
      try {
        return LoggedMeal.fromBuffer(protoPayload);
      } catch (_) {
        _debugLog(
          'Failed to decode cached meal ${row.mealId}; using legacy columns.',
        );
      }
    }

    return LoggedMeal(
      clientId: row.mealId,
      meal: Meal(
        name: row.mealName,
        quantity: row.mealQuantity,
        type: mealTypeFromLegacyName(row.mealType),
        macros: MealMacro(
          calories: row.calories,
          protein: row.protein,
          carbs: row.carbs,
          fat: row.fat,
          fiber: row.fiber,
        ),
        health: _mealHealthFromLegacyColumns(
          score: row.healthScore,
          reason: row.healthScoreReason,
        ),
      ),
      createdAt: dateTimeToIso8601String(row.timestamp),
      metadata:
          row.imageUrl != null ? MealMetadata(imageUrl: row.imageUrl!) : null,
    );
  }

  FavoriteMeal _favoriteMealFromCachedRow(CachedFavoritesTableData row) {
    final protoPayload = row.protoPayload;
    if (protoPayload != null) {
      try {
        return FavoriteMeal.fromBuffer(protoPayload);
      } catch (_) {
        _debugLog(
          'Failed to decode cached favorite ${row.mealId}; using legacy '
          'columns.',
        );
      }
    }

    return FavoriteMeal(
      clientId: row.mealId,
      loggedMeal: LoggedMeal(
        clientId: row.mealId,
        meal: Meal(
          name: row.mealName,
          quantity: row.mealQuantity,
          type: mealTypeFromLegacyName(row.mealType),
          macros: MealMacro(
            calories: row.calories,
            protein: row.protein,
            carbs: row.carbs,
            fat: row.fat,
            fiber: row.fiber,
          ),
          health: _mealHealthFromLegacyColumns(
            score: row.healthScore,
            reason: row.healthScoreReason,
          ),
        ),
        createdAt: dateTimeToIso8601String(row.timestamp),
        metadata:
            row.imageUrl != null ? MealMetadata(imageUrl: row.imageUrl!) : null,
      ),
      favoriteAt: dateTimeToIso8601String(row.favoritedAt),
      lastUsedAt:
          row.lastUsedAt != null
              ? dateTimeToIso8601String(row.lastUsedAt!)
              : '',
    );
  }

  MealHealth? _mealHealthFromLegacyColumns({
    required String? score,
    required String? reason,
  }) {
    if (score == null && reason == null) {
      return null;
    }

    return MealHealth(
      healthScore: score == null ? null : healthScoreFromLegacyName(score),
      healthScoreReason: reason,
    );
  }

  int _cacheMealIdForLoggedMeal(
    LoggedMeal meal, {
    required DateTime timestamp,
  }) {
    if (meal.hasClientId() && meal.clientId != 0) {
      return meal.clientId;
    }

    return _syntheticCacheMealId(
      timestamp: timestamp,
      name: meal.meal.name,
      quantity: meal.meal.quantity,
    );
  }

  int _cacheMealIdForFavoriteMeal(
    FavoriteMeal favorite, {
    required LoggedMeal loggedMeal,
    required DateTime timestamp,
    required DateTime favoritedAt,
  }) {
    if (favorite.hasClientId() && favorite.clientId != 0) {
      return favorite.clientId;
    }

    return _syntheticCacheMealId(
      timestamp: favoritedAt,
      name: loggedMeal.meal.name,
      quantity: loggedMeal.meal.quantity,
      fallbackTimestamp: timestamp,
    );
  }

  int _syntheticCacheMealId({
    required DateTime timestamp,
    required String name,
    required String quantity,
    DateTime? fallbackTimestamp,
  }) {
    final effectiveTimestamp =
        timestamp.millisecondsSinceEpoch != 0
            ? timestamp
            : (fallbackTimestamp ?? DateTime.now());
    final signatureHash = Object.hash(name, quantity).abs() % 1000;
    return -((effectiveTimestamp.microsecondsSinceEpoch.abs() * 1000) +
        signatureHash +
        1);
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint('[WatchDatabase] $message');
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File(p.join(directory.path, 'watch_cache.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
