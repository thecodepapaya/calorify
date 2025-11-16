import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MealQuantityIndicator extends StatelessWidget {
  const MealQuantityIndicator({super.key, required this.quantity});

  final String quantity;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Icon(
          LucideIcons.utensils,
          color: colorScheme.onSecondary.withValues(alpha: 0.7),
          size: 12,
        ),
        SizedBox(width: 2),
        Text(
          quantity,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSecondary.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
