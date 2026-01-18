import 'dart:io';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mappers/favorite_meal_mapper.dart';
import 'package:calorify/core/db/mappers/meal_info_mapper.dart';
import 'package:calorify/core/db/mappers/user_profile_mapper.dart';
import 'package:calorify/core/db/tables/favorite_meal.dart';
import 'package:calorify/core/db/tables/meal_info.dart';
import 'package:calorify/core/db/tables/user_preferences.dart';
import 'package:calorify/core/db/tables/user_profile.dart';
import 'package:calorify/core/db/tables/sync_queue.dart';
import 'package:models/models.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    MealInfoTable,
    UserProfileTable,
    UserPreferencesTable,
    FavoriteMealTable,
    SyncQueueTable,
  ],
)
class AppDatabase extends _$AppDatabase implements DatabaseInterface {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 14;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: (m, from, to) async {
        if (from < 3) {
          await m.addColumn(mealInfoTable, mealInfoTable.imageUrl);
          await m.addColumn(favoriteMealTable, favoriteMealTable.imageUrl);
        }
        if (from < 4) {
          await m.addColumn(favoriteMealTable, favoriteMealTable.createdAt);
        }
        if (from < 5) {
          await m.addColumn(favoriteMealTable, favoriteMealTable.lastUsedAt);
        }
        if (from < 6) {
          await m.addColumn(userProfileTable, userProfileTable.height);
          await m.addColumn(userProfileTable, userProfileTable.weight);
          await m.addColumn(userProfileTable, userProfileTable.gender);
          await m.addColumn(userProfileTable, userProfileTable.dateOfBirth);
          await m.addColumn(userProfileTable, userProfileTable.weightGoal);
          await m.addColumn(userProfileTable, userProfileTable.activityLevel);
          await m.addColumn(userProfileTable, userProfileTable.createdAt);
          await m.addColumn(userProfileTable, userProfileTable.updatedAt);
        }
        if (from < 7) {
          await m.addColumn(mealInfoTable, mealInfoTable.healthScore);
          await m.addColumn(mealInfoTable, mealInfoTable.healthScoreReason);
        }
        if (from < 8) {
          await m.addColumn(userProfileTable, userProfileTable.targetWeight);
        }
        if (from < 10) {
          await m.addColumn(userProfileTable, userProfileTable.heightUnit);
          await m.addColumn(userProfileTable, userProfileTable.weightUnit);
        }
        if (from < 11) {
          // Skipping languageCode addition to old table as it's no longer needed
        }
        if (from < 12) {
          // Migration to version 12:
          // 1. Rename user_settings_table to user_profile_table
          await m.renameTable(userProfileTable, 'user_profile_table');

          // 2. Create UserPreferencesTable
          await m.createTable(userPreferencesTable);

          // 3. Initialize with default preferences (languageCode is null by default)
          await into(userPreferencesTable).insert(
            UserPreferencesTableCompanion.insert(
              id: const Value(_userPreferencesId),
              theme: Value(ThemeMode.system.name),
            ),
          );
        }
        if (from < 13) {
          await m.addColumn(mealInfoTable, mealInfoTable.clientId);
          await m.addColumn(favoriteMealTable, favoriteMealTable.clientId);
        }
        if (from < 14) {
          await m.createTable(syncQueueTable);
        }
      },
    );
  }

  static const int _userProfileId = 1;
  static const int _userPreferencesId = 1;

  // --- User Preferences Methods ---

  Future<UserPreferencesTableData> _getOrInitPreferences() async {
    final prefs =
        await (select(
          userPreferencesTable,
        )..where((tbl) => tbl.id.equals(_userPreferencesId))).getSingleOrNull();

    if (prefs == null) {
      final newPrefs = UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        theme: Value(ThemeMode.system.name),
      );
      await into(userPreferencesTable).insertOnConflictUpdate(newPrefs);
      return (select(userPreferencesTable)
        ..where((tbl) => tbl.id.equals(_userPreferencesId))).getSingle();
    }
    return prefs;
  }

  @override
  Future<String?> getLanguageCode() async {
    final prefs = await _getOrInitPreferences();
    return prefs.languageCode;
  }

  @override
  Future<void> setLanguageCode(String? code) async {
    await _getOrInitPreferences();
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        languageCode: Value(code),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    final prefs = await _getOrInitPreferences();
    final themeString = prefs.theme;
    if (themeString == null) return ThemeMode.system;
    return ThemeMode.values.firstWhere(
      (m) => m.name == themeString,
      orElse: () => ThemeMode.system,
    );
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        theme: Value(mode.name),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<int?> getDailyCalorieGoal() async {
    final setting =
        await (select(userProfileTable)
          ..where((tbl) => tbl.id.equals(_userProfileId))).getSingleOrNull();
    return setting?.dailyCalorieGoal;
  }

  @override
  Stream<int?> watchDailyCalorieGoal() {
    return (select(userProfileTable)..where(
      (tbl) => tbl.id.equals(_userProfileId),
    )).watchSingleOrNull().map((row) => row?.dailyCalorieGoal);
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await into(userProfileTable).insertOnConflictUpdate(
      UserProfileTableCompanion.insert(
        id: const Value(_userProfileId),
        dailyCalorieGoal: Value(goal),
      ),
    );
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForToday() {
    final now = DateTime.now();
    final startOfToday = DateTime(now.year, now.month, now.day);
    final endOfToday = startOfToday.add(const Duration(days: 1));

    return (select(mealInfoTable)..where(
      (tbl) =>
          tbl.timestamp.isBiggerOrEqualValue(startOfToday) &
          tbl.timestamp.isSmallerThanValue(endOfToday),
    )).watch().map(
      (rows) => rows.map((row) => MealInfoMapper.fromRow(row)).toList(),
    );
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForLast7Days() {
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 6));
    final startOfSevenDaysAgo = DateTime(
      sevenDaysAgo.year,
      sevenDaysAgo.month,
      sevenDaysAgo.day,
    );

    return (select(mealInfoTable)..where(
      (tbl) => tbl.timestamp.isBiggerOrEqualValue(startOfSevenDaysAgo),
    )).watch().map(
      (rows) => rows.map((row) => MealInfoMapper.fromDrift(row)).toList(),
    );
  }

  @override
  Future<void> logMeal(MealInfo mealInfo) async {
    await into(mealInfoTable).insert(mealInfo.toCompanion());
  }

  @override
  Future<void> upsertMeal(MealInfo mealInfo) {
    return into(mealInfoTable).insertOnConflictUpdate(mealInfo.toCompanion());
  }

  @override
  Future<void> deleteMeal(int mealId) {
    return (delete(mealInfoTable)..where((tbl) => tbl.id.equals(mealId))).go();
  }

  @override
  Future<MealInfo?> getMealById(int mealId) async {
    final row =
        await (select(mealInfoTable)
          ..where((tbl) => tbl.id.equals(mealId))).getSingleOrNull();
    if (row == null) return null;
    return MealInfoMapper.fromRow(row);
  }

  @override
  Stream<List<MealInfo>> watchAllFavoriteMeals() {
    return select(favoriteMealTable).watch().map(
      (rows) => rows.map((row) => MealInfoMapper.fromDrift(row)).toList(),
    );
  }

  @override
  Stream<List<MealInfo>> watchLastUsedFavoriteMeals() {
    return (select(favoriteMealTable)
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.lastUsedAt,
              mode: OrderingMode.desc,
              nulls: NullsOrder.last,
            ),
            (tbl) => OrderingTerm(
              expression: tbl.createdAt,
              mode: OrderingMode.desc,
            ),
          ])
          ..limit(4))
        .watch()
        .map(
          (rows) => rows.map((row) => MealInfoMapper.fromDrift(row)).toList(),
        );
  }

  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    final meal =
        await (select(favoriteMealTable)
          ..where((tbl) => tbl.sourceMealId.equals(mealId))).getSingleOrNull();
    return meal != null;
  }

  @override
  Future<void> addToFavorites(MealInfo mealInfo) {
    return into(favoriteMealTable).insert(mealInfo.toFavoriteCompanion());
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int favoriteMealId) {
    return (update(favoriteMealTable)..where(
      (tbl) => tbl.id.equals(favoriteMealId),
    )).write(FavoriteMealTableCompanion(lastUsedAt: Value(DateTime.now())));
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) {
    return (delete(favoriteMealTable)
      ..where((tbl) => tbl.sourceMealId.equals(mealId))).go();
  }

  @override
  Future<List<MealInfo>> paginatedMealsHistory({
    required int offset,
    int mealsPerPage = 30,
  }) {
    return (select(mealInfoTable)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.timestamp, mode: OrderingMode.desc),
          ])
          ..limit(mealsPerPage, offset: offset * mealsPerPage))
        .get()
        .then(
          (rows) => rows.map((row) => MealInfoMapper.fromRow(row)).toList(),
        );
  }

  @override
  DataSourceType get dataSourceType => DataSourceType.real;

  // User Profile Methods
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    // Use upsert (insert or update) - always use id = 1 for single profile
    await into(userProfileTable).insertOnConflictUpdate(
      UserProfileMapper.toDrift(
        profile,
      ).copyWith(id: const Value(_userProfileId)),
    );
  }

  @override
  Future<UserProfile?> getUserProfile() async {
    final result =
        await (select(userProfileTable)
          ..where((tbl) => tbl.id.equals(_userProfileId))).getSingleOrNull();
    if (result == null) return null;

    return UserProfileMapper.fromDrift(result);
  }

  @override
  Future<bool> isProfileComplete() async {
    final result =
        await (select(userProfileTable)
          ..where((tbl) => tbl.id.equals(_userProfileId))).getSingleOrNull();
    if (result == null) return false;

    return result.height != null &&
        result.weight != null &&
        result.gender != null &&
        result.dateOfBirth != null &&
        result.weightGoal != null &&
        result.activityLevel != null;
  }

  @override
  Future<void> clearAllData() async {
    await transaction(() async {
      await delete(mealInfoTable).go();
      await delete(userProfileTable).go();
      await delete(userPreferencesTable).go();
      await delete(favoriteMealTable).go();
      await delete(syncQueueTable).go();
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_db.sqlite'));
    return NativeDatabase(file);
  });
}
