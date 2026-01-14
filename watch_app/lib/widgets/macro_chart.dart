import 'package:specs/specs.dart';
import 'package:models/models.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MacroChart extends StatelessWidget {
  final List<MealInfo> meals;

  const MacroChart({super.key, required this.meals});

  int get _totalProtein => meals.fold(0, (sum, meal) => sum + meal.protein);
  int get _totalCarbs => meals.fold(0, (sum, meal) => sum + meal.carbs);
  int get _totalFat => meals.fold(0, (sum, meal) => sum + meal.fat);
  int get _total => _totalProtein + _totalCarbs + _totalFat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (_total == 0) {
      return Card(
        color: colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Text(
              'No macros logged yet',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      );
    }

    final proteinPercent = _totalProtein / _total;
    final carbsPercent = _totalCarbs / _total;
    final fatPercent = _totalFat / _total;

    return Card(
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Macros',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 80,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: proteinPercent * 100,
                      color: lightColors.proteinIconColor,
                      title: '${(_totalProtein).toStringAsFixed(0)}g',
                      radius: 30,
                    ),
                    PieChartSectionData(
                      value: carbsPercent * 100,
                      color: lightColors.carbsIconColor,
                      title: '${(_totalCarbs).toStringAsFixed(0)}g',
                      radius: 30,
                    ),
                    PieChartSectionData(
                      value: fatPercent * 100,
                      color: lightColors.fatIconColor,
                      title: '${(_totalFat).toStringAsFixed(0)}g',
                      radius: 30,
                    ),
                  ],
                  sectionsSpace: 2,
                  centerSpaceRadius: 20,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _MacroLegend(
                  color: lightColors.proteinIconColor,
                  label: 'Protein',
                  value: _totalProtein,
                ),
                _MacroLegend(
                  color: lightColors.carbsIconColor,
                  label: 'Carbs',
                  value: _totalCarbs,
                ),
                _MacroLegend(
                  color: lightColors.fatIconColor,
                  label: 'Fat',
                  value: _totalFat,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MacroLegend extends StatelessWidget {
  final Color color;
  final String label;
  final int value;

  const _MacroLegend({
    required this.color,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              '${value}g',
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
