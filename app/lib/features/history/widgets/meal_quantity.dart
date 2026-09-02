import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

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
          AppIcons.utensils,
          color: colorScheme.onSurfaceVariant,
          size: 12,
        ),
        SizedBox(width: 2),
        Text(
          quantity,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
