import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

final savedDailyCalorieGoalProvider = FutureProvider.autoDispose<int?>((ref) {
  return ref.watch(databaseInterfaceProvider).getDailyCalorieGoal();
});

final profileActionsProvider = Provider<ProfileActions>((ref) {
  return ProfileActions(
    database: ref.watch(databaseInterfaceProvider),
    onboardingService: ref.watch(onboardingServiceProvider),
  );
});

class ProfileActions {
  const ProfileActions({
    required DatabaseInterface database,
    required OnboardingService onboardingService,
  }) : _database = database,
       _onboardingService = onboardingService;

  final DatabaseInterface _database;
  final OnboardingService _onboardingService;

  Future<void> saveProfile({
    required UserProfile profile,
    required int dailyCalorieGoal,
    required int originalDailyCalorieGoal,
  }) async {
    await _onboardingService.saveProfileData(profile);

    if (dailyCalorieGoal != originalDailyCalorieGoal && dailyCalorieGoal > 0) {
      await _database.setDailyCalorieGoal(dailyCalorieGoal);
    }
  }

  Future<void> updateProfile(UserProfile profile) {
    return _onboardingService.saveProfileData(profile);
  }

  Future<void> clearAllData() {
    return _database.clearAllData();
  }
}
