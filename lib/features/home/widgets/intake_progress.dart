import 'dart:async';

import 'package:calorify/core/constants/styles.dart';
// Removed duplicate: import 'package:calorify/core/constants/styles.dart'; // Added back for globalMargin, globalRadius
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart'; // Though MealInfoTableData might be used directly
import 'package:drift/drift.dart' as db;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart'; // For Colors, ThemeData, etc.
import 'package:intl/intl.dart'; // For DateFormat
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

  // Color constants for chart lines
  static const Color caloriesColor = Colors.red;
  static const Color proteinColor = Colors.blue;
  static const Color carbsColor = Colors.green;
  static const Color fatColor = Colors.orange;
  static const Color fiberColor = Colors.purple;

  List<LineChartBarData> _prepareChartData() {
    if (dailyNutrientData.isEmpty) {
      return [];
    }

    final List<DateTime> dates = dailyNutrientData.keys.toList()..sort();
    if (dates.isEmpty) { // Should not happen if dailyNutrientData is not empty, but good check
      return [];
    }

    List<LineChartBarData> chartBars = [];
    final Map<String, Color> nutrientColors = {
      'calories': caloriesColor,
      'protein': proteinColor,
      'carbs': carbsColor,
      'fat': fatColor,
      'fiber': fiberColor,
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
          barWidth: 3,
          dotData: FlDotData(show: false),
          // belowBarData: BarAreaData(show: false), // Optional: if you want to fill area below line
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
      // Use days: 6 to include today, resulting in 7 distinct days.
      final sevenDaysAgo = now.subtract(const Duration(days: 6));
      final startOfSevenDaysAgo = DateTime(sevenDaysAgo.year, sevenDaysAgo.month, sevenDaysAgo.day);

      final List<MealInfoTableData> mealsFromDb = await (appDb.select(appDb.mealInfoTable)
            ..where((tbl) => tbl.timestamp.isBiggerOrEqualValue(startOfSevenDaysAgo)))
          .get();

      Map<DateTime, Map<String, double>> processedData = {};

      // Initialize all 7 days
      for (int i = 0; i < 7; i++) {
        final dayDate = startOfSevenDaysAgo.add(Duration(days: i));
        // Ensure only date part is used for map key by reconstructing DateTime
        final mapKeyDate = DateTime(dayDate.year, dayDate.month, dayDate.day);
        processedData[mapKeyDate] = {
          'calories': 0.0,
          'protein': 0.0,
          'carbs': 0.0,
          'fat': 0.0,
          'fiber': 0.0,
        };
      }
      
      // Populate with data from meals
      for (final meal in mealsFromDb) {
        final mealDate = DateTime(meal.timestamp.year, meal.timestamp.month, meal.timestamp.day);
        if (processedData.containsKey(mealDate)) {
          processedData[mealDate]!['calories'] = (processedData[mealDate]!['calories'] ?? 0.0) + meal.calories;
          processedData[mealDate]!['protein'] = (processedData[mealDate]!['protein'] ?? 0.0) + meal.protein;
          processedData[mealDate]!['carbs'] = (processedData[mealDate]!['carbs'] ?? 0.0) + meal.carbs;
          processedData[mealDate]!['fat'] = (processedData[mealDate]!['fat'] ?? 0.0) + meal.fat;
          processedData[mealDate]!['fiber'] = (processedData[mealDate]!['fiber'] ?? 0.0) + meal.fiber;
        }
      }
      
      dailyNutrientData = processedData;
      setState(() {}); // Update UI with fetched data

    } catch (e) {
      setState(() {
        error = e.toString();
      });
    } finally {
      setState(() {
        isLoading = false;
      });
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
      content = Center(child: Text('Error: $error', style: TextStyle(color: Colors.red)));
    } else if (dailyNutrientData.isEmpty) {
      content = Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'No data available for the last 7 days. Log some meals to see your progress!',
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
        ),
      );
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
                        // Using 'E' for day of the week, e.g., "Mon"
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(DateFormat('E').format(date), style: textTheme.labelSmall),
                        );
                      }
                      return Text('');
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40, // Adjust as needed
                    getTitlesWidget: (double value, TitleMeta meta) {
                      // You might want to format this based on the range of values
                      return Text(value.toInt().toString(), style: textTheme.labelSmall);
                    },
                  ),
                ),
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              gridData: FlGridData(show: true),
              borderData: FlBorderData(show: true, border: Border.all(color: colorScheme.outline)),
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
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
          SizedBox(height: 16), // Added some space below title
          content, // This will be the chart or message
        ],
      ),
    );
  }
}
