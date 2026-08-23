import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';

class MealListItem extends StatefulWidget {
  const MealListItem({
    super.key,
    required this.meal,
    this.index = 0,
    this.onDelete,
  });

  final LoggedMeal meal;
  final int index;

  /// Called when the user confirms deletion. If null, deletion UI is hidden.
  final VoidCallback? onDelete;

  @override
  State<MealListItem> createState() => _MealListItemState();
}

class _MealListItemState extends State<MealListItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatTime(DateTime? dt) =>
      dt != null ? DateFormat('HH:mm').format(dt) : '--:--';

  void _showDeleteConfirm(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    unawaited(HapticFeedback.mediumImpact());
    showDialog<bool>(
      context: context,
      builder:
          (_) => AlertDialog(
            backgroundColor: colorScheme.surface,
            shape: RoundedSuperellipseBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(LucideIcons.trash2, size: 28, color: colorScheme.error),
                const SizedBox(height: 10),
                Text(
                  'Delete meal?',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  widget.meal.meal.name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'Cancel',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  unawaited(HapticFeedback.heavyImpact());
                  widget.onDelete?.call();
                },
                child: Text(
                  'Delete',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: colorScheme.error,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final meal = widget.meal.meal;
    final calories = meal.macros.calories;
    final timestamp = _formatTime(widget.meal.dateTime);

    return Semantics(
      label:
          '${meal.name}, $calories calories, logged at $timestamp.'
          '${widget.onDelete != null ? ' Long press to delete.' : ''}',
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: GestureDetector(
          onTapDown: (_) {
            setState(() => _isPressed = true);
            unawaited(HapticFeedback.lightImpact());
          },
          onTapUp: (_) => setState(() => _isPressed = false),
          onTapCancel: () => setState(() => _isPressed = false),
          onLongPress:
              widget.onDelete != null
                  ? () => _showDeleteConfirm(context)
                  : null,
          child: AnimatedScale(
            scale: _isPressed ? 0.97 : 1.0,
            duration: const Duration(milliseconds: 120),
            child: WatchSurface(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon
                  Container(
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
                  const SizedBox(width: 10),
                  // Name + macros
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                meal.name,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: colorScheme.onSurface,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              LucideIcons.clock,
                              size: 9,
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.6,
                              ),
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
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            WatchMacroBadge(
                              icon: LucideIcons.dumbbell,
                              value: meal.macros.protein,
                              color: colorScheme.proteinIconColor,
                            ),
                            const SizedBox(width: 6),
                            WatchMacroBadge(
                              icon: LucideIcons.wheat,
                              value: meal.macros.carbs,
                              color: colorScheme.carbsIconColor,
                            ),
                            const SizedBox(width: 6),
                            WatchMacroBadge(
                              icon: LucideIcons.droplet,
                              value: meal.macros.fat,
                              color: colorScheme.fatIconColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Calories
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LucideIcons.flame,
                        size: 13,
                        color: colorScheme.calorieIconColor,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '$calories',
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.calorieIconColor,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        'kcal',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.calorieIconColor.withValues(
                            alpha: 0.7,
                          ),
                          fontSize: 7,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
