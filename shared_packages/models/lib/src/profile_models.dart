import 'dart:math';

import 'package:models/src/scale_constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_models.g.dart';

enum Gender { male, female, other }

enum WeightGoal { loseWeight, maintainWeight, gainWeight }

enum UnitSystem {
  metric(heightPrecision: 0, weightPrecision: 1),
  imperial(heightPrecision: 1, weightPrecision: 0);

  const UnitSystem({
    required this.heightPrecision,
    required this.weightPrecision,
  });

  /// Precision for displaying height values
  final int heightPrecision;

  /// Precision for displaying weight values
  final int weightPrecision;
}

extension UnitSystemExtension on UnitSystem {
  bool get isMetric => this == UnitSystem.metric;
  bool get isImperial => this == UnitSystem.imperial;

  /// Step size for height slider based on height precision
  /// Formula: step = 1 / (10 ^ precision)
  /// Examples: precision 0 → 1.0, precision 1 → 0.1, precision 2 → 0.01
  double get heightStep => 1.0 / pow(10, heightPrecision);

  /// Step size for weight slider based on weight precision
  /// Formula: step = 1 / (10 ^ precision)
  /// Examples: precision 0 → 1.0, precision 1 → 0.1, precision 2 → 0.01
  double get weightStep => 1.0 / pow(10, weightPrecision);

  /// Minimum height value for this unit system
  double get heightMin =>
      isMetric
          ? ScaleConstants.heightMetricMin
          : ScaleConstants.heightImperialMin;

  /// Maximum height value for this unit system
  double get heightMax =>
      isMetric
          ? ScaleConstants.heightMetricMax
          : ScaleConstants.heightImperialMax;

  /// Minimum weight value for this unit system
  double get weightMin =>
      isMetric
          ? ScaleConstants.weightMetricMin
          : ScaleConstants.weightImperialMin;

  /// Maximum weight value for this unit system
  double get weightMax =>
      isMetric
          ? ScaleConstants.weightMetricMax
          : ScaleConstants.weightImperialMax;
}

enum ActivityLevel {
  sedentary, // Little to no exercise
  lightlyActive, // Light exercise 1-3 days/week
  moderatelyActive, // Moderate exercise 3-5 days/week
  veryActive, // Hard exercise 6-7 days/week
  extremelyActive, // Very hard exercise, physical job
}

@JsonSerializable()
class UserProfile {
  final double? height;
  final double? weight;
  final double? targetWeight;
  final Gender? gender;
  final DateTime? dateOfBirth;
  final WeightGoal? weightGoal;
  final ActivityLevel? activityLevel;
  final UnitSystem heightUnit;
  final UnitSystem weightUnit;

  const UserProfile({
    this.height,
    this.weight,
    this.targetWeight,
    this.gender,
    this.dateOfBirth,
    this.weightGoal,
    this.activityLevel,
    this.heightUnit = UnitSystem.metric,
    this.weightUnit = UnitSystem.metric,
  });

  int? get age {
    if (dateOfBirth == null) return null;
    final now = DateTime.now();
    int age = now.year - dateOfBirth!.year;
    if (now.month < dateOfBirth!.month ||
        (now.month == dateOfBirth!.month && now.day < dateOfBirth!.day)) {
      age--;
    }
    return age;
  }

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  UserProfile copyWith({
    double? height,
    double? weight,
    double? targetWeight,
    Gender? gender,
    DateTime? dateOfBirth,
    WeightGoal? weightGoal,
    ActivityLevel? activityLevel,
    UnitSystem? heightUnit,
    UnitSystem? weightUnit,
  }) {
    return UserProfile(
      height: height ?? this.height,
      weight: weight ?? this.weight,
      targetWeight: targetWeight ?? this.targetWeight,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      weightGoal: weightGoal ?? this.weightGoal,
      activityLevel: activityLevel ?? this.activityLevel,
      heightUnit: heightUnit ?? this.heightUnit,
      weightUnit: weightUnit ?? this.weightUnit,
    );
  }
}

extension ActivityLevelExtension on ActivityLevel {
  double get multiplier {
    switch (this) {
      case ActivityLevel.sedentary:
        return 1.2;
      case ActivityLevel.lightlyActive:
        return 1.375;
      case ActivityLevel.moderatelyActive:
        return 1.55;
      case ActivityLevel.veryActive:
        return 1.725;
      case ActivityLevel.extremelyActive:
        return 1.9;
    }
  }
}

extension UserProfileExtension on UserProfile {
  /// Check if the profile is complete (all required fields are present)
  bool get isProfileComplete {
    return height != null &&
        weight != null &&
        gender != null &&
        dateOfBirth != null &&
        weightGoal != null &&
        activityLevel != null;
  }
}
