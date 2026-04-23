import 'package:calorify/core/providers/home_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

enum FavoriteSortOption { recent, calories, alphabetical }

typedef FavoriteFilterOptions =
    ({String query, FavoriteSortOption sortOption});

final favoriteMealsProvider = StreamNotifierProvider.autoDispose<
  FavoriteMealsNotifier,
  List<FavoriteMeal>
>(FavoriteMealsNotifier.new);

final filteredFavoriteMealsProvider =
    Provider.autoDispose.family<List<FavoriteMeal>, FavoriteFilterOptions>((
      ref,
      options,
    ) {
  final favorites = ref.watch(
    favoriteMealsProvider.select(
      (value) =>
          value.maybeWhen(
            data: (favorites) => favorites,
            orElse: () => const <FavoriteMeal>[],
          ),
    ),
  );
  final query = options.query.trim().toLowerCase();
  final sortOption = options.sortOption;

  final filtered =
      favorites.where((favorite) {
        if (query.isEmpty) return true;
        final meal = favorite.loggedMeal.meal;
        final haystacks = [meal.name, meal.quantity, meal.type.legacyName];
        return haystacks.any((value) => value.toLowerCase().contains(query));
      }).toList();

  filtered.sort((a, b) {
    return switch (sortOption) {
      FavoriteSortOption.recent => _sortByRecent(a, b),
      FavoriteSortOption.calories => b.loggedMeal.meal.macros.calories
          .compareTo(a.loggedMeal.meal.macros.calories),
      FavoriteSortOption.alphabetical => a.loggedMeal.meal.name
          .toLowerCase()
          .compareTo(b.loggedMeal.meal.name.toLowerCase()),
    };
  });

  return filtered;
});

class FavoriteMealsNotifier extends StreamNotifier<List<FavoriteMeal>> {
  @override
  Stream<List<FavoriteMeal>> build() {
    return ref.watch(databaseInterfaceProvider).watchAllFavoriteMeals();
  }

  Future<void> removeFavoriteMeal(LoggedMeal meal) {
    return ref
        .read(databaseInterfaceProvider)
        .removeFavoriteMeal(meal.clientId);
  }

  Future<void> restoreFavoriteMeal(LoggedMeal meal) {
    return ref.read(databaseInterfaceProvider).addToFavorites(meal);
  }
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
