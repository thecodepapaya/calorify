import 'package:drift/drift.dart';

class LocalNutritionCacheTable extends Table {
  TextColumn get fdcId => text()();
  TextColumn get datasetVersion => text()();
  TextColumn get description => text()();
  TextColumn get normalizedName => text()();
  TextColumn get dataType => text()();
  TextColumn get lookupKeysJson => text()();
  RealColumn get caloriesPer100g => real()();
  RealColumn get proteinPer100g => real()();
  RealColumn get carbsPer100g => real()();
  RealColumn get fatPer100g => real()();
  RealColumn get fiberPer100g => real()();
  DateTimeColumn get retrievedAt => dateTime()();
  DateTimeColumn get lastAccessedAt => dateTime()();
  IntColumn get approximateBytes => integer()();

  @override
  Set<Column<Object>> get primaryKey => {fdcId, datasetVersion};
}
