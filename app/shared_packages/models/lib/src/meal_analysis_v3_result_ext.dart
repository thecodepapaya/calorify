import 'meal_analysis_v3.dart';
import 'protos/calorify/meal_detection.pb.dart';
import 'protos/meal/meal.pb.dart';

extension MealAnalysisV3CompleteResultX on MealAnalysisV3CompleteResult {
  MealDetectionResult toMealDetectionResult({String? textDescription}) {
    final type = switch (mealType) {
      'BREAKFAST' => MealType.BREAKFAST,
      'LUNCH' => MealType.LUNCH,
      'DINNER' => MealType.DINNER,
      'SNACK' => MealType.SNACK,
      _ => MealType.UNKNOWN,
    };
    final metadata = MealMetadata();
    if (textDescription != null && textDescription.isNotEmpty) {
      metadata.mealDescription = textDescription;
    }
    return MealDetectionResult(
      mealIdentified: true,
      calorieConfidence: CalorieConfidence.MEDIUM,
      tip: tip,
      meal: Meal(
        name: mealName,
        quantity: servingSizeText,
        type: type,
        macros: MealMacro(
          calories: macros.calories.round(),
          protein: macros.protein.round(),
          carbs: macros.carbs.round(),
          fat: macros.fat.round(),
          fiber: macros.fiber.round(),
        ),
      ),
      metadata: metadata,
    );
  }
}
