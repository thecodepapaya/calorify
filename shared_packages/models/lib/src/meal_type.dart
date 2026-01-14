import 'package:json_annotation/json_annotation.dart';
import 'package:health/health.dart' as health;

enum MealType {
  @JsonValue('breakfast')
  breakfast,
  @JsonValue('lunch')
  lunch,
  @JsonValue('dinner')
  dinner,
  @JsonValue('snack')
  snack,
  @JsonValue('unknown')
  unknown;

  health.MealType get asHealthConnectType {
    return switch (this) {
      MealType.breakfast => health.MealType.BREAKFAST,
      MealType.lunch => health.MealType.LUNCH,
      MealType.dinner => health.MealType.DINNER,
      MealType.snack => health.MealType.SNACK,
      MealType.unknown => health.MealType.UNKNOWN,
    };
  }
}

extension MealTypeX on health.MealType {
  MealType get asMealInfoType {
    return switch (this) {
      health.MealType.BREAKFAST => MealType.breakfast,
      health.MealType.LUNCH => MealType.lunch,
      health.MealType.DINNER => MealType.dinner,
      health.MealType.SNACK => MealType.snack,
      health.MealType.UNKNOWN => MealType.unknown,
    };
  }
}
