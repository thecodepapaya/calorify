import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:drift/drift.dart';

extension MealInfoMapper on MealInfo {
  MealInfoTableCompanion toCompanion() {
    return MealInfoTableCompanion(
      id: id != null ? Value(id!) : const Value.absent(),
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
    );
  }
}
