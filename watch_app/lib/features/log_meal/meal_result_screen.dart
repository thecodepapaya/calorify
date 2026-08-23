import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
import 'package:widgets/widgets.dart';

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
          SnackBar(
            content: Text(
              Translations.of(context).watch.result.savedOfflineMessage,
            ),
            duration: const Duration(seconds: 3),
          ),
        );
      }
      await Future.delayed(const Duration(milliseconds: 900));
      if (mounted) context.router.popUntilRouteWithName(HomeRoute.name);
    } else {
      setState(() => _logging = false);
      unawaited(HapticFeedback.mediumImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(Translations.of(context).watch.result.saveFailed),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final macros = _meal.macros;
    final strings = Translations.of(context).watch;

    return WatchListScaffold(
      title: strings.result.title,
      icon: AppIcons.sparkles,
      onBack: context.router.pop,
      safeAreaMinimum: const EdgeInsets.fromLTRB(8, 6, 8, 6),
      headerPadding: const EdgeInsets.symmetric(horizontal: 4),
      body: SingleChildScrollView(
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
                        AppIcons.circleCheckBig,
                        key: const ValueKey('check'),
                        size: 28,
                        color: colorScheme.primary,
                      )
                      : Icon(
                        AppIcons.sparkles,
                        key: const ValueKey('sparkles'),
                        size: 28,
                        color: colorScheme.primary,
                      ),
            ),
            const SizedBox(height: 6),
            Text(
              _logged
                  ? (_queuedOffline
                      ? strings.result.savedOffline
                      : strings.result.logged)
                  : strings.result.mealFound,
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
                fontSize: watchLabelFontSize,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 10),
            // Meal name
            Text(
              _meal.name,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: watchTitleFontSize,
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
                  fontSize: watchLabelFontSize,
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            const SizedBox(height: 12),
            Text(
              strings.result.estimatedEnergy,
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontSize: watchLabelFontSize,
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
                  AppIcons.flame,
                  size: 18,
                  color: colorScheme.calorieIconColor,
                ),
                const SizedBox(width: 4),
                Text(
                  '${macros.calories}',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontSize: watchHeadlineFontSize,
                    fontWeight: FontWeight.w800,
                    color: colorScheme.calorieIconColor,
                    height: 1.0,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  strings.common.kcal,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: watchLabelFontSize,
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
                  icon: AppIcons.dumbbell,
                  color: colorScheme.proteinIconColor,
                  value: macros.protein,
                  label: strings.nutrition.protein,
                ),
                const SizedBox(width: 8),
                WatchMacroMetric(
                  icon: AppIcons.wheat,
                  color: colorScheme.carbsIconColor,
                  value: macros.carbs,
                  label: strings.nutrition.carbs,
                ),
                const SizedBox(width: 8),
                WatchMacroMetric(
                  icon: AppIcons.droplet,
                  color: colorScheme.fatIconColor,
                  value: macros.fat,
                  label: strings.nutrition.fat,
                ),
                if (macros.fiber > 0) ...[
                  const SizedBox(width: 8),
                  WatchMacroMetric(
                    icon: AppIcons.leaf,
                    color: colorScheme.fiberIconColor,
                    value: macros.fiber,
                    label: strings.nutrition.fiber,
                  ),
                ],
              ],
            ),
            const SizedBox(height: 16),
            // Log button
            if (!_logged) ...[
              WatchPillButton(
                label:
                    _logging ? strings.result.logging : strings.result.logMeal,
                icon: AppIcons.plus,
                busy: _logging,
                onPressed: _logMeal,
                primary: true,
                tint: colorScheme.primary,
              ),
              const SizedBox(height: 8),
              // Log Another
              WatchPillButton(
                label: strings.result.logAnother,
                icon: AppIcons.rotateCcw,
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
                  strings.common.cancel,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: watchLabelFontSize,
                  ),
                ),
              ),
            ] else
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  strings.result.goingBack,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: watchLabelFontSize,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ── shared small widgets ──────────────────────────────────────────────────────
