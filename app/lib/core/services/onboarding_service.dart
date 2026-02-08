import 'package:flutter/foundation.dart';
import 'package:models/models.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:utils/utils.dart';

class OnboardingService {
  OnboardingService._();

  static OnboardingService _instance = OnboardingService._();
  static OnboardingService get instance => _instance;

  @visibleForTesting
  static void setMockInstance(OnboardingService? mock) {
    _instance = mock ?? OnboardingService._();
  }

  // --- Constants for health calculations ---

  /// Mifflin-St Jeor Equation constants
  static const double _bmrWeightMult = 10.0;
  static const double _bmrHeightMult = 6.25;
  static const double _bmrAgeMult = 5.0;
  static const double _bmrMaleOffset = 5.0;
  static const double _bmrFemaleOffset = -161.0;

  /// Calorie goal constants
  static const int _weightLossDeficit = 500; // ~0.5kg/week loss
  static const int _weightGainSurplus = 500; // ~0.5kg/week gain

  /// Ideal weight calculation constants
  /// 22.0 is the healthy midpoint of the BMI range (18.5 - 24.9)
  static const double _targetBMI = 22.0;

  /// Check if onboarding has been completed
  Future<bool> isOnboardingCompleted() async {
    final profile = await DatabaseService.databaseInterface.getUserProfile();
    return profile?.isProfileComplete ?? false;
  }

  /// Mark onboarding as completed (profile is saved)
  Future<void> completeOnboarding() async {
    // Onboarding is considered complete when profile exists
    // No additional action needed as profile save indicates completion
    Analytics.instance.logEvent(AnalyticsEvent.onboardingComplete);
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

  /// Calculate BMR (Basal Metabolic Rate) using Mifflin-St Jeor Equation:
  /// BMR = (10 * weight_kg) + (6.25 * height_cm) - (5 * age_y) + offset
  double? calculateBMR(UserProfile data) {
    final height = _getNormalizedHeight(data);
    final weight = _getNormalizedWeight(data);

    if (!data.hasDateOfBirth() ||
        !data.hasGender() ||
        weight == null ||
        height == null) {
      return null;
    }
    final age = data.age;
    if (age == null) return null;

    final baseBmr =
        (_bmrWeightMult * weight) +
        (_bmrHeightMult * height) -
        (_bmrAgeMult * age);

    if (data.gender == Gender.MALE) {
      return baseBmr + _bmrMaleOffset;
    } else {
      return baseBmr + _bmrFemaleOffset;
    }
  }

  /// Calculate TDEE (Total Daily Energy Expenditure)
  double? calculateTDEE(UserProfile data) {
    if (!data.hasActivityLevel()) return null;
    final bmr = calculateBMR(data);
    if (bmr == null) return null;
    return bmr * data.activityLevel.multiplier;
  }

  /// Calculate daily calorie goal based on weight goal
  double? calculateDailyCalorieGoal(UserProfile data) {
    if (!data.hasWeightGoal()) return null;
    final tdee = calculateTDEE(data);
    if (tdee == null) return null;

    switch (data.weightGoal) {
      case WeightGoal.LOSE_WEIGHT:
        return tdee - _weightLossDeficit;
      case WeightGoal.MAINTAIN_WEIGHT:
        return tdee;
      case WeightGoal.GAIN_WEIGHT:
        return tdee + _weightGainSurplus;
    }
    return tdee; // Fallback to maintain weight
  }

  /// Calculate ideal weight based on height using the formula:
  /// Ideal Weight (kg) = Target BMI * (Height in meters)^2
  double? calculateIdealWeight(UserProfile data) {
    final heightCm = _getNormalizedHeight(data);
    if (heightCm == null) return null;

    final heightInMeters = heightCm / 100;
    final idealWeightKg = _targetBMI * (heightInMeters * heightInMeters);

    // Return in user's preferred weight unit
    return data.weightUnit.isMetric
        ? idealWeightKg
        : LocaleUtils.convertWeightToImperial(idealWeightKg);
  }

  /// Calculate BMI (Body Mass Index)
  /// BMI = weight_kg / (height_m^2)
  double? calculateBMI(UserProfile data) {
    final heightCm = _getNormalizedHeight(data);
    final weightKg = _getNormalizedWeight(data);

    if (heightCm == null || weightKg == null || heightCm <= 0) return null;

    final heightM = heightCm / 100;
    return weightKg / (heightM * heightM);
  }

  double? _getNormalizedHeight(UserProfile data) {
    if (!data.hasHeight()) return null;
    return data.heightUnit.isMetric
        ? data.height
        : LocaleUtils.convertHeightToMetric(data.height);
  }

  double? _getNormalizedWeight(UserProfile data) {
    if (!data.hasWeight()) return null;
    return data.weightUnit.isMetric
        ? data.weight
        : LocaleUtils.convertWeightToMetric(data.weight);
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
