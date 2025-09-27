import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/mappers/meal_detection_result_mapper.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FavoriteMeals extends StatefulWidget {
  const FavoriteMeals({super.key});

  @override
  State<FavoriteMeals> createState() => _FavoriteMealsState();
}

class _FavoriteMealsState extends State<FavoriteMeals> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.star, color: colorScheme.primary),
              SizedBox(width: 8),
              Text(
                'Favorite Meals',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Quickly add one of your favorite meals.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 20),
          StreamBuilder<List<MealInfo>>(
            stream: appDb.watchLastUsedFavoriteMeals(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorView(error: snapshot.error!);
              }
              final favoriteMeals = snapshot.data;
              if (favoriteMeals == null || favoriteMeals.isEmpty) {
                return const _NoFavorites();
              }
              return Column(
                children: [
                  ListView.separated(
                    itemCount: favoriteMeals.length.clamp(0, 3),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder:
                        (context, index) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final meal = favoriteMeals[index];
                      return _MealTile(meal: meal);
                    },
                  ),
                  if (favoriteMeals.length > 3) ...[
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          visualDensity: VisualDensity.compact,
                        ),
                        onPressed: () {
                          context.router.push(const FavoritesRoute());
                        },
                        child: const Text('See all'),
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NoFavorites extends StatelessWidget {
  const _NoFavorites();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Text(
            'No favorite meals yet.',
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          Text(
            'Click the star on a meal to mark it as a favorite.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _MealTile extends StatelessWidget {
  const _MealTile({required this.meal});

  final MealInfo meal;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return InkWell(
      onTap:
          () => showMealTip(
            context: context,
            mealDetectionResult: meal.toMealDetectionResult(),
            allowEdit: false,
          ),

      borderRadius: globalRadius,
      child: Container(
        padding: globalInnerPadding,
        decoration: BoxDecoration(
          borderRadius: globalRadius,
          color: colorScheme.secondaryFixedDim.withValues(alpha: 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(meal.mealName, style: textTheme.titleMedium),
                Text(
                  '${meal.calories} kcal',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () async {
                try {
                  final newMeal = meal.copyWith(timestamp: DateTime.now());
                  await appDb.logMeal(newMeal);
                  await appDb.updateFavoriteLastUsedAt(meal.id!);
                  if (context.mounted) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(snack('Meal added to your log!'));
                  }
                } on Exception catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(snack('Could not add meal: $e'));
                  }
                }
              },
              style: ButtonStyle(
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 12),
                ),
                minimumSize: const WidgetStatePropertyAll(Size(40, 40)),
                backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
                foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: globalRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(LucideIcons.plus),
                  SizedBox(width: 4),
                  Text(
                    'Add',
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
