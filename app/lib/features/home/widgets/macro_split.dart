import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:calorify/shared_widgets/macro_legend.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
  return (
    protein: meals.fold(0, (sum, m) => sum + m.meal.macros.protein).toDouble(),
    carbs: meals.fold(0, (sum, m) => sum + m.meal.macros.carbs).toDouble(),
    fat: meals.fold(0, (sum, m) => sum + m.meal.macros.fat).toDouble(),
    fiber: meals.fold(0, (sum, m) => sum + m.meal.macros.fiber).toDouble(),
  );
}

class MacroSplit extends StatelessWidget {
  const MacroSplit({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(LucideIcons.chartPie, color: colorScheme.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  t.home.intakeProgress.title,
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          StreamBuilder<List<LoggedMeal>>(
            stream: DatabaseService.databaseInterface.watchAllMealsForToday(),
            builder:
                (context, mealsSnapshot) =>
                    _buildMealsSnapshot(context, mealsSnapshot),
          ),
          const SizedBox(height: 16),
          const MacroLegend(),
        ],
      ),
    );
  }

  Widget _buildMealsSnapshot(
    BuildContext context,
    AsyncSnapshot<List<LoggedMeal>> mealsSnapshot,
  ) {
    if (mealsSnapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: AppLoader());
    }
    final meals = mealsSnapshot.data ?? [];
    return StreamBuilder<int?>(
      stream: DatabaseService.databaseInterface.watchDailyCalorieGoal(),
      builder:
          (context, goalSnapshot) =>
              _buildChartsRow(context, meals, goalSnapshot.data ?? 2000),
    );
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
