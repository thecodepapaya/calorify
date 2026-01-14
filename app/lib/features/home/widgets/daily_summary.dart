import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class DailySummaryCard extends StatelessWidget {
  const DailySummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity),
          Text(
            t.home.dailySummary.title,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),
          StreamBuilder<List<MealInfo>>(
            stream: DatabaseService.databaseInterface.watchAllMealsForToday(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorView(error: snapshot.error!);
              }
              final meals = snapshot.data ?? [];
              double calories = 0, protein = 0, carbs = 0, fat = 0, fiber = 0;

              for (final meal in meals) {
                calories += meal.calories;
                protein += meal.protein;
                carbs += meal.carbs;
                fat += meal.fat;
                fiber += meal.fiber;
              }
              return Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.start,
                children: [
                  NutrientTile(
                    icon: LucideIcons.flame,
                    label: t.home.dailySummary.calories,
                    value: calories,
                    unit: 'kcal',
                    iconColor: calorieIconColor,
                  ),
                  NutrientTile(
                    icon: LucideIcons.wheat,
                    label: t.home.dailySummary.carbs,
                    value: carbs,
                    unit: 'g',
                    iconColor: carbsIconColor,
                  ),
                  NutrientTile(
                    icon: LucideIcons.drumstick,
                    label: t.home.dailySummary.protein,
                    value: protein,
                    unit: 'g',
                    iconColor: proteinIconColor,
                  ),
                  NutrientTile(
                    icon: LucideIcons.egg,
                    label: t.home.dailySummary.fat,
                    value: fat,
                    unit: 'g',
                    iconColor: fatIconColor,
                  ),
                  NutrientTile(
                    icon: LucideIcons.leaf,
                    label: t.home.dailySummary.fiber,
                    value: fiber,
                    unit: 'g',
                    iconColor: fiberIconColor,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class NutrientTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final double value;
  final String unit;
  final Color iconColor;
  final double width;

  const NutrientTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.iconColor,
    this.width = 90,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      constraints: BoxConstraints(minWidth: width),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        borderRadius: globalRadius,
        border: Border.all(color: iconColor.withValues(alpha: 0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: iconColor),
          const SizedBox(height: 6),
          Text(
            label,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            '${value.toStringAsFixed(0)}$unit',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
