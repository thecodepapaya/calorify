import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/calorie_summary_card.dart';
import 'package:calorify_watch/widgets/calorie_trend_chart.dart';
import 'package:calorify_watch/widgets/carousel_scroll_view.dart';
import 'package:calorify_watch/widgets/macro_chart.dart';
import 'package:calorify_watch/widgets/meal_list_item.dart';
import 'package:calorify_watch/widgets/shimmer_placeholder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _initialLoadDone = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initialLoad();
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
      if (mounted) setState(() => _errorMessage = 'Could not refresh. Check your phone.');
      unawaited(HapticFeedback.mediumImpact());
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Show skeleton on very first load (no cache yet)
    final cache = SyncService.instance;
    final hasCachedData = cache.syncState.value != SyncState.idle ||
        _initialLoadDone;

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
            return ValueListenableBuilder<int?>(
              valueListenable: SyncService.instance.calorieGoal,
              builder: (context, goal, _) {
                final totalCalories = meals.fold<int>(
                  0,
                  (sum, m) => sum + m.meal.macros.calories,
                );
                return RefreshIndicator(
                  onRefresh: _refresh,
                  color: colorScheme.primary,
                  backgroundColor: colorScheme.surface,
                  child: CarouselScrollView(
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
                              fontSize: 9,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      // Calorie Summary
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: CalorieSummaryCard(
                          totalCalories: totalCalories,
                          goal: goal ?? 2000,
                        ),
                      ),
                      // Macro Chart
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: MacroChart(meals: meals),
                      ),
                      // Trend Chart
                      if (meals.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: CalorieTrendChart(meals: meals),
                        ),
                      // Action buttons
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: _ActionButtons(),
                      ),
                      // Today's meals
                      if (meals.isNotEmpty) ...[
                        _MealsSectionHeader(count: meals.length),
                        ...meals.take(3).toList().asMap().entries.map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: MealListItem(
                                  meal: e.value,
                                  index: e.key,
                                  onDelete: e.value.hasClientId() && e.value.clientId > 0
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
    final ok = await SyncService.instance.deleteMeal(mealId);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not delete meal'),
          duration: Duration(seconds: 2),
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

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
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
                            _stateLabel(state, lastSync),
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant
                                  .withValues(alpha: 0.6),
                              fontSize: 8,
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
          if (kDebugMode)
            GestureDetector(
              onTap: () {
                unawaited(HapticFeedback.lightImpact());
                context.router.push(const DebugRoute());
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: colorScheme.tertiaryContainer.withValues(alpha: 0.5),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.bug,
                  size: 12,
                  color: colorScheme.tertiary,
                ),
              ),
            ),
        ],
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
        return Icon(
          LucideIcons.check,
          size: 10,
          color: colorScheme.primary.withValues(alpha: 0.7),
        );
      case SyncState.error:
        return Icon(
          LucideIcons.circleAlert,
          size: 10,
          color: colorScheme.error,
        );
      case SyncState.disconnected:
        return Icon(
          LucideIcons.wifi,
          size: 10,
          color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
        );
      case SyncState.idle:
        return Icon(
          LucideIcons.watch,
          size: 10,
          color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
        );
    }
  }

  String _stateLabel(SyncState state, DateTime? lastSync) {
    switch (state) {
      case SyncState.syncing:
        return 'Syncing...';
      case SyncState.synced:
        if (lastSync != null) {
          final diff = DateTime.now().difference(lastSync);
          if (diff.inMinutes < 1) return 'Synced just now';
          if (diff.inMinutes < 60) return 'Synced ${diff.inMinutes}m ago';
        }
        return 'Synced';
      case SyncState.error:
        return 'Sync failed';
      case SyncState.disconnected:
        return 'Phone disconnected';
      case SyncState.idle:
        return 'Tap to sync';
    }
  }
}

// ---------------------------------------------------------------------------
// Action buttons
// ---------------------------------------------------------------------------

class _ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ActionBtn(
              icon: LucideIcons.mic,
              label: 'Log',
              color: colorScheme.primary,
              onTap: () => context.router.push(const LogMealRoute()),
            ),
            const SizedBox(width: 16),
            _ActionBtn(
              icon: LucideIcons.history,
              label: 'History',
              color: colorScheme.secondary,
              onTap: () => context.router.push(const HistoryRoute()),
            ),
            const SizedBox(width: 16),
            _ActionBtn(
              icon: LucideIcons.star,
              label: 'Favorites',
              color: colorScheme.tertiary,
              onTap: () => context.router.push(const FavoritesRoute()),
            ),
          ],
        ),
      ],
    );
  }
}

class _ActionBtn extends StatefulWidget {
  const _ActionBtn({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  State<_ActionBtn> createState() => _ActionBtnState();
}

class _ActionBtnState extends State<_ActionBtn> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      label: '${widget.label} button',
      button: true,
      child: GestureDetector(
        onTapDown: (_) {
          setState(() => _pressed = true);
          unawaited(HapticFeedback.lightImpact());
        },
        onTapUp: (_) {
          setState(() => _pressed = false);
          unawaited(HapticFeedback.mediumImpact());
          widget.onTap();
        },
        onTapCancel: () => setState(() => _pressed = false),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: _pressed
                    ? widget.color.withValues(alpha: 0.7)
                    : widget.color,
                shape: BoxShape.circle,
                boxShadow: _pressed
                    ? []
                    : [
                        BoxShadow(
                          color: widget.color.withValues(alpha: 0.25),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
              ),
              child: AnimatedScale(
                scale: _pressed ? 0.92 : 1.0,
                duration: const Duration(milliseconds: 100),
                child: Icon(
                  widget.icon,
                  size: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 8,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(LucideIcons.packageOpen, size: 14, color: colorScheme.primary),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              "Today's Meals",
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
                color: colorScheme.onSurface,
                fontSize: 11,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '$count',
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 9,
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 12),
      child: GestureDetector(
        onTap: () {
          unawaited(HapticFeedback.lightImpact());
          context.router.push(const HistoryRoute());
        },
        child: Semantics(
          label: '$extraCount more meals, tap to view all',
          button: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LucideIcons.arrowRight, size: 10, color: colorScheme.primary),
              const SizedBox(width: 4),
              Text(
                'View $extraCount more',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 9,
                ),
              ),
            ],
          ),
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
    return Semantics(
      label: 'No meals logged today',
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              LucideIcons.listChecks,
              size: 28,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
            ),
            const SizedBox(height: 8),
            Text(
              'No meals logged',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.mic,
                  size: 10,
                  color: colorScheme.primary.withValues(alpha: 0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  'Tap Log to start',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.primary.withValues(alpha: 0.7),
                    fontSize: 8,
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
