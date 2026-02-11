import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

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
      padding: EdgeInsets.all(12),
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
                t.home.favoriteMeals.title,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            t.home.favoriteMeals.description,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 14),
          StreamBuilder<List<FavoriteMeal>>(
            stream:
                DatabaseService.databaseInterface.watchLastUsedFavoriteMeals(),
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
                        (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final meal = favoriteMeals[index];
                      return _MealTile(favoriteMeal: meal);
                    },
                  ),
                  if (favoriteMeals.length > 3) ...[
                    SizedBox(height: 6),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          visualDensity: VisualDensity.compact,
                        ),
                        onPressed: () {
                          Analytics.instance.logEvent(
                            AnalyticsEvent.viewFavorites,
                          );
                          context.router.push(const FavoritesRoute());
                        },
                        child: Text(t.home.favoriteMeals.seeAll),
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
          const SizedBox(height: 12),
          Icon(
            LucideIcons.star,
            size: 48,
            color: colorScheme.onSecondary.withValues(alpha: 0.3),
          ),
          const SizedBox(height: 12),
          Text(
            t.home.favoriteMeals.noFavorites,
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          Text(
            t.home.favoriteMeals.addFavoriteHint,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class _MealTile extends StatelessWidget {
  const _MealTile({required this.favoriteMeal});

  final FavoriteMeal favoriteMeal;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final meal = favoriteMeal.loggedMeal.meal;

    return InkWell(
      onTap:
          () => showMealTip(
            context: context,
            loggedMeal: favoriteMeal.loggedMeal,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.name,
                    style: textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    '${meal.macros.calories} kcal',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            PrimaryButton(
              analyticsEvent: AnalyticsEvent.addMealFromFavorites,
              onPressed: () async {
                try {
                  await logMeal(context, meal, parentContext: context);
                  final favMealId = favoriteMeal.clientId;
                  await DatabaseService.databaseInterface
                      .updateFavoriteLastUsedAt(favMealId);
                  if (context.mounted) {
                    showFlushbar(t.meal.addedToLog, context: context);
                  }
                } on Exception catch (e) {
                  if (context.mounted) {
                    showFlushbar(t.meal.couldNotAdd(error: e), context: context);
                  }
                }
              },
              text: t.home.favoriteMeals.add,
              leadingIcon: LucideIcons.plus,
              minimumSize: const Size(40, 40),
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ],
        ),
      ),
    );
  }
}
