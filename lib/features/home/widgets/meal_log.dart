import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/tabs.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MealLog extends StatelessWidget {
  const MealLog({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.packageOpen, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                t.home.mealLog.title,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          StreamBuilder<List<MealInfo>>(
            stream: DatabaseService.databaseInterface.watchAllMealsForToday(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorView(error: snapshot.error!);
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const AppLoader();
              }

              final meals = snapshot.data ?? [];
              final hasMealLogs = meals.isNotEmpty;

              return Column(
                children: [
                  hasMealLogs ? _MealsList(meals) : const _EmptyLog(),
                  const SizedBox(height: 12),
                  if (!hasMealLogs) ...[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        t.home.mealLog.emptyMessage,
                        textAlign: TextAlign.center,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSecondary.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {
                AutoTabsRouter.of(
                  context,
                ).setActiveIndex(MainTab.mealHistory.index);
              },
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              child: Text(t.home.mealLog.seeAllMeals),
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
                t.home.mealLog.noMealsToday,
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
      children:
          meals.map((e) => MealLogCard(mealInfo: e, allowEdit: true)).toList(),
    );
  }
}
