import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';

class UserProfileMapper {
  static UserProfile fromDrift(UserSettingsTableData data) {
    return UserProfile(
      height: data.height!,
      weight: data.weight!,
      gender: Gender.values.firstWhere((g) => g.name == data.gender),
      dateOfBirth: data.dateOfBirth!,
      weightGoal: WeightGoal.values.firstWhere(
        (w) => w.name == data.weightGoal,
      ),
      activityLevel: ActivityLevel.values.firstWhere(
        (a) => a.name == data.activityLevel,
      ),
    );
  }

  static UserSettingsTableCompanion toDrift(UserProfile profile) {
    return UserSettingsTableCompanion.insert(
      height: Value(profile.height),
      weight: Value(profile.weight),
      gender: Value(profile.gender.name),
      dateOfBirth: Value(profile.dateOfBirth),
      weightGoal: Value(profile.weightGoal.name),
      activityLevel: Value(profile.activityLevel.name),
    );
  }
}
