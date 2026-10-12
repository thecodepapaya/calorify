import 'package:drift/drift.dart';

@TableIndex(
  name: 'meal_log_sync_analysis_id_unique',
  columns: {#analysisId},
  unique: true,
)
class MealLogSyncQueueTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get analysisId => text()();
  TextColumn get operation => text()();
  IntColumn get version => integer()();
  TextColumn get mealJson => text().nullable()();
  DateTimeColumn get loggedAt => dateTime().nullable()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  TextColumn get lastError => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
