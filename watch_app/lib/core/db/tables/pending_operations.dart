import 'package:drift/drift.dart';

class PendingOperationsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get operationType => text()();
  IntColumn get mealId => integer()();
  IntColumn get favoriteMealId => integer().nullable()();
  TextColumn get payloadJson => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
