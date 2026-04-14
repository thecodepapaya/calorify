import 'dart:typed_data';

import 'package:models/models.dart';

enum V2MealAnalysisStep {
  decomposition,
  ingredients,
  uncertainty,
  mealTypeQuestion,
  result,
  error,
}

enum V2MealFeedbackIssue {
  foodIdentification,
  portionSize,
  calorieDistribution,
  macrosWrong,
  missingItems,
  extraItems,
  other;

  String get apiValue => switch (this) {
    V2MealFeedbackIssue.foodIdentification => 'food_identification',
    V2MealFeedbackIssue.portionSize => 'portion_size',
    V2MealFeedbackIssue.calorieDistribution => 'calorie_distribution',
    V2MealFeedbackIssue.macrosWrong => 'macros_wrong',
    V2MealFeedbackIssue.missingItems => 'missing_items',
    V2MealFeedbackIssue.extraItems => 'extra_items',
    V2MealFeedbackIssue.other => 'other',
  };

  String get label => switch (this) {
    V2MealFeedbackIssue.foodIdentification => 'Food identification',
    V2MealFeedbackIssue.portionSize => 'Portion size',
    V2MealFeedbackIssue.calorieDistribution => 'Calorie distribution',
    V2MealFeedbackIssue.macrosWrong => 'Macros are wrong',
    V2MealFeedbackIssue.missingItems => 'Missing items',
    V2MealFeedbackIssue.extraItems => 'Extra items',
    V2MealFeedbackIssue.other => 'Other',
  };

  static V2MealFeedbackIssue fromApiValue(String value) {
    return V2MealFeedbackIssue.values.firstWhere(
      (issue) => issue.apiValue == value,
    );
  }
}

class V2MealCalorieBand {
  const V2MealCalorieBand({required this.min, required this.max});

  factory V2MealCalorieBand.fromJson(Map<String, dynamic> json) {
    return V2MealCalorieBand(
      min: (json['min'] as num?)?.toInt() ?? 0,
      max: (json['max'] as num?)?.toInt() ?? 0,
    );
  }

  final int min;
  final int max;
}

class V2MealHealth {
  const V2MealHealth({
    required this.healthScore,
    required this.healthScoreReason,
  });

  factory V2MealHealth.fromJson(Map<String, dynamic> json) {
    return V2MealHealth(
      healthScore: _healthScoreFromApi(json['health_score'] as String?),
      healthScoreReason: json['health_score_reason'] as String? ?? '',
    );
  }

  final HealthScore healthScore;
  final String healthScoreReason;

  MealHealth toMealHealth() {
    return MealHealth(
      healthScore: healthScore,
      healthScoreReason: healthScoreReason,
    );
  }
}

class V2MealMacros {
  const V2MealMacros({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
  });

  factory V2MealMacros.fromJson(Map<String, dynamic> json) {
    return V2MealMacros(
      calories: (json['calories'] as num?)?.toInt() ?? 0,
      protein: (json['protein'] as num?)?.toDouble() ?? 0,
      carbs: (json['carbs'] as num?)?.toDouble() ?? 0,
      fat: (json['fat'] as num?)?.toDouble() ?? 0,
      fiber: (json['fiber'] as num?)?.toDouble() ?? 0,
    );
  }

  final int calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fiber;

  MealMacro toMealMacro() {
    return MealMacro(
      calories: calories,
      protein: protein.round(),
      carbs: carbs.round(),
      fat: fat.round(),
      fiber: fiber.round(),
    );
  }
}

class V2MealDecomposedIngredient {
  const V2MealDecomposedIngredient({
    required this.rawName,
    required this.canonicalHint,
    required this.gramsEstimated,
    required this.minGrams,
    required this.maxGrams,
    required this.notes,
  });

  factory V2MealDecomposedIngredient.fromJson(Map<String, dynamic> json) {
    return V2MealDecomposedIngredient(
      rawName: json['raw_name'] as String? ?? '',
      canonicalHint: json['canonical_hint'] as String? ?? '',
      gramsEstimated: (json['grams_estimated'] as num?)?.toDouble() ?? 0,
      minGrams: (json['min_grams'] as num?)?.toDouble() ?? 0,
      maxGrams: (json['max_grams'] as num?)?.toDouble() ?? 0,
      notes: json['notes'] as String? ?? '',
    );
  }

