import 'package:drift/drift.dart';

class CachedMealsTable extends Table {
  IntColumn get mealId => integer()();
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
  TextColumn get healthScore => text().nullable()();
  TextColumn get healthScoreReason => text().nullable()();
  BlobColumn get protoPayload => blob().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {mealId};
}
