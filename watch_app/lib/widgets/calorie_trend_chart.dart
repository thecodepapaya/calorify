import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';

class CalorieTrendChart extends StatefulWidget {
  const CalorieTrendChart({super.key, required this.meals});

  final List<LoggedMeal> meals;

  @override
  State<CalorieTrendChart> createState() => _CalorieTrendChartState();
}

class _CalorieTrendChartState extends State<CalorieTrendChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  Map<int, int> get _hourlyCalories {
    final map = <int, int>{};
    for (final m in widget.meals) {
      final h = m.dateTime.hour;
      map[h] = (map[h] ?? 0) + m.meal.macros.calories;
    }
    return map;
  }

  List<FlSpot> get _spots {
    final hourly = _hourlyCalories;
    return List.generate(
      24,
      (i) => FlSpot(i.toDouble(), (hourly[i] ?? 0).toDouble()),
    );
  }

  double get _maxCalories {
    final max = _spots.map((s) => s.y).reduce(math.max);
    return max > 0 ? max * 1.3 : 100;
  }

  int get _peakHour {
    double maxCal = 0;
    int peak = -1;
    for (final s in _spots) {
      if (s.y > maxCal) {
        maxCal = s.y;
        peak = s.x.toInt();
      }
    }
    return peak;
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
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
      _controller
        ..reset()
        ..forward();
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

    if (widget.meals.isEmpty) return const SizedBox.shrink();

    return Semantics(
      label: 'Calorie trend throughout the day',
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.trendingUp,
                  size: 16,
                  color: colorScheme.calorieIconColor,
                ),
                const SizedBox(width: 6),
                Text(
                  "Today's Trend",
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                    color: colorScheme.onSurface,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ExcludeSemantics(
              child: SizedBox(
                height: 70,
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, _) => LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        horizontalInterval: _maxCalories / 3,
                        getDrawingHorizontalLine: (_) => FlLine(
                          color: colorScheme.surfaceContainerHighest
                              .withValues(alpha: 0.3),
                          strokeWidth: 1,
                        ),
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 20,
                            interval: 6,
                            getTitlesWidget: (value, _) {
                              final hour = value.toInt();
                              if (hour % 6 != 0 || hour >= 24) {
                                return const SizedBox.shrink();
                              }
                              return Text(
                                '${hour}h',
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                  fontSize: 7,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: _spots,
                          isCurved: true,
                          color: colorScheme.calorieIconColor,
                          barWidth: 2.5,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, p0, p1, p2) =>
                                FlDotCirclePainter(
                              radius: spot.y > 0 ? 3 : 0,
                              color: colorScheme.calorieIconColor,
                              strokeWidth: 1.5,
                              strokeColor: colorScheme.surface,
                            ),
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            color: colorScheme.calorieIconColor
                                .withValues(alpha: 0.12),
                          ),
                        ),
                      ],
                      minY: 0,
                      maxY: _maxCalories,
                      lineTouchData: const LineTouchData(enabled: false),
                    ),
                  ),
                ),
              ),
            ),
            if (_peakHour >= 0) ...[
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    LucideIcons.zap,
                    size: 10,
                    color: colorScheme.calorieIconColor.withValues(alpha: 0.7),
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
                    color: colorScheme.calorieIconColor.withValues(alpha: 0.7),
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
      ),
    );
  }
}
