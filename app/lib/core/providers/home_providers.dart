import 'package:calorify/core/providers/app_dependencies.dart'
    as app_dependencies;
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/meal_log_sync_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

// local-inference consumers are intentionally outside this change and still
// import this library for database access. Keep object identity while avoiding
// the former broad re-export of every application dependency.
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

final aiSummaryProvider = FutureProvider.autoDispose<AiMealSummaryResponse?>((
  ref,
) {
  return ref.watch(foodRepositoryProvider).getAiSummary();
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
