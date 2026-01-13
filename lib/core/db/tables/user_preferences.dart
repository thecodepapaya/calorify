import 'package:drift/drift.dart';

class UserPreferencesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get languageCode => text().nullable()();
  TextColumn get theme =>
      text().nullable()(); // 'light', 'dark', 'system' (matches ThemeMode.name)
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
