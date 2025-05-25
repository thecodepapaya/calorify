import 'package:drift/drift.dart';

class UserSettingsTable extends Table {
  IntColumn get id => integer().autoIncrement()(); // Primary key
  IntColumn get dailyCalorieGoal => integer().nullable()();

  // If we want to ensure only one row, we could make 'id' not auto-increment
  // and always use a fixed value like 1, and make it the primary key.
  // For now, autoIncrement is fine, but our service methods will assume a single row logic.
  // Alternatively, to enforce a single row, one could use:
  // IntColumn get id => integer().clientDefault(() => 1)();
  // @override
  // Set<Column> get primaryKey => {id};

  // Let's use a simpler approach for now: an ID column that is a primary key,
  // and our app logic will just ensure it creates/updates a row with a specific ID (e.g., 1).
}
