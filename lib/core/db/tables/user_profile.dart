import 'package:drift/drift.dart';

class UserProfileTable extends Table {
  IntColumn get id => integer().autoIncrement()(); // Primary key
  IntColumn get dailyCalorieGoal => integer().nullable()();
  RealColumn get height => real().nullable()();
  RealColumn get weight => real().nullable()();
  RealColumn get targetWeight => real().nullable()();
  TextColumn get gender => text().nullable()(); // 'male', 'female', 'other'
  DateTimeColumn get dateOfBirth => dateTime().nullable()();
  TextColumn get weightGoal =>
      text().nullable()(); // 'loseWeight', 'maintainWeight', 'gainWeight'
  TextColumn get activityLevel =>
      text().nullable()(); // 'sedentary', 'lightlyActive', etc.
  TextColumn get heightUnit =>
      text().withDefault(const Constant('metric'))(); // 'metric' or 'imperial'
  TextColumn get weightUnit =>
      text().withDefault(const Constant('metric'))(); // 'metric' or 'imperial'
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
