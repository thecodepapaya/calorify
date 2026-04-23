import 'dart:convert';
import 'dart:io';

import 'package:calorify_watch/core/db/tables/cache_metadata.dart';
import 'package:calorify_watch/core/db/tables/cached_favorites.dart';
import 'package:calorify_watch/core/db/tables/cached_meals.dart';
import 'package:calorify_watch/core/db/tables/pending_operations.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:models/models.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:utils/utils.dart';

part 'watch_database.g.dart';

enum PendingWatchOperationType { logMeal, deleteMeal }

class WatchCacheSnapshot {
  const WatchCacheSnapshot({
    required this.meals,
    required this.favoriteMeals,
    this.calorieGoal,
    this.lastSyncAt,
  });

  final List<LoggedMeal> meals;
  final List<FavoriteMeal> favoriteMeals;
  final int? calorieGoal;
  final DateTime? lastSyncAt;
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

@DriftDatabase(
  tables: [
    CachedMealsTable,
    CachedFavoritesTable,
    WatchCacheMetadataTable,
    PendingOperationsTable,
  ],
)
class WatchDatabase extends _$WatchDatabase {
  WatchDatabase() : super(_openConnection());

  static const int _metadataRowId = 1;

  @override
  int get schemaVersion => 1;

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
      lastSyncAt: metadata?.lastSyncAt,
    );
  }

  Future<void> replaceDashboard({
    required List<LoggedMeal> meals,
    required int? calorieGoal,
    DateTime? lastSyncAt,
  }) async {
    await transaction(() async {
      await delete(cachedMealsTable).go();
      if (meals.isNotEmpty) {
        await batch((batch) {
          batch.insertAll(
            cachedMealsTable,
            meals.map(_cachedMealCompanionFromLoggedMeal).toList(),
          );
        });
      }
      await _saveMetadata(
        calorieGoal: Value(calorieGoal),
        lastSyncAt: Value(lastSyncAt),
      );
    });
  }

  Future<void> replaceMeals(List<LoggedMeal> meals) async {
    await transaction(() async {
      await delete(cachedMealsTable).go();
      if (meals.isNotEmpty) {
        await batch((batch) {
          batch.insertAll(
            cachedMealsTable,
            meals.map(_cachedMealCompanionFromLoggedMeal).toList(),
          );
        });
      }
    });
  }

  Future<void> saveCalorieGoal(int? calorieGoal) {
    return _saveMetadata(calorieGoal: Value(calorieGoal));
  }

  Future<void> saveLastSync(DateTime? lastSyncAt) {
    return _saveMetadata(lastSyncAt: Value(lastSyncAt));
  }

  Future<void> replaceFavorites(List<FavoriteMeal> favorites) async {
    await transaction(() async {
      await delete(cachedFavoritesTable).go();
      if (favorites.isNotEmpty) {
        await batch((batch) {
          batch.insertAll(
            cachedFavoritesTable,
            favorites.map(_cachedFavoriteCompanionFromFavoriteMeal).toList(),
          );
        });
      }
    });
  }

  Future<void> upsertMeal(LoggedMeal meal) {
    return into(
      cachedMealsTable,
    ).insertOnConflictUpdate(_cachedMealCompanionFromLoggedMeal(meal));
  }

  Future<void> deleteCachedMeal(int mealId) {
    return (delete(cachedMealsTable)
      ..where((tbl) => tbl.mealId.equals(mealId))).go();
  }

  Future<void> queueMealLog(LoggedMeal meal, {int? favoriteMealId}) async {
    final payloadJson = jsonEncode(mealInfoToLegacyJson(meal));
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

  Future<List<PendingWatchOperation>> getPendingOperations() async {
    final rows =
        await (select(pendingOperationsTable)
          ..orderBy([(tbl) => OrderingTerm.asc(tbl.createdAt)])).get();

    return rows.map(_pendingOperationFromRow).toList();
  }

  Future<bool> hasPendingOperations() async {
    final rowCount = pendingOperationsTable.id.count();
    final result =
        await (selectOnly(pendingOperationsTable)
          ..addColumns([rowCount])).getSingle();
    return result.read(rowCount)! > 0;
  }

  Future<void> deletePendingOperation(int operationId) {
    return (delete(pendingOperationsTable)
      ..where((tbl) => tbl.id.equals(operationId))).go();
  }

  Future<void> _saveMetadata({
    Value<int?>? calorieGoal,
    Value<DateTime?>? lastSyncAt,
  }) async {
    final existing =
        await (select(watchCacheMetadataTable)
          ..where((tbl) => tbl.id.equals(_metadataRowId))).getSingleOrNull();

    await into(watchCacheMetadataTable).insertOnConflictUpdate(
      WatchCacheMetadataTableCompanion(
        id: const Value(_metadataRowId),
        calorieGoal: calorieGoal ?? Value(existing?.calorieGoal),
        lastSyncAt: lastSyncAt ?? Value(existing?.lastSyncAt),
      ),
    );
  }

  PendingWatchOperation _pendingOperationFromRow(
    PendingOperationsTableData row,
  ) {
    final type = PendingWatchOperationType.values.firstWhere(
      (value) => value.name == row.operationType,
    );

    LoggedMeal? meal;
    if (row.payloadJson != null) {
      final decoded = jsonDecode(row.payloadJson!);
      if (decoded is Map) {
        meal = mealInfoFromLegacyJson(Map<String, dynamic>.from(decoded));
      }
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
      mealId: Value(meal.hasClientId() ? meal.clientId : 0),
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
      mealId: Value(favorite.hasClientId() ? favorite.clientId : 0),
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
    );
  }

  LoggedMeal _loggedMealFromCachedRow(CachedMealsTableData row) {
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
        health: MealHealth(
          healthScore: healthScoreFromLegacyName(row.healthScore),
          healthScoreReason: row.healthScoreReason,
        ),
      ),
      createdAt: dateTimeToIso8601String(row.timestamp),
      metadata:
          row.imageUrl != null ? MealMetadata(imageUrl: row.imageUrl!) : null,
    );
  }

  FavoriteMeal _favoriteMealFromCachedRow(CachedFavoritesTableData row) {
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
          health: MealHealth(
            healthScore: healthScoreFromLegacyName(row.healthScore),
            healthScoreReason: row.healthScoreReason,
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
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File(p.join(directory.path, 'watch_cache.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
