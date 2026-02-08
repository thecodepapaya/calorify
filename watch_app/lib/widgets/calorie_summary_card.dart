import 'package:specs/specs.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'dart:math' as math;

class CalorieSummaryCard extends StatefulWidget {
  final int totalCalories;
  final int goal;

  const CalorieSummaryCard({
    super.key,
    required this.totalCalories,
    required this.goal,
  });

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
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    final progress = (widget.totalCalories / widget.goal).clamp(0.0, 1.0);
    _progressAnimation = Tween<double>(begin: 0.0, end: progress).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 1.0, curve: Curves.easeOutCubic),
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );

    _controller.forward();
  }

  @override
  void didUpdateWidget(CalorieSummaryCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.totalCalories != widget.totalCalories ||
        oldWidget.goal != widget.goal) {
      final progress = (widget.totalCalories / widget.goal).clamp(0.0, 1.0);
      _progressAnimation = Tween<double>(
        begin: _progressAnimation.value,
        end: progress,
      ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
      );
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
    final isOverGoal = widget.totalCalories > widget.goal;
    final progress = _progressAnimation.value;
    final percentage = ((widget.totalCalories / widget.goal) * 100).round();
    final remaining = (widget.goal - widget.totalCalories).clamp(
      0,
      widget.goal,
    );

    return Semantics(
      label:
          'Calorie summary. ${widget.totalCalories} calories consumed out of ${widget.goal} goal. $percentage% complete.',
      value: '${widget.totalCalories} / ${widget.goal} calories',
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with icon and label
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.elasticOut,
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: Transform.rotate(
                        angle: (1 - value) * math.pi * 0.5,
                        child: child,
                      ),
                    );
                  },
                  child: Semantics(
                    label: 'Calories icon',
                    excludeSemantics: true,
                    child: Icon(
                      LucideIcons.flame,
                      size: 18,
                      color: colorScheme.calorieIconColor,
                    ),
                  ),
                ),
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
            // Main display: Large number with unit
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                TweenAnimationBuilder<int>(
                  tween: IntTween(begin: 0, end: widget.totalCalories),
                  duration: const Duration(milliseconds: 1200),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return Semantics(
                      label: '$value calories consumed',
                      excludeSemantics: true,
                      child: Text(
                        '$value',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                          height: 1.0,
                          color:
                              isOverGoal
                                  ? colorScheme.error
                                  : colorScheme.calorieIconColor,
                          letterSpacing: -0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
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
            // Goal and remaining info
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
                  const SizedBox(width: 4),
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
            // Circular progress with percentage
            Stack(
              alignment: Alignment.center,
              children: [
                Semantics(
                  label: 'Progress: $percentage%',
                  value: '$percentage%',
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: AnimatedBuilder(
                      animation: _progressAnimation,
                      builder: (context, child) {
                        return CircularProgressIndicator(
                          value: progress > 1.0 ? 1.0 : progress,
                          strokeWidth: 7,
                          backgroundColor: colorScheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            isOverGoal
                                ? colorScheme.error
                                : colorScheme.calorieIconColor,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedBuilder(
                      animation: _progressAnimation,
                      builder: (context, child) {
                        return Text(
                          '$percentage%',
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color:
                                isOverGoal
                                    ? colorScheme.error
                                    : colorScheme.calorieIconColor,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 2),
                    Icon(
                      isOverGoal
                          ? Icons.warning_amber_rounded
                          : LucideIcons.check,
                      size: 12,
                      color:
                          isOverGoal
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
