import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';

class MealListItem extends StatefulWidget {
  final MealInfo meal;
  final int index;

  const MealListItem({super.key, required this.meal, this.index = 0});

  @override
  State<MealListItem> createState() => _MealListItemState();
}

class _MealListItemState extends State<MealListItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    final delay = widget.index * 0.1;
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(delay, 0.8 + delay, curve: Curves.easeOut),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-0.15, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(delay, 0.8 + delay, curve: Curves.easeOutCubic),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(delay, 0.8 + delay, curve: Curves.easeOutBack),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatTimestamp(DateTime? dateTime) {
    if (dateTime == null) return '--:--';
    return DateFormat('HH:mm').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final mealName = widget.meal.mealName;
    final calories = widget.meal.calories;
    final timestamp = _formatTimestamp(widget.meal.timestampDateTime);
    final protein = widget.meal.protein;
    final carbs = widget.meal.carbs;
    final fat = widget.meal.fat;

    return Semantics(
      label: '$mealName, $calories calories, logged at $timestamp',
      button: false,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: GestureDetector(
              onTapDown: (_) {
                setState(() => _isPressed = true);
                HapticFeedback.lightImpact();
              },
              onTapUp: (_) => setState(() => _isPressed = false),
              onTapCancel: () => setState(() => _isPressed = false),
              child: Transform.scale(
                scale: _isPressed ? 0.98 : 1.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Meal icon
                      TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.elasticOut,
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: Transform.rotate(
                              angle: (1 - value) * math.pi * 0.25,
                              child: child,
                            ),
                          );
                        },
                        child: Semantics(
                          label: 'Meal icon',
                          excludeSemantics: true,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: colorScheme.primaryContainer.withValues(
                                alpha: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              LucideIcons.utensilsCrossed,
                              size: 14,
                              color: colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Meal details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Meal name
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    mealName,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.1,
                                      color: colorScheme.onSurface,
                                      fontSize: 11,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Icon(
                                  LucideIcons.clock,
                                  size: 10,
                                  color: colorScheme.onSurfaceVariant
                                      .withValues(alpha: 0.6),
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  timestamp,
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                    fontSize: 8,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            // Macros row
                            Row(
                              children: [
                                _MacroBadge(
                                  icon: LucideIcons.dumbbell,
                                  value: protein,
                                  color: proteinIconColor,
                                  label: 'P',
                                ),
                                const SizedBox(width: 6),
                                _MacroBadge(
                                  icon: LucideIcons.wheat,
                                  value: carbs,
                                  color: carbsIconColor,
                                  label: 'C',
                                ),
                                const SizedBox(width: 6),
                                _MacroBadge(
                                  icon: LucideIcons.droplet,
                                  value: fat,
                                  color: fatIconColor,
                                  label: 'F',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Calories badge
                      Semantics(
                        label: '$calories calories',
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              LucideIcons.flame,
                              size: 14,
                              color: calorieIconColor,
                            ),
                            const SizedBox(height: 2),
                            TweenAnimationBuilder<int>(
                              tween: IntTween(begin: 0, end: calories),
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.easeOutCubic,
                              builder: (context, animatedValue, child) {
                                return Text(
                                  '$animatedValue',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: calorieIconColor,
                                    fontSize: 11,
                                  ),
                                );
                              },
                            ),
                            Text(
                              'kcal',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: calorieIconColor.withValues(alpha: 0.7),
                                fontSize: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MacroBadge extends StatelessWidget {
  final IconData icon;
  final int value;
  final Color color;
  final String label;

  const _MacroBadge({
    required this.icon,
    required this.value,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 9, color: color.withValues(alpha: 0.8)),
        const SizedBox(width: 2),
        Text(
          '$value',
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: color,
            fontSize: 9,
          ),
        ),
        Text(
          'g',
          style: theme.textTheme.labelSmall?.copyWith(
            color: color.withValues(alpha: 0.7),
            fontSize: 7,
          ),
        ),
      ],
    );
  }
}
