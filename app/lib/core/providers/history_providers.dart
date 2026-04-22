import 'package:calorify/core/providers/home_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

class MealHistoryState {
  const MealHistoryState({
    required this.meals,
    required this.allMealsLoaded,
    this.isLoadingMore = false,
  });

  final List<LoggedMeal> meals;
  final bool allMealsLoaded;
  final bool isLoadingMore;

  MealHistoryState copyWith({
    List<LoggedMeal>? meals,
    bool? allMealsLoaded,
    bool? isLoadingMore,
  }) {
    return MealHistoryState(
      meals: meals ?? this.meals,
      allMealsLoaded: allMealsLoaded ?? this.allMealsLoaded,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }
}

final mealHistoryProvider =
    AsyncNotifierProvider.autoDispose<MealHistoryNotifier, MealHistoryState>(
      MealHistoryNotifier.new,
    );

class MealHistoryNotifier extends AsyncNotifier<MealHistoryState> {
  static const int _mealsPerPage = 30;

  @override
  Future<MealHistoryState> build() async {
    final meals = await _fetchMeals(offset: 0);
    return MealHistoryState(
      meals: meals,
      allMealsLoaded: meals.length < _mealsPerPage,
    );
  }

  Future<void> loadMore() async {
    final current = state.value;
    if (current == null || current.isLoadingMore || current.allMealsLoaded) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      final nextPage = await _fetchMeals(offset: current.meals.length);
      state = AsyncData(
        current.copyWith(
          meals: [...current.meals, ...nextPage],
          allMealsLoaded: nextPage.length < _mealsPerPage,
          isLoadingMore: false,
        ),
      );
    } catch (error) {
      debugPrint('Failed to load more meal history: $error');
      state = AsyncData(current.copyWith(isLoadingMore: false));
    }
  }

  Future<List<LoggedMeal>> _fetchMeals({required int offset}) {
    return ref
        .read(databaseInterfaceProvider)
        .paginatedMealsHistory(offset: offset);
  }
}
