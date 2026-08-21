import 'package:drift/drift.dart';

class WatchCacheMetadataTable extends Table {
  IntColumn get id => integer()();
  IntColumn get calorieGoal => integer().nullable()();

  /// Dashboard freshness. The column keeps its original SQL name so existing
  /// installations migrate without rewriting the row.
  DateTimeColumn get lastSyncAt => dateTime().nullable()();
  DateTimeColumn get favoritesLastSyncAt => dateTime().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
