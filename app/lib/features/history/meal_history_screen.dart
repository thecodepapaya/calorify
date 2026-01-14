import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class MealHistoryScreen extends StatefulWidget {
  const MealHistoryScreen({super.key});

  @override
  State<MealHistoryScreen> createState() => _MealHistoryScreenState();
}

class _MealHistoryScreenState extends State<MealHistoryScreen> {
  List<MealInfo> meals = [];
  int currentPage = 0;
  bool isLoading = false;
  bool allMealsLoaded = false;
  final ScrollController _scrollController = ScrollController();

  static const int _mealsPerPage = 30;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _fetchMeals();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _fetchMeals();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _fetchMeals() async {
    if (isLoading || allMealsLoaded) return;

    setState(() => isLoading = true);

    try {
      final fetchedMeals = await DatabaseService.databaseInterface
          .paginatedMealsHistory(offset: currentPage * _mealsPerPage);

      if (fetchedMeals.length < _mealsPerPage) allMealsLoaded = true;

      meals.addAll(fetchedMeals);
      currentPage++;
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<_DayMeals> groupedMeals = _groupMealsByDay(meals);

    return Scaffold(
      body: Padding(
        padding: globalMargin,
        child: Builder(
          builder: (context) {
            if (isLoading && groupedMeals.isEmpty) {
              return AppLoader();
            }

            if (groupedMeals.isEmpty && allMealsLoaded) {
              return Center(child: _emptyView);
            }

            return ListView.builder(
              controller: _scrollController,
              itemCount: groupedMeals.length + (allMealsLoaded ? 0 : 1),
              itemBuilder: (context, index) {
                if (index == groupedMeals.length && !allMealsLoaded) {
                  return Center(child: AppLoader());
                }
                if (index >= groupedMeals.length) {
                  return SizedBox.shrink();
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
                      (meal) => MealLogCard(
                        mealInfo: meal,
                        showTimestamp: false,
                        allowEdit: true,
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

  Widget get _emptyView {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          LucideIcons.listChecks,
          size: 48,
          color: colorScheme.onSecondary.withValues(alpha: 0.8),
        ),
        SizedBox(height: 20),
        Text(
          t.history.noMeals,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: colorScheme.onSecondary.withValues(alpha: 0.7),
          ),
        ),
        SizedBox(height: 12),
        Text(
          t.history.emptyMessage,
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSecondary.withValues(alpha: 0.7),
          ),
        ),
        SizedBox(height: 120),
      ],
    );
  }

  List<_DayMeals> _groupMealsByDay(List<MealInfo> allMeals) {
    if (allMeals.isEmpty) return [];

    List<_DayMeals> groupedDayMeals = [];
    DateTime? currentDay;
    List<MealInfo> mealsForCurrentDay = [];
    int caloriesForCurrentDay = 0;

    for (final meal in allMeals) {
      final mealDate = DateTime(
        meal.timestamp.year,
        meal.timestamp.month,
        meal.timestamp.day,
      );

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

      mealsForCurrentDay.add(meal);
      caloriesForCurrentDay += meal.calories;
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

class _DayMeals {
  final DateTime date;
  final List<MealInfo> mealsInDay;
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
            iconColor: calorieIconColor,
          ),
        ],
      ),
    );
  }
}
