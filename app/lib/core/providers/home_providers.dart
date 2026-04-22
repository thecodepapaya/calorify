import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/models/ai_summary_result.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

final databaseInterfaceProvider = Provider<DatabaseInterface>((ref) {
  return DatabaseService.databaseInterface;
});

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  return FoodRepository();
});

final healthServiceProvider = Provider<HealthService>((ref) {
  return HealthService.instance;
});

final onboardingServiceProvider = Provider<OnboardingService>((ref) {
  return OnboardingService.instance;
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

final aiSummaryProvider = FutureProvider.autoDispose<AiSummaryResult?>((ref) {
  return ref.watch(foodRepositoryProvider).getAiSummary();
});

final userProfileProvider = FutureProvider.autoDispose<UserProfile?>((ref) {
  return ref.watch(onboardingServiceProvider).getProfileData();
});

final caloriesBurnedProvider = FutureProvider.autoDispose
    .family<CaloriesResult?, int>((ref, refreshTrigger) {
      return ref.watch(healthServiceProvider).getTotalCaloriesBurned();
    });
