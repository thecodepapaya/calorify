import 'package:drift/drift.dart';

class WatchCacheMetadataTable extends Table {
  IntColumn get id => integer()();
  IntColumn get calorieGoal => integer().nullable()();
  DateTimeColumn get lastSyncAt => dateTime().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
