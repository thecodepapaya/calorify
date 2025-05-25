import 'dart:async';

import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/mappers/meal_info_mapper.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:drift/drift.dart' as db;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
    _fetchMeals(); // Initial fetch
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
    if (isLoading || allMealsLoaded) {
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      final query = appDb.select(appDb.mealInfoTable)
        ..orderBy([(t) => db.OrderingTerm(expression: t.timestamp, mode: db.OrderingMode.desc)])
        ..limit(_mealsPerPage)
        ..offset(currentPage * _mealsPerPage);
      
      final result = await query.get();
      final fetchedMeals = result.map(MealInfoMapper.fromRow).toList();

      if (fetchedMeals.length < _mealsPerPage) {
        allMealsLoaded = true;
      }

      meals.addAll(fetchedMeals);
      currentPage++;
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<_DayMeals> groupedMeals = _groupMealsByDay(meals);

    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: Padding(
        padding: globalMargin,
        child: Builder(
          builder: (context) {
            if (isLoading && groupedMeals.isEmpty) {
              return Center(child: CircularProgressIndicator());
            }

            if (groupedMeals.isEmpty && !allMealsLoaded) {
              return Center(
                child: Text(
                  'No meals recorded yet.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              );
            }
            
            return ListView.builder(
              controller: _scrollController,
              itemCount: groupedMeals.length + (allMealsLoaded ? 0 : 1),
              itemBuilder: (context, index) {
                if (index == groupedMeals.length && !allMealsLoaded) {
                  return Center(child: CircularProgressIndicator());
                }
                if (index >= groupedMeals.length) { // Should not happen if allMealsLoaded is true
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
                    ...dayData.mealsInDay
                        .map((meal) => MealLogCard(mealInfo: meal))
                        .toList(),
                    if (index == groupedMeals.length -1 ) SizedBox(height: 20), // Add space at the very end
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  List<_DayMeals> _groupMealsByDay(List<MealInfo> allMeals) {
    if (allMeals.isEmpty) {
      return [];
    }

    List<_DayMeals> groupedDayMeals = [];
    DateTime? currentDay;
    List<MealInfo> mealsForCurrentDay = [];
    int caloriesForCurrentDay = 0;

    for (final meal in allMeals) {
      final mealDate = DateTime(meal.timestamp.year, meal.timestamp.month, meal.timestamp.day);

      if (currentDay == null) {
        // First meal
        currentDay = mealDate;
      } else if (currentDay != mealDate) {
        // New day started
        groupedDayMeals.add(_DayMeals(
          date: currentDay,
          mealsInDay: List.from(mealsForCurrentDay), // Create a copy
          totalCalories: caloriesForCurrentDay,
        ));
        mealsForCurrentDay.clear();
        caloriesForCurrentDay = 0;
        currentDay = mealDate;
      }

      mealsForCurrentDay.add(meal);
      caloriesForCurrentDay += meal.calories;
    }

    // Add the last processed day
    if (currentDay != null && mealsForCurrentDay.isNotEmpty) {
      groupedDayMeals.add(_DayMeals(
        date: currentDay,
        mealsInDay: List.from(mealsForCurrentDay),
        totalCalories: caloriesForCurrentDay,
      ));
    }
    // The list is already sorted by date descending because allMeals is sorted descending.
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

  const _DateDivider({
    super.key,
    required this.date,
    required this.totalCalories,
  });

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (date == today) {
      return 'Today';
    } else if (date == yesterday) {
      return 'Yesterday';
    } else {
      return DateFormat('dd MMM').format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0), // Added horizontal padding
      child: Row(
        children: [
          Text(
            _formatDate(date),
            style: textTheme.titleMedium?.copyWith(fontSize: 18, fontWeight: FontWeight.w600), // Made it bold
          ),
          SizedBox(width: 8),
          Expanded(child: Divider()),
          SizedBox(width: 8),
          NutrientIconWithValue(
            icon: LucideIcons.flame,
            value: totalCalories,
            unit: '', // kcal is usually implied or part of MealLogCard
            iconColor: calorieIconColor, // Ensure this is defined or imported
            textStyle: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
