import 'package:calorify/core/db/app_database.dart';
import 'package:models/models.dart';
import 'package:drift/drift.dart';

extension FavoriteMealMapper on MealInfo {
  FavoriteMealTableCompanion toFavoriteCompanion() {
    return FavoriteMealTableCompanion(
      mealName: Value(mealName),
      mealQuantity: Value(mealQuantity),
      mealType: Value(mealType.legacyName),
      calories: Value(calories),
      protein: Value(protein),
      carbs: Value(carbs),
      fat: Value(fat),
      fiber: Value(fiber),
      timestamp: Value(hasTimestamp() ? timestampToLocalDateTime(timestamp) ?? DateTime.now() : DateTime.now()),
      imageUrl: hasImageUrl() ? Value(imageUrl) : const Value.absent(),
      sourceMealId:
          localIdValue != null
              ? Value(localIdValue!)
              : const Value.absent(),
      createdAt: Value(DateTime.now()),
    );
  }
}
