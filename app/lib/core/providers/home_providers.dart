export 'package:calorify/core/providers/app_dependencies.dart';

import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  return FoodRepository();
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
  return ref.watch(onboardingServiceProvider).getProfileData();
});

final caloriesBurnedProvider = FutureProvider.autoDispose
    .family<CaloriesResult?, int>((ref, refreshTrigger) {
      return ref.watch(healthServiceProvider).getTotalCaloriesBurned();
    });