  final String rawName;
  final String canonicalHint;
  final double gramsEstimated;
  final double minGrams;
  final double maxGrams;
  final String notes;
}

class V2MealIngredient {
  const V2MealIngredient({
    required this.rawName,
    required this.canonicalName,
    required this.matchType,
    required this.grams,
    required this.macros,
    required this.source,
  });

  factory V2MealIngredient.fromJson(Map<String, dynamic> json) {
    return V2MealIngredient(
      rawName: json['raw_name'] as String? ?? '',
      canonicalName: json['canonical_name'] as String? ?? '',
      matchType: json['match_type'] as String? ?? '',
      grams: (json['grams'] as num?)?.toDouble() ?? 0,
      macros: V2MealMacros.fromJson(
        (json['macros'] as Map?)?.cast<String, dynamic>() ?? {},
      ),
      source: json['source'] as String? ?? '',
    );
  }

  final String rawName;
  final String canonicalName;
  final String matchType;
  final double grams;
  final V2MealMacros macros;
  final String source;
}

class V2MealClarificationOption {
  const V2MealClarificationOption({
    required this.label,
    required this.grams,
    required this.calorieDelta,
  });

  factory V2MealClarificationOption.fromJson(Map<String, dynamic> json) {
    return V2MealClarificationOption(
      label: json['label'] as String? ?? '',
      grams: (json['grams'] as num?)?.toDouble() ?? 0,
      calorieDelta: (json['calorie_delta'] as num?)?.toInt() ?? 0,
    );
  }

  final String label;
  final double grams;
  final int calorieDelta;
}

class V2MealClarification {
  const V2MealClarification({
    required this.ingredientName,
    required this.question,
    required this.options,
    required this.defaultOptionIndex,
  });

  factory V2MealClarification.fromJson(Map<String, dynamic> json) {
    return V2MealClarification(
      ingredientName: json['ingredient_name'] as String? ?? '',
      question: json['question'] as String? ?? '',
      options:
          ((json['options'] as List?) ?? const [])
              .map(
                (item) => V2MealClarificationOption.fromJson(
                  (item as Map).cast<String, dynamic>(),
                ),
              )
              .toList(),
      defaultOptionIndex:
          (json['default_option_index'] as num?)?.toInt() ?? 0,
    );
  }

  final String ingredientName;
  final String question;
  final List<V2MealClarificationOption> options;
  final int defaultOptionIndex;
}

class V2MealResult {
  const V2MealResult({
    required this.analysisId,
    required this.mealName,
    required this.quantity,
    required this.mealType,
    required this.mealTypeSource,
    required this.tip,
    required this.health,
    required this.macros,
    required this.calorieConfidence,
    required this.calorieBand,
    required this.ingredients,
  });

  factory V2MealResult.fromJson(Map<String, dynamic> json) {
    return V2MealResult(
      analysisId: json['analysis_id'] as String? ?? '',
      mealName: json['meal_name'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '1 serving',
      mealType: _mealTypeFromApi(json['meal_type'] as String?),
      mealTypeSource: json['meal_type_source'] as String? ?? 'model',
      tip: json['tip'] as String? ?? '',
      health:
          json['health'] == null
              ? null
              : V2MealHealth.fromJson(
                (json['health'] as Map).cast<String, dynamic>(),
              ),
      macros: V2MealMacros.fromJson(
        (json['macros'] as Map?)?.cast<String, dynamic>() ?? {},
      ),
      calorieConfidence: json['calorie_confidence'] as String? ?? 'UNSPECIFIED',
      calorieBand: V2MealCalorieBand.fromJson(
        (json['calorie_band'] as Map?)?.cast<String, dynamic>() ?? {},
      ),
      ingredients:
          ((json['ingredients'] as List?) ?? const [])
              .map(
                (item) => V2MealIngredient.fromJson(
                  (item as Map).cast<String, dynamic>(),
                ),
              )
              .toList(),
    );
  }

  final String analysisId;
  final String mealName;
  final String quantity;
  final MealType mealType;
  final String mealTypeSource;
  final String tip;
  final V2MealHealth? health;
  final V2MealMacros macros;
  final String calorieConfidence;
  final V2MealCalorieBand calorieBand;
  final List<V2MealIngredient> ingredients;
}

class V2MealUncertainty {
  const V2MealUncertainty({
    required this.analysisId,
    required this.variancePercent,
    required this.needsClarification,
    required this.calorieBand,
    required this.clarifications,
  });

