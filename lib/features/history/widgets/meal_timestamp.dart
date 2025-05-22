import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealTimestamp extends StatelessWidget {
  const MealTimestamp({super.key, required this.timestamp});

  final DateTime timestamp;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Row(
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
    );
  }
}
