import 'dart:io';

import 'package:calorify/core/db/mappers/favorite_meal_mapper.dart';
import 'package:calorify/core/db/mappers/meal_info_mapper.dart';
import 'package:calorify/core/db/tables/favorite_meal.dart';
import 'package:calorify/core/db/tables/meal_info.dart';
import 'package:calorify/core/db/tables/user_settings.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [MealInfoTable, UserSettingsTable, FavoriteMealTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 5;

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
      },
    );
  }

  static const int _userSettingsId = 1;

  Future<int?> getDailyCalorieGoal() async {
    final setting =
        await (select(userSettingsTable)
          ..where((tbl) => tbl.id.equals(_userSettingsId))).getSingleOrNull();
    return setting?.dailyCalorieGoal;
  }

  Future<void> setDailyCalorieGoal(int goal) async {
    await into(userSettingsTable).insertOnConflictUpdate(
      UserSettingsTableCompanion.insert(
        id: const Value(_userSettingsId),
        dailyCalorieGoal: Value(goal),
      ),
    );
  }

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

  Future<void> logMeal(MealInfo mealInfo) async {
    await into(mealInfoTable).insert(mealInfo.toCompanion());
  }

  Future<void> upsertMeal(MealInfo mealInfo) {
    return into(mealInfoTable).insertOnConflictUpdate(mealInfo.toCompanion());
  }

  Stream<List<MealInfo>> watchAllFavoriteMeals() {
    return select(favoriteMealTable).watch().map(
      (rows) => rows.map((row) => MealInfo.fromDrift(row)).toList(),
    );
  }

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

  Future<bool> isFavoriteMeal(int mealId) async {
    final meal =
        await (select(favoriteMealTable)
          ..where((tbl) => tbl.sourceMealId.equals(mealId))).getSingleOrNull();
    return meal != null;
  }

  Future<void> addFavoriteMeal(MealInfo mealInfo) {
    return into(favoriteMealTable).insert(mealInfo.toFavoriteCompanion());
  }

  Future<void> updateFavoriteLastUsedAt(int favoriteMealId) {
    return (update(favoriteMealTable)..where(
      (tbl) => tbl.id.equals(favoriteMealId),
    )).write(FavoriteMealTableCompanion(lastUsedAt: Value(DateTime.now())));
  }

  Future<void> removeFavoriteMeal(int mealId) {
    return (delete(favoriteMealTable)
      ..where((tbl) => tbl.sourceMealId.equals(mealId))).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_db.sqlite'));
    return NativeDatabase(file);
  });
}

final appDb = AppDatabase();
