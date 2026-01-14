import 'package:models/models.dart';

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
