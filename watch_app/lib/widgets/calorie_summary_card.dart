import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:specs/specs.dart';

class CalorieSummaryCard extends StatefulWidget {
  const CalorieSummaryCard({
    super.key,
    required this.totalCalories,
    required this.goal,
  });

  final int totalCalories;
  final int goal;

  @override
  State<CalorieSummaryCard> createState() => _CalorieSummaryCardState();
}

class _CalorieSummaryCardState extends State<CalorieSummaryCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _rebuildAnimations(0.0);
    _controller.forward();
  }

  @override
  void didUpdateWidget(CalorieSummaryCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.totalCalories != widget.totalCalories ||
        oldWidget.goal != widget.goal) {
      final from = _progressAnimation.value;
      _rebuildAnimations(from);
      _controller
        ..reset()
        ..forward();
    }
  }

  void _rebuildAnimations(double from) {
    final target = widget.goal > 0
        ? (widget.totalCalories / widget.goal).clamp(0.0, 1.0)
        : 0.0;
    _progressAnimation = Tween<double>(begin: from, end: target).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );
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
    final isOverGoal = widget.totalCalories > widget.goal;
    final percentage = widget.goal > 0
        ? ((widget.totalCalories / widget.goal) * 100).round()
        : 0;
    final remaining = (widget.goal - widget.totalCalories).clamp(0, widget.goal);
    final activeColor =
        isOverGoal ? colorScheme.error : colorScheme.calorieIconColor;

    return Semantics(
      label:
          'Calorie summary. ${widget.totalCalories} calories consumed out of ${widget.goal} goal. $percentage% complete.',
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(LucideIcons.flame, size: 16, color: activeColor),
                const SizedBox(width: 6),
                Text(
                  'Calories',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                    color: colorScheme.onSurface,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Large calorie number
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '${widget.totalCalories}',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 28,
                    height: 1.0,
                    color: activeColor,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  'kcal',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // Goal & remaining
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.target,
                  size: 10,
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
                const SizedBox(width: 4),
                Text(
                  '${t.home.dailyGoal.goal}: ${widget.goal}',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: 9,
                  ),
                ),
                if (remaining > 0) ...[
                  const SizedBox(width: 8),
                  Icon(
                    LucideIcons.arrowDown,
                    size: 10,
                    color: colorScheme.primary.withValues(alpha: 0.7),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '$remaining left',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 10),
            // Circular progress
            Stack(
              alignment: Alignment.center,
              children: [
                Semantics(
                  label: 'Progress: $percentage%',
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: AnimatedBuilder(
                      animation: _progressAnimation,
                      builder: (context, _) => CircularProgressIndicator(
                        value: math.min(_progressAnimation.value, 1.0),
                        strokeWidth: 7,
                        backgroundColor: colorScheme.surfaceContainerHighest,
                        valueColor: AlwaysStoppedAnimation<Color>(activeColor),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '$percentage%',
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Icon(
                      isOverGoal
                          ? Icons.warning_amber_rounded
                          : LucideIcons.check,
                      size: 12,
                      color: isOverGoal
                          ? colorScheme.error
                          : colorScheme.primary.withValues(alpha: 0.7),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
