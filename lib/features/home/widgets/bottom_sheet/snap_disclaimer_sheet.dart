import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

Future<void> showSnapDisclaimer(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    builder: (context) => _MealSnapDisclaimer(),
  );
}

class _MealSnapDisclaimer extends StatelessWidget {
  const _MealSnapDisclaimer();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      width: double.infinity,
      padding: globalSheetPadding,
      decoration: BoxDecoration(borderRadius: globalRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                LucideIcons.lightbulb,
                color: colorScheme.onSurface,
                size: 32,
              ),
              SizedBox(width: 6),
              Text(
                'Please Note',
                style: textTheme.headlineSmall?.copyWith(
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Calorify provides estimated nutritional info. "
            "Accuracy depends on your input & food variations. "
            "Use as a guide, not a definitive source. Consult a professional "
            "for personalized dietary advice.",
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 20),
          // Text('Be mindful of the following', style: textTheme.bodyLarge),
          _BulletPoint(
            'Portion Size',
            'The accuracy of the estimates heavily relies on your correct assessment of the portion size.',
          ),
          _BulletPoint(
            'Preparation Methods',
            "Cooking methods can significantly alter the nutritional content of food. Calorify's estimates may not always account for these variations.",
          ),
          _BulletPoint(
            'Ingredients',
            'Complex dishes with many hidden ingredients may lead to less accurate estimations.',
          ),
          _BulletPoint(
            'Database Limitations',
            "Calorify's food database is extensive but may not include every single food item or variation.",
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class _BulletPoint extends StatelessWidget {
  const _BulletPoint(this.head, this.body);

  final String head;
  final String body;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
          children: [
            TextSpan(
              text: head,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
            TextSpan(text: '\n'),
            TextSpan(text: body),
          ],
        ),
      ),
    );
  }
}
