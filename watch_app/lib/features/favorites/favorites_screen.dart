import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/carousel_scroll_view.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen>
    with WidgetsBindingObserver {
  bool _loaded = false;
  String? _error;
  int? _loggingClientId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_load());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _loaded) {
      unawaited(_load(force: true));
    }
  }

  Future<void> _load({bool force = false}) async {
    setState(() => _error = null);
    try {
      await SyncService.instance.requestFavoriteMeals(forceRefresh: force);
      final state = SyncService.instance.syncState.value;
      if (mounted &&
          SyncService.instance.favoriteMeals.value.isEmpty &&
          SyncService.instance.favoriteLastSyncTime.value == null &&
          (state == SyncState.error || state == SyncState.disconnected)) {
        setState(
          () => _error = 'Open Calorify on your phone, then tap refresh.',
        );
      }
    } catch (_) {
      if (mounted) setState(() => _error = 'Could not load favorites');
    }
    if (mounted) setState(() => _loaded = true);
  }

  Future<void> _logFavorite(FavoriteMeal fav) async {
    final id = fav.clientId;
    if (_loggingClientId != null) return;
    setState(() => _loggingClientId = id);
    unawaited(HapticFeedback.mediumImpact());

    if (!fav.hasLoggedMeal() || !fav.loggedMeal.hasMeal()) {
      setState(() => _loggingClientId = null);
      return;
    }
    SyncRequestResult result;
    try {
      result = await SyncService.instance.sendMeal(
        fav.loggedMeal.meal,
        favoriteMealId: fav.hasClientId() ? fav.clientId : null,
      );
    } catch (_) {
      result = SyncRequestResult.failed;
    }

    if (!mounted) return;
    setState(() => _loggingClientId = null);

    if (result == SyncRequestResult.synced) {
      unawaited(HapticFeedback.heavyImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${fav.loggedMeal.meal.name} logged!'),
          duration: const Duration(seconds: 2),
        ),
      );
    } else if (result == SyncRequestResult.queued) {
      unawaited(HapticFeedback.lightImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '${fav.loggedMeal.meal.name} saved offline. It will sync when your phone reconnects.',
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    } else {
      unawaited(HapticFeedback.mediumImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not save the meal. Please try again.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return WatchListScaffold(
      title: 'Favorites',
      icon: LucideIcons.star,
      onBack: context.router.pop,
      trailing: ValueListenableBuilder<SyncState>(
        valueListenable: SyncService.instance.syncState,
        builder:
            (_, state, _) => WatchIconButton(
              icon: LucideIcons.refreshCw,
              semanticLabel: 'Refresh favorites',
              onPressed: () => _load(force: true),
              busy: state == SyncState.syncing,
              color: colorScheme.tertiary,
            ),
      ),
      body: ValueListenableBuilder<List<FavoriteMeal>>(
        valueListenable: SyncService.instance.favoriteMeals,
        builder: (_, favorites, _) {
          if (!_loaded && favorites.isEmpty) {
            return const ListScreenSkeleton();
          }
          if (_error != null && favorites.isEmpty) {
            return WatchStateView(
              icon: LucideIcons.cloudOff,
              title: 'Could not sync',
              message: _error!,
              actionLabel: 'Retry',
              onAction: () => _load(force: true),
              tint: colorScheme.error,
            );
          }
          if (favorites.isEmpty) {
            return WatchStateView(
              icon: LucideIcons.star,
              title: 'No favorites yet',
              message: 'Star meals in the phone app for one-tap logging here.',
              tint: colorScheme.tertiary,
            );
          }
          return RefreshIndicator(
            onRefresh: () => _load(force: true),
            color: colorScheme.primary,
            backgroundColor: colorScheme.surface,
            child: CarouselScrollView.builder(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final favorite = favorites[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _FavoriteItem(
                    fav: favorite,
                    isLogging: _loggingClientId == favorite.clientId,
                    onLog: () => _logFavorite(favorite),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ── Favorite item card ────────────────────────────────────────────────────────

class _FavoriteItem extends StatefulWidget {
  const _FavoriteItem({
    required this.fav,
    required this.isLogging,
    required this.onLog,
  });
  final FavoriteMeal fav;
  final bool isLogging;
  final VoidCallback onLog;

  @override
  State<_FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<_FavoriteItem> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final meal = widget.fav.loggedMeal.meal;
    final calories = meal.macros.calories;

    return Semantics(
      label: '${meal.name}, $calories calories. Tap to log.',
      button: true,
      child: GestureDetector(
        onTapDown: (_) => setState(() => _pressed = true),
        onTapUp: (_) {
          setState(() => _pressed = false);
          widget.onLog();
        },
        onTapCancel: () => setState(() => _pressed = false),
        child: AnimatedScale(
          scale: _pressed ? 0.97 : 1.0,
          duration: const Duration(milliseconds: 100),
          child: WatchSurface(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            borderColor: colorScheme.tertiary.withValues(alpha: 0.16),
            child: Row(
              children: [
                // Star icon
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: colorScheme.tertiaryContainer.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    LucideIcons.star,
                    size: 13,
                    color: colorScheme.tertiary,
                  ),
                ),
                const SizedBox(width: 10),
                // Name + macros
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        meal.name,
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: colorScheme.onSurface,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          WatchMacroBadge(
                            color: colorScheme.proteinIconColor,
                            value: meal.macros.protein,
                            label: 'P',
                          ),
                          const SizedBox(width: 5),
                          WatchMacroBadge(
                            color: colorScheme.carbsIconColor,
                            value: meal.macros.carbs,
                            label: 'C',
                          ),
                          const SizedBox(width: 5),
                          WatchMacroBadge(
                            color: colorScheme.fatIconColor,
                            value: meal.macros.fat,
                            label: 'F',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                // Calories + log button
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LucideIcons.flame,
                          size: 11,
                          color: colorScheme.calorieIconColor,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '$calories',
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.calorieIconColor,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color:
                            widget.isLogging
                                ? colorScheme.primary.withValues(alpha: 0.6)
                                : colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                          widget.isLogging
                              ? SizedBox(
                                width: 12,
                                height: 12,
                                child: CircularProgressIndicator(
                                  strokeWidth: 1.5,
                                  color: colorScheme.onPrimary,
                                ),
                              )
                              : Text(
                                'Log',
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9,
                                ),
                              ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
