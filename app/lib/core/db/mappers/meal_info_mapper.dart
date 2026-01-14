import 'package:calorify/core/db/app_database.dart';
import 'package:models/models.dart';
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
      healthScore:
          healthScore != null ? Value(healthScore!.name) : const Value.absent(),
      healthScoreReason:
          healthScoreReason != null
              ? Value(healthScoreReason!)
              : const Value.absent(),
    );
  }

  /// Creates a MealInfo from a MealInfoTableData row
  static MealInfo fromRow(MealInfoTableData data) {
    return MealInfo(
      id: data.id,
      mealName: data.mealName,
      mealQuantity: data.mealQuantity,
      mealType: MealType.values.byName(data.mealType),
      calories: data.calories,
      protein: data.protein,
      carbs: data.carbs,
      fat: data.fat,
      fiber: data.fiber,
      timestamp: data.timestamp,
      imageUrl: data.imageUrl,
      healthScore:
          data.healthScore != null && data.healthScore is String
              ? HealthScore.values.byName(data.healthScore as String)
              : null,
      healthScoreReason: data.healthScoreReason,
    );
  }

  /// Creates a MealInfo from a Drift row
  static MealInfo fromDrift(dynamic data) {
    return MealInfo(
      id: data.id,
      mealName: data.mealName,
      mealQuantity: data.mealQuantity,
      mealType: MealType.values.byName(data.mealType),
      calories: data.calories,
      protein: data.protein,
      carbs: data.carbs,
      fat: data.fat,
      fiber: data.fiber,
      timestamp: data.timestamp,
      imageUrl: data.imageUrl,
      healthScore:
          data.healthScore != null && data.healthScore is String
              ? HealthScore.values.byName(data.healthScore as String)
              : null,
      healthScoreReason: data.healthScoreReason,
    );
  }
}
