import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/tabs.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

class MealLog extends ConsumerWidget {
  const MealLog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealsAsync = ref.watch(todaysMealsProvider);

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
          mealsAsync.when(
            loading: () => const AppLoader(),
            error: (error, _) => ErrorView(error: error),
            data: (meals) {
              if (meals.isEmpty) {
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
                  Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
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
