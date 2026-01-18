import 'package:calorify/core/db/app_database.dart';
import 'package:models/models.dart';
import 'package:drift/drift.dart';

extension MealInfoMapper on MealInfo {
  MealInfoTableCompanion toCompanion() {
    return MealInfoTableCompanion(
      id: hasLocalId() ? Value(localId.toInt()) : const Value.absent(),
      clientId: hasClientId() ? Value(clientId) : const Value.absent(),
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
      healthScore:
          hasHealthScore()
              ? Value(healthScore.legacyName)
              : const Value.absent(),
      healthScoreReason:
          hasHealthScoreReason()
              ? Value(healthScoreReason)
              : const Value.absent(),
    );
  }

  /// Creates a MealInfo from a MealInfoTableData row
  static MealInfo fromRow(MealInfoTableData data) {
    return MealInfo(
      localId: int64FromInt(data.id),
      clientId: data.clientId,
      mealName: data.mealName,
      mealQuantity: data.mealQuantity,
      mealType: mealTypeFromLegacyName(data.mealType),
      calories: data.calories,
      protein: data.protein,
      carbs: data.carbs,
      fat: data.fat,
      fiber: data.fiber,
      timestamp: iso8601StringToTimestamp(data.timestamp.toIso8601String()),
      imageUrl: data.imageUrl,
      healthScore:
          data.healthScore != null
              ? healthScoreFromLegacyName(data.healthScore as String)
              : null,
      healthScoreReason: data.healthScoreReason,
    );
  }

  /// Creates a MealInfo from a Drift row
  static MealInfo fromDrift(dynamic data) {
    return MealInfo(
      localId: int64FromInt(data.id),
      clientId: data.clientId,
      mealName: data.mealName,
      mealQuantity: data.mealQuantity,
      mealType: mealTypeFromLegacyName(data.mealType),
      calories: data.calories,
      protein: data.protein,
      carbs: data.carbs,
      fat: data.fat,
      fiber: data.fiber,
      timestamp: iso8601StringToTimestamp(data.timestamp.toIso8601String()),
      imageUrl: data.imageUrl,
      healthScore:
          data.healthScore != null
              ? healthScoreFromLegacyName(data.healthScore as String)
              : null,
      healthScoreReason: data.healthScoreReason,
    );
  }
}
