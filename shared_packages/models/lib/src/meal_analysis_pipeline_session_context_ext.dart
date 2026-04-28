import 'protos/calorify/meal_analysis_pipeline.pb.dart';
import 'protos/calorify/meal_detection.pb.dart';
import 'protos/meal/meal.pb.dart';

extension MealAnalysisPipelineSessionContextX on MealAnalysisPipelineSessionContext {
  MealAnalysisPipelineSessionContext copyWithPipelineSession({
    PipelineResultData? result,
    List<int>? imageBytes,
    String? imageUrl,
    String? textDescription,
    bool? isRevised,
  }) {
    return copyWith((s) {
      if (result != null) s.result = result;
      if (imageBytes != null) s.imageBytes = imageBytes;
      if (imageUrl != null) s.imageUrl = imageUrl;
      if (textDescription != null) s.textDescription = textDescription;
      if (isRevised != null) s.isRevised = isRevised;
    });
  }

  MealDetectionResult toMealDetectionResult() {
    final r = result;
    final metadata = MealMetadata();
    if (hasImageUrl() && imageUrl.isNotEmpty) {
      metadata.imageUrl = imageUrl;
    }
    if (hasTextDescription() && textDescription.isNotEmpty) {
      metadata.mealDescription = textDescription;
    }

    final mealMacro = r.hasMacros()
        ? MealMacro(
            calories: r.macros.calories.round(),
            protein: r.macros.protein.round(),
            carbs: r.macros.carbs.round(),
            fat: r.macros.fat.round(),
            fiber: r.macros.fiber.round(),
          )
        : MealMacro();

    MealHealth? healthProto;
    if (r.hasHealth()) {
      final h = r.health;
      healthProto = MealHealth(
        healthScore: h.healthScore,
        healthScoreReason: h.healthScoreReason,
      );
    }

    return MealDetectionResult(
      mealIdentified: true,
      calorieConfidence: r.calorieConfidence,
      tip: r.tip,
      meal: Meal(
        name: r.mealName,
        quantity: r.hasQuantity() ? r.quantity : '1 serving',
        type: r.mealType,
        macros: mealMacro,
        health: healthProto,
      ),
      metadata: metadata,
    );
  }
}
