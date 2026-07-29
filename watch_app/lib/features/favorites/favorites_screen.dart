import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/widgets/carousel_scroll_view.dart';
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

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool _loaded = false;
  String? _error;
  int? _loggingClientId;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load({bool force = false}) async {
    setState(() => _error = null);
    try {
      await SyncService.instance.requestFavoriteMeals(forceRefresh: force);
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        minimum: circularWatchPadding,
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  _circleBack(context),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        LucideIcons.star,
                        size: 14,
                        color: colorScheme.tertiary,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Favorites',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ValueListenableBuilder<SyncState>(
                    valueListenable: SyncService.instance.syncState,
                    builder: (_, state, _) {
                      final spinning = state == SyncState.syncing;
                      return Semantics(
                        label: 'Refresh favorites',
                        button: true,
                        child: GestureDetector(
                          onTap: () {
                            unawaited(HapticFeedback.mediumImpact());
                            _load(force: true);
                          },
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: colorScheme.surfaceContainerHighest
                                  .withValues(alpha: 0.5),
                              shape: BoxShape.circle,
                            ),
                            child:
                                spinning
                                    ? Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: CircularProgressIndicator(
                                        strokeWidth: 1.5,
                                        color: colorScheme.primary,
                                      ),
                                    )
                                    : Icon(
                                      LucideIcons.refreshCw,
                                      size: 16,
                                      color: colorScheme.onSurfaceVariant,
                                    ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Body
            Expanded(
              child: ValueListenableBuilder<List<FavoriteMeal>>(
                valueListenable: SyncService.instance.favoriteMeals,
                builder: (_, favorites, _) {
                  if (!_loaded && favorites.isEmpty) {
                    return const ListScreenSkeleton();
                  }
                  if (_error != null && favorites.isEmpty) {
                    return _ErrorView(
                      message: _error!,
                      onRetry: () => _load(force: true),
                    );
                  }
                  if (favorites.isEmpty) {
                    return _EmptyView();
                  }
                  return RefreshIndicator(
                    onRefresh: () => _load(force: true),
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleBack(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Semantics(
      label: 'Back',
      button: true,
      child: GestureDetector(
        onTap: () {
          unawaited(HapticFeedback.lightImpact());
          context.router.pop();
        },
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back,
            size: 16,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
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
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorScheme.outline.withValues(alpha: 0.2),
              ),
            ),
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
                          _MiniMacro(
                            color: colorScheme.proteinIconColor,
                            value: meal.macros.protein,
                            label: 'P',
                          ),
                          const SizedBox(width: 5),
                          _MiniMacro(
                            color: colorScheme.carbsIconColor,
                            value: meal.macros.carbs,
                            label: 'C',
                          ),
                          const SizedBox(width: 5),
                          _MiniMacro(
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

class _MiniMacro extends StatelessWidget {
  const _MiniMacro({
    required this.color,
    required this.value,
    required this.label,
  });
  final Color color;
  final int value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      '$label:${value}g',
      style: theme.textTheme.labelSmall?.copyWith(
        color: color,
        fontSize: 8,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

// ── misc views ────────────────────────────────────────────────────────────────

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
                      size: 13,
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
      label: 'No favorite meals yet',
      child: Center(
        child: Padding(
          padding: circularWatchPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                LucideIcons.star,
                size: 36,
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.35),
              ),
              const SizedBox(height: 10),
              Text(
                'No favorites yet',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Star meals in the phone app',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
