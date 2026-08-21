import 'dart:async';

import 'package:models/models.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:calorify/core/services/analytics.dart';

class OnboardingService {
  const OnboardingService({
    required DatabaseInterface database,
    required ProfileRepository profileRepository,
    required Analytics analytics,
  }) : _database = database,
       _profileRepository = profileRepository,
       _analytics = analytics;

  final DatabaseInterface _database;
  final ProfileRepository _profileRepository;
  final Analytics _analytics;

  /// Check if onboarding has been completed
  Future<bool> isOnboardingCompleted() => _database.hasCompletedOnboarding();

  /// Return the last onboarding page, defaulting to the welcome page.
  Future<int> getOnboardingStep() async {
    return await _database.getOnboardingStep() ?? 0;
  }

  /// Persist progress before navigating to the next onboarding page.
  Future<void> saveOnboardingStep(int step) async {
    await _database.setOnboardingStep(step);
  }

  /// Mark onboarding as explicitly completed.
  Future<void> completeOnboarding() async {
    await _database.setOnboardingCompleted();
    unawaited(_profileRepository.syncPendingProfile());
    _analytics.logEvent(AnalyticsEvent.onboardingComplete);
  }

  /// Save or update profile data (upsert)
  Future<void> saveProfileData(UserProfile data) async {
    await _profileRepository.saveLocalProfile(data);
  }

  /// Get saved profile data
  Future<UserProfile?> getProfileData() => _profileRepository.getUserProfile();
}
