import 'package:models/models.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class MealTypeIndicator extends StatelessWidget {
  const MealTypeIndicator({super.key, required this.type});

  final MealType type;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final icon = switch (type) {
      MealType.BREAKFAST => AppIcons.eggFried,
      MealType.LUNCH => AppIcons.sandwich,
      MealType.DINNER => AppIcons.soup,
      MealType.SNACK => AppIcons.cookie,
      MealType.UNKNOWN => AppIcons.utensils,
      _ => AppIcons.utensils,
    };

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: colorScheme.onSurfaceVariant, size: 12),
        SizedBox(width: 4),
        Text(
          type.displayName,
          style: textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
