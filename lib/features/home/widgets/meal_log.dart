import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:drift/drift.dart' as db;
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealLog extends StatefulWidget {
  const MealLog({super.key});

  @override
  State<MealLog> createState() => _MealLogState();
}

class _MealLogState extends State<MealLog> {
  bool isLoading = false;
  List<MealInfo> meals = [];

  @override
  void initState() {
    super.initState();
    _getTodaysMeals();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final hasMealLogs = meals.isNotEmpty;

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
          isLoading
              ? AppLoader()
              : hasMealLogs
              ? _MealsList(meals)
              : _EmptyLog(),
          SizedBox(height: 12),
          if (!hasMealLogs && !isLoading) ...[
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Snap a picture of your last meal to log here.',
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSecondary.withValues(alpha: 0.7),
                ),
              ),
            ),
            const SizedBox(height: 4),
          ],
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {
                context.router.push(const MealHistoryRoute());
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

  Future<void> _getTodaysMeals() async {
    setState(() {
      isLoading = true;
    });
    try {
      final now = DateTime.now();
      final startOfDay = DateTime(now.year, now.month, now.day);
      final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59, 999);

      final rows =
          await (appDb.select(appDb.mealInfoTable)..where(
            (tbl) =>
                tbl.timestamp.isBiggerOrEqualValue(startOfDay) &
                tbl.timestamp.isSmallerOrEqualValue(endOfDay),
          )).get();

      meals = rows.map((row) => MealInfo.fromRow(row)).toList();
      setState(() {});
    } finally {
      setState(() {
        isLoading = false;
      });
    }
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
  const _MealsList(this.meals);

  final List<MealInfo> meals;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: meals.map((e) => MealLogCard(mealInfo: e)).toList(),
    );
  }
}