  factory V2MealUncertainty.fromJson(Map<String, dynamic> json) {
    return V2MealUncertainty(
      analysisId: json['analysis_id'] as String? ?? '',
      variancePercent: (json['variance_percent'] as num?)?.toDouble() ?? 0,
      needsClarification: json['needs_clarification'] as bool? ?? false,
      calorieBand: V2MealCalorieBand.fromJson(
        (json['calorie_band'] as Map?)?.cast<String, dynamic>() ?? {},
      ),
      clarifications:
          ((json['clarifications'] as List?) ?? const [])
              .map(
                (item) => V2MealClarification.fromJson(
                  (item as Map).cast<String, dynamic>(),
                ),
              )
              .toList(),
    );
  }

  final String analysisId;
  final double variancePercent;
  final bool needsClarification;
  final V2MealCalorieBand calorieBand;
  final List<V2MealClarification> clarifications;
}

class V2MealTypeQuestion {
  const V2MealTypeQuestion({
    required this.analysisId,
    required this.question,
    required this.options,
    this.inferredMealType,
  });

  factory V2MealTypeQuestion.fromJson(Map<String, dynamic> json) {
    return V2MealTypeQuestion(
      analysisId: json['analysis_id'] as String? ?? '',
      question: json['question'] as String? ?? 'Which meal is this?',
      options:
          ((json['options'] as List?) ?? const [])
              .map((item) => _mealTypeFromApi(item as String?))
              .where((item) => item != MealType.UNKNOWN)
              .toList(),
      inferredMealType: json['inferred_meal_type'] == null
          ? null
          : _mealTypeFromApi(json['inferred_meal_type'] as String?),
    );
  }

  final String analysisId;
  final String question;
  final List<MealType> options;
  final MealType? inferredMealType;
}

class V2MealAnalysisEvent {
  const V2MealAnalysisEvent({
    required this.step,
    required this.analysisId,
    this.decomposedIngredients = const [],
    this.ingredients = const [],
    this.uncertainty,
    this.mealTypeQuestion,
    this.result,
    this.mealName,
    this.confidence,
    this.errorMessage,
  });

  factory V2MealAnalysisEvent.fromJson(Map<String, dynamic> json) {
    final stepValue = json['step'] as String? ?? 'error';
    final data = (json['data'] as Map?)?.cast<String, dynamic>() ?? {};
    final analysisId = data['analysis_id'] as String? ?? '';
    final step = switch (stepValue) {
      'decomposition' => V2MealAnalysisStep.decomposition,
      'ingredients' => V2MealAnalysisStep.ingredients,
      'uncertainty' => V2MealAnalysisStep.uncertainty,
      'meal_type_question' => V2MealAnalysisStep.mealTypeQuestion,
      'result' => V2MealAnalysisStep.result,
      _ => V2MealAnalysisStep.error,
    };

    return switch (step) {
      V2MealAnalysisStep.decomposition => V2MealAnalysisEvent(
        step: step,
        analysisId: analysisId,
        mealName: data['meal_name'] as String? ?? '',
        confidence: (data['confidence'] as num?)?.toDouble(),
        decomposedIngredients:
            ((data['ingredients'] as List?) ?? const [])
                .map(
                  (item) => V2MealDecomposedIngredient.fromJson(
                    (item as Map).cast<String, dynamic>(),
                  ),
                )
                .toList(),
      ),
      V2MealAnalysisStep.ingredients => V2MealAnalysisEvent(
        step: step,
        analysisId: analysisId,
        ingredients:
            ((data['ingredients'] as List?) ?? const [])
                .map(
                  (item) => V2MealIngredient.fromJson(
                    (item as Map).cast<String, dynamic>(),
                  ),
                )
                .toList(),
      ),
      V2MealAnalysisStep.uncertainty => V2MealAnalysisEvent(
        step: step,
        analysisId: analysisId,
        uncertainty: V2MealUncertainty.fromJson(data),
      ),
      V2MealAnalysisStep.mealTypeQuestion => V2MealAnalysisEvent(
        step: step,
        analysisId: analysisId,
        mealTypeQuestion: V2MealTypeQuestion.fromJson(data),
      ),
      V2MealAnalysisStep.result => V2MealAnalysisEvent(
        step: step,
        analysisId: analysisId,
        result: V2MealResult.fromJson(data),
      ),
      V2MealAnalysisStep.error => V2MealAnalysisEvent(
        step: step,
        analysisId: analysisId,
        errorMessage: data['message'] as String? ?? 'Unknown error',
      ),
    };
  }

