import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:models/models.dart';
import 'package:calorify_watch/widgets/calorie_summary_card.dart';
import 'package:calorify_watch/widgets/macro_chart.dart';
import 'package:calorify_watch/widgets/meal_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<MealInfo> _todaysMeals = [];
  int? _calorieGoal;
  int _totalCalories = 0;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);

    try {
      final meals = await SyncService.instance.requestTodaysMeals();
      final goal = await SyncService.instance.requestCalorieGoal();

      setState(() {
        _todaysMeals = meals;
        _calorieGoal = goal;
        _totalCalories = meals.fold(0, (sum, meal) => sum + meal.calories);
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: colorScheme.primary,
              ),
            )
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 60,
                  backgroundColor: colorScheme.surface,
                  title: Text(
                    'Calorify',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: _loadData,
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CalorieSummaryCard(
                          totalCalories: _totalCalories,
                          goal: _calorieGoal ?? 2000,
                        ),
                        const SizedBox(height: 8),
                        MacroChart(meals: _todaysMeals),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _ActionButton(
                              icon: Icons.add,
                              label: 'Log Meal',
                              onTap: () => context.push('/log-meal'),
                            ),
                            _ActionButton(
                              icon: Icons.history,
                              label: 'History',
                              onTap: () => context.push('/history'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        if (_todaysMeals.isNotEmpty) ...[
                          Text(
                            'Today\'s Meals',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          ..._todaysMeals.map(
                            (meal) => MealListItem(meal: meal),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: colorScheme.onPrimaryContainer),
            const SizedBox(height: 4),
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
