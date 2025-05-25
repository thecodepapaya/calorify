import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealLogCard extends StatelessWidget {
  const MealLogCard({
    super.key,
    required this.mealInfo,
    this.showTimestamp = true,
  });

  final MealInfo mealInfo;
  final bool showTimestamp;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
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
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MealQuantityIndicator(quantity: mealInfo.mealQuantity),
              if (showTimestamp) MealTimestamp(timestamp: mealInfo.timestamp),
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
    );
  }
}
