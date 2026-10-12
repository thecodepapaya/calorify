import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart'
    hide databaseInterfaceProvider;
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/errors/app_error.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

class MealHistoryState {
  const MealHistoryState({
    required this.meals,
    required this.allMealsLoaded,
    this.isLoadingMore = false,
    this.loadMoreError,
  });

  final List<LoggedMeal> meals;
  final bool allMealsLoaded;
  final bool isLoadingMore;
  final AppError? loadMoreError;

  MealHistoryState copyWith({
    List<LoggedMeal>? meals,
    bool? allMealsLoaded,
    bool? isLoadingMore,
    AppError? loadMoreError,
    bool clearLoadMoreError = false,
  }) {
    return MealHistoryState(
      meals: meals ?? this.meals,
      allMealsLoaded: allMealsLoaded ?? this.allMealsLoaded,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      loadMoreError:
          clearLoadMoreError ? null : (loadMoreError ?? this.loadMoreError),
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
    final database = ref.watch(databaseInterfaceProvider);
    // The paginated history query is a snapshot. Listen to the existing meal
    // table stream so logs and deletes refresh that snapshot, including
    // changes arriving from the watch while this tab remains mounted.
    ref.listen(last7DaysMealsProvider, (previous, next) {
      if (previous?.hasValue == true && next.hasValue) {
        ref.invalidateSelf();
      }
    });
    final meals = await _fetchMeals(database: database, offset: 0);
    return MealHistoryState(
      meals: meals,
      allMealsLoaded: meals.length < _mealsPerPage,
    );
  }

  Future<void> loadMore({bool force = false}) async {
    final current = state.value;
    if (current == null ||
        current.isLoadingMore ||
        current.allMealsLoaded ||
        (!force && current.loadMoreError != null)) {
      return;
    }

    state = AsyncData(
      current.copyWith(isLoadingMore: true, clearLoadMoreError: true),
    );

    try {
      final nextPage = await _fetchMeals(
        database: ref.read(databaseInterfaceProvider),
        offset: current.meals.length,
      );
      state = AsyncData(
        current.copyWith(
          meals: [...current.meals, ...nextPage],
          allMealsLoaded: nextPage.length < _mealsPerPage,
          isLoadingMore: false,
          clearLoadMoreError: true,
        ),
      );
    } catch (error, stackTrace) {
      final appError = AppError.fromException(error, stackTrace);
      debugPrint('Failed to load more meal history: $appError');
      state = AsyncData(
        current.copyWith(isLoadingMore: false, loadMoreError: appError),
      );
    }
  }

  Future<List<LoggedMeal>> _fetchMeals({
    required DatabaseInterface database,
    required int offset,
  }) {
    return database.paginatedMealsHistory(offset: offset);
  }
}
