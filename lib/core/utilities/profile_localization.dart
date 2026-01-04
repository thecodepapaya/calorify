import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/models/meal_type.dart';
import 'package:calorify/i18n/strings.g.dart';

extension GenderLocalization on Gender {
  String get displayName {
    switch (this) {
      case Gender.male:
        return t.editProfile.genders.male;
      case Gender.female:
        return t.editProfile.genders.female;
      case Gender.other:
        return t.editProfile.genders.other;
    }
  }
}

extension WeightGoalLocalization on WeightGoal {
  String get displayName {
    switch (this) {
      case WeightGoal.loseWeight:
        return t.editProfile.weightGoals.loseWeight.name;
      case WeightGoal.maintainWeight:
        return t.editProfile.weightGoals.maintainWeight.name;
      case WeightGoal.gainWeight:
        return t.editProfile.weightGoals.gainWeight.name;
    }
  }

  String get description {
    switch (this) {
      case WeightGoal.loseWeight:
        return t.editProfile.weightGoals.loseWeight.description;
      case WeightGoal.maintainWeight:
        return t.editProfile.weightGoals.maintainWeight.description;
      case WeightGoal.gainWeight:
        return t.editProfile.weightGoals.gainWeight.description;
    }
  }
}

extension ActivityLevelLocalization on ActivityLevel {
  String get displayName {
    switch (this) {
      case ActivityLevel.sedentary:
        return t.editProfile.activityLevels.sedentary.name;
      case ActivityLevel.lightlyActive:
        return t.editProfile.activityLevels.lightlyActive.name;
      case ActivityLevel.moderatelyActive:
        return t.editProfile.activityLevels.moderatelyActive.name;
      case ActivityLevel.veryActive:
        return t.editProfile.activityLevels.veryActive.name;
      case ActivityLevel.extremelyActive:
        return t.editProfile.activityLevels.extremelyActive.name;
    }
  }

  String get description {
    switch (this) {
      case ActivityLevel.sedentary:
        return t.editProfile.activityLevels.sedentary.description;
      case ActivityLevel.lightlyActive:
        return t.editProfile.activityLevels.lightlyActive.description;
      case ActivityLevel.moderatelyActive:
        return t.editProfile.activityLevels.moderatelyActive.description;
      case ActivityLevel.veryActive:
        return t.editProfile.activityLevels.veryActive.description;
      case ActivityLevel.extremelyActive:
        return t.editProfile.activityLevels.extremelyActive.description;
    }
  }
}

extension MealTypeLocalization on MealType {
  String get displayName {
    switch (this) {
      case MealType.breakfast:
        return t.reminders.breakfast;
      case MealType.lunch:
        return t.reminders.lunch;
      case MealType.dinner:
        return t.reminders.dinner;
      case MealType.snack:
        return t.reminders.snack;
      case MealType.unknown:
        return t.reminders.unknown;
    }
  }
}
