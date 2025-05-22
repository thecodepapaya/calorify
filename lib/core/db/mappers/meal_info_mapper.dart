import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:drift/drift.dart';
import 'package:health/health.dart';

extension MealInfoMapper on MealInfo {
  MealInfoTableCompanion toCompanion() {
    return MealInfoTableCompanion(
      mealName: Value(mealName),
      mealQuantity: Value(mealQuantity),
      mealType: Value(mealType.name),
      calories: Value(calories),
      protein: Value(protein),
      carbs: Value(carbs),
      fat: Value(fat),
      fiber: Value(fiber),
      tip: Value.absentIfNull(tip),
      timestamp: Value(DateTime.now()),
    );
  }

  static MealInfo fromRow(MealInfoTableData data) {
    return MealInfo(
      mealIdentified: true,
      mealName: data.mealName,
      mealQuantity: data.mealQuantity,
      mealType: MealType.values.firstWhere(
        (e) => e.name == data.mealType,
        orElse: () => MealType.UNKNOWN,
      ),
      calories: data.calories,
      calorieConfidence: 1,
      protein: data.protein,
      carbs: data.carbs,
      fat: data.fat,
      fiber: data.fiber,
      tip: data.tip,
    );
  }
}
