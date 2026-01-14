import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:calorify/shared_widgets/macro_legend.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
                t.home.intakeProgress.title,
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
                stream:
                    DatabaseService.databaseInterface.watchDailyCalorieGoal(),
                builder: (context, goalSnapshot) {
                  final dailyGoal =
                      goalSnapshot.data ?? 2000; // Default if not set

                  final targetProtein = dailyGoal * 0.25 / 4;
                  final targetCarbs = dailyGoal * 0.50 / 4;
                  final targetFat = dailyGoal * 0.20 / 9;
                  final targetFiber = dailyGoal * 0.05 / 2;
                  final targetTotal =
                      targetProtein + targetCarbs + targetFat + targetFiber;

                  return Row(
                    children: [
                      Expanded(
                        child: _MacroPieChart(
                          title: t.home.intakeProgress.target,
                          protein: targetProtein,
                          carbs: targetCarbs,
                          fat: targetFat,
                          fiber: targetFiber,
                          isEmpty: dailyGoal == 0 || targetTotal == 0,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _MacroPieChart(
                          title: t.home.intakeProgress.current,
                          protein:
                              meals
                                  .fold(0, (sum, m) => sum + m.protein)
                                  .toDouble(),
                          carbs:
                              meals
                                  .fold(0, (sum, m) => sum + m.carbs)
                                  .toDouble(),
                          fat:
                              meals.fold(0, (sum, m) => sum + m.fat).toDouble(),
                          fiber:
                              meals
                                  .fold(0, (sum, m) => sum + m.fiber)
                                  .toDouble(),
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
          const MacroLegend(),
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
    final ColorScheme colorScheme = theme.colorScheme;
    // Check if total is zero to prevent division by zero
    final bool isActuallyEmpty = isEmpty || total == 0;

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
                  ? PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          color: theme.colorScheme.outline.withValues(
                            alpha: 0.2,
                          ),
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
                          title:
                              total > 0
                                  ? '${(carbs / total * 100).toStringAsFixed(0)}%'
                                  : '0%',
                          radius: 40,
                          titleStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        PieChartSectionData(
                          color: proteinIconColor,
                          value: protein,
                          title:
                              total > 0
                                  ? '${(protein / total * 100).toStringAsFixed(0)}%'
                                  : '0%',
                          radius: 40,
                          titleStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        PieChartSectionData(
                          color: fatIconColor,
                          value: fat,
                          title:
                              total > 0
                                  ? '${(fat / total * 100).toStringAsFixed(0)}%'
                                  : '0%',
                          radius: 40,
                          titleStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        PieChartSectionData(
                          color: fiberIconColor,
                          value: fiber,
                          title:
                              total > 0
                                  ? '${(fiber / total * 100).toStringAsFixed(0)}%'
                                  : '0%',
                          radius: 40,
                          titleStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
        ),
      ],
    );
  }
}
