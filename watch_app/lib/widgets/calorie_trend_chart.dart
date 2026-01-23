import 'package:models/models.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:specs/specs.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'dart:math' as math;

class CalorieTrendChart extends StatefulWidget {
  final List<MealInfo> meals;

  const CalorieTrendChart({super.key, required this.meals});

  @override
  State<CalorieTrendChart> createState() => _CalorieTrendChartState();
}

class _CalorieTrendChartState extends State<CalorieTrendChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  Map<String, int> get _hourlyCalories {
    final Map<String, int> hourly = {};
    for (final meal in widget.meals) {
      final hour = meal.timestamp.hour;
      final key = hour.toString().padLeft(2, '0');
      hourly[key] = (hourly[key] ?? 0) + meal.calories;
    }
    return hourly;
  }

  List<FlSpot> get _spots {
    final hourly = _hourlyCalories;
    final spots = <FlSpot>[];
    for (int i = 0; i < 24; i++) {
      final hour = i.toString().padLeft(2, '0');
      final calories = hourly[hour] ?? 0;
      spots.add(FlSpot(i.toDouble(), calories.toDouble()));
    }
    return spots;
  }

  double get _maxCalories {
    if (_spots.isEmpty) return 100;
    final max = _spots.map((spot) => spot.y).reduce(math.max);
    return max > 0 ? max * 1.3 : 100;
  }

  int get _peakHour {
    if (_spots.isEmpty) return -1;
    double maxCal = 0;
    int peak = 0;
    for (int i = 0; i < _spots.length; i++) {
      if (_spots[i].y > maxCal) {
        maxCal = _spots[i].y;
        peak = i;
      }
    }
    return peak;
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    );
    _controller.forward();
  }

  @override
  void didUpdateWidget(CalorieTrendChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.meals.length != widget.meals.length) {
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (widget.meals.isEmpty) {
      return const SizedBox.shrink();
    }

    return Semantics(
      label: 'Calorie trend throughout the day',
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with icon and info
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.trendingUp,
                  size: 18,
                  color: colorScheme.calorieIconColor,
                ),
                const SizedBox(width: 6),
                Text(
                  'Today\'s Trend',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                    color: colorScheme.onSurface,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 6),
                Icon(
                  LucideIcons.clock,
                  size: 12,
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Chart with stats
            Column(
              children: [
                ExcludeSemantics(
                  child: SizedBox(
                    height: 70,
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return LineChart(
                          LineChartData(
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: false,
                              horizontalInterval: _maxCalories / 3,
                              getDrawingHorizontalLine: (value) {
                                return FlLine(
                                  color: colorScheme.surfaceContainerHighest
                                      .withValues(alpha: 0.3),
                                  strokeWidth: 1,
                                );
                              },
                            ),
                            titlesData: FlTitlesData(
                              show: true,
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 22,
                                  interval: 6,
                                  getTitlesWidget: (value, meta) {
                                    final hour = value.toInt();
                                    if (hour % 6 == 0 && hour < 24) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            hour == 0
                                                ? LucideIcons.sunrise
                                                : hour == 12
                                                ? LucideIcons.sun
                                                : hour == 18
                                                ? LucideIcons.sunset
                                                : LucideIcons.clock,
                                            size: 8,
                                            color: colorScheme.onSurfaceVariant
                                                .withValues(alpha: 0.5),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            '${hour}h',
                                            style: theme.textTheme.labelSmall
                                                ?.copyWith(
                                                  color:
                                                      colorScheme
                                                          .onSurfaceVariant,
                                                  fontSize: 7,
                                                ),
                                          ),
                                        ],
                                      );
                                    }
                                    return const SizedBox();
                                  },
                                ),
                              ),
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            lineBarsData: [
                              LineChartBarData(
                                spots: _spots,
                                isCurved: true,
                                color: colorScheme.calorieIconColor,
                                barWidth: 3,
                                dotData: FlDotData(
                                  show: true,
                                  getDotPainter: (
                                    spot,
                                    percent,
                                    barData,
                                    index,
                                  ) {
                                    return FlDotCirclePainter(
                                      radius: 3,
                                      color: colorScheme.calorieIconColor,
                                      strokeWidth: 2,
                                      strokeColor: colorScheme.surface,
                                    );
                                  },
                                ),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: colorScheme.calorieIconColor
                                      .withValues(alpha: 0.15),
                                ),
                              ),
                            ],
                            minY: 0,
                            maxY: _maxCalories,
                            lineTouchData: LineTouchData(
                              enabled: true,
                              touchTooltipData: LineTouchTooltipData(
                                getTooltipColor: (_) => colorScheme.surface,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Stats row
                if (_peakHour >= 0) ...[
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LucideIcons.zap,
                        size: 10,
                        color: colorScheme.calorieIconColor.withValues(
                          alpha: 0.7,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Peak: $_peakHour:00',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontSize: 8,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Icon(
                        LucideIcons.activity,
                        size: 10,
                        color: colorScheme.calorieIconColor.withValues(
                          alpha: 0.7,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${widget.meals.length} meals',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
