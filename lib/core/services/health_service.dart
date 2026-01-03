import 'dart:developer';

import 'package:calorify/core/models/meal_model.dart';
import 'package:health/health.dart';

class HealthService {
  HealthService._();

  static final _instance = HealthService._();
  static HealthService get instance => _instance;

  final Health _health = Health();

  HealthConnectSdkStatus status = HealthConnectSdkStatus.sdkUnavailable;

  bool _isAuthorized = false;
  bool get isAuthorized => _isAuthorized;

  Future<void> init() async {
    await _health.configure();
    status =
        await _health.getHealthConnectSdkStatus() ??
        HealthConnectSdkStatus.sdkUnavailable;

    _isAuthorized =
        await _health.hasPermissions(_types, permissions: _permissions) ??
        false;
  }

  // Define the health data types you want to access
  static const List<HealthDataType> _types = [
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataType.NUTRITION,
    HealthDataType.WEIGHT,
    HealthDataType.HEIGHT,
  ];

  // Define permissions for each type
  static const List<HealthDataAccess> _permissions = [
    HealthDataAccess.READ,
    HealthDataAccess.READ_WRITE,
    HealthDataAccess.READ_WRITE,
    HealthDataAccess.READ_WRITE,
  ];

  Future<bool> get isHealthConnectAvailable =>
      _health.isHealthConnectAvailable();

  // Future<void> get installHealthConnect => _health.installHealthConnect(); // Changed to method
  Future<void> installHealthConnect() async {
    try {
      await _health.installHealthConnect();
      // After attempting install, re-check status
      // User will be taken outside the app, so when they return, status should be checked.
      // For immediate effect if they don't leave app (unlikely), or for next init:
      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;
    } catch (e) {
      log('Error during Health Connect install process: $e');
      // Optionally update status here too
    }
  }

  Future<bool> requestAuthorization() async {
    try {
      final success = await _health.requestAuthorization(
        // Renamed 'authorized' to 'success' to avoid confusion
        _types,
        permissions: _permissions,
      );
      log('Health authorization request success: $success');
      // After attempting authorization, re-check permissions and status
      _isAuthorized =
          await _health.hasPermissions(_types, permissions: _permissions) ??
          false;
      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;
      return _isAuthorized; // Return the actual authorization status
    } on Exception catch (e, st) {
      log('Error requesting health authorization:', error: e, stackTrace: st);
      // Optionally update status here too if error implies a specific state
      return false;
    }
  }

  Future<List<HealthDataPoint>> fetchHealthData(
    DateTime startTime,
    DateTime endTime,
    HealthDataType type,
  ) async {
    final bool authorized = await requestAuthorization();
    if (!authorized) {
      log('Not authorized to fetch health data.');
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
      return _dateSanitizedHealthPoints(healthData, startTime, endTime);
    } catch (e) {
      log('Error fetching health data for $type: $e');
      return [];
    }
  }

  Future<bool> writeMealData(MealInfo meal) async {
    if (!await hasPermission(
      HealthDataType.NUTRITION,
      HealthDataAccess.WRITE,
    )) {
      return false;
    }

    final now = DateTime.now();

    try {
      final healthData = await _health.writeMeal(
        name: meal.mealName,
        mealType: meal.mealType.asHealthConnectType,
        caloriesConsumed: meal.calories.toDouble(),
        protein: meal.protein.toDouble(),
        carbohydrates: meal.carbs.toDouble(),
        fatTotal: meal.fat.toDouble(),
        fiber: meal.fiber.toDouble(),
        startTime: now.subtract(Duration(minutes: 10)),
        endTime: DateTime.now(),
        recordingMethod: RecordingMethod.active,
      );

      return healthData;
    } on Exception catch (e, st) {
      log('Error writing meal data:', error: e, stackTrace: st);
      return false;
    }
  }

  Future<bool> writeWeight(double kg) async {
    if (!await hasPermission(HealthDataType.WEIGHT, HealthDataAccess.WRITE)) {
      return false;
    }

    final now = DateTime.now();
    try {
      return await _health.writeHealthData(
        value: kg,
        type: HealthDataType.WEIGHT,
        startTime: now,
        endTime: now,
      );
    } catch (e) {
      log('Error writing weight: $e');
      return false;
    }
  }

  Future<bool> writeHeight(double cm) async {
    if (!await hasPermission(HealthDataType.HEIGHT, HealthDataAccess.WRITE)) {
      return false;
    }

    final now = DateTime.now();
    try {
      return await _health.writeHealthData(
        value:
            cm /
            100, // Health Connect expects height in meters? No, usually it depends on the platform. The health package usually handles conversions or expects specific units.
        // Actually, Health Connect expects meters for height.
        type: HealthDataType.HEIGHT,
        startTime: now,
        endTime: now,
      );
    } catch (e) {
      log('Error writing height: $e');
      return false;
    }
  }

  Future<double?> getLatestWeight() async {
    final now = DateTime.now();
    final data = await fetchHealthData(
      now.subtract(const Duration(days: 30)),
      now,
      HealthDataType.WEIGHT,
    );
    if (data.isEmpty) return null;
    return (data.last.value as NumericHealthValue).numericValue.toDouble();
  }

  Future<double?> getLatestHeight() async {
    final now = DateTime.now();
    final data = await fetchHealthData(
      now.subtract(const Duration(days: 365)),
      now,
      HealthDataType.HEIGHT,
    );
    if (data.isEmpty) return null;
    return (data.last.value as NumericHealthValue).numericValue.toDouble();
  }

  Future<int?> getTodaySteps() async {
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);
    final data = await fetchHealthData(midnight, now, HealthDataType.STEPS);
    if (data.isEmpty) return 0;
    return data
        .map((e) => (e.value as NumericHealthValue).numericValue.toInt())
        .reduce((a, b) => a + b);
  }

  Future<double?> getTotalCaloriesBurned() async {
    if (!await hasPermission(
      HealthDataType.TOTAL_CALORIES_BURNED,
      HealthDataAccess.READ,
    )) {
      return null;
    }

    final now = DateTime.now();
    final startTime = DateTime(now.year, now.month, now.day);
    final endTime = now;

    final data = await fetchHealthData(
      startTime,
      endTime,
      HealthDataType.TOTAL_CALORIES_BURNED,
    );

    if (data.isEmpty) return null;

    final totalCalories = data
        .map((e) => (e.value as NumericHealthValue).numericValue.toDouble())
        .reduce((value, element) => value + element);

    return totalCalories;
  }

  Future<bool> hasPermission(
    HealthDataType type,
    HealthDataAccess access,
  ) async {
    return await _health.hasPermissions([type], permissions: [access]) ?? false;
  }

  Future<bool> get isNutritionAllowed async =>
      hasPermission(HealthDataType.NUTRITION, HealthDataAccess.WRITE);

  Future<bool> get isCaloriesBurnedAllowed async => hasPermission(
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataAccess.READ,
  );
}

/// For some reason, when querying calories burned from midnight up-to this time
/// today, I'm also getting calories for future date from now to end to today.
List<HealthDataPoint> _dateSanitizedHealthPoints(
  List<HealthDataPoint> dataPoints,
  DateTime startTime,
  DateTime endTime,
) {
  dataPoints.removeWhere(
    (data) => data.dateFrom.isBefore(startTime) || data.dateTo.isAfter(endTime),
  );
  return dataPoints;
}
