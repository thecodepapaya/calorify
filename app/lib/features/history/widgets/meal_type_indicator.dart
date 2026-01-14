import 'package:models/models.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MealTypeIndicator extends StatelessWidget {
  const MealTypeIndicator({super.key, required this.mealType});

  final MealType mealType;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final icon = switch (mealType) {
      MealType.breakfast => LucideIcons.eggFried,
      MealType.lunch => LucideIcons.sandwich,
      MealType.dinner => LucideIcons.soup,
      MealType.snack => LucideIcons.cookie,
      MealType.unknown => LucideIcons.utensils,
    };

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: colorScheme.onSecondary.withValues(alpha: 0.7),
          size: 12,
        ),
        SizedBox(width: 4),
        Text(
          mealType.displayName,
          style: textTheme.labelSmall?.copyWith(
            color: colorScheme.onSecondary.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
