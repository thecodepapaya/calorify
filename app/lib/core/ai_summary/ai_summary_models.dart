import 'package:models/models.dart';

class AiSummaryMealSnapshot {
  const AiSummaryMealSnapshot({
    required this.loggedAt,
    required this.name,
    required this.mealType,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
  });

  final DateTime loggedAt;
  final String name;
  final String mealType;
  final int calories;
  final int protein;
  final int carbs;
  final int fat;
  final int fiber;

  Map<String, Object> toJson() => {
    'loggedAt': _rfc3339(loggedAt),
    'name': name,
    'mealType': mealType,
    'calories': calories,
    'protein': protein,
    'carbs': carbs,
    'fat': fat,
    'fiber': fiber,
  };
}

class AiSummarySnapshot {
  const AiSummarySnapshot({
    required this.summaryLocalDate,
    required this.timezone,
    required this.locale,
    required this.meals,
    required this.context,
  });

  final String summaryLocalDate;
  final String timezone;
  final String locale;
  final List<AiSummaryMealSnapshot> meals;
  final Map<String, Object> context;

  Map<String, Object> toJson() => {
    'summaryLocalDate': summaryLocalDate,
    'timezone': timezone,
    'locale': locale,
    'meals': meals.map((meal) => meal.toJson()).toList(),
    'context': context,
  };
}

class AiSummaryGenerationResult {
  const AiSummaryGenerationResult({
    required this.response,
    required this.resolvedLocale,
  });

  final AiMealSummaryResponse response;
  final String resolvedLocale;
}

abstract interface class AiSummaryGenerator {
  Future<AiSummaryGenerationResult> generate(AiSummarySnapshot snapshot);
}

class AiSummaryGeneratorUnavailable implements Exception {
  const AiSummaryGeneratorUnavailable();
}

class AiSummaryRetryException implements Exception {
  const AiSummaryRetryException({this.retryAfter, this.dateChanged = false});
  final Duration? retryAfter;
  final bool dateChanged;
}

class LocalAiSummary {
  const LocalAiSummary({
    required this.summaryLocalDate,
    required this.response,
    required this.resolvedLocale,
  });

  final String summaryLocalDate;
  final AiMealSummaryResponse response;
  final String resolvedLocale;
}

String _rfc3339(DateTime value) {
  final local = value.toLocal();
  final base = local.toIso8601String();
  final offset = local.timeZoneOffset;
  final sign = offset.isNegative ? '-' : '+';
  final absolute = offset.abs();
  final hours = absolute.inHours.toString().padLeft(2, '0');
  final minutes = (absolute.inMinutes % 60).toString().padLeft(2, '0');
  return '$base$sign$hours:$minutes';
}
