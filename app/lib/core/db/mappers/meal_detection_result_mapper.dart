import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:calorify/core/models/meal_model.dart';

extension MealDetectionResultMapper on MealInfo {
  MealDetectionResult toMealDetectionResult() {
    return MealDetectionResult(
      mealIdentified: true,
      mealInfo: this,
      tip: '',
      calorieConfidence: 1,
    );
  }
}