  final V2MealAnalysisStep step;
  final String analysisId;
  final List<V2MealDecomposedIngredient> decomposedIngredients;
  final List<V2MealIngredient> ingredients;
  final V2MealUncertainty? uncertainty;
  final V2MealTypeQuestion? mealTypeQuestion;
  final V2MealResult? result;
  final String? mealName;
  final double? confidence;
  final String? errorMessage;
}

class V2MealAnalysisContext {
  const V2MealAnalysisContext({
    required this.result,
    this.imageBytes,
    this.imageUrl,
    this.textDescription,
    this.isRevised = false,
  });

  final V2MealResult result;
  final Uint8List? imageBytes;
  final String? imageUrl;
  final String? textDescription;
  final bool isRevised;

  V2MealAnalysisContext copyWith({
    V2MealResult? result,
    Uint8List? imageBytes,
    String? imageUrl,
    String? textDescription,
    bool? isRevised,
  }) {
    return V2MealAnalysisContext(
      result: result ?? this.result,
      imageBytes: imageBytes ?? this.imageBytes,
      imageUrl: imageUrl ?? this.imageUrl,
      textDescription: textDescription ?? this.textDescription,
      isRevised: isRevised ?? this.isRevised,
    );
  }

  MealDetectionResult toMealDetectionResult() {
    final metadata = MealMetadata();
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      metadata.imageUrl = imageUrl!;
    }
    if (textDescription != null && textDescription!.isNotEmpty) {
      metadata.mealDescription = textDescription!;
    }

    return MealDetectionResult(
      mealIdentified: true,
      calorieConfidence: _toCalorieConfidence(result.calorieConfidence),
      tip: result.tip,
      meal: Meal(
        name: result.mealName,
        quantity: result.quantity,
        type: result.mealType,
        macros: result.macros.toMealMacro(),
        health: result.health?.toMealHealth(),
      ),
      metadata: metadata,
    );
  }

  static CalorieConfidence _toCalorieConfidence(String value) {
    return switch (value) {
      'HIGH' => CalorieConfidence.HIGH,
      'MEDIUM' => CalorieConfidence.MEDIUM,
      'LOW' => CalorieConfidence.LOW,
      _ => CalorieConfidence.UNSPECIFIED,
    };
  }
}

MealType _mealTypeFromApi(String? value) {
  return switch (value) {
    'BREAKFAST' => MealType.BREAKFAST,
    'LUNCH' => MealType.LUNCH,
    'DINNER' => MealType.DINNER,
    'SNACK' => MealType.SNACK,
    _ => MealType.UNKNOWN,
  };
}

HealthScore _healthScoreFromApi(String? value) {
  return switch (value) {
    'HEALTHY' => HealthScore.HEALTHY,
    'UNHEALTHY' => HealthScore.UNHEALTHY,
    _ => HealthScore.NEUTRAL,
  };
}

class V2MealClarificationAnswer {
  const V2MealClarificationAnswer({
    required this.ingredientName,
    required this.selectedOptionIndex,
  });

  final String ingredientName;
  final int selectedOptionIndex;

  Map<String, dynamic> toJson() {
    return {
      'ingredient_name': ingredientName,
      'selected_option_index': selectedOptionIndex,
    };
  }
}
