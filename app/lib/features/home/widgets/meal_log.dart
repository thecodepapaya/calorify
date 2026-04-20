import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/tabs.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MealLog extends StatelessWidget {
  const MealLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: globalMargin,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            icon: LucideIcons.packageOpen,
            title: t.home.mealLog.title,
          ),
          const SizedBox(height: 8),
          StreamBuilder<List<LoggedMeal>>(
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

              if (!hasMealLogs) {
                return EmptyStateWidget(
                  icon: LucideIcons.listChecks,
                  title: t.home.mealLog.noMealsToday,
                  subtitle: t.home.mealLog.emptyMessage,
                );
              }
              return _MealsList(meals);
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
                  Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
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

class _MealsList extends StatelessWidget {
  const _MealsList(this.meals);

  final List<LoggedMeal> meals;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: meals.map((e) => MealLogCard(loggedMeal: e)).toList(),
    );
  }
}
