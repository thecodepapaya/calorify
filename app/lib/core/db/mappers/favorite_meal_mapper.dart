import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

extension FavoriteMealMapper on LoggedMeal {
  FavoriteMealTableCompanion toFavoriteCompanion() {
    return FavoriteMealTableCompanion(
      id: Value(clientId),
      mealName: Value(meal.name),
      mealQuantity: Value(meal.quantity),
      mealType: Value(meal.type.legacyName),
      calories: Value(meal.macros.calories),
      protein: Value(meal.macros.protein),
      carbs: Value(meal.macros.carbs),
      fat: Value(meal.macros.fat),
      fiber: Value(meal.macros.fiber),
      healthScore:
          meal.hasHealth()
              ? Value(meal.health.healthScore.legacyName)
              : const Value.absent(),
      healthScoreReason:
          meal.hasHealth() && meal.health.hasHealthScoreReason()
              ? Value(meal.health.healthScoreReason)
              : const Value.absent(),
      sourceMealId: Value(clientId),
      imageUrl:
          hasMetadata() && metadata.hasImageUrl()
              ? Value(metadata.imageUrl)
              : const Value.absent(),
      timestamp: Value(
        hasCreatedAt()
            ? iso8601StringToDateTime(createdAt) ?? DateTime.now()
            : DateTime.now(),
      ),
      createdAt: Value(iso8601StringToDateTime(createdAt) ?? DateTime.now()),
      lastUsedAt: Value(DateTime.now()),
    );
  }

  /// Creates a FavoriteMeal from a FavoriteMealTableData row
  static FavoriteMeal fromRow(FavoriteMealTableData data) {
    final loggedMeal = LoggedMeal(
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

    return FavoriteMeal(
      clientId: data.id,
      loggedMeal: loggedMeal,
      favoriteAt: dateTimeToIso8601String(data.createdAt),
      lastUsedAt:
          data.lastUsedAt != null
              ? dateTimeToIso8601String(data.lastUsedAt!)
              : dateTimeToIso8601String(data.createdAt),
    );
  }

  /// Creates a FavoriteMeal from a Drift row
  static FavoriteMeal fromDrift(dynamic data) {
    final loggedMeal = LoggedMeal(
      clientId: data.id,
      meal: Meal(
        name: data.mealName,
        quantity: data.mealQuantity,
        type: mealTypeFromLegacyName(data.mealType),
        health:
            data.healthScore != null
                ? MealHealth(
                  healthScore: healthScoreFromLegacyName(
                    data.healthScore as String,
                  ),
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

    return FavoriteMeal(
      clientId: data.id,
      loggedMeal: loggedMeal,
      favoriteAt: dateTimeToIso8601String(data.createdAt),
      lastUsedAt:
          data.lastUsedAt != null
              ? dateTimeToIso8601String(data.lastUsedAt)
              : dateTimeToIso8601String(data.createdAt),
    );
  }
}
