import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/carousel_scroll_view.dart';
import 'package:calorify_watch/widgets/meal_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        minimum: circularWatchPadding,
        child: Column(
          children: [
            // Header row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  _CircleBtn(
                    icon: Icons.arrow_back,
                    onTap: () {
                      unawaited(HapticFeedback.lightImpact());
                      context.router.pop();
                    },
                    semanticLabel: 'Back',
                  ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LucideIcons.packageOpen,
                        size: 14,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(width: 5),
                      ValueListenableBuilder<List<LoggedMeal>>(
                        valueListenable: SyncService.instance.todaysMeals,
                        builder:
                            (_, meals, _) => Text(
                              "Today's Meals",
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                                color: colorScheme.onSurface,
                              ),
                            ),
                      ),
                      const SizedBox(width: 5),
                      ValueListenableBuilder<List<LoggedMeal>>(
                        valueListenable: SyncService.instance.todaysMeals,
                        builder:
                            (_, meals, _) => Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: colorScheme.primaryContainer.withValues(
                                  alpha: 0.3,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                '${meals.length}',
                                style: theme.textTheme.labelSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 9,
                                  color: colorScheme.primary,
                                ),
                              ),
                            ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ValueListenableBuilder<SyncState>(
                    valueListenable: SyncService.instance.syncState,
                    builder:
                        (_, state, _) => _CircleBtn(
                          icon: LucideIcons.refreshCw,
                          onTap: _onRefresh,
                          semanticLabel: 'Refresh meals',
                          spinning: state == SyncState.syncing,
                        ),
                  ),
                ],
              ),
            ),
            // Body
            Expanded(
              child: ValueListenableBuilder<List<LoggedMeal>>(
                valueListenable: SyncService.instance.todaysMeals,
                builder: (_, meals, _) {
                  if (!_loaded && meals.isEmpty) {
                    return const ListScreenSkeleton();
                  }
                  if (_error != null && meals.isEmpty) {
                    return _ErrorView(
                      message: _error!,
                      onRetry: () => _load(force: true),
                    );
                  }
                  if (meals.isEmpty) {
                    return _EmptyView();
                  }
                  return RefreshIndicator(
                    onRefresh: _onRefresh,
                    color: colorScheme.primary,
                    backgroundColor: colorScheme.surface,
                    child: CarouselScrollView(
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      children:
                          meals
                              .asMap()
                              .entries
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: MealListItem(
                                    meal: e.value,
                                    index: e.key,
                                    onDelete:
                                        e.value.hasClientId() &&
                                                e.value.clientId > 0
                                            ? () =>
                                                _deleteMeal(e.value.clientId)
                                            : null,
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── helpers ──────────────────────────────────────────────────────────────────

class _CircleBtn extends StatefulWidget {
  const _CircleBtn({
    required this.icon,
    required this.onTap,
    required this.semanticLabel,
    this.spinning = false,
  });
  final IconData icon;
  final VoidCallback onTap;
  final String semanticLabel;
  final bool spinning;

  @override
  State<_CircleBtn> createState() => _CircleBtnState();
}

class _CircleBtnState extends State<_CircleBtn>
    with SingleTickerProviderStateMixin {
  late AnimationController _spin;

  @override
  void initState() {
    super.initState();
    _spin = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    if (widget.spinning) _spin.repeat();
  }

  @override
  void didUpdateWidget(_CircleBtn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.spinning && !oldWidget.spinning) {
      _spin.repeat();
    } else if (!widget.spinning && oldWidget.spinning) {
      _spin.stop();
    }
  }

  @override
  void dispose() {
    _spin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    Widget icon = Icon(
      widget.icon,
      size: 16,
      color: colorScheme.onSurfaceVariant,
    );
    if (widget.spinning) {
      icon = RotationTransition(turns: _spin, child: icon);
    }
    return Semantics(
      label: widget.semanticLabel,
      button: true,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            shape: BoxShape.circle,
          ),
          child: icon,
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});
  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Center(
      child: Padding(
        padding: circularWatchPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 32, color: colorScheme.error),
            const SizedBox(height: 10),
            Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            GestureDetector(
              onTap: () {
                unawaited(HapticFeedback.mediumImpact());
                onRetry();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.4),
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      LucideIcons.refreshCw,
                      size: 14,
                      color: colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Retry',
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Semantics(
      label: 'No meals logged yet',
      child: Center(
        child: Padding(
          padding: circularWatchPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                LucideIcons.listChecks,
                size: 40,
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
              ),
              const SizedBox(height: 10),
              Text(
                'No meals logged',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
