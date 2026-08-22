import 'package:calorify/core/db/app_database.dart';
import 'package:models/models.dart';
import 'package:drift/drift.dart';

extension MealToCompanion on Meal {
  /// Converts a Meal to MealInfoTableCompanion for database operations
  MealInfoTableCompanion toCompanion({
    int? clientId,
    DateTime? timestamp,
    String? imageUrl,
    Value<String?> analysisId = const Value.absent(),
    Value<String?> analysisSnapshotJson = const Value.absent(),
  }) {
    return MealInfoTableCompanion(
      id: clientId != null ? Value(clientId) : const Value.absent(),
      mealName: Value(name),
      mealQuantity: Value(quantity),
      mealType: Value(type.legacyName),
      calories: Value(macros.calories),
      protein: Value(macros.protein),
      carbs: Value(macros.carbs),
      fat: Value(macros.fat),
      fiber: Value(macros.fiber),
      timestamp: Value(timestamp ?? DateTime.now()),
      // A meal companion is a complete snapshot. Explicit nulls clear stale
      // optional values when an existing row is replaced.
      imageUrl: Value(imageUrl),
      healthScore:
          hasHealth() && health.hasHealthScore()
              ? Value(health.healthScore.legacyName)
              : const Value(null),
      healthScoreReason:
          hasHealth() && health.hasHealthScoreReason()
              ? Value(health.healthScoreReason)
              : const Value(null),
      // Analysis identity is persistence metadata, not part of the editable
      // Meal protobuf snapshot. Callers opt in only when first logging a meal;
      // an absent value preserves the key during later edits.
      analysisId: analysisId,
      analysisSnapshotJson: analysisSnapshotJson,
    );
  }
}

extension MealInfoMapper on LoggedMeal {
  MealInfoTableCompanion toCompanion() {
    return meal.toCompanion(
      clientId: hasClientId() ? clientId : null,
      timestamp:
          hasCreatedAt()
              ? iso8601StringToDateTime(createdAt) ?? DateTime.now()
              : DateTime.now(),
      imageUrl:
          hasMetadata() && metadata.hasImageUrl() ? metadata.imageUrl : null,
    );
  }

  /// Creates a Meal from a MealInfoTableData row
  static LoggedMeal fromRow(MealInfoTableData data) {
    return LoggedMeal(
      clientId: data.id,
      meal: Meal(
        name: data.mealName,
        quantity: data.mealQuantity,
        type: mealTypeFromLegacyName(data.mealType),
        health:
            data.healthScore != null
                ? MealHealth(
                  healthScore: healthScoreFromLegacyName(data.healthScore),
                  healthScoreReason: data.healthScoreReason,
                )
                : null,
        macros: MealMacro(
          calories: data.calories,
          protein: data.protein,
          carbs: data.carbs,
          fat: data.fat,
          fiber: data.fiber,
        ),
      ),
      createdAt: dateTimeToIso8601String(data.timestamp),
      metadata:
          data.imageUrl != null ? MealMetadata(imageUrl: data.imageUrl) : null,
    );
  }
}
