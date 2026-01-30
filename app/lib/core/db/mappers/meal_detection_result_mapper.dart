import 'package:models/models.dart';

extension MealDetectionResultMapper on Meal {
  MealDetectionResult toMealDetectionResult() {
    return MealDetectionResult(
      mealIdentified: true,
      meal: this,
      tip: '',
      calorieConfidence: CalorieConfidence.UNSPECIFIED,
    );
  }
}
