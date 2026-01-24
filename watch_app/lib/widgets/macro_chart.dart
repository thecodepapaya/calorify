import 'package:specs/specs.dart';
import 'package:models/models.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';

class MacroChart extends StatefulWidget {
  final List<MealInfo> meals;

  const MacroChart({super.key, required this.meals});

  @override
  State<MacroChart> createState() => _MacroChartState();
}

class _MacroChartState extends State<MacroChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  int get _totalProtein =>
      widget.meals.fold(0, (sum, meal) => sum + meal.protein);
  int get _totalCarbs => widget.meals.fold(0, (sum, meal) => sum + meal.carbs);
  int get _totalFat => widget.meals.fold(0, (sum, meal) => sum + meal.fat);
  int get _total => _totalProtein + _totalCarbs + _totalFat;

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
  void didUpdateWidget(MacroChart oldWidget) {
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

  String _accessibilityLabel(BuildContext context) {
    final t = Translations.of(context);
    if (_total == 0) {
      return 'Macros: ${t.home.intakeHistory.noHistoryYet}';
    }
    return 'Macros: $_totalProtein grams ${t.home.dailySummary.protein.toLowerCase()}, $_totalCarbs grams ${t.home.dailySummary.carbs.toLowerCase()}, $_totalFat grams ${t.home.dailySummary.fat.toLowerCase()}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = Translations.of(context);

    return Semantics(
      label: _accessibilityLabel(context),
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.elasticOut,
                  builder: (context, value, child) {
                    return Transform.scale(scale: value, child: child);
                  },
                  child: Semantics(
                    label: 'Macros chart icon',
                    excludeSemantics: true,
                    child: Icon(
                      LucideIcons.chartPie,
                      size: 16,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    t.home.intakeProgress.title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                      color: colorScheme.onSurface,
                      fontSize: 10,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  LucideIcons.info,
                  size: 10,
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (_total == 0)
              Semantics(
                label: t.home.intakeHistory.noHistoryYet,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.chartPie,
                      size: 28,
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.4,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      t.home.intakeHistory.noHistoryYet,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontSize: 9,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      t.home.intakeHistory.startLogging.split('\n').first,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.6,
                        ),
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              )
            else ...[
              // Pie chart with total
              Stack(
                alignment: Alignment.center,
                children: [
                  ExcludeSemantics(
                    child: SizedBox(
                      height: 100,
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return PieChart(
                            PieChartData(
                              sectionsSpace: 2,
                              centerSpaceRadius: 30,
                              sections: [
                                _buildSection(
                                  _totalProtein.toDouble(),
                                  proteinIconColor,
                                  _totalProtein,
                                  _animation.value,
                                ),
                                _buildSection(
                                  _totalCarbs.toDouble(),
                                  carbsIconColor,
                                  _totalCarbs,
                                  _animation.value,
                                ),
                                _buildSection(
                                  _totalFat.toDouble(),
                                  fatIconColor,
                                  _totalFat,
                                  _animation.value,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LucideIcons.scale,
                        size: 14,
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.6,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${_total}g',
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        t.home.intakeProgress.current.toLowerCase(),
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontSize: 7,
                          color: colorScheme.onSurfaceVariant.withValues(
                            alpha: 0.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Detailed legend with icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _MacroLegend(
                    color: proteinIconColor,
                    label: t.home.dailySummary.protein,
                    shortLabel: 'P',
                    value: _totalProtein,
                    icon: LucideIcons.dumbbell,
                    animation: _animation,
                    delay: 0.0,
                  ),
                  _MacroLegend(
                    color: carbsIconColor,
                    label: t.home.dailySummary.carbs,
                    shortLabel: 'C',
                    value: _totalCarbs,
                    icon: LucideIcons.wheat,
                    animation: _animation,
                    delay: 0.2,
                  ),
                  _MacroLegend(
                    color: fatIconColor,
                    label: t.home.dailySummary.fat,
                    shortLabel: 'F',
                    value: _totalFat,
                    icon: LucideIcons.droplet,
                    animation: _animation,
                    delay: 0.4,
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  PieChartSectionData _buildSection(
    double value,
    Color color,
    int displayValue,
    double animationValue,
  ) {
    final animatedValue = value * animationValue;

    // Get the stroked text style for better readability
    final strokedTextStyle = BorderText.getStrokedTextStyle(
      context,
      baseStyle: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
    );

    return PieChartSectionData(
      value: animatedValue,
      color: color,
      title: animatedValue > 3 ? '${displayValue}g' : '',
      radius: 40 * animationValue,
      titleStyle: strokedTextStyle,
    );
  }
}

class _MacroLegend extends StatelessWidget {
  final Color color;
  final String label;
  final String shortLabel;
  final int value;
  final IconData icon;
  final Animation<double> animation;
  final double delay;

  const _MacroLegend({
    required this.color,
    required this.label,
    required this.shortLabel,
    required this.value,
    required this.icon,
    required this.animation,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      label: '$label: $value grams',
      child: FadeTransition(
        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: animation,
            curve: Interval(delay, 1.0, curve: Curves.easeOut),
          ),
        ),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.2),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Interval(delay, 1.0, curve: Curves.easeOutBack),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: 12, color: color),
                  const SizedBox(width: 3),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                shortLabel,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                  fontSize: 8,
                ),
              ),
              const SizedBox(height: 2),
              TweenAnimationBuilder<int>(
                tween: IntTween(begin: 0, end: value),
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeOutCubic,
                builder: (context, animatedValue, child) {
                  return Text(
                    '${animatedValue}g',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: color,
                      fontSize: 10,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
