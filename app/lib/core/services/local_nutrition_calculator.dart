import 'package:calorify/core/services/local_nutrition_repository.dart';
import 'package:models/models.dart';

class LocalCalculatedIngredient {
  const LocalCalculatedIngredient({
    required this.resolution,
    required this.grams,
    required this.minGrams,
    required this.maxGrams,
    required this.macros,
    required this.minMacros,
    required this.maxMacros,
  });

  final LocalNutritionResolvedIngredient resolution;
  final double grams;
  final double minGrams;
  final double maxGrams;
  final PipelineMacros macros;
  final PipelineMacros minMacros;
  final PipelineMacros maxMacros;

  PipelineResolvedIngredient toProto() {
    final proposal = resolution.proposal;
    return PipelineResolvedIngredient(
      rowId: proposal.rowId,
      rawName: proposal.rawName,
      canonicalName: resolution.canonicalName,
      matchType: resolution.matchType,
      grams: grams,
      macros: macros,
      source: switch (resolution.origin) {
        NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA => 'local_pack',
        NutritionOrigin.NUTRITION_ORIGIN_CACHED_USDA => 'local_cache',
        NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA => 'remote_usda',
        NutritionOrigin.NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT =>
          'deterministic',
        _ => 'unresolved',
      },
      portionKind: proposal.portionKind,
      count: proposal.hasCount() ? proposal.count : null,
      perUnitGrams: proposal.hasPerUnitGrams() ? proposal.perUnitGrams : null,
      nutritionOrigin: resolution.origin,
      fdcId: resolution.fdcId,
      usdaDatasetVersion: resolution.datasetVersion,
      nutrientsPer100g: resolution.nutrientsPer100g,
      fieldProvenance: proposal.fieldProvenance,
    );
  }
}

class LocalNutritionCalculation {
  const LocalNutritionCalculation({
    required this.ingredients,
    required this.macros,
    required this.minMacros,
    required this.maxMacros,
    required this.variancePercent,
    required this.calorieConfidence,
    required this.nutritionOrigin,
  });

  final List<LocalCalculatedIngredient> ingredients;
  final PipelineMacros macros;
  final PipelineMacros minMacros;
  final PipelineMacros maxMacros;
  final double variancePercent;
  final CalorieConfidence calorieConfidence;
  final NutritionOrigin nutritionOrigin;
}

class LocalNutritionCalculator {
  const LocalNutritionCalculator();

  LocalNutritionCalculation calculate(
    LocalNutritionResolvedMeal meal, {
    Map<String, double> selectedGrams = const {},
  }) {
    final calculated = <LocalCalculatedIngredient>[];
    for (final resolution in meal.ingredients) {
      final proposal = resolution.proposal;
      final selected = selectedGrams[proposal.rowId];
      final grams = selected ?? proposal.gramsEstimated;
      final minGrams = selected ?? proposal.minGrams;
      final maxGrams = selected ?? proposal.maxGrams;
      calculated.add(
        LocalCalculatedIngredient(
          resolution: resolution,
          grams: grams,
          minGrams: minGrams,
          maxGrams: maxGrams,
          macros: scale(resolution.nutrientsPer100g, grams),
          minMacros: scale(resolution.nutrientsPer100g, minGrams),
          maxMacros: scale(resolution.nutrientsPer100g, maxGrams),
        ),
      );
    }
    final macros = sum(calculated.map((ingredient) => ingredient.macros));
    final minMacros = sum(calculated.map((ingredient) => ingredient.minMacros));
    final maxMacros = sum(calculated.map((ingredient) => ingredient.maxMacros));
    final variance = _round3(
      (maxMacros.calories - minMacros.calories) /
          (macros.calories == 0 ? 1 : macros.calories),
    );
    return LocalNutritionCalculation(
      ingredients: calculated,
      macros: macros,
      minMacros: minMacros,
      maxMacros: maxMacros,
      variancePercent: variance,
      calorieConfidence:
          variance <= 0.15
              ? CalorieConfidence.HIGH
              : variance <= 0.3
              ? CalorieConfidence.MEDIUM
              : CalorieConfidence.LOW,
      nutritionOrigin: _aggregateOrigin(
        calculated.map((ingredient) => ingredient.resolution.origin),
      ),
    );
  }

  PipelineMacros scale(PipelineMacros per100g, double grams) {
    final ratio = grams / 100;
    return PipelineMacros(
      calories: (per100g.calories * ratio).roundToDouble(),
      protein: _round1(per100g.protein * ratio),
      carbs: _round1(per100g.carbs * ratio),
      fat: _round1(per100g.fat * ratio),
      fiber: _round1(per100g.fiber * ratio),
    );
  }

  PipelineMacros sum(Iterable<PipelineMacros> values) {
    var calories = 0.0;
    var protein = 0.0;
    var carbs = 0.0;
    var fat = 0.0;
    var fiber = 0.0;
    for (final value in values) {
      calories += value.calories;
      protein += value.protein;
      carbs += value.carbs;
      fat += value.fat;
      fiber += value.fiber;
    }
    return PipelineMacros(
      calories: calories,
      protein: _round1(protein),
      carbs: _round1(carbs),
      fat: _round1(fat),
      fiber: _round1(fiber),
    );
  }

  static double roundGrams(double value) => _round1(value);

  static double _round1(double value) => double.parse(value.toStringAsFixed(1));

  static double _round3(double value) => double.parse(value.toStringAsFixed(3));

  static NutritionOrigin _aggregateOrigin(Iterable<NutritionOrigin> values) {
    final origins = values.toSet();
    if (origins.contains(NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA)) {
      return NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA;
    }
    if (origins.contains(NutritionOrigin.NUTRITION_ORIGIN_CACHED_USDA)) {
      return NutritionOrigin.NUTRITION_ORIGIN_CACHED_USDA;
    }
    if (origins.contains(NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA)) {
      return NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA;
    }
    return NutritionOrigin.NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT;
  }
}
