import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/meal_log_providers.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

class FavoriteMeals extends ConsumerWidget {
  const FavoriteMeals({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final favoriteMealsAsync = ref.watch(lastUsedFavoriteMealsProvider);

    return AppCard(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: SectionHeader(
                  icon: LucideIcons.star,
                  title: t.home.favoriteMeals.title,
                ),
              ),
              FilledButton.tonalIcon(
                onPressed:
                    () => showEditMealSheet(context, saveAsFavorite: true),
                icon: const Icon(LucideIcons.plus, size: 18),
                label: Text(t.home.favoriteMeals.add),
                style: FilledButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            t.home.favoriteMeals.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 14),
          favoriteMealsAsync.when(
            loading: () => const SizedBox.shrink(),
            error: (error, _) => ErrorView(error: error),
            data: (favoriteMeals) {
              if (favoriteMeals.isEmpty) {
                return EmptyStateWidget(
                  icon: LucideIcons.star,
                  title: t.home.favoriteMeals.noFavorites,
                  subtitle: t.home.favoriteMeals.addFavoriteHint,
                );
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

class _MealTile extends StatelessWidget {
  const _MealTile({required this.favoriteMeal});

  final FavoriteMeal favoriteMeal;

  @override
  Widget build(BuildContext context) {
    final container = ProviderScope.containerOf(context, listen: false);
    final database = container.read(databaseInterfaceProvider);
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final meal = favoriteMeal.loggedMeal.meal;

    return InkWell(
      onTap:
          () => showMealTip(
            context: context,
            purpose: MealDetailsSheetPurpose.favorites,
            loggedMeal: favoriteMeal.loggedMeal,
            favoriteId: favoriteMeal.clientId,
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
            AppButton(
              variant: AppButtonVariant.primary,
              analyticsEvent: AnalyticsEvent.addMealFromFavorites,
              onPressed: () async {
                try {
                  await logMeal(context, meal, parentContext: context);
                  final favMealId = favoriteMeal.clientId;
                  await database.updateFavoriteLastUsedAt(favMealId);
                  if (context.mounted) {
                    showFlushbar(t.meal.addedToLog, context: context);
                  }
                } on Exception catch (e) {
                  if (context.mounted) {
                    showFlushbar(
                      t.meal.couldNotAdd(error: e),
                      context: context,
                    );
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
