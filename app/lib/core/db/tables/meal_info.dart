import 'package:drift/drift.dart';

@TableIndex(
  name: 'meal_info_analysis_id_unique',
  columns: {#analysisId},
  unique: true,
)
class MealInfoTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get mealName => text()();
  TextColumn get mealQuantity => text()();
  TextColumn get mealType => text()();
  IntColumn get calories => integer()();
  IntColumn get protein => integer()();
  IntColumn get carbs => integer()();
  IntColumn get fat => integer()();
  IntColumn get fiber => integer()();
  DateTimeColumn get timestamp => dateTime()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get healthScore =>
      text().nullable()(); // 'healthy', 'neutral', 'unhealthy', 'unknown'
  TextColumn get healthScoreReason => text().nullable()();
  // V2 analysis session or watch operation ID. The unique index makes retry
  // idempotency atomic while SQLite continues to allow multiple null values.
  TextColumn get analysisId => text().nullable()();
  // Immutable V2 result snapshot. Local nutrition can finish without creating
  // a backend session, so the exact rows/versions used must live with the meal.
  TextColumn get analysisSnapshotJson => text().nullable()();

  /// Stable identity for the corresponding app-owned Health Connect record.
  TextColumn get healthConnectRecordId => text().nullable()();

  /// Version sent with [healthConnectRecordId] for idempotent updates.
  IntColumn get healthConnectRecordVersion =>
      integer().withDefault(const Constant(0))();
}
