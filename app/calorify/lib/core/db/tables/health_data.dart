import 'package:drift/drift.dart';

class HealthDataTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get height => real().nullable()();
  TextColumn get heightUnit =>
      text().withDefault(const Constant('CM'))(); // 'CM' or 'FT'
  RealColumn get weight => real().nullable()();
  RealColumn get targetWeight => real().nullable()();
  TextColumn get weightUnit =>
      text().withDefault(const Constant('KG'))(); // 'KG' or 'LB'
  TextColumn get gender => text().nullable()(); // 'MALE', 'FEMALE', 'OTHER'
  DateTimeColumn get dateOfBirth => dateTime().nullable()();
  TextColumn get weightGoal =>
      text().nullable()(); // 'LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT'
  TextColumn get activityLevel =>
      text().nullable()(); // 'SEDENTARY', 'LIGHTLY_ACTIVE', etc.
  IntColumn get dailyCalorieGoal => integer().nullable()();
  IntColumn get dailyCarbGoal => integer().nullable()();
  IntColumn get dailyProteinGoal => integer().nullable()();
  IntColumn get dailyFatGoal => integer().nullable()();
  IntColumn get dailyFiberGoal => integer().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get needsRemoteSync =>
      boolean().withDefault(const Constant(false))();
  TextColumn get remoteSyncRevision => text().nullable()();
}

