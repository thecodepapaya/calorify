import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealLogCard extends StatelessWidget {
  const MealLogCard({super.key});

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
                  'Chole bhature woth a ve sad asd ',
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
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Icon(
                      LucideIcons.utensils,
                      color: colorScheme.onSurface,
                      size: 12,
                    ),
                    SizedBox(width: 4),
                    Text('Dinner', style: textTheme.labelSmall),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    LucideIcons.soup,
                    color: colorScheme.onSecondary.withValues(alpha: 0.7),
                    size: 12,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '1 bowl',
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSecondary.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    LucideIcons.clock,
                    color: colorScheme.onSecondary.withValues(alpha: 0.7),
                    size: 12,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '1 hour ago',
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSecondary.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              NutrientIconWithValue(
                icon: LucideIcons.flame,
                value: 8000,
                unit: '',
                iconColor: calorieIconColor,
              ),
              NutrientIconWithValue(
                icon: LucideIcons.wheat,
                value: 120,
                unit: 'g',
                iconColor: carbsIconColor,
              ),
              NutrientIconWithValue(
                icon: LucideIcons.drumstick,
                value: 80,
                unit: 'g',
                iconColor: proteinIconColor,
              ),
              NutrientIconWithValue(
                icon: LucideIcons.egg,
                value: 120,
                unit: 'g',
                iconColor: fatIconColor,
              ),
              NutrientIconWithValue(
                icon: LucideIcons.leaf,
                value: 30,
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
