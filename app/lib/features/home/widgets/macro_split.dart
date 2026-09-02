import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/widgets/home_skeletons.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/macro_legend.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/widgets.dart';
import 'package:models/models.dart';

/// Target macro grams from daily calorie goal (protein 25%, carbs 50%, fat 20%, fiber 5%).
({double protein, double carbs, double fat, double fiber})
_targetMacrosFromGoal(int dailyGoal) {
  return (
    protein: dailyGoal * 0.25 / 4,
    carbs: dailyGoal * 0.50 / 4,
    fat: dailyGoal * 0.20 / 9,
    fiber: dailyGoal * 0.05 / 2,
  );
}

/// Sum macro values from [meals].
({double protein, double carbs, double fat, double fiber}) _macrosFromMeals(
  List<LoggedMeal> meals,
) {
  var protein = 0.0;
  var carbs = 0.0;
  var fat = 0.0;
  var fiber = 0.0;

  for (final meal in meals) {
    protein += meal.meal.macros.protein;
    carbs += meal.meal.macros.carbs;
    fat += meal.meal.macros.fat;
    fiber += meal.meal.macros.fiber;
  }

  return (protein: protein, carbs: carbs, fat: fat, fiber: fiber);
}

class MacroSplit extends ConsumerWidget {
  const MacroSplit({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealsAsync = ref.watch(todaysMealsProvider);
    final goalAsync = ref.watch(dailyCalorieGoalProvider);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            icon: AppIcons.chartPie,
            title: t.home.intakeProgress.title,
          ),
          const SizedBox(height: 24),
          _buildBody(context, ref, mealsAsync, goalAsync),
          const SizedBox(height: 16),
          const MacroLegend(),
        ],
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    AsyncValue<List<LoggedMeal>> mealsAsync,
    AsyncValue<int?> goalAsync,
  ) {
    if (mealsAsync.isLoading) {
      return const MacroSplitSkeleton();
    }
    if (mealsAsync.hasError) {
      return ErrorView(
        error: mealsAsync.error!,
        onRetry: () => ref.invalidate(todaysMealsProvider),
      );
    }

    final meals = mealsAsync.value ?? const <LoggedMeal>[];
    return _buildChartsRow(context, meals, goalAsync.value ?? 2000);
  }

  Widget _buildChartsRow(
    BuildContext context,
    List<LoggedMeal> meals,
    int dailyGoal,
  ) {
    final target = _targetMacrosFromGoal(dailyGoal);
    final targetTotal =
        target.protein + target.carbs + target.fat + target.fiber;
    final current = _macrosFromMeals(meals);

    return Row(
      children: [
        Expanded(
          child: _MacroPieChart(
            title: t.home.intakeProgress.target,
            protein: target.protein,
            carbs: target.carbs,
            fat: target.fat,
            fiber: target.fiber,
            isEmpty: dailyGoal == 0 || targetTotal == 0,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _MacroPieChart(
            title: t.home.intakeProgress.current,
            protein: current.protein,
            carbs: current.carbs,
            fat: current.fat,
            fiber: current.fiber,
            isEmpty: meals.isEmpty,
          ),
        ),
      ],
    );
  }
}

String _macroPercent(double value, double total) =>
    total > 0 ? '${(value / total * 100).toStringAsFixed(0)}%' : '0%';

class _MacroPieChart extends StatelessWidget {
  const _MacroPieChart({
    required this.title,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    this.isEmpty = false,
  });

  final String title;
  final double protein;
  final double carbs;
  final double fat;
  final double fiber;
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    final total = protein + carbs + fat + fiber;
    final theme = Theme.of(context);
    final isActuallyEmpty = isEmpty || total == 0;
    const sectorTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Column(
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 120,
          child:
              isActuallyEmpty
                  ? _buildEmptyChart(theme)
                  : PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 20,
                      sections: _buildSections(total, sectorTextStyle),
                    ),
                  ),
        ),
      ],
    );
  }

  Widget _buildEmptyChart(ThemeData theme) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
            value: 1,
            title: '',
            radius: 40,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _buildSections(
    double total,
    TextStyle sectorTextStyle,
  ) {
    return [
      PieChartSectionData(
        color: carbsIconColor,
        value: carbs,
        title: _macroPercent(carbs, total),
        radius: 40,
        titleStyle: sectorTextStyle,
      ),
      PieChartSectionData(
        color: proteinIconColor,
        value: protein,
        title: _macroPercent(protein, total),
        radius: 40,
        titleStyle: sectorTextStyle,
      ),
      PieChartSectionData(
        color: fatIconColor,
        value: fat,
        title: _macroPercent(fat, total),
        radius: 40,
        titleStyle: sectorTextStyle,
      ),
      PieChartSectionData(
        color: fiberIconColor,
        value: fiber,
        title: _macroPercent(fiber, total),
        radius: 40,
        titleStyle: sectorTextStyle,
      ),
    ];
  }
}
