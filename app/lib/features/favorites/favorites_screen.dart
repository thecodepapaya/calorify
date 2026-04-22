import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/favorites_providers.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
import 'package:widgets/widgets.dart';

enum _FavoriteSortOption { recent, calories, alphabetical }

@RoutePage()
class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  late final TextEditingController _searchController;
  String _query = '';
  _FavoriteSortOption _sortOption = _FavoriteSortOption.recent;

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

    return Scaffold(
      appBar: AppBar(title: Text(t.favorites.title)),
      body: Padding(
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

            final visibleFavorites = _applySearchAndSort(favorites);

            return Column(
              children: [
                _FavoritesToolbar(
                  controller: _searchController,
                  sortOption: _sortOption,
                  onChanged: (value) => setState(() => _query = value.trim()),
                  onClear: () {
                    _searchController.clear();
                    setState(() => _query = '');
                  },
                  onSortChanged: (value) => setState(() => _sortOption = value),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child:
                      visibleFavorites.isEmpty
                          ? const _EmptySearchState()
                          : ListView.separated(
                            itemCount: visibleFavorites.length,
                            separatorBuilder:
                                (_, _) => const SizedBox(height: 12),
                            itemBuilder: (context, index) {
                              final favorite = visibleFavorites[index];
                              return Dismissible(
                                key: ValueKey(
                                  'favorite-${favorite.loggedMeal.clientId}',
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
    );
  }

  List<FavoriteMeal> _applySearchAndSort(List<FavoriteMeal> favorites) {
    final query = _query.toLowerCase();
    final filtered =
        favorites.where((favorite) {
          if (query.isEmpty) return true;
          final meal = favorite.loggedMeal.meal;
          final haystacks = [meal.name, meal.quantity, meal.type.legacyName];
          return haystacks.any((value) => value.toLowerCase().contains(query));
        }).toList();

    filtered.sort((a, b) {
      return switch (_sortOption) {
        _FavoriteSortOption.recent => _sortByRecent(a, b),
        _FavoriteSortOption.calories => b.loggedMeal.meal.macros.calories
            .compareTo(a.loggedMeal.meal.macros.calories),
        _FavoriteSortOption.alphabetical => a.loggedMeal.meal.name
            .toLowerCase()
            .compareTo(b.loggedMeal.meal.name.toLowerCase()),
      };
    });

    return filtered;
  }

  int _sortByRecent(FavoriteMeal a, FavoriteMeal b) {
    final aDate =
        iso8601StringToDateTime(a.lastUsedAt) ??
        iso8601StringToDateTime(a.favoriteAt) ??
        a.loggedMeal.dateTime;
    final bDate =
        iso8601StringToDateTime(b.lastUsedAt) ??
        iso8601StringToDateTime(b.favoriteAt) ??
        b.loggedMeal.dateTime;
    return bDate.compareTo(aDate);
  }

  Future<void> _removeFavorite(WidgetRef ref, FavoriteMeal favorite) async {
    final messenger = ScaffoldMessenger.of(context);

    try {
      await ref
          .read(favoriteMealsProvider.notifier)
          .removeFavoriteMeal(favorite.loggedMeal);

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
    required this.sortOption,
    required this.onChanged,
    required this.onClear,
    required this.onSortChanged,
  });

  final TextEditingController controller;
  final _FavoriteSortOption sortOption;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;
  final ValueChanged<_FavoriteSortOption> onSortChanged;

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
                  controller.text.isEmpty
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
        PopupMenuButton<_FavoriteSortOption>(
          tooltip: t.favorites.sortLabel,
          initialValue: sortOption,
          onSelected: onSortChanged,
          itemBuilder:
              (context) => [
                PopupMenuItem(
                  value: _FavoriteSortOption.recent,
                  child: Text(t.favorites.sortOptions.recent),
                ),
                PopupMenuItem(
                  value: _FavoriteSortOption.calories,
                  child: Text(t.favorites.sortOptions.calories),
                ),
                PopupMenuItem(
                  value: _FavoriteSortOption.alphabetical,
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

  String _sortLabel(_FavoriteSortOption option) {
    return switch (option) {
      _FavoriteSortOption.recent => t.favorites.sortOptions.recent,
      _FavoriteSortOption.calories => t.favorites.sortOptions.calories,
      _FavoriteSortOption.alphabetical => t.favorites.sortOptions.alphabetical,
    };
  }
}

class _FavoriteMealCard extends StatelessWidget {
  const _FavoriteMealCard({required this.favoriteMeal});

  final FavoriteMeal favoriteMeal;

  @override
  Widget build(BuildContext context) {
    final meal = favoriteMeal.loggedMeal.meal;
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: globalRadius,
        onTap:
            () => showMealTip(
              context: context,
              loggedMeal: favoriteMeal.loggedMeal,
            ),
        child: Ink(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: globalRadius,
            border: Border.all(color: theme.colorScheme.outline),
            color: theme.colorScheme.surfaceContainerLowest,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meal.name,
                          style: theme.textTheme.titleMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          meal.quantity,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (meal.type != MealType.UNKNOWN)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        border: Border.all(color: theme.colorScheme.outline),
                      ),
                      child: MealTypeIndicator(type: meal.type),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _MacroChip(
                    label: t.home.dailySummary.calories,
                    value: '${meal.macros.calories}',
                    color: theme.colorScheme.calorieIconColor,
                  ),
                  _MacroChip(
                    label: t.home.dailySummary.protein,
                    value: '${meal.macros.protein.toStringAsFixed(0)}g',
                    color: proteinIconColor,
                  ),
                  _MacroChip(
                    label: t.home.dailySummary.carbs,
                    value: '${meal.macros.carbs.toStringAsFixed(0)}g',
                    color: carbsIconColor,
                  ),
                  _MacroChip(
                    label: t.home.dailySummary.fat,
                    value: '${meal.macros.fat.toStringAsFixed(0)}g',
                    color: fatIconColor,
                  ),
                  _MacroChip(
                    label: t.home.dailySummary.fiber,
                    value: '${meal.macros.fiber.toStringAsFixed(0)}g',
                    color: fiberIconColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MacroChip extends StatelessWidget {
  const _MacroChip({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: color.withValues(alpha: 0.12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 8),
          Text(
            '$label $value',
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
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
