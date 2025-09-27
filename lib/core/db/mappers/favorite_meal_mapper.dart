import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:drift/drift.dart';

extension FavoriteMealMapper on MealInfo {
  FavoriteMealTableCompanion toFavoriteCompanion() {
    return FavoriteMealTableCompanion(
      mealName: Value(mealName),
      mealQuantity: Value(mealQuantity),
      mealType: Value(mealType.name),
      calories: Value(calories),
      protein: Value(protein),
      carbs: Value(carbs),
      fat: Value(fat),
      fiber: Value(fiber),
      timestamp: Value(timestamp),
      imageUrl: Value(imageUrl),
      sourceMealId: Value(id),
      createdAt: Value(DateTime.now()),
    );
  }
}
