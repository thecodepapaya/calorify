import 'package:calorify/core/providers/app_dependencies.dart'
    as app_dependencies;
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/meal_log_sync_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';
import 'package:i18n/i18n.dart';

final databaseInterfaceProvider = app_dependencies.databaseInterfaceProvider;

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  return FoodRepository();
});

final mealLogSyncServiceProvider = Provider<MealLogSyncService>((ref) {
  return MealLogSyncService(
    database: ref.watch(databaseInterfaceProvider),
    foodRepository: ref.watch(foodRepositoryProvider),
  );
});

final todaysMealsProvider = StreamProvider.autoDispose<List<LoggedMeal>>((ref) {
  return ref.watch(databaseInterfaceProvider).watchAllMealsForToday();
});

final last7DaysMealsProvider = StreamProvider.autoDispose<List<LoggedMeal>>((
  ref,
) {
  return ref.watch(databaseInterfaceProvider).watchAllMealsForLast7Days();
});

final dailyCalorieGoalProvider = StreamProvider.autoDispose<int?>((ref) {
  return ref.watch(databaseInterfaceProvider).watchDailyCalorieGoal();
});

final activeAppLocaleProvider = StreamProvider<AppLocale>((ref) async* {
  yield LocaleSettings.currentLocale;
  yield* LocaleSettings.getLocaleStream();
});

final aiSummaryProvider = FutureProvider.autoDispose<AiMealSummaryResponse?>((
  ref,
) async {
  final now = DateTime.now();
  final date =
      '${now.year.toString().padLeft(4, '0')}-'
      '${now.month.toString().padLeft(2, '0')}-'
      '${now.day.toString().padLeft(2, '0')}';
  final locale =
      ref.watch(activeAppLocaleProvider).value?.flutterLocale.toLanguageTag() ??
      LocaleSettings.currentLocale.flutterLocale.toLanguageTag();
  final row = await ref
      .watch(databaseInterfaceProvider)
      .getLocalAiSummary(date);
  return row?.resolvedLocale == locale ? row?.response : null;
});

final userProfileProvider = FutureProvider.autoDispose<UserProfile?>((ref) {
  return ref.watch(app_dependencies.onboardingServiceProvider).getProfileData();
});

final caloriesBurnedProvider = FutureProvider.autoDispose<CaloriesResult?>((
  ref,
) {
  return ref
      .watch(app_dependencies.healthServiceProvider)
      .getTotalCaloriesBurned();
});
