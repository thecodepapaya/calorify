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
  late _MacroTotals _totals;

  @override
  void initState() {
    super.initState();
    _totals = _MacroTotals.fromMeals(widget.meals);
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
    final nextTotals = _MacroTotals.fromMeals(widget.meals);
    final totalsChanged = nextTotals != _totals;
    _totals = nextTotals;
    if (totalsChanged) {
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
    final translations = Translations.of(context);

    return Semantics(
      label:
          _totals.total == 0
              ? 'Macros: no data yet'
              : 'Macros: ${_totals.protein} g protein, ${_totals.carbs} g carbs, ${_totals.fat} g fat, ${_totals.fiber} g fiber',
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.chartPie,
                  size: 16,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    translations.home.intakeProgress.title,
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
            if (_totals.total == 0)
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
                    translations.home.intakeHistory.noHistoryYet,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 9,
                    ),
                  ),
                ],
              )
            else ...[
              Stack(
                alignment: Alignment.center,
                children: [
                  ExcludeSemantics(
                    child: SizedBox(
                      height: 90,
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder:
                            (context, _) => PieChart(
                              PieChartData(
                                sectionsSpace: 2,
                                centerSpaceRadius: 28,
                                sections: [
                                  _section(
                                    _totals.protein.toDouble(),
                                    colorScheme.proteinIconColor,
                                    _animation.value,
                                  ),
                                  _section(
                                    _totals.carbs.toDouble(),
                                    colorScheme.carbsIconColor,
                                    _animation.value,
                                  ),
                                  _section(
                                    _totals.fat.toDouble(),
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
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.6,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${_totals.total}g',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _MacroBadge(
                    icon: LucideIcons.dumbbell,
                    color: colorScheme.proteinIconColor,
                    label: translations.home.dailySummary.protein,
                    value: _totals.protein,
                  ),
                  _MacroBadge(
                    icon: LucideIcons.wheat,
                    color: colorScheme.carbsIconColor,
                    label: translations.home.dailySummary.carbs,
                    value: _totals.carbs,
                  ),
                  _MacroBadge(
                    icon: LucideIcons.droplet,
                    color: colorScheme.fatIconColor,
                    label: translations.home.dailySummary.fat,
                    value: _totals.fat,
                  ),
                  if (_totals.fiber > 0)
                    _MacroBadge(
                      icon: LucideIcons.leaf,
                      color: colorScheme.fiberIconColor,
                      label: translations.home.dailySummary.fiber,
                      value: _totals.fiber,
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
      radius: 16,
      showTitle: false,
    );
  }
}

class _MacroTotals {
  const _MacroTotals({
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
  });

  factory _MacroTotals.fromMeals(List<LoggedMeal> meals) {
    var protein = 0;
    var carbs = 0;
    var fat = 0;
    var fiber = 0;

    for (final meal in meals) {
      protein += meal.meal.macros.protein;
      carbs += meal.meal.macros.carbs;
      fat += meal.meal.macros.fat;
      fiber += meal.meal.macros.fiber;
    }

    return _MacroTotals(protein: protein, carbs: carbs, fat: fat, fiber: fiber);
  }

  final int protein;
  final int carbs;
  final int fat;
  final int fiber;

  int get total => protein + carbs + fat;

  @override
  bool operator ==(Object other) {
    return other is _MacroTotals &&
        other.protein == protein &&
        other.carbs == carbs &&
        other.fat == fat &&
        other.fiber == fiber;
  }

  @override
  int get hashCode => Object.hash(protein, carbs, fat, fiber);
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
    final colorScheme = theme.colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.14),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 12, color: color),
        ),
        const SizedBox(height: 4),
        Text(
          '$value',
          style: theme.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 9,
            color: colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
            fontSize: 7,
          ),
        ),
      ],
    );
  }
}
