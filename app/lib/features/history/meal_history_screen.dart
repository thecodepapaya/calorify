import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/errors/app_error.dart';
import 'package:calorify/core/providers/history_providers.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class MealHistoryScreen extends ConsumerStatefulWidget {
  const MealHistoryScreen({super.key});

  @override
  ConsumerState<MealHistoryScreen> createState() => _MealHistoryScreenState();
}

class _MealHistoryScreenState extends ConsumerState<MealHistoryScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      unawaited(ref.read(mealHistoryProvider.notifier).loadMore());
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final historyAsync = ref.watch(mealHistoryProvider);

    return Scaffold(
      body: Padding(
        padding: globalMargin,
        child: historyAsync.when(
          loading: () => const Center(child: AppLoader()),
          error:
              (error, _) => ErrorView(
                error: error,
                onRetry: () => ref.invalidate(mealHistoryProvider),
              ),
          data: (historyState) {
            final groupedMeals = _groupMealsByDay(historyState.meals);

            if (groupedMeals.isEmpty && historyState.allMealsLoaded) {
              return Center(child: _emptyView);
            }

            return ListView.builder(
              controller: _scrollController,
              itemCount:
                  groupedMeals.length + (historyState.allMealsLoaded ? 0 : 1),
              itemBuilder: (context, index) {
                if (index == groupedMeals.length &&
                    !historyState.allMealsLoaded) {
                  return _PaginationStatus(
                    isLoadingMore: historyState.isLoadingMore,
                    error: historyState.loadMoreError,
                    onRetry:
                        () => unawaited(
                          ref
                              .read(mealHistoryProvider.notifier)
                              .loadMore(force: true),
                        ),
                  );
                }
                if (index >= groupedMeals.length) {
                  return const SizedBox.shrink();
                }

                final _DayMeals dayData = groupedMeals[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _DateDivider(
                      date: dayData.date,
                      totalCalories: dayData.totalCalories,
                    ),
                    ...dayData.mealsInDay.map(
                      (loggedMeal) => MealLogCard(
                        loggedMeal: loggedMeal,
                        showTimestamp: false,
                      ),
                    ),
                    if (index == groupedMeals.length - 1)
                      const SizedBox(height: 120),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget get _emptyView => EmptyStateWidget(
    icon: LucideIcons.listChecks,
    title: t.history.noMeals,
    subtitle: t.history.emptyMessage,
  );

  List<_DayMeals> _groupMealsByDay(List<LoggedMeal> allMeals) {
    if (allMeals.isEmpty) return [];

    List<_DayMeals> groupedDayMeals = [];
    DateTime? currentDay;
    List<LoggedMeal> mealsForCurrentDay = [];
    int caloriesForCurrentDay = 0;

    for (final loggedMeal in allMeals) {
      final dateTime = loggedMeal.dateTime;

      final mealDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

      if (currentDay == null) {
        currentDay = mealDate;
      } else if (currentDay != mealDate) {
        groupedDayMeals.add(
          _DayMeals(
            date: currentDay,
            mealsInDay: List.from(mealsForCurrentDay),
            totalCalories: caloriesForCurrentDay,
          ),
        );
        mealsForCurrentDay.clear();
        caloriesForCurrentDay = 0;
        currentDay = mealDate;
      }

      mealsForCurrentDay.add(loggedMeal);
      caloriesForCurrentDay += loggedMeal.meal.macros.calories;
    }

    if (currentDay != null && mealsForCurrentDay.isNotEmpty) {
      groupedDayMeals.add(
        _DayMeals(
          date: currentDay,
          mealsInDay: List.from(mealsForCurrentDay),
          totalCalories: caloriesForCurrentDay,
        ),
      );
    }

    return groupedDayMeals;
  }
}

class _PaginationStatus extends StatelessWidget {
  const _PaginationStatus({
    required this.isLoadingMore,
    required this.error,
    required this.onRetry,
  });

  final bool isLoadingMore;
  final AppError? error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    if (isLoadingMore) {
      return const Center(child: AppLoader());
    }

    if (error == null) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final color = theme.colorScheme.onSurface.withValues(alpha: 0.7);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _messageFor(error!),
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(color: color),
          ),
          const SizedBox(height: 8),
          FilledButton.tonalIcon(
            onPressed: onRetry,
            icon: const Icon(LucideIcons.refreshCw, size: 16),
            label: Text(t.errors.retry),
          ),
        ],
      ),
    );
  }

  String _messageFor(AppError error) {
    return switch (error) {
      NetworkError() => t.errors.networkError,
      RateLimitError() => t.errors.rateLimitExceeded,
      AuthError() ||
      ServerError() ||
      ValidationError() ||
      ParseError() => error.message,
      UnknownError() =>
        error.message.isNotEmpty ? error.message : t.errors.somethingWentWrong,
    };
  }
}

class _DayMeals {
  final DateTime date;
  final List<LoggedMeal> mealsInDay;
  final int totalCalories;

  _DayMeals({
    required this.date,
    required this.mealsInDay,
    required this.totalCalories,
  });
}

class _DateDivider extends StatelessWidget {
  final DateTime date;
  final int totalCalories;

  const _DateDivider({required this.date, required this.totalCalories});

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (date == today) {
      return t.history.today;
    } else if (date == yesterday) {
      return t.history.yesterday;
    } else if (now.year == date.year) {
      return DateFormat('dd MMM').format(date);
    } else {
      return DateFormat('dd MMM yyyy').format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    final dateString = _formatDate(date);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            dateString,
            style: textTheme.titleMedium?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 8),
          Expanded(child: Divider()),
          SizedBox(width: 8),
          NutrientIconWithValue(
            icon: LucideIcons.flame,
            value: totalCalories.toDouble(),
            unit: '',
            iconColor: theme.colorScheme.calorieIconColor,
          ),
        ],
      ),
    );
  }
}
