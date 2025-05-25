import 'package:drift/drift.dart';

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
}
