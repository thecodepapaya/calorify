import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/carousel_scroll_view.dart';
import 'package:calorify_watch/widgets/meal_list_item.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool _loaded = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load({bool force = false}) async {
    setState(() => _error = null);
    try {
      await SyncService.instance.refreshDashboard(forceRefresh: force);
      final state = SyncService.instance.syncState.value;
      if (mounted &&
          SyncService.instance.todaysMeals.value.isEmpty &&
          SyncService.instance.lastSyncTime.value == null &&
          (state == SyncState.error || state == SyncState.disconnected)) {
        setState(
          () => _error = 'Open Calorify on your phone, then tap refresh.',
        );
      }
    } catch (_) {
      if (mounted) setState(() => _error = 'Could not load meals');
    }
    if (mounted) setState(() => _loaded = true);
  }

  Future<void> _onRefresh() async {
    unawaited(HapticFeedback.mediumImpact());
    await _load(force: true);
    unawaited(HapticFeedback.lightImpact());
  }

  Future<void> _deleteMeal(int mealId) async {
    unawaited(HapticFeedback.mediumImpact());
    final result = await SyncService.instance.deleteMeal(mealId);
    if (!mounted) return;

    if (result == SyncRequestResult.queued) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            mealId < 0
                ? 'Meal removed from the offline queue.'
                : 'Meal removed offline. It will sync when your phone reconnects.',
          ),
          duration: Duration(seconds: 3),
        ),
      );
    } else if (result == SyncRequestResult.failed) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not delete meal'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ValueListenableBuilder<List<LoggedMeal>>(
      valueListenable: SyncService.instance.todaysMeals,
      builder:
          (_, currentMeals, _) => WatchListScaffold(
            title: "Today's meals · ${currentMeals.length}",
            icon: LucideIcons.packageOpen,
            onBack: context.router.pop,
            trailing: ValueListenableBuilder<SyncState>(
              valueListenable: SyncService.instance.syncState,
              builder:
                  (_, state, _) => WatchIconButton(
                    icon: LucideIcons.refreshCw,
                    semanticLabel: 'Refresh meals',
                    onPressed: _onRefresh,
                    busy: state == SyncState.syncing,
                  ),
            ),
            body: ValueListenableBuilder<List<LoggedMeal>>(
              valueListenable: SyncService.instance.todaysMeals,
              builder: (_, meals, _) {
                if (!_loaded && meals.isEmpty) {
                  return const ListScreenSkeleton();
                }
                if (_error != null && meals.isEmpty) {
                  return WatchStateView(
                    icon: LucideIcons.cloudOff,
                    title: 'Could not sync',
                    message: _error!,
                    actionLabel: 'Retry',
                    onAction: () => _load(force: true),
                    tint: colorScheme.error,
                  );
                }
                if (meals.isEmpty) {
                  return const WatchStateView(
                    icon: LucideIcons.listChecks,
                    title: 'No meals yet',
                    message: 'Log a meal from the home screen to see it here.',
                  );
                }
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  color: colorScheme.primary,
                  backgroundColor: colorScheme.surface,
                  child: CarouselScrollView.builder(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    itemCount: meals.length,
                    itemBuilder: (context, index) {
                      final meal = meals[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: MealListItem(
                          meal: meal,
                          index: index,
                          onDelete:
                              meal.hasClientId()
                                  ? () => _deleteMeal(meal.clientId)
                                  : null,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
    );
  }
}
