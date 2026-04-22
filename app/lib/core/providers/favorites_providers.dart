import 'package:calorify/core/providers/home_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

final favoriteMealsProvider = StreamNotifierProvider.autoDispose<
  FavoriteMealsNotifier,
  List<FavoriteMeal>
>(FavoriteMealsNotifier.new);

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
