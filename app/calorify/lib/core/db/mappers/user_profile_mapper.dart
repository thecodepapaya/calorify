import 'package:models/models.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';

class UserProfileMapper {
  static UserProfile fromDrift(UserProfileTableData data) {
    return UserProfile(
      height: data.height,
      weight: data.weight,
      targetWeight: data.targetWeight,
      gender: data.gender == null ? null : genderFromLegacyName(data.gender),
      dateOfBirth:
          data.dateOfBirth == null
              ? null
              : _dateOfBirthFromDrift(data.dateOfBirth!),
      weightGoal:
          data.weightGoal == null
              ? null
              : weightGoalFromLegacyName(data.weightGoal),
      activityLevel:
          data.activityLevel == null
              ? null
              : activityLevelFromLegacyName(data.activityLevel),
      heightUnit: unitSystemFromLegacyName(data.heightUnit),
      weightUnit: unitSystemFromLegacyName(data.weightUnit),
      dailyCalorieGoal: data.dailyCalorieGoal,
    );
  }

  static UserProfileTableCompanion toDrift(UserProfile profile) {
    // A UserProfile passed to saveUserProfile is the complete local snapshot.
    // Use explicit NULLs for missing optional fields so callers can clear a
    // previously stored value; Value.absent would preserve stale data during
    // an upsert (or substitute a column default on insert).
    return UserProfileTableCompanion(
      height: Value(profile.hasHeight() ? profile.height : null),
      weight: Value(profile.hasWeight() ? profile.weight : null),
      targetWeight:
          profile.hasTargetWeight()
              ? Value(profile.targetWeight)
              : const Value(null),
      gender:
          profile.hasGender()
              ? Value(profile.gender.legacyName)
              : const Value(null),
      dateOfBirth:
          profile.hasDateOfBirth()
              ? Value(_dateOfBirthForDrift(profile.dateOfBirth))
              : const Value(null),
      weightGoal:
          profile.hasWeightGoal()
              ? Value(profile.weightGoal.legacyName)
              : const Value(null),
      activityLevel:
          profile.hasActivityLevel()
              ? Value(profile.activityLevel.legacyName)
              : const Value(null),
      heightUnit: Value(profile.heightUnit.legacyName),
      weightUnit: Value(profile.weightUnit.legacyName),
      dailyCalorieGoal:
          profile.hasDailyCalorieGoal()
              ? Value(profile.dailyCalorieGoal)
              : const Value(null),
    );
  }

  static String _dateOfBirthFromDrift(DateTime value) {
    final utc = value.toUtc();
    // New values are canonical UTC midnights. Older app versions stored local
    // midnight as an instant, so recover their local calendar date when the
    // UTC time-of-day is non-zero.
    final isCanonical =
        utc.hour == 0 &&
        utc.minute == 0 &&
        utc.second == 0 &&
        utc.millisecond == 0 &&
        utc.microsecond == 0;
    return dateTimeToIso8601Date(isCanonical ? utc : value.toLocal());
  }

  static DateTime? _dateOfBirthForDrift(String value) {
    final date = iso8601DateToDateTime(value);
    return date == null ? null : DateTime.utc(date.year, date.month, date.day);
  }
}
