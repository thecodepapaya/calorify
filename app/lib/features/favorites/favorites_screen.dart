import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/favorites_providers.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  late final TextEditingController _searchController;
  var _query = '';
  var _sortOption = FavoriteSortOption.recent;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final favoritesAsync = ref.watch(favoriteMealsProvider);
    final visibleFavorites = ref.watch(
      filteredFavoriteMealsProvider((query: _query, sortOption: _sortOption)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(t.favorites.title),
        actions: [
          IconButton.filledTonal(
            onPressed: _openCustomFavoriteMealSheet,
            tooltip: t.meal.addMeal,
            icon: const Icon(LucideIcons.plus),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ResponsiveContent(
        maxWidth: 840,
        child: Padding(
          padding: globalMargin,
          child: favoritesAsync.when(
            loading: () => const AppLoader(),
            error:
                (error, _) => ErrorView(
                  error: error,
                  onRetry: () => ref.invalidate(favoriteMealsProvider),
                ),
            data: (favorites) {
              if (favorites.isEmpty) {
                return _EmptyFavoritesState(message: t.favorites.empty);
              }

              return Column(
                children: [
                  _FavoritesToolbar(
                    controller: _searchController,
                    query: _query,
                    sortOption: _sortOption,
                    onChanged: (value) => setState(() => _query = value.trim()),
                    onClear: () {
                      _searchController.clear();
                      setState(() => _query = '');
                    },
                    onSortChanged: (value) {
                      setState(() => _sortOption = value);
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child:
                        visibleFavorites.isEmpty
                            ? const _EmptySearchState()
                            : ListView.separated(
                              itemCount: visibleFavorites.length,
                              separatorBuilder:
                                  (_, _) => const SizedBox.shrink(),
                              itemBuilder: (context, index) {
                                final favorite = visibleFavorites[index];
                                return Dismissible(
                                  key: ValueKey(
                                    'favorite-${favorite.clientId}',
                                  ),
                                  direction: DismissDirection.endToStart,
                                  background: const _DeleteFavoriteBackground(),
                                  onDismissed:
                                      (_) => _removeFavorite(ref, favorite),
                                  child: _FavoriteMealCard(
                                    favoriteMeal: favorite,
                                  ),
                                );
                              },
                            ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _openCustomFavoriteMealSheet() {
    return showEditMealSheet(context, saveAsFavorite: true);
  }

  Future<void> _removeFavorite(WidgetRef ref, FavoriteMeal favorite) async {
    final messenger = ScaffoldMessenger.of(context);

    try {
      await ref
          .read(favoriteMealsProvider.notifier)
          .removeFavoriteMeal(favorite);

      if (!mounted) return;

      messenger.hideCurrentSnackBar();
      messenger.showSnackBar(
        SnackBar(
          content: Text(
            t.favorites.removed(name: favorite.loggedMeal.meal.name),
          ),
          action: SnackBarAction(
            label: t.favorites.undo,
            onPressed:
                () => unawaited(_restoreFavorite(ref, favorite.loggedMeal)),
          ),
        ),
      );
    } catch (_) {
      if (!mounted) return;
      messenger.showSnackBar(
        SnackBar(content: Text(t.errors.somethingWentWrong)),
      );
    }
  }

  Future<void> _restoreFavorite(WidgetRef ref, LoggedMeal meal) async {
    final messenger = ScaffoldMessenger.of(context);

    try {
      await ref.read(favoriteMealsProvider.notifier).restoreFavoriteMeal(meal);
    } catch (_) {
      if (!mounted) return;
      messenger.showSnackBar(
        SnackBar(content: Text(t.errors.somethingWentWrong)),
      );
    }
  }
}

class _FavoritesToolbar extends StatelessWidget {
  const _FavoritesToolbar({
    required this.controller,
    required this.query,
    required this.sortOption,
    required this.onChanged,
    required this.onClear,
    required this.onSortChanged,
  });

  final TextEditingController controller;
  final String query;
  final FavoriteSortOption sortOption;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;
  final ValueChanged<FavoriteSortOption> onSortChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon: const Icon(LucideIcons.search),
              suffixIcon:
                  query.isEmpty
                      ? null
                      : IconButton(
                        onPressed: onClear,
                        icon: const Icon(LucideIcons.x),
                      ),
              hintText: t.favorites.searchPlaceholder,
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
          ),
        ),
        const SizedBox(width: 12),
        PopupMenuButton<FavoriteSortOption>(
          tooltip: t.favorites.sortLabel,
          initialValue: sortOption,
          onSelected: onSortChanged,
          itemBuilder:
              (context) => [
                PopupMenuItem(
                  value: FavoriteSortOption.recent,
                  child: Text(t.favorites.sortOptions.recent),
                ),
                PopupMenuItem(
                  value: FavoriteSortOption.calories,
                  child: Text(t.favorites.sortOptions.calories),
                ),
                PopupMenuItem(
                  value: FavoriteSortOption.alphabetical,
                  child: Text(t.favorites.sortOptions.alphabetical),
                ),
              ],
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: globalRadius,
              border: Border.all(color: theme.colorScheme.outline),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(LucideIcons.arrowUpDown, size: 18),
                const SizedBox(width: 8),
                Text(_sortLabel(sortOption)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _sortLabel(FavoriteSortOption option) {
    return switch (option) {
      FavoriteSortOption.recent => t.favorites.sortOptions.recent,
      FavoriteSortOption.calories => t.favorites.sortOptions.calories,
      FavoriteSortOption.alphabetical => t.favorites.sortOptions.alphabetical,
    };
  }
}

class _FavoriteMealCard extends StatelessWidget {
  const _FavoriteMealCard({required this.favoriteMeal});

  final FavoriteMeal favoriteMeal;

  @override
  Widget build(BuildContext context) {
    return MealLogCard(
      loggedMeal: favoriteMeal.loggedMeal,
      favoriteId: favoriteMeal.clientId,
      showTimestamp: false,
      sheetPurpose: MealDetailsSheetPurpose.favorites,
    );
  }
}

class _DeleteFavoriteBackground extends StatelessWidget {
  const _DeleteFavoriteBackground();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: globalRadius,
      ),
      child: Icon(
        LucideIcons.trash2,
        color: theme.colorScheme.onErrorContainer,
      ),
    );
  }
}

class _EmptyFavoritesState extends StatelessWidget {
  const _EmptyFavoritesState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EmptyStateWidget(
        icon: LucideIcons.star,
        title: message,
        subtitle: t.home.favoriteMeals.addFavoriteHint,
      ),
    );
  }
}

class _EmptySearchState extends StatelessWidget {
  const _EmptySearchState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EmptyStateWidget(
        icon: LucideIcons.searchX,
        title: t.favorites.searchEmptyTitle,
        subtitle: t.favorites.searchEmptySubtitle,
      ),
    );
  }
}
