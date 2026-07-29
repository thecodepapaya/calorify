import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
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
                  _MacroPill(
                    icon: LucideIcons.dumbbell,
                    color: colorScheme.proteinIconColor,
                    value: macros.protein,
                    label: 'P',
                  ),
                  const SizedBox(width: 8),
                  _MacroPill(
                    icon: LucideIcons.wheat,
                    color: colorScheme.carbsIconColor,
                    value: macros.carbs,
                    label: 'C',
                  ),
                  const SizedBox(width: 8),
                  _MacroPill(
                    icon: LucideIcons.droplet,
                    color: colorScheme.fatIconColor,
                    value: macros.fat,
                    label: 'F',
                  ),
                  if (macros.fiber > 0) ...[
                    const SizedBox(width: 8),
                    _MacroPill(
                      icon: LucideIcons.leaf,
                      color: colorScheme.fiberIconColor,
                      value: macros.fiber,
                      label: 'Fi',
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 16),
              // Log button
              if (!_logged) ...[
                _PrimaryBtn(
                  label: _logging ? 'Logging…' : 'Log Meal',
                  icon: _logging ? null : LucideIcons.plus,
                  loading: _logging,
                  onTap: _logMeal,
                  color: colorScheme.primary,
                  textColor: colorScheme.onPrimary,
                ),
                const SizedBox(height: 8),
                // Log Another
                _SecondaryBtn(
                  label: 'Log Another',
                  onTap: () {
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
                    minimumSize: const Size(44, 32),
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

class _MacroPill extends StatelessWidget {
  const _MacroPill({
    required this.icon,
    required this.color,
    required this.value,
    required this.label,
  });
  final IconData icon;
  final Color color;
  final int value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 11, color: color),
        const SizedBox(height: 2),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontSize: 8,
          ),
        ),
        Text(
          '${value}g',
          style: theme.textTheme.labelSmall?.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class _PrimaryBtn extends StatelessWidget {
  const _PrimaryBtn({
    required this.label,
    required this.onTap,
    required this.color,
    required this.textColor,
    this.icon,
    this.loading = false,
  });
  final String label;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final IconData? icon;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: loading ? null : onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (loading)
              SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: textColor,
                ),
              )
            else if (icon != null)
              Icon(icon, size: 14, color: textColor),
            if (icon != null || loading) const SizedBox(width: 6),
            Text(
              label,
              style: theme.textTheme.labelMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SecondaryBtn extends StatelessWidget {
  const _SecondaryBtn({required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: colorScheme.outline.withValues(alpha: 0.5),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          label,
          style: theme.textTheme.labelMedium?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
