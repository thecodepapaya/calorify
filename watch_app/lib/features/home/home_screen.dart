import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/meal_list_item.dart';
import 'package:calorify_watch/widgets/watch_scroll_view.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  bool _initialLoadDone = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_initialLoad());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _initialLoadDone) {
      unawaited(_refreshAfterResume());
    }
  }

  Future<void> _refreshAfterResume() async {
    try {
      await SyncService.instance.refreshDashboard(forceRefresh: true);
    } catch (_) {}
  }

  Future<void> _initialLoad() async {
    try {
      await SyncService.instance.refreshDashboard();
    } catch (_) {}
    if (mounted) setState(() => _initialLoadDone = true);
  }

  Future<void> _refresh() async {
    unawaited(HapticFeedback.mediumImpact());
    setState(() => _errorMessage = null);
    try {
      await SyncService.instance.refreshDashboard(forceRefresh: true);
      unawaited(HapticFeedback.lightImpact());
    } catch (e) {
      if (mounted) {
        setState(
          () =>
              _errorMessage = Translations.of(context).watch.sync.refreshFailed,
        );
      }
      unawaited(HapticFeedback.mediumImpact());
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Show skeleton on very first load (no cache yet)
    final cache = SyncService.instance;
    final hasCachedData =
        cache.syncState.value != SyncState.idle || _initialLoadDone;

    if (!hasCachedData) {
      return Scaffold(
        backgroundColor: colorScheme.surface,
        body: const SafeArea(child: HomeScreenSkeleton()),
      );
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        minimum: circularWatchPadding,
        child: ValueListenableBuilder<List<LoggedMeal>>(
          valueListenable: SyncService.instance.todaysMeals,
          builder: (context, meals, _) {
            var totalCalories = 0;
            var totalProtein = 0;
            var totalCarbs = 0;
            var totalFat = 0;
            for (final meal in meals) {
              final macros = meal.meal.macros;
              totalCalories += macros.calories;
              totalProtein += macros.protein;
              totalCarbs += macros.carbs;
              totalFat += macros.fat;
            }

            return ValueListenableBuilder<int?>(
              valueListenable: SyncService.instance.calorieGoal,
              builder: (context, goal, _) {
                return RefreshIndicator(
                  onRefresh: _refresh,
                  color: colorScheme.primary,
                  backgroundColor: colorScheme.surface,
                  child: WatchScrollView(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    children: [
                      // Sync status header
                      _SyncStatusHeader(onRefresh: _refresh),
                      if (_errorMessage != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            _errorMessage!,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.error,
                              fontSize: watchLabelFontSize,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      // Primary glance card: the most important daily metric.
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: WatchCalorieProgressCard(
                          totalCalories: totalCalories,
                          goal: goal ?? 2000,
                        ),
                      ),
                      // Compact macro glance; detailed charts stay on phone.
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: WatchMacroSummary(
                          protein: totalProtein,
                          carbs: totalCarbs,
                          fat: totalFat,
                        ),
                      ),
                      // Action buttons
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _ActionButtons(),
                      ),
                      // Today's meals
                      if (meals.isNotEmpty) ...[
                        _MealsSectionHeader(count: meals.length),
                        ...meals
                            .take(3)
                            .toList()
                            .asMap()
                            .entries
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: MealListItem(
                                  meal: e.value,
                                  index: e.key,
                                  onDelete:
                                      e.value.hasClientId()
                                          ? () => _deleteMeal(e.value.clientId)
                                          : null,
                                ),
                              ),
                            ),
                        if (meals.length > 3)
                          _ViewMoreButton(extraCount: meals.length - 3),
                      ] else
                        const Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: _EmptyMealsView(),
                        ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> _deleteMeal(int mealId) async {
    final result = await SyncService.instance.deleteMeal(mealId);
    if (!mounted) return;

    if (result == SyncRequestResult.queued) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            mealId < 0
                ? Translations.of(context).watch.home.removedFromQueue
                : Translations.of(context).watch.home.removedOffline,
          ),
          duration: Duration(seconds: 3),
        ),
      );
    } else if (result == SyncRequestResult.failed) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(Translations.of(context).watch.home.deleteFailed),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }
}

// ---------------------------------------------------------------------------
// Sync status header
// ---------------------------------------------------------------------------

class _SyncStatusHeader extends StatelessWidget {
  const _SyncStatusHeader({required this.onRefresh});

  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final strings = Translations.of(context).watch;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Semantics(
        label: strings.sync.syncWithPhone,
        button: true,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(18),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              unawaited(HapticFeedback.lightImpact());
              onRefresh();
            },
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder<SyncState>(
                    valueListenable: SyncService.instance.syncState,
                    builder: (context, state, _) {
                      return ValueListenableBuilder<DateTime?>(
                        valueListenable: SyncService.instance.lastSyncTime,
                        builder: (context, lastSync, _) {
                          return Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _stateIcon(context, state, colorScheme),
                                const SizedBox(width: 4),
                                Flexible(
                                  child: Text(
                                    _stateLabel(context, state, lastSync),
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color: colorScheme.onSurfaceVariant,
                                      fontSize: watchLabelFontSize,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _stateIcon(
    BuildContext context,
    SyncState state,
    ColorScheme colorScheme,
  ) {
    switch (state) {
      case SyncState.syncing:
        return SizedBox(
          width: 10,
          height: 10,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
            color: colorScheme.primary,
          ),
        );
      case SyncState.synced:
        return Icon(AppIcons.check, size: 10, color: colorScheme.primary);
      case SyncState.error:
        return Icon(AppIcons.circleAlert, size: 10, color: colorScheme.error);
      case SyncState.disconnected:
        return Icon(
          AppIcons.wifi,
          size: 10,
          color: colorScheme.onSurfaceVariant,
        );
      case SyncState.idle:
        return Icon(
          AppIcons.watch,
          size: 10,
          color: colorScheme.onSurfaceVariant,
        );
    }
  }

  String _stateLabel(
    BuildContext context,
    SyncState state,
    DateTime? lastSync,
  ) {
    final strings = Translations.of(context).watch.sync;
    switch (state) {
      case SyncState.syncing:
        return strings.syncing;
      case SyncState.synced:
        if (lastSync != null) {
          final diff = DateTime.now().difference(lastSync);
          if (diff.inMinutes < 1) return strings.syncedJustNow;
          if (diff.inMinutes < 60) {
            return strings.syncedMinutesAgo(minutes: diff.inMinutes);
          }
        }
        return strings.synced;
      case SyncState.error:
        return strings.failed;
      case SyncState.disconnected:
        return strings.phoneDisconnected;
      case SyncState.idle:
        return strings.tapToSync;
    }
  }
}

// ---------------------------------------------------------------------------
// Action buttons
// ---------------------------------------------------------------------------

class _ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final strings = Translations.of(context).watch;

    return Column(
      children: [
        WatchPillButton(
          label: strings.home.logMeal,
          icon: AppIcons.mic,
          primary: true,
          onPressed: () => context.router.push(LogMealRoute()),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: WatchPillButton(
                icon: AppIcons.listChecks,
                label: strings.home.todayMeals,
                tint: colorScheme.primary,
                onPressed: () => context.router.push(const HistoryRoute()),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: WatchPillButton(
                iconWidget: const FavoriteIcon(),
                label: strings.favorites.title,
                tint: colorScheme.tertiary,
                onPressed: () => context.router.push(const FavoritesRoute()),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Meals section
// ---------------------------------------------------------------------------

class _MealsSectionHeader extends StatelessWidget {
  const _MealsSectionHeader({required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final strings = Translations.of(context).watch;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(AppIcons.packageOpen, size: 14, color: colorScheme.primary),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              strings.home.todayMeals,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
                color: colorScheme.onSurface,
                fontSize: watchBodyFontSize,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '$count',
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: watchLabelFontSize,
                color: colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ViewMoreButton extends StatelessWidget {
  const _ViewMoreButton({required this.extraCount});
  final int extraCount;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final strings = Translations.of(context).watch.home;
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 12),
      child: Semantics(
        label: strings.viewMoreSemantics(count: extraCount),
        child: WatchPillButton(
          label: strings.viewMore(count: extraCount),
          icon: AppIcons.arrowRight,
          onPressed: () => context.router.push(const HistoryRoute()),
          tint: colorScheme.primary,
        ),
      ),
    );
  }
}

class _EmptyMealsView extends StatelessWidget {
  const _EmptyMealsView();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final strings = Translations.of(context).watch.home;
    return Semantics(
      label: strings.noMealsSemantics,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              AppIcons.listChecks,
              size: 28,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.75),
            ),
            const SizedBox(height: 8),
            Text(
              strings.noMeals,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
                fontSize: watchBodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(AppIcons.mic, size: 10, color: colorScheme.primary),
                const SizedBox(width: 4),
                Text(
                  strings.tapLog,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.primary,
                    fontSize: watchLabelFontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
