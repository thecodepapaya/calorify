import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:utils/utils.dart' show DateTimeHuman;

class MealTimestamp extends StatelessWidget {
  const MealTimestamp({super.key, required this.timestamp});

  final DateTime timestamp;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(LucideIcons.clock, color: colorScheme.onSurfaceVariant, size: 12),
        SizedBox(width: 2),
        Text(
          timestamp.formatted,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
