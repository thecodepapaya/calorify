import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/database_service.dart';

class OnboardingService {
  OnboardingService._();

  static final _instance = OnboardingService._();
  static OnboardingService get instance => _instance;

  /// Check if onboarding has been completed
  Future<bool> isOnboardingCompleted() async {
    return await DatabaseService.databaseInterface.hasUserProfile();
  }

  /// Mark onboarding as completed (profile is saved)
  Future<void> completeOnboarding() async {
    // Onboarding is considered complete when profile exists
    // No additional action needed as profile save indicates completion
  }

  /// Save or update profile data (upsert)
  Future<void> saveProfileData(UserProfile data) async {
    await DatabaseService.databaseInterface.saveUserProfile(data);
  }

  /// Get saved profile data
  Future<UserProfile?> getProfileData() async {
    return await DatabaseService.databaseInterface.getUserProfile();
  }

  /// Clear onboarding data (delete profile)
  Future<void> clearOnboardingData() async {
    // For now, we'll just mark onboarding as incomplete by not having a profile
    // In a real app, you might want to implement actual profile deletion
    // await DatabaseService().deleteUserProfile();
  }

  /// Calculate age from date of birth
  int _calculateAge(DateTime dateOfBirth) {
    final now = DateTime.now();
    int age = now.year - dateOfBirth.year;
    if (now.month < dateOfBirth.month ||
        (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
      age--;
    }
    return age;
  }

  /// Calculate BMR (Basal Metabolic Rate) using Mifflin-St Jeor Equation
  double calculateBMR(UserProfile data) {
    final age = _calculateAge(data.dateOfBirth);
    if (data.gender == Gender.male) {
      return (10 * data.weight) + (6.25 * data.height) - (5 * age) + 5;
    } else {
      return (10 * data.weight) + (6.25 * data.height) - (5 * age) - 161;
    }
  }

  /// Calculate TDEE (Total Daily Energy Expenditure)
  double calculateTDEE(UserProfile data) {
    final bmr = calculateBMR(data);
    return bmr * data.activityLevel.multiplier;
  }

  /// Calculate daily calorie goal based on weight goal
  double calculateDailyCalorieGoal(UserProfile data) {
    final tdee = calculateTDEE(data);

    switch (data.weightGoal) {
      case WeightGoal.loseWeight:
        return tdee - 500; // 500 calorie deficit for ~1lb/week loss
      case WeightGoal.maintainWeight:
        return tdee;
      case WeightGoal.gainWeight:
        return tdee + 500; // 500 calorie surplus for ~1lb/week gain
    }
  }

  /// Setup Health Connect integration
  Future<bool> setupHealthConnect() async {
    try {
      // Check if Health Connect is available
      final isAvailable = await HealthService.instance.isHealthConnectAvailable;
      if (!isAvailable) {
        // Try to install Health Connect
        await HealthService.instance.installHealthConnect();
        return false; // User needs to complete installation
      }

      // Request authorization
      final authorized = await HealthService.instance.requestAuthorization();
      return authorized;
    } catch (e) {
      return false;
    }
  }
}
