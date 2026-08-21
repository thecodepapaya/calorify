import 'dart:developer';

import 'package:calorify/core/services/profile_metrics.dart';
import 'package:health/health.dart' as health show MealType;
import 'package:health/health.dart' hide MealType;
import 'package:models/models.dart';

typedef UserProfileLoader = Future<UserProfile?> Function();
typedef ProfileCalorieEstimator = double? Function(UserProfile profile);

/// Result object returned by `getTotalCaloriesBurned`.
/// `calories` may be null if no data or estimate is available.
/// `usedFallback` is true when the value was estimated from the user profile.
/// Keep this type in this file so callers can destructure the result and avoid
/// racing against separate getters.
class CaloriesResult {
  final double calories;
  final bool usedFallback;
  CaloriesResult({required this.calories, required this.usedFallback});
}

class HealthService {
  HealthService({
    Health? health,
    required UserProfileLoader profileLoader,
    ProfileCalorieEstimator? calorieEstimator,
  }) : _health = health ?? Health(),
       _profileLoader = profileLoader,
       _calorieEstimator =
           calorieEstimator ?? const ProfileMetrics().caloriesBurnedSoFar;

  factory HealthService.test({
    Health? health,
    UserProfileLoader? profileLoader,
    ProfileCalorieEstimator? calorieEstimator,
  }) => HealthService(
    health: health,
    profileLoader: profileLoader ?? () async => null,
    calorieEstimator: calorieEstimator,
  );

  final Health _health;
  final UserProfileLoader _profileLoader;
  final ProfileCalorieEstimator _calorieEstimator;
  bool _lastFetchUsedFallback = false;

  /// True if the most recent `getTotalCaloriesBurned` call returned a
  /// profile-based estimate instead of Health Connect data.
  bool get lastFetchUsedFallback => _lastFetchUsedFallback;

  HealthConnectSdkStatus status = HealthConnectSdkStatus.sdkUnavailable;

  bool _isAuthorized = false;
  bool get isAuthorized => _isAuthorized;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  Future<void> init() async {
    try {
      await _health.configure();
      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;

      if (status != HealthConnectSdkStatus.sdkAvailable) {
        log(
          'Health Connect SDK is unavailable on this device. Status: $status',
        );
        _isAuthorized = false;
        _isInitialized = true; // Mark as initialized even if unavailable
        return;
      }

      _isAuthorized =
          await _health.hasPermissions(_types, permissions: _permissions) ??
          false;
      _isInitialized = true;
    } catch (e, st) {
      log('Error initializing HealthService:', error: e, stackTrace: st);
      status = HealthConnectSdkStatus.sdkUnavailable;
      _isAuthorized = false;
      _isInitialized = true; // Mark as initialized to prevent retry loops
    }
  }

  /// Ensures the service has been initialized before proceeding
  /// Returns true if initialized, false otherwise
  bool _ensureInitialized() {
    if (!_isInitialized) {
      log('HealthService not initialized. Call init() first.');
      return false;
    }
    return true;
  }

  // Permissions required by the production Health Connect integration. Keep
  // this list aligned with AndroidManifest.xml and the permissions screen.
  // Debug-only helpers for steps, weight, and height must not make the app's
  // connection state permanently false when those permissions are undeclared.
  static const List<HealthDataType> _types = [
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataType.NUTRITION,
  ];

  static const List<HealthDataAccess> _permissions = [
    HealthDataAccess.READ,
    HealthDataAccess.READ_WRITE,
  ];

  /// Re-reads SDK and permission state after the user returns from Health
  /// Connect or system settings.
  Future<bool> refreshAuthorizationStatus() async {
    if (!_isInitialized) {
      await init();
      return _isAuthorized;
    }

    try {
      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;
      if (status != HealthConnectSdkStatus.sdkAvailable) {
        _isAuthorized = false;
        return false;
      }

      _isAuthorized =
          await _health.hasPermissions(_types, permissions: _permissions) ??
          false;
      return _isAuthorized;
    } catch (e, st) {
      log(
        'Error refreshing Health Connect authorization:',
        error: e,
        stackTrace: st,
      );
      _isAuthorized = false;
      return false;
    }
  }

  Future<bool> get isHealthConnectAvailable async {
    if (!_ensureInitialized()) {
      return false;
    }
    return await _health.isHealthConnectAvailable();
  }

