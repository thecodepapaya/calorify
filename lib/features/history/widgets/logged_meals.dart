import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/mappers/meal_detection_result_mapper.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/health_score_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MealLogCard extends StatelessWidget {
  const MealLogCard({
    super.key,
    required this.mealInfo,
    this.showTimestamp = true,
    required this.allowEdit,
  });

  final MealInfo mealInfo;
  final bool showTimestamp;
  final bool allowEdit;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        borderRadius: globalRadius,
        onTap: () {
          showMealTip(
            context: context,
            mealDetectionResult: mealInfo.toMealDetectionResult(),
            allowEdit: allowEdit,
          );
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: globalRadius,
            border: Border.all(color: colorScheme.outline),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      mealInfo.mealName,
                      style: textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: colorScheme.onSecondary.withValues(alpha: 0.7),
                      ),
                    ),
                    child: MealTypeIndicator(mealType: mealInfo.mealType),
                  ),
                  if (mealInfo.healthScore != null) ...[
                    const SizedBox(width: 8),
                    _HealthScoreIndicator(
                      score: mealInfo.healthScore!,
                      reason: mealInfo.healthScoreReason ?? '',
                    ),
                  ],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MealQuantityIndicator(quantity: mealInfo.mealQuantity),
                  if (showTimestamp)
                    MealTimestamp(timestamp: mealInfo.timestamp),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  NutrientIconWithValue(
                    icon: LucideIcons.flame,
                    value: mealInfo.calories.toDouble(),
                    unit: '',
                    iconColor: calorieIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.wheat,
                    value: mealInfo.carbs.toDouble(),
                    unit: 'g',
                    iconColor: carbsIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.drumstick,
                    value: mealInfo.protein.toDouble(),
                    unit: 'g',
                    iconColor: proteinIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.egg,
                    value: mealInfo.fat.toDouble(),
                    unit: 'g',
                    iconColor: fatIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.leaf,
                    value: mealInfo.fiber.toDouble(),
                    unit: 'g',
                    iconColor: fiberIconColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HealthScoreIndicator extends StatelessWidget {
  const _HealthScoreIndicator({required this.score, required this.reason});

  final int score;
  final String reason;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    Color color;
    IconData icon;

    switch (score) {
      case 1:
        color = colorScheme.error;
        icon = LucideIcons.frown;
        break;
      case 3:
        color = Colors.green;
        icon = LucideIcons.smile;
        break;
      case 2:
      default:
        color = Colors.orange;
        icon = LucideIcons.meh;
        break;
    }

    return GestureDetector(
      onTap: () {
        showHealthScoreReason(
          context: context,
          healthScore: score,
          reason: reason,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          shape: BoxShape.circle,
          border: Border.all(color: color.withOpacity(0.5)),
        ),
        child: Icon(icon, color: color, size: 16),
      ),
    );
  }
}
