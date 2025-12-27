import 'package:json_annotation/json_annotation.dart';

part 'profile_models.g.dart';

enum Gender { male, female, other }

enum WeightGoal { loseWeight, maintainWeight, gainWeight }

enum ActivityLevel {
  sedentary, // Little to no exercise
  lightlyActive, // Light exercise 1-3 days/week
  moderatelyActive, // Moderate exercise 3-5 days/week
  veryActive, // Hard exercise 6-7 days/week
  extremelyActive, // Very hard exercise, physical job
}

@JsonSerializable()
class UserProfile {
  final double? height; // in cm
  final double? weight; // in kg
  final double? targetWeight; // in kg
  final Gender? gender;
  final DateTime? dateOfBirth;
  final WeightGoal? weightGoal;
  final ActivityLevel? activityLevel;

  const UserProfile({
    this.height,
    this.weight,
    this.targetWeight,
    this.gender,
    this.dateOfBirth,
    this.weightGoal,
    this.activityLevel,
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
  }) {
    return UserProfile(
      height: height ?? this.height,
      weight: weight ?? this.weight,
      targetWeight: targetWeight ?? this.targetWeight,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      weightGoal: weightGoal ?? this.weightGoal,
      activityLevel: activityLevel ?? this.activityLevel,
    );
  }
}

extension GenderExtension on Gender {
  String get displayName {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.other:
        return 'Other';
    }
  }
}

extension WeightGoalExtension on WeightGoal {
  String get displayName {
    switch (this) {
      case WeightGoal.loseWeight:
        return 'Lose Weight';
      case WeightGoal.maintainWeight:
        return 'Maintain Weight';
      case WeightGoal.gainWeight:
        return 'Gain Weight';
    }
  }

  String get description {
    switch (this) {
      case WeightGoal.loseWeight:
        return 'Create a calorie deficit to lose weight';
      case WeightGoal.maintainWeight:
        return 'Maintain your current weight';
      case WeightGoal.gainWeight:
        return 'Create a calorie surplus to gain weight';
    }
  }
}

extension ActivityLevelExtension on ActivityLevel {
  String get displayName {
    switch (this) {
      case ActivityLevel.sedentary:
        return 'Sedentary';
      case ActivityLevel.lightlyActive:
        return 'Lightly Active';
      case ActivityLevel.moderatelyActive:
        return 'Moderately Active';
      case ActivityLevel.veryActive:
        return 'Very Active';
      case ActivityLevel.extremelyActive:
        return 'Extremely Active';
    }
  }

  String get description {
    switch (this) {
      case ActivityLevel.sedentary:
        return 'Little to no exercise';
      case ActivityLevel.lightlyActive:
        return 'Light exercise 1-3 days/week';
      case ActivityLevel.moderatelyActive:
        return 'Moderate exercise 3-5 days/week';
      case ActivityLevel.veryActive:
        return 'Hard exercise 6-7 days/week';
      case ActivityLevel.extremelyActive:
        return 'Very hard exercise, physical job';
    }
  }

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
