import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:calorify/shared_widgets/macro_legend.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class IntakeHistoryBarChart extends StatelessWidget {
  const IntakeHistoryBarChart({super.key});

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
              Icon(LucideIcons.chartBar, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                t.home.intakeHistory.title,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const _MacroHistoryChart(),
        ],
      ),
    );
  }
}

class _MacroHistoryChart extends StatelessWidget {
  const _MacroHistoryChart();

  Map<DateTime, Map<String, double>> _processMealsData(List<MealInfo> meals) {
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 6));
    final startOfSevenDaysAgo = DateTime(
      sevenDaysAgo.year,
      sevenDaysAgo.month,
      sevenDaysAgo.day,
    );

    Map<DateTime, Map<String, double>> processedData = {};
    for (int i = 0; i < 7; i++) {
      final dayDate = startOfSevenDaysAgo.add(Duration(days: i));
      final mapKeyDate = DateTime(dayDate.year, dayDate.month, dayDate.day);
      processedData[mapKeyDate] = {
        'protein': 0.0,
        'carbs': 0.0,
        'fat': 0.0,
        'fiber': 0.0,
        'calories': 0.0,
      };
    }

    for (final meal in meals) {
      final mealDate = DateTime(
        meal.timestamp.year,
        meal.timestamp.month,
        meal.timestamp.day,
      );
      if (processedData.containsKey(mealDate)) {
        processedData[mealDate]!['protein'] =
            (processedData[mealDate]!['protein'] ?? 0.0) + meal.protein;
        processedData[mealDate]!['carbs'] =
            (processedData[mealDate]!['carbs'] ?? 0.0) + meal.carbs;
        processedData[mealDate]!['fat'] =
            (processedData[mealDate]!['fat'] ?? 0.0) + meal.fat;
        processedData[mealDate]!['fiber'] =
            (processedData[mealDate]!['fiber'] ?? 0.0) + meal.fiber;
        processedData[mealDate]!['calories'] =
            (processedData[mealDate]!['calories'] ?? 0.0) + meal.calories;
      }
    }
    return processedData;
  }

  double _getMaxY(Map<DateTime, Map<String, double>> dailyData, double goal) {
    double max = goal;
    for (final data in dailyData.values) {
      final dailyCalories = data['calories']!;
      if (dailyCalories > max) max = dailyCalories;
    }
    return max == 0 ? 100 : max * 1.2;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return StreamBuilder<List<MealInfo>>(
      stream: DatabaseService.databaseInterface.watchAllMealsForLast7Days(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: AppLoader());
        }
        final meals = snapshot.data ?? [];
        final hasData = meals.isNotEmpty;

        if (!hasData) {
          return const _EmptyHistoryGraphic();
        }

        final dailyData = _processMealsData(meals);
        final sortedDates = dailyData.keys.toList()..sort();

        return Column(
          children: [
            StreamBuilder<int?>(
              stream: DatabaseService.databaseInterface.watchDailyCalorieGoal(),
              builder: (context, goalSnapshot) {
                final dailyGoal = goalSnapshot.data?.toDouble() ?? 2000.0;

                return SizedBox(
                  height: 250,
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      maxY: _getMaxY(dailyData, dailyGoal),
                      extraLinesData: ExtraLinesData(
                        horizontalLines: [
                          HorizontalLine(
                            y: dailyGoal,
                            color: colorScheme.primary.withValues(alpha: 0.5),
                            strokeWidth: 2,
                            dashArray: [5, 5],
                            label: HorizontalLineLabel(
                              show: true,
                              alignment: Alignment.topRight,
                              padding: const EdgeInsets.only(
                                right: 5,
                                bottom: 5,
                              ),
                              style: textTheme.labelSmall?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                              labelResolver:
                                  (line) =>
                                      '${dailyGoal.toInt()}${t.home.dailyGoal.kcal}',
                            ),
                          ),
                        ],
                      ),
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                          getTooltipColor:
                              (group) => colorScheme.surfaceContainerHighest,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              '${rod.toY.toInt()}${t.home.dailyGoal.kcal}',
                              textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              final index = value.toInt();
                              if (index >= 0 && index < sortedDates.length) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    DateFormat('E').format(sortedDates[index]),
                                    style: textTheme.labelSmall,
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                            reservedSize: 30,
                          ),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      gridData: const FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      barGroups: List.generate(sortedDates.length, (index) {
                        final dayDate = sortedDates[index];
                        final data = dailyData[dayDate]!;
                        final dailyCalories = data['calories']!;
                        final totalGrams =
                            data['carbs']! +
                            data['protein']! +
                            data['fat']! +
                            data['fiber']!;

                        if (totalGrams == 0) {
                          return BarChartGroupData(
                            x: index,
                            barRods: [BarChartRodData(toY: 0, width: 16)],
                          );
                        }

                        final carbHeight =
                            (data['carbs']! / totalGrams) * dailyCalories;
                        final proteinHeight =
                            (data['protein']! / totalGrams) * dailyCalories;
                        final fatHeight =
                            (data['fat']! / totalGrams) * dailyCalories;
                        final fiberHeight =
                            (data['fiber']! / totalGrams) * dailyCalories;

                        return BarChartGroupData(
                          x: index,
                          barRods: [
                            BarChartRodData(
                              toY: dailyCalories,
                              width: 16,
                              borderRadius: BorderRadius.circular(4),
                              rodStackItems: [
                                BarChartRodStackItem(
                                  0,
                                  carbHeight,
                                  carbsIconColor,
                                ),
                                BarChartRodStackItem(
                                  carbHeight,
                                  carbHeight + proteinHeight,
                                  proteinIconColor,
                                ),
                                BarChartRodStackItem(
                                  carbHeight + proteinHeight,
                                  carbHeight + proteinHeight + fatHeight,
                                  fatIconColor,
                                ),
                                BarChartRodStackItem(
                                  carbHeight + proteinHeight + fatHeight,
                                  carbHeight +
                                      proteinHeight +
                                      fatHeight +
                                      fiberHeight,
                                  fiberIconColor,
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            const MacroLegend(),
          ],
        );
      },
    );
  }
}

class _EmptyHistoryGraphic extends StatelessWidget {
  const _EmptyHistoryGraphic();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    // Greyed out color for empty chart
    final greyedOutColor = colorScheme.onSurface.withValues(alpha: 0.2);

    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Greyed out bar chart
          SizedBox(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(7, (index) {
                // Varying heights for visual interest
                final heights = [0.3, 0.5, 0.4, 0.6, 0.35, 0.45, 0.55];
                final height = heights[index] * 70;
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.5),
                  width: 10,
                  height: height,
                  decoration: BoxDecoration(
                    color: greyedOutColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            t.home.intakeHistory.noHistoryYet,
            style: textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            t.home.intakeHistory.startLogging,
            textAlign: TextAlign.center,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
