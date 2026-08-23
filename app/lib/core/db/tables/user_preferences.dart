import 'package:drift/drift.dart';

class UserPreferencesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get languageCode => text().nullable()();
  TextColumn get theme =>
      text().nullable()(); // 'light', 'dark', 'system' (matches ThemeMode.name)
  DateTimeColumn get feedbackSheetShownAt => dateTime().nullable()();
  IntColumn get onboardingCurrentStep => integer().nullable()();
  DateTimeColumn get onboardingCompletedAt => dateTime().nullable()();
  BoolColumn get localInferenceEnabled =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get offlineNutritionEnabled =>
      boolean().withDefault(const Constant(false))();
  TextColumn get localInferenceAcknowledgedPolicyVersion => text().nullable()();
  // Null lets upgrades adopt an already-granted Health Connect permission
  // once. Thereafter the explicit in-app sync choice is persisted.
  BoolColumn get healthConnectNutritionSyncEnabled => boolean().nullable()();
  BoolColumn get healthConnectPromptDismissed =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
