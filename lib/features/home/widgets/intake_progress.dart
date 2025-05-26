import 'dart:async';

import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart' as db;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IntakeProgress extends StatefulWidget {
  const IntakeProgress({super.key});

  @override
  State<IntakeProgress> createState() => _IntakeProgressState();
}

class _IntakeProgressState extends State<IntakeProgress> {
  bool isLoading = false;
  String? error;
  Map<DateTime, Map<String, double>> dailyNutrientData = {};

  @override
  void initState() {
    super.initState();
    _fetchWeeklyData();
  }

  List<LineChartBarData> _prepareChartData() {
    if (dailyNutrientData.isEmpty) {
      return [];
    }

    final List<DateTime> dates = dailyNutrientData.keys.toList()..sort();
    if (dates.isEmpty) {
      return [];
    }

    List<LineChartBarData> chartBars = [];
    final Map<String, Color> nutrientColors = {
      'calories': calorieIconColor,
      'protein': proteinIconColor,
      'carbs': carbsIconColor,
      'fat': fatIconColor,
      'fiber': fiberIconColor,
    };

    nutrientColors.forEach((nutrientKey, color) {
      List<FlSpot> spots = [];
      for (int i = 0; i < dates.length; i++) {
        final date = dates[i];
        final value = dailyNutrientData[date]![nutrientKey] ?? 0.0;
        spots.add(FlSpot(i.toDouble(), value));
      }

      chartBars.add(
        LineChartBarData(
          spots: spots,
          color: color,
          isCurved: true,
          preventCurveOverShooting: true,
          barWidth: 3,
          dotData: FlDotData(show: false),
        ),
      );
    });

    return chartBars;
  }

  Future<void> _fetchWeeklyData() async {
    setState(() {
      isLoading = true;
      error = null;
    });

    try {
      final now = DateTime.now();

      final sevenDaysAgo = now.subtract(const Duration(days: 6));
      final startOfSevenDaysAgo = DateTime(
        sevenDaysAgo.year,
        sevenDaysAgo.month,
        sevenDaysAgo.day,
      );

      final List<MealInfoTableData> mealsFromDb =
          await (appDb.select(appDb.mealInfoTable)..where(
            (tbl) => tbl.timestamp.isBiggerOrEqualValue(startOfSevenDaysAgo),
          )).get();

      if (mealsFromDb.isEmpty) return;

      Map<DateTime, Map<String, double>> processedData = {};

      for (int i = 0; i < 7; i++) {
        final dayDate = startOfSevenDaysAgo.add(Duration(days: i));

        final mapKeyDate = DateTime(dayDate.year, dayDate.month, dayDate.day);
        processedData[mapKeyDate] = {
          'calories': 0.0,
          'protein': 0.0,
          'carbs': 0.0,
          'fat': 0.0,
          'fiber': 0.0,
        };
      }

      for (final meal in mealsFromDb) {
        final mealDate = DateTime(
          meal.timestamp.year,
          meal.timestamp.month,
          meal.timestamp.day,
        );
        if (processedData.containsKey(mealDate)) {
          processedData[mealDate]!['calories'] =
              (processedData[mealDate]!['calories'] ?? 0.0) + meal.calories;
          processedData[mealDate]!['protein'] =
              (processedData[mealDate]!['protein'] ?? 0.0) + meal.protein;
          processedData[mealDate]!['carbs'] =
              (processedData[mealDate]!['carbs'] ?? 0.0) + meal.carbs;
          processedData[mealDate]!['fat'] =
              (processedData[mealDate]!['fat'] ?? 0.0) + meal.fat;
          processedData[mealDate]!['fiber'] =
              (processedData[mealDate]!['fiber'] ?? 0.0) + meal.fiber;
        }
      }

      dailyNutrientData = processedData;
    } catch (e) {
      setState(() => error = e.toString());
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    Widget content;

    if (isLoading) {
      content = Center(child: CircularProgressIndicator());
    } else if (error != null) {
      content = Center(
        child: Text('Error: $error', style: TextStyle(color: Colors.red)),
      );
    } else if (dailyNutrientData.isEmpty) {
      content = _emptyView;
    } else {
      final List<LineChartBarData> lineBarsData = _prepareChartData();
      if (lineBarsData.isEmpty) {
        content = Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'No chart data to display. Log some meals to see your progress!',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
          ),
        );
      } else {
        final sortedDates = dailyNutrientData.keys.toList()..sort();
        content = SizedBox(
          height: 300,
          child: LineChart(
            LineChartData(
              lineBarsData: lineBarsData,
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    interval: 1,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      final index = value.toInt();
                      if (index >= 0 && index < sortedDates.length) {
                        final date = sortedDates[index];

                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            DateFormat('E').format(date),
                            style: textTheme.labelSmall,
                          ),
                        );
                      }
                      return Text('');
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return Text(
                        value.toInt().toString(),
                        style: textTheme.labelSmall,
                      );
                    },
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: FlGridData(show: true),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: colorScheme.outline),
              ),
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  getTooltipColor:
                      (touchedSpot) => Colors.blueGrey.withOpacity(0.8),
                ),
              ),
            ),
          ),
        );
      }
    }

    return Container(
      margin: globalMargin,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.trendingUp, color: colorScheme.primary),
              SizedBox(width: 8),
              Text(
                'Daily Intake Progress',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          content,
        ],
      ),
    );
  }

  Widget get _emptyView {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              LucideIcons.target,
              size: 48,
              color: colorScheme.primary.withValues(alpha: 0.7),
            ),
            SizedBox(height: 20),
            Text(
              'Ready To Map Your Munchies?',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Log your first meal of the week to see your progress charted '
              'here. Let the delicious data begin!',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
