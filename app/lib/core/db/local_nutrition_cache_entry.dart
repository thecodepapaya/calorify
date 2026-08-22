import 'package:models/models.dart';

class LocalNutritionCacheEntry {
  const LocalNutritionCacheEntry({
    required this.fdcId,
    required this.datasetVersion,
    required this.description,
    required this.normalizedName,
    required this.dataType,
    required this.lookupKeys,
    required this.nutrientsPer100g,
    required this.retrievedAt,
    required this.lastAccessedAt,
    required this.approximateBytes,
  });

  final String fdcId;
  final String datasetVersion;
  final String description;
  final String normalizedName;
  final String dataType;
  final List<String> lookupKeys;
  final PipelineMacros nutrientsPer100g;
  final DateTime retrievedAt;
  final DateTime lastAccessedAt;
  final int approximateBytes;
}

class LocalNutritionCacheStats {
  const LocalNutritionCacheStats({
    required this.recordCount,
    required this.approximateBytes,
  });

  final int recordCount;
  final int approximateBytes;
}
