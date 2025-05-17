import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SetGoal extends StatelessWidget {
  const SetGoal({super.key});

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
          Row(
            children: [
              Icon(LucideIcons.target, color: colorScheme.primary),
              SizedBox(width: 8),
              Text(
                'Set Your Daily Goal',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Ready to embark on your wellness journey? '
            'Set your daily calorie target below to kickstart your progress.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text('Daily calories (kcal)', style: textTheme.bodyLarge),
              Spacer(),
              SizedBox(
                width: 40,
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '0',
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                    hintStyle: TextStyle(
                      color: colorScheme.onSecondary.withValues(alpha: 0.7),

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 4),
              Text('kcal', style: textTheme.bodyLarge),
            ],
          ),
          SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colorScheme.tertiary),
                foregroundColor: WidgetStatePropertyAll(colorScheme.onTertiary),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: globalRadius),
                ),
              ),
              child: Text('Set Goal'),
            ),
          ),
        ],
      ),
    );
  }
}
