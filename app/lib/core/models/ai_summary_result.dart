enum AiSummaryTrend { up, down, steady }

class AiSummaryResult {
  const AiSummaryResult({
    required this.summary,
    required this.generatedAt,
    required this.mealCount,
    required this.topFoods,
    required this.macroBalanceScore,
    required this.trend,
  });

  final String summary;
  final DateTime generatedAt;
  final int mealCount;
  final List<String> topFoods;
  final int macroBalanceScore;
  final AiSummaryTrend trend;
}
