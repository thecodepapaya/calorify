import 'dart:io';
import 'package:calorify/core/db/tables/favorite_meal.dart';
import 'package:calorify/core/db/tables/meal_info.dart';
import 'package:calorify/core/db/tables/user_settings.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@DriftDatabase(tables: [MealInfoTable, UserSettingsTable, FavoriteMealTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

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
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_db.sqlite'));
    return NativeDatabase(file);
  });
}

final appDb = AppDatabase();