  // Future<void> get installHealthConnect => _health.installHealthConnect(); // Changed to method
  Future<void> installHealthConnect() async {
    if (!_ensureInitialized()) {
      log('Cannot install Health Connect: service not initialized');
      return;
    }
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
    if (!_ensureInitialized()) {
      log('Cannot request authorization: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      log(
        'Cannot request authorization: Health Connect SDK not available. Status: $status',
      );
      return false;
    }
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
    if (!_ensureInitialized()) {
      log('Cannot fetch health data: service not initialized');
      return [];
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      log(
        'Cannot fetch health data: Health Connect SDK not available. Status: $status',
      );
      return [];
    }
    // Data reads must never launch a permission prompt. Apart from being
    // disruptive, requestAuthorization can block when access was already
    // granted and may fail because an unrelated permission was declined.
    // Permission prompts belong to explicit setup actions in the UI.
    final authorized = await hasPermission(type, HealthDataAccess.READ);
    if (!authorized) {
      log('Not authorized to read health data for $type.');
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

  Future<bool> writeMealData(Meal meal) async {
    if (!_ensureInitialized()) {
      log('Cannot write meal data: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      log(
        'Cannot write meal data: Health Connect SDK not available. Status: $status',
      );
      return false;
    }
    if (!await hasPermission(
      HealthDataType.NUTRITION,
      HealthDataAccess.WRITE,
    )) {
      return false;
    }

    final now = DateTime.now();

    try {
      final healthData = await _health.writeMeal(
        name: meal.name,
        mealType: _mealTypeToHealthMealType(meal.type),
        caloriesConsumed: meal.macros.calories.toDouble(),
        protein: meal.macros.protein.toDouble(),
        carbohydrates: meal.macros.carbs.toDouble(),
        fatTotal: meal.macros.fat.toDouble(),
        fiber: meal.macros.fiber.toDouble(),
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
    if (!_ensureInitialized()) {
      log('Cannot write weight: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      log(
        'Cannot write weight: Health Connect SDK not available. Status: $status',
      );
      return false;
    }
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

  health.MealType _mealTypeToHealthMealType(MealType mealType) {
    switch (mealType) {
      case MealType.BREAKFAST:
        return health.MealType.BREAKFAST;
      case MealType.LUNCH:
        return health.MealType.LUNCH;
      case MealType.DINNER:
        return health.MealType.DINNER;
      case MealType.SNACK:
        return health.MealType.SNACK;
      case MealType.UNKNOWN:
        return health.MealType.UNKNOWN;
    }
    return health.MealType.UNKNOWN; // Fallback
  }

  Future<bool> writeHeight(double cm) async {
    if (!_ensureInitialized()) {
      log('Cannot write height: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      log(
        'Cannot write height: Health Connect SDK not available. Status: $status',
      );
      return false;
    }
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
    if (!_ensureInitialized()) {
      log('Cannot get latest weight: service not initialized');
      return null;
    }
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
    if (!_ensureInitialized()) {
      log('Cannot get latest height: service not initialized');
      return null;
    }
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
    if (!_ensureInitialized()) {
      log('Cannot get today steps: service not initialized');
      return null;
    }
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);
    final data = await fetchHealthData(midnight, now, HealthDataType.STEPS);
    if (data.isEmpty) return 0;
    return data
        .map((e) => (e.value as NumericHealthValue).numericValue.toInt())
        .reduce((a, b) => a + b);
  }

  Future<CaloriesResult?> getTotalCaloriesBurned() async {
    if (!_ensureInitialized()) {
      log('Cannot get total calories burned: service not initialized');
      return null;
    }
    // Reset fallback flag for each fetch
    _lastFetchUsedFallback = false;

    // 1) If Health Connect is available and we have permission, try to fetch real data.
    try {
      if (status == HealthConnectSdkStatus.sdkAvailable) {
        final now = DateTime.now();
        final startTime = DateTime(now.year, now.month, now.day);
        final endTime = now;

        // fetchHealthData performs the permission check itself. Avoid making
        // the same platform-channel permission call twice for every refresh.
        final data = await fetchHealthData(
          startTime,
          endTime,
          HealthDataType.TOTAL_CALORIES_BURNED,
        );

        if (data.isNotEmpty) {
          final totalCalories = data
              .map(
                (e) => (e.value as NumericHealthValue).numericValue.toDouble(),
              )
              .reduce((value, element) => value + element);
          _lastFetchUsedFallback = false;
          return CaloriesResult(calories: totalCalories, usedFallback: false);
        }
        // If data empty, fall through to fallback estimate
      }
    } catch (e, st) {
      log('Error fetching health connect calories: $e', stackTrace: st);
      // Continue to fallback path
    }

    // 2) Fallback: estimate using user profile (TDEE * fraction of day)
    try {
      final profile = await _profileLoader();
      if (profile != null) {
        final estimate = _calorieEstimator(profile);
        if (estimate != null) {
          _lastFetchUsedFallback = true;
          return CaloriesResult(calories: estimate, usedFallback: true);
        }
      }
    } catch (e, st) {
      log('Error estimating calories from profile: $e', stackTrace: st);
    }

    // Nothing available
    return null;
  }

  Future<bool> hasPermission(
    HealthDataType type,
    HealthDataAccess access,
  ) async {
    if (!_ensureInitialized()) {
      log('Cannot check permission: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      return false;
    }
    return await _health.hasPermissions([type], permissions: [access]) ?? false;
  }

  Future<bool> get isNutritionAllowed =>
      hasPermission(HealthDataType.NUTRITION, HealthDataAccess.WRITE);

  Future<bool> get isCaloriesBurnedAllowed => hasPermission(
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
