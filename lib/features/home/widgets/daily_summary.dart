import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DailySummaryCard extends StatelessWidget {
  final double calories;
  final double protein;
  final double carbs;
  final double fiber;

  const DailySummaryCard({
    super.key,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fiber,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: double.infinity),
          Text(
            'Daily Summary',
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.start,
            children: [
              NutrientTile(
                icon: LucideIcons.flame,
                label: 'Calories',
                value: calories,
                unit: 'kcal',
                iconColor: calorieIconColor,
              ),
              NutrientTile(
                icon: LucideIcons.wheat,
                label: 'Carbs',
                value: carbs,
                unit: 'g',
                iconColor: carbsIconColor,
              ),
              NutrientTile(
                icon: LucideIcons.drumstick,
                label: 'Protein',
                value: protein,
                unit: 'g',
                iconColor: proteinIconColor,
              ),
              NutrientTile(
                icon: LucideIcons.egg,
                label: 'Fat',
                value: carbs,
                unit: 'g',
                iconColor: fatIconColor,
              ),
              NutrientTile(
                icon: LucideIcons.leaf,
                label: 'Fiber',
                value: fiber,
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
