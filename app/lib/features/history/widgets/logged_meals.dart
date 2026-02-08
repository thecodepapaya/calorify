import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/health_score_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/health_score_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

class MealLogCard extends StatelessWidget {
  const MealLogCard({
    super.key,
    required this.loggedMeal,
    this.showTimestamp = true,
  });

  final LoggedMeal loggedMeal;
  final bool showTimestamp;

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
          showMealTip(context: context, loggedMeal: loggedMeal);
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
                      loggedMeal.meal.name,
                      style: textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 12),
                  if (loggedMeal.meal.type != MealType.UNKNOWN) ...[
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                      ).copyWith(top: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: colorScheme.onSecondary.withValues(alpha: 0.7),
                        ),
                      ),
                      child: MealTypeIndicator(type: loggedMeal.meal.type),
                    ),
                  ],
                  if (loggedMeal.meal.hasHealth()) ...[
                    const SizedBox(width: 8),
                    HealthScoreIndicator(
                      healthScore: loggedMeal.meal.health.healthScore,
                      onTap: () {
                        showHealthScoreReason(
                          context: context,
                          healthScore: loggedMeal.meal.health.healthScore,
                          reason: loggedMeal.meal.health.healthScoreReason,
                        );
                      },
                    ),
                  ],
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MealQuantityIndicator(quantity: loggedMeal.meal.quantity),
                  if (showTimestamp)
                    MealTimestamp(timestamp: loggedMeal.dateTime),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  NutrientIconWithValue(
                    icon: LucideIcons.flame,
                    value: loggedMeal.meal.macros.calories.toDouble(),
                    unit: '',
                    iconColor: colorScheme.calorieIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.wheat,
                    value: loggedMeal.meal.macros.carbs.toDouble(),
                    unit: 'g',
                    iconColor: carbsIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.drumstick,
                    value: loggedMeal.meal.macros.protein.toDouble(),
                    unit: 'g',
                    iconColor: proteinIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.egg,
                    value: loggedMeal.meal.macros.fat.toDouble(),
                    unit: 'g',
                    iconColor: fatIconColor,
                  ),
                  NutrientIconWithValue(
                    icon: LucideIcons.leaf,
                    value: loggedMeal.meal.macros.fiber.toDouble(),
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
