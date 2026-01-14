import 'package:models/models.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';

class UserProfileMapper {
  static UserProfile fromDrift(UserProfileTableData data) {
    return UserProfile(
      height: data.height,
      weight: data.weight,
      targetWeight: data.targetWeight,
      gender: data.gender == null ? null : Gender.values.byName(data.gender!),
      dateOfBirth: data.dateOfBirth,
      weightGoal:
          data.weightGoal == null
              ? null
              : WeightGoal.values.byName(data.weightGoal!),
      activityLevel:
          data.activityLevel == null
              ? null
              : ActivityLevel.values.byName(data.activityLevel!),
      heightUnit: UnitSystem.values.byName(data.heightUnit),
      weightUnit: UnitSystem.values.byName(data.weightUnit),
    );
  }

  static UserProfileTableCompanion toDrift(UserProfile profile) {
    return UserProfileTableCompanion(
      height:
          profile.height == null
              ? const Value.absent()
              : Value(profile.height!),
      weight:
          profile.weight == null
              ? const Value.absent()
              : Value(profile.weight!),
      targetWeight:
          profile.targetWeight == null
              ? const Value.absent()
              : Value(profile.targetWeight!),
      gender:
          profile.gender == null
              ? const Value.absent()
              : Value(profile.gender!.name),
      dateOfBirth:
          profile.dateOfBirth == null
              ? const Value.absent()
              : Value(profile.dateOfBirth!),
      weightGoal:
          profile.weightGoal == null
              ? const Value.absent()
              : Value(profile.weightGoal!.name),
      activityLevel:
          profile.activityLevel == null
              ? const Value.absent()
              : Value(profile.activityLevel!.name),
      heightUnit: Value(profile.heightUnit.name),
      weightUnit: Value(profile.weightUnit.name),
    );
  }
}
