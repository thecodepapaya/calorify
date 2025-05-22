import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealTypeIndicator extends StatelessWidget {
  const MealTypeIndicator({super.key, required this.mealType});

  final MealType mealType;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final icon = switch (mealType) {
      MealType.BREAKFAST => LucideIcons.eggFried,
      MealType.LUNCH => LucideIcons.sandwich,
      MealType.DINNER => LucideIcons.soup,
      MealType.SNACK => LucideIcons.cookie,
      MealType.UNKNOWN => LucideIcons.utensils,
    };

    return Row(
      children: [
        Icon(
          icon,
          color: colorScheme.onSecondary.withValues(alpha: 0.7),
          size: 12,
        ),
        SizedBox(width: 4),
        Text(
          mealType.name.capitalized,
          style: textTheme.labelSmall?.copyWith(
            color: colorScheme.onSecondary.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}

extension on String {
  String get capitalized => this[0] + substring(1).toLowerCase();
}
