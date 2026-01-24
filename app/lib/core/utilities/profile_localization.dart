import 'package:models/models.dart';
import 'package:i18n/i18n.dart';

extension GenderLocalization on Gender {
  String get displayName {
    switch (this) {
      case Gender.MALE:
        return t.editProfile.genders.male;
      case Gender.FEMALE:
        return t.editProfile.genders.female;
      case Gender.OTHER:
        return t.editProfile.genders.other;
    }
    return t.editProfile.genders.other; // Fallback
  }
}

extension WeightGoalLocalization on WeightGoal {
  String get displayName {
    switch (this) {
      case WeightGoal.LOSE_WEIGHT:
        return t.editProfile.weightGoals.loseWeight.name;
      case WeightGoal.MAINTAIN_WEIGHT:
        return t.editProfile.weightGoals.maintainWeight.name;
      case WeightGoal.GAIN_WEIGHT:
        return t.editProfile.weightGoals.gainWeight.name;
    }
    return t.editProfile.weightGoals.maintainWeight.name; // Fallback
  }

  String get description {
    switch (this) {
      case WeightGoal.LOSE_WEIGHT:
        return t.editProfile.weightGoals.loseWeight.description;
      case WeightGoal.MAINTAIN_WEIGHT:
        return t.editProfile.weightGoals.maintainWeight.description;
      case WeightGoal.GAIN_WEIGHT:
        return t.editProfile.weightGoals.gainWeight.description;
    }
    return t.editProfile.weightGoals.maintainWeight.description; // Fallback
  }
}

extension ActivityLevelLocalization on ActivityLevel {
  String get displayName {
    switch (this) {
      case ActivityLevel.SEDENTARY:
        return t.editProfile.activityLevels.sedentary.name;
      case ActivityLevel.LIGHTLY_ACTIVE:
        return t.editProfile.activityLevels.lightlyActive.name;
      case ActivityLevel.MODERATELY_ACTIVE:
        return t.editProfile.activityLevels.moderatelyActive.name;
      case ActivityLevel.VERY_ACTIVE:
        return t.editProfile.activityLevels.veryActive.name;
      case ActivityLevel.EXTREMELY_ACTIVE:
        return t.editProfile.activityLevels.extremelyActive.name;
    }
    return t.editProfile.activityLevels.sedentary.name; // Fallback
  }

  String get description {
    switch (this) {
      case ActivityLevel.SEDENTARY:
        return t.editProfile.activityLevels.sedentary.description;
      case ActivityLevel.LIGHTLY_ACTIVE:
        return t.editProfile.activityLevels.lightlyActive.description;
      case ActivityLevel.MODERATELY_ACTIVE:
        return t.editProfile.activityLevels.moderatelyActive.description;
      case ActivityLevel.VERY_ACTIVE:
        return t.editProfile.activityLevels.veryActive.description;
      case ActivityLevel.EXTREMELY_ACTIVE:
        return t.editProfile.activityLevels.extremelyActive.description;
    }
    return t.editProfile.activityLevels.sedentary.description; // Fallback
  }
}

extension MealTypeLocalization on MealType {
  String get displayName {
    switch (this) {
      case MealType.BREAKFAST:
        return t.reminders.breakfast;
      case MealType.LUNCH:
        return t.reminders.lunch;
      case MealType.DINNER:
        return t.reminders.dinner;
      case MealType.SNACK:
        return t.reminders.snack;
      case MealType.UNKNOWN:
        return t.reminders.unknown;
    }
    return t.reminders.unknown; // Fallback
  }
}
