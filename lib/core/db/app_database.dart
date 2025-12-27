import 'dart:io';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mappers/favorite_meal_mapper.dart';
import 'package:calorify/core/db/mappers/meal_info_mapper.dart';
import 'package:calorify/core/db/mappers/user_profile_mapper.dart';
import 'package:calorify/core/db/tables/favorite_meal.dart';
import 'package:calorify/core/db/tables/meal_info.dart';
import 'package:calorify/core/db/tables/user_settings.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [MealInfoTable, UserSettingsTable, FavoriteMealTable])
class AppDatabase extends _$AppDatabase implements DatabaseInterface {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 8;

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
          await m.addColumn(userSettingsTable, userSettingsTable.height);
          await m.addColumn(userSettingsTable, userSettingsTable.weight);
          await m.addColumn(userSettingsTable, userSettingsTable.gender);
          await m.addColumn(userSettingsTable, userSettingsTable.dateOfBirth);
          await m.addColumn(userSettingsTable, userSettingsTable.weightGoal);
          await m.addColumn(userSettingsTable, userSettingsTable.activityLevel);
          await m.addColumn(userSettingsTable, userSettingsTable.createdAt);
          await m.addColumn(userSettingsTable, userSettingsTable.updatedAt);
        }
        if (from < 7) {
          await m.addColumn(mealInfoTable, mealInfoTable.healthScore);
          await m.addColumn(mealInfoTable, mealInfoTable.healthScoreReason);
        }
        if (from < 8) {
          await m.addColumn(userSettingsTable, userSettingsTable.targetWeight);
        }
      },
    );
  }

  static const int _userSettingsId = 1;

  @override
  Future<int?> getDailyCalorieGoal() async {
    final setting =
        await (select(userSettingsTable)
          ..where((tbl) => tbl.id.equals(_userSettingsId))).getSingleOrNull();
    return setting?.dailyCalorieGoal;
  }

  @override
  Stream<int?> watchDailyCalorieGoal() {
    return (select(userSettingsTable)
          ..where((tbl) => tbl.id.equals(_userSettingsId)))
        .watchSingleOrNull()
        .map((row) => row?.dailyCalorieGoal);
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await into(userSettingsTable).insertOnConflictUpdate(
      UserSettingsTableCompanion.insert(
        id: const Value(_userSettingsId),
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
    )).watch().map((rows) => rows.map((row) => MealInfo.fromRow(row)).toList());
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
      (rows) => rows.map((row) => MealInfo.fromDrift(row)).toList(),
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
  Stream<List<MealInfo>> watchAllFavoriteMeals() {
    return select(favoriteMealTable).watch().map(
      (rows) => rows.map((row) => MealInfo.fromDrift(row)).toList(),
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
        .map((rows) => rows.map((row) => MealInfo.fromDrift(row)).toList());
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
        .then((rows) => rows.map((row) => MealInfo.fromRow(row)).toList());
  }

  @override
  DataSourceType get dataSourceType => DataSourceType.real;

  // User Profile Methods
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    // Use upsert (insert or update) - always use id = 1 for single profile
    await into(userSettingsTable).insertOnConflictUpdate(
      UserProfileMapper.toDrift(
        profile,
      ).copyWith(id: const Value(_userSettingsId)),
    );
  }

  @override
  Future<UserProfile?> getUserProfile() async {
    final hasProfile = await hasUserProfile();
    if (!hasProfile) return null;

    final result =
        await (select(userSettingsTable)
          ..where((tbl) => tbl.id.equals(_userSettingsId))).getSingleOrNull();
    if (result == null || result.height == null) return null;

    return UserProfileMapper.fromDrift(result);
  }

  @override
  Future<bool> hasUserProfile() async {
    final result =
        await (select(userSettingsTable)
          ..where((tbl) => tbl.id.equals(_userSettingsId))).getSingleOrNull();
    if (result == null) return false;

    return result.height != null &&
        result.weight != null &&
        result.gender != null &&
        result.dateOfBirth != null &&
        result.weightGoal != null &&
        result.activityLevel != null;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_db.sqlite'));
    return NativeDatabase(file);
  });
}
