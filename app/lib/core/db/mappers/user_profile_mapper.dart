import 'package:models/models.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';

class UserProfileMapper {
  static UserProfile fromDrift(UserProfileTableData data) {
    return UserProfile(
      height: data.height,
      weight: data.weight,
      targetWeight: data.targetWeight,
      gender:
          data.gender == null
              ? null
              : genderFromLegacyName(data.gender),
      dateOfBirth:
          data.dateOfBirth == null
              ? null
              : iso8601StringToTimestamp(data.dateOfBirth!.toIso8601String()),
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
          profile.hasHeight()
              ? Value(profile.height)
              : const Value.absent(),
      weight:
          profile.hasWeight()
              ? Value(profile.weight)
              : const Value.absent(),
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
              ? Value(timestampToLocalDateTime(profile.dateOfBirth) ?? DateTime.now())
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
}
