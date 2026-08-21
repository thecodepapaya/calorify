import 'package:models/models.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';
import 'package:utils/utils.dart';

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
    );
  }

  static UserProfileTableCompanion toDrift(UserProfile profile) {
    return UserProfileTableCompanion(
      height:
          profile.hasHeight() ? Value(profile.height) : const Value.absent(),
      weight:
          profile.hasWeight() ? Value(profile.weight) : const Value.absent(),
      targetWeight:
          profile.hasTargetWeight()
              ? Value(profile.targetWeight)
              : const Value.absent(),
      gender:
          profile.hasGender()
              ? Value(profile.gender.legacyName)
              : const Value.absent(),
      dateOfBirth:
          profile.hasDateOfBirth()
              ? Value(
                _dateOfBirthForDrift(profile.dateOfBirth) ??
                    DateTime.now().toUtc(),
              )
              : const Value.absent(),
      weightGoal:
          profile.hasWeightGoal()
              ? Value(profile.weightGoal.legacyName)
              : const Value.absent(),
      activityLevel:
          profile.hasActivityLevel()
              ? Value(profile.activityLevel.legacyName)
              : const Value.absent(),
      heightUnit: Value(profile.heightUnit.legacyName),
      weightUnit: Value(profile.weightUnit.legacyName),
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
