import 'package:calorify/core/db/app_database.dart';
import 'package:models/models.dart';
import 'package:drift/drift.dart';
import 'package:utils/utils.dart';

extension MealToCompanion on Meal {
  /// Converts a Meal to MealInfoTableCompanion for database operations
  MealInfoTableCompanion toCompanion({
    int? clientId,
    DateTime? timestamp,
    String? imageUrl,
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
      imageUrl: imageUrl != null ? Value(imageUrl) : const Value.absent(),
      healthScore:
          hasHealth()
              ? Value(health.healthScore.legacyName)
              : const Value.absent(),
      healthScoreReason:
          hasHealth() && health.hasHealthScoreReason()
              ? Value(health.healthScoreReason)
              : const Value.absent(),
    );
  }
}

extension MealInfoMapper on LoggedMeal {
  MealInfoTableCompanion toCompanion() {
    return MealInfoTableCompanion(
      id: Value(clientId),
      mealName: Value(meal.name),
      mealQuantity: Value(meal.quantity),
      mealType: Value(meal.type.legacyName),
      calories: Value(meal.macros.calories),
      protein: Value(meal.macros.protein),
      carbs: Value(meal.macros.carbs),
      fat: Value(meal.macros.fat),
      fiber: Value(meal.macros.fiber),

      timestamp: Value(
        hasCreatedAt()
            ? iso8601StringToDateTime(createdAt) ?? DateTime.now()
            : DateTime.now(),
      ),
      imageUrl:
          hasMetadata() && metadata.hasImageUrl()
              ? Value(metadata.imageUrl)
              : const Value.absent(),
      healthScore:
          meal.hasHealth()
              ? Value(meal.health.healthScore.legacyName)
              : const Value.absent(),
      healthScoreReason:
          meal.hasHealth() && meal.health.hasHealthScoreReason()
              ? Value(meal.health.healthScoreReason)
              : const Value.absent(),
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
        health: MealHealth(
          healthScore: healthScoreFromLegacyName(data.healthScore as String),
          healthScoreReason: data.healthScoreReason,
        ),
        macros: MealMacro(
          calories: data.calories,
          protein: data.protein,
          carbs: data.carbs,
          fat: data.fat,
          fiber: data.fiber,
        ),
      ),
      createdAt: dateTimeToIso8601String(data.timestamp),
      metadata: MealMetadata(imageUrl: data.imageUrl),
    );
  }

  /// Creates a LoggedMeal from a Drift row
  static LoggedMeal fromDrift(dynamic data) {
    return LoggedMeal(
      clientId: data.id,
      meal: Meal(
        name: data.mealName,
        quantity: data.mealQuantity,
        type: mealTypeFromLegacyName(data.mealType),
        health: MealHealth(
          healthScore: healthScoreFromLegacyName(data.healthScore as String),
          healthScoreReason: data.healthScoreReason,
        ),
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
