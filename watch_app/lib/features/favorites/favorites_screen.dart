import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/watch_scroll_view.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
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
        setState(() => _error = Translations.of(context).watch.sync.openPhone);
      }
    } catch (_) {
      if (mounted) {
        setState(
          () => _error = Translations.of(context).watch.favorites.loadFailed,
        );
      }
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
          content: Text(
            Translations.of(
              context,
            ).watch.favorites.logged(name: fav.loggedMeal.meal.name),
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    } else if (result == SyncRequestResult.queued) {
      unawaited(HapticFeedback.lightImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            Translations.of(
              context,
            ).watch.favorites.savedOffline(name: fav.loggedMeal.meal.name),
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    } else {
      unawaited(HapticFeedback.mediumImpact());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(Translations.of(context).watch.favorites.saveFailed),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final strings = Translations.of(context).watch;

    return WatchListScaffold(
      title: strings.favorites.title,
      iconWidget: const FavoriteIcon(),
      onBack: context.router.pop,
      trailing: ValueListenableBuilder<SyncState>(
        valueListenable: SyncService.instance.syncState,
        builder:
            (_, state, _) => WatchIconButton(
              icon: AppIcons.refreshCw,
              semanticLabel: strings.favorites.refresh,
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
              icon: AppIcons.cloudOff,
              title: strings.favorites.syncFailed,
              message: _error!,
              actionLabel: strings.common.retry,
              onAction: () => _load(force: true),
              tint: colorScheme.error,
            );
          }
          if (favorites.isEmpty) {
            return WatchStateView(
              iconWidget: const FavoriteIcon(),
              title: strings.favorites.emptyTitle,
              message: strings.favorites.emptyMessage,
              tint: colorScheme.tertiary,
            );
          }
          return RefreshIndicator(
            onRefresh: () => _load(force: true),
            color: colorScheme.primary,
            backgroundColor: colorScheme.surface,
            child: WatchScrollView.builder(
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
    final strings = Translations.of(context).watch;
    final meal = widget.fav.loggedMeal.meal;
    final calories = meal.macros.calories;

    return Semantics(
      label: strings.favorites.mealSemantics(
        name: meal.name,
        calories: calories,
      ),
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
                  child: FavoriteIcon(isFavorite: true, size: 13),
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
                          fontSize: watchBodyFontSize,
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
                            icon: AppIcons.dumbbell,
                          ),
                          const SizedBox(width: 5),
                          WatchMacroBadge(
                            color: colorScheme.carbsIconColor,
                            value: meal.macros.carbs,
                            icon: AppIcons.wheat,
                          ),
                          const SizedBox(width: 5),
                          WatchMacroBadge(
                            color: colorScheme.fatIconColor,
                            value: meal.macros.fat,
                            icon: AppIcons.droplet,
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
                          AppIcons.flame,
                          size: 11,
                          color: colorScheme.calorieIconColor,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '$calories',
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.calorieIconColor,
                            fontSize: watchLabelFontSize,
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
                                strings.favorites.log,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: watchLabelFontSize,
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
