import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';

class IntakeProgress extends StatelessWidget {
  const IntakeProgress({super.key});

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
            children: [
              Icon(LucideIcons.chartPie, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                'Today\'s Macro Split',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          StreamBuilder<List<MealInfo>>(
            stream: DatabaseService.databaseInterface.watchAllMealsForToday(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: AppLoader());
              }
              final meals = snapshot.data ?? [];
              
              return StreamBuilder<int?>(
                stream: DatabaseService.databaseInterface.watchDailyCalorieGoal(),
                builder: (context, goalSnapshot) {
                  final dailyGoal = goalSnapshot.data ?? 2000; // Default if not set
                  
                  return Row(
                    children: [
                      Expanded(
                        child: _MacroPieChart(
                          title: 'Target',
                          protein: dailyGoal * 0.25 / 4,
                          carbs: dailyGoal * 0.50 / 4,
                          fat: dailyGoal * 0.20 / 9,
                          fiber: dailyGoal * 0.05 / 2, // Simplified fiber estimation
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _MacroPieChart(
                          title: 'Current',
                          protein: meals.fold(0, (sum, m) => sum + m.protein).toDouble(),
                          carbs: meals.fold(0, (sum, m) => sum + m.carbs).toDouble(),
                          fat: meals.fold(0, (sum, m) => sum + m.fat).toDouble(),
                          fiber: meals.fold(0, (sum, m) => sum + m.fiber).toDouble(),
                          isEmpty: meals.isEmpty,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const SizedBox(height: 16),
          const _MacroLegend(),
        ],
      ),
    );
  }
}

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
    final ThemeData theme = Theme.of(context);

    return Column(
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 120,
          child: isEmpty
              ? PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        color: theme.colorScheme.outline.withOpacity(0.2),
                        value: 1,
                        title: '',
                        radius: 40,
                      ),
                    ],
                  ),
                )
              : PieChart(
                  PieChartData(
                    sectionsSpace: 2,
                    centerSpaceRadius: 20,
                    sections: [
                      PieChartSectionData(
                        color: carbsIconColor,
                        value: carbs,
                        title: '${(carbs / total * 100).toStringAsFixed(0)}%',
                        radius: 40,
                        titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      PieChartSectionData(
                        color: proteinIconColor,
                        value: protein,
                        title: '${(protein / total * 100).toStringAsFixed(0)}%',
                        radius: 40,
                        titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      PieChartSectionData(
                        color: fatIconColor,
                        value: fat,
                        title: '${(fat / total * 100).toStringAsFixed(0)}%',
                        radius: 40,
                        titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      PieChartSectionData(
                        color: fiberIconColor,
                        value: fiber,
                        title: '${(fiber / total * 100).toStringAsFixed(0)}%',
                        radius: 40,
                        titleStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}

class _MacroLegend extends StatelessWidget {
  const _MacroLegend();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: [
        _LegendItem(color: carbsIconColor, label: 'Carbs'),
        _LegendItem(color: proteinIconColor, label: 'Protein'),
        _LegendItem(color: fatIconColor, label: 'Fat'),
        _LegendItem(color: fiberIconColor, label: 'Fiber'),
      ],
    );
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
