import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';

class MacroChart extends StatefulWidget {
  const MacroChart({super.key, required this.meals});

  final List<LoggedMeal> meals;

  @override
  State<MacroChart> createState() => _MacroChartState();
}

class _MacroChartState extends State<MacroChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  int get _totalProtein => widget.meals.fold(
        0,
        (sum, m) => sum + m.meal.macros.protein,
      );
  int get _totalCarbs =>
      widget.meals.fold(0, (sum, m) => sum + m.meal.macros.carbs);
  int get _totalFat =>
      widget.meals.fold(0, (sum, m) => sum + m.meal.macros.fat);
  int get _totalFiber =>
      widget.meals.fold(0, (sum, m) => sum + m.meal.macros.fiber);
  int get _total => _totalProtein + _totalCarbs + _totalFat;

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
  void didUpdateWidget(MacroChart oldWidget) {
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
    final t = Translations.of(context);

    return Semantics(
      label: _total == 0
          ? 'Macros: no data yet'
          : 'Macros: $_totalProtein g protein, $_totalCarbs g carbs, $_totalFat g fat, $_totalFiber g fiber',
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(LucideIcons.chartPie, size: 16, color: colorScheme.primary),
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
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (_total == 0)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    LucideIcons.chartPie,
                    size: 28,
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    t.home.intakeHistory.noHistoryYet,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 9,
                    ),
                  ),
                ],
              )
            else ...[
              // Pie chart
              Stack(
                alignment: Alignment.center,
                children: [
                  ExcludeSemantics(
                    child: SizedBox(
                      height: 90,
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context, _) => PieChart(
                          PieChartData(
                            sectionsSpace: 2,
                            centerSpaceRadius: 28,
                            sections: [
                              _section(
                                _totalProtein.toDouble(),
                                colorScheme.proteinIconColor,
                                _animation.value,
                              ),
                              _section(
                                _totalCarbs.toDouble(),
                                colorScheme.carbsIconColor,
                                _animation.value,
                              ),
                              _section(
                                _totalFat.toDouble(),
                                colorScheme.fatIconColor,
                                _animation.value,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LucideIcons.scale,
                        size: 12,
                        color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
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
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Macro legend row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _MacroBadge(
                    icon: LucideIcons.dumbbell,
                    color: colorScheme.proteinIconColor,
                    label: t.home.dailySummary.protein,
                    value: _totalProtein,
                  ),
                  _MacroBadge(
                    icon: LucideIcons.wheat,
                    color: colorScheme.carbsIconColor,
                    label: t.home.dailySummary.carbs,
                    value: _totalCarbs,
                  ),
                  _MacroBadge(
                    icon: LucideIcons.droplet,
                    color: colorScheme.fatIconColor,
                    label: t.home.dailySummary.fat,
                    value: _totalFat,
                  ),
                  if (_totalFiber > 0)
                    _MacroBadge(
                      icon: LucideIcons.leaf,
                      color: colorScheme.fiberIconColor,
                      label: t.home.dailySummary.fiber,
                      value: _totalFiber,
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  PieChartSectionData _section(double value, Color color, double animValue) {
    return PieChartSectionData(
      value: value * animValue,
      color: color,
      title: '',
      radius: 36 * animValue,
    );
  }
}

class _MacroBadge extends StatelessWidget {
  const _MacroBadge({
    required this.icon,
    required this.color,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final Color color;
  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    return Semantics(
      label: '$label: $value ${t.home.dailySummary.grams}',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: color),
          const SizedBox(height: 3),
          Text(
            label.isNotEmpty ? label[0].toUpperCase() : '',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
              fontSize: 8,
            ),
          ),
          const SizedBox(height: 1),
          Text(
            '${value}g',
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
