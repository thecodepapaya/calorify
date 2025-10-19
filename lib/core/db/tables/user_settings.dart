import 'package:drift/drift.dart';

class UserSettingsTable extends Table {
  IntColumn get id => integer().autoIncrement()(); // Primary key
  IntColumn get dailyCalorieGoal => integer().nullable()();
  RealColumn get height => real().nullable()(); // in cm
  RealColumn get weight => real().nullable()(); // in kg
  TextColumn get gender => text().nullable()(); // 'male', 'female', 'other'
  DateTimeColumn get dateOfBirth => dateTime().nullable()();
  TextColumn get weightGoal =>
      text().nullable()(); // 'loseWeight', 'maintainWeight', 'gainWeight'
  TextColumn get activityLevel =>
      text().nullable()(); // 'sedentary', 'lightlyActive', etc.
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
