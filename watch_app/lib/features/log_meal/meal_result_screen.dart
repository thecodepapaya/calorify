import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';

@RoutePage()
class MealResultScreen extends StatefulWidget {
  const MealResultScreen({super.key, required this.result});

  final MealDetectionResult result;

  @override
  State<MealResultScreen> createState() => _MealResultScreenState();
}

class _MealResultScreenState extends State<MealResultScreen> {
  bool _logging = false;
  bool _logged = false;
  bool _queuedOffline = false;

  Meal get _meal => widget.result.meal;

  Future<void> _logMeal() async {
    if (_logging || _logged) return;
    setState(() => _logging = true);
    unawaited(HapticFeedback.mediumImpact());

    SyncRequestResult result;
    try {
      result = await SyncService.instance.sendMeal(_meal);
    } catch (_) {
      result = SyncRequestResult.failed;
    }

    if (!mounted) return;
    if (result == SyncRequestResult.synced ||
        result == SyncRequestResult.queued) {
      setState(() {
        _logging = false;
        _logged = true;
        _queuedOffline = result == SyncRequestResult.queued;
      });
      unawaited(
        result == SyncRequestResult.synced
            ? HapticFeedback.heavyImpact()
            : HapticFeedback.lightImpact(),
      );
      if (result == SyncRequestResult.queued) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Meal saved offline. It will sync when your phone reconnects.',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      }
      await Future.delayed(const Duration(milliseconds: 900));
      if (mounted) context.router.popUntilRouteWithName(HomeRoute.name);
    } else {
      setState(() => _logging = false);
      unawaited(HapticFeedback.mediumImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not save the meal. Please try again.'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final macros = _meal.macros;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        minimum: circularWatchPadding,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success / logged state icon
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child:
                    _logged
                        ? Icon(
                          LucideIcons.circleCheckBig,
                          key: const ValueKey('check'),
                          size: 28,
                          color: colorScheme.primary,
                        )
                        : Icon(
                          LucideIcons.sparkles,
                          key: const ValueKey('sparkles'),
                          size: 28,
                          color: colorScheme.primary,
                        ),
              ),
              const SizedBox(height: 6),
              Text(
                _logged
                    ? (_queuedOffline ? 'Saved Offline' : 'Logged!')
                    : 'Meal Found',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 10),
              // Meal name
              Text(
                _meal.name,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (_meal.quantity.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  _meal.quantity,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 10,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              const SizedBox(height: 12),
              Text(
                'Estimated energy',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              // Calorie display
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Icon(
                    LucideIcons.flame,
                    size: 18,
                    color: colorScheme.calorieIconColor,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${macros.calories}',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: colorScheme.calorieIconColor,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'kcal',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Macros row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WatchMacroMetric(
                    icon: LucideIcons.dumbbell,
                    color: colorScheme.proteinIconColor,
                    value: macros.protein,
                    label: 'Protein',
                  ),
                  const SizedBox(width: 8),
                  WatchMacroMetric(
                    icon: LucideIcons.wheat,
                    color: colorScheme.carbsIconColor,
                    value: macros.carbs,
                    label: 'Carbs',
                  ),
                  const SizedBox(width: 8),
                  WatchMacroMetric(
                    icon: LucideIcons.droplet,
                    color: colorScheme.fatIconColor,
                    value: macros.fat,
                    label: 'Fat',
                  ),
                  if (macros.fiber > 0) ...[
                    const SizedBox(width: 8),
                    WatchMacroMetric(
                      icon: LucideIcons.leaf,
                      color: colorScheme.fiberIconColor,
                      value: macros.fiber,
                      label: 'Fiber',
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 16),
              // Log button
              if (!_logged) ...[
                WatchPillButton(
                  label: _logging ? 'Logging…' : 'Log Meal',
                  icon: LucideIcons.plus,
                  busy: _logging,
                  onPressed: _logMeal,
                  primary: true,
                  tint: colorScheme.primary,
                ),
                const SizedBox(height: 8),
                // Log Another
                WatchPillButton(
                  label: 'Log Another',
                  icon: LucideIcons.rotateCcw,
                  onPressed: () {
                    unawaited(HapticFeedback.lightImpact());
                    context.router.pop();
                  },
                ),
                const SizedBox(height: 4),
                // Cancel
                TextButton(
                  onPressed: () {
                    unawaited(HapticFeedback.lightImpact());
                    context.router.popUntilRouteWithName(HomeRoute.name);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(88, 44),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Cancel',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.6,
                      ),
                      fontSize: 9,
                    ),
                  ),
                ),
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Going back…',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 9,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── shared small widgets ──────────────────────────────────────────────────────
