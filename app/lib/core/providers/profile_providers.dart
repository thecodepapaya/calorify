import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

final savedDailyCalorieGoalProvider = FutureProvider.autoDispose<int?>((ref) {
  return ref.watch(databaseInterfaceProvider).getDailyCalorieGoal();
});

final profileActionsProvider = Provider<ProfileActions>((ref) {
  return ProfileActions(
    database: ref.watch(databaseInterfaceProvider),
    profileRepository: ref.watch(profileRepositoryProvider),
  );
});

class ProfileActions {
  const ProfileActions({
    required DatabaseInterface database,
    required ProfileRepository profileRepository,
  }) : _database = database,
       _profileRepository = profileRepository;

  final DatabaseInterface _database;
  final ProfileRepository _profileRepository;

  Future<void> saveProfile({
    required UserProfile profile,
    required int dailyCalorieGoal,
  }) async {
    final updated = profile.deepCopy();
    if (dailyCalorieGoal > 0) {
      updated.dailyCalorieGoal = dailyCalorieGoal;
    } else {
      updated.clearDailyCalorieGoal();
    }
    await _profileRepository.saveUserProfile(updated);
  }

  Future<void> updateProfile(UserProfile profile) async {
    await _profileRepository.saveUserProfile(profile);
  }

  Future<void> updateDailyCalorieGoal(int goal) async {
    await _profileRepository.updateDailyCalorieGoal(goal);
  }

  Future<void> clearAllData() {
    return _database.clearAllData();
  }
}
