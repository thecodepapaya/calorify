import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealLog extends StatelessWidget {
  const MealLog({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final hasMealLogs = 2 % 2 == 0;

    return Container(
      margin: globalMargin,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.packageOpen, color: colorScheme.primary),
              SizedBox(width: 8),
              Text(
                'Logged Meals',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          hasMealLogs ? _MealsList() : _EmptyLog(),
          SizedBox(height: 12),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Add a meal using the form above to see it here',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MealHistoryScreen()),
                );
              },
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              child: Text('See all meals'),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _EmptyLog extends StatelessWidget {
  const _EmptyLog();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Column(
      children: [
        Divider(),
        const SizedBox(height: 40),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                LucideIcons.listChecks,
                size: 48,
                color: colorScheme.onSecondary.withValues(alpha: 0.8),
              ),
              SizedBox(height: 20),

              Text(
                'No meals recorded for today',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSecondary.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MealsList extends StatelessWidget {
  const _MealsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MealLogCard(), MealLogCard(), MealLogCard(), MealLogCard()],
    );
  }
}
