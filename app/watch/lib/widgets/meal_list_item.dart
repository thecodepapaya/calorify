import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
import 'package:intl/intl.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:widgets/widgets.dart';

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

  String _formatTime(DateTime? dt, String locale) =>
      dt != null ? DateFormat.Hm(locale).format(dt) : '--:--';

  void _showDeleteConfirm(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    final strings = Translations.of(context).watch;
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
                Icon(AppIcons.trash2, size: 28, color: colorScheme.error),
                const SizedBox(height: 10),
                Text(
                  strings.meal.deleteTitle,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: watchTitleFontSize,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  widget.meal.meal.name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: watchLabelFontSize,
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
                  strings.common.cancel,
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
                  strings.common.delete,
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
    final strings = Translations.of(context).watch;
    final meal = widget.meal.meal;
    final calories = meal.macros.calories;
    final timestamp = _formatTime(
      widget.meal.dateTime,
      Localizations.localeOf(context).toLanguageTag(),
    );

    return Semantics(
      label:
          '${strings.meal.semantics(name: meal.name, calories: calories, time: timestamp)}'
          '${widget.onDelete != null ? ' ${strings.meal.longPressDelete}' : ''}',
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
                      AppIcons.utensilsCrossed,
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
                                  fontSize: watchBodyFontSize,
                                  color: colorScheme.onSurface,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              AppIcons.clock,
                              size: 10,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              timestamp,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                                fontSize: watchLabelFontSize,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            WatchMacroBadge(
                              icon: AppIcons.dumbbell,
                              value: meal.macros.protein,
                              color: colorScheme.proteinIconColor,
                            ),
                            const SizedBox(width: 6),
                            WatchMacroBadge(
                              icon: AppIcons.wheat,
                              value: meal.macros.carbs,
                              color: colorScheme.carbsIconColor,
                            ),
                            const SizedBox(width: 6),
                            WatchMacroBadge(
                              icon: AppIcons.droplet,
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
                        AppIcons.flame,
                        size: 13,
                        color: colorScheme.calorieIconColor,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '$calories',
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.calorieIconColor,
                          fontSize: watchBodyFontSize,
                        ),
                      ),
                      Text(
                        strings.common.kcal,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.calorieIconColor.withValues(
                            alpha: 0.85,
                          ),
                          fontSize: watchLabelFontSize,
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
