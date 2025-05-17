import 'dart:developer';

import 'package:calorify/core/models/meal_model.dart';
import 'package:health/health.dart';

class HealthService {
  static HealthService instance = HealthService._();
  HealthService._();

  final Health _health = Health(); // For Android specific
  Future<void> init() async {
    await _health.configure();
    status =
        await _health.getHealthConnectSdkStatus() ??
        HealthConnectSdkStatus.sdkUnavailable;
    isAuthorized =
        await _health.hasPermissions(_types, permissions: _permissions) ??
        false;
  }

  HealthConnectSdkStatus status = HealthConnectSdkStatus.sdkUnavailable;
  bool isAuthorized = false;

  // Define the health data types you want to access
  static const List<HealthDataType> _types = [
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataType.NUTRITION,
  ];

  // Define permissions for each type
  static const List<HealthDataAccess> _permissions = [
    HealthDataAccess.READ,
    HealthDataAccess.READ_WRITE,
  ];

  Future<bool> get isHealthConnectAvailable =>
      _health.isHealthConnectAvailable();

  Future<void> get installHealthConnect => _health.installHealthConnect();

  Future<bool> requestAuthorization() async {
    try {
      final authorized = await _health.requestAuthorization(
        _types,
        permissions: _permissions,
      );
      log("Health authorization status: $authorized");
      return authorized;
    } catch (e) {
      log("Error requesting health authorization: $e");
      return false;
    }
  }

  Future<List<HealthDataPoint>> fetchHealthData(
    DateTime startTime,
    DateTime endTime,
    HealthDataType type,
  ) async {
    final bool authorized = await requestAuthorization(); // Ensure authorized
    if (!authorized) {
      log("Not authorized to fetch health data.");
      return [];
    }

    try {
      List<HealthDataPoint> healthData = await _health.getHealthDataFromTypes(
        startTime: startTime,
        endTime: endTime,
        types: [type],
      );
      // Filter out duplicates if any (sometimes happens)
      healthData = _health.removeDuplicates(healthData);
      return healthData;
    } catch (e) {
      log("Error fetching health data for $type: $e");
      return [];
    }
  }

  Future<bool> writeMealData(Meal meal) async {
    final bool authorized = await requestAuthorization(); // Ensure authorized
    if (!authorized) {
      log("Not authorized to fetch health data.");
      return false;
    }

    try {
      final healthData = await _health.writeMeal(
        startTime: meal.startTime,
        endTime: meal.endTime,
        mealType: meal.mealType,
        caloriesConsumed: meal.caloriesInKcal,
        protein: meal.proteinInGrams,
        carbohydrates: meal.carbsInGrams,
        fatTotal: meal.fatInGrams,
        fiber: meal.fiberInGrams,
      );

      return healthData;
    } catch (e) {
      log("Error writing meal data: $e");
      return false;
    }
  }
}
