import 'dart:developer';

import 'package:calorify/core/services/profile_metrics.dart';
import 'package:flutter/services.dart';
import 'package:health/health.dart' as health show MealType;
import 'package:health/health.dart' hide MealType;
import 'package:models/models.dart';

typedef UserProfileLoader = Future<UserProfile?> Function();
typedef ProfileCalorieEstimator = double? Function(UserProfile profile);
typedef HealthConnectSettingsOpener = Future<bool> Function();

enum HealthServiceInitializationState {
  uninitialized,
  initializing,
  ready,
  unavailable,
  failed,
}

enum HealthPermissionState { unknown, denied, granted }

/// Result object returned by `getTotalCaloriesBurned`.
/// The result itself is null if no data or estimate is available.
/// `usedFallback` is true when the value was estimated from the user profile.
/// Keep this type in this file so callers can destructure the result and avoid
/// racing against separate getters.
class CaloriesResult {
  final double calories;
  final bool usedFallback;
  CaloriesResult({required this.calories, required this.usedFallback});
}

class HealthService {
  static const MethodChannel _healthConnectChannel = MethodChannel(
    'dev.thecodepapaya.calorify/health_connect',
  );

  static Future<bool> _openHealthConnectSettings() async {
    await _healthConnectChannel.invokeMethod<void>('openHealthConnectSettings');
    return true;
  }

  HealthService({
    Health? health,
    required UserProfileLoader profileLoader,
    ProfileCalorieEstimator? calorieEstimator,
    HealthConnectSettingsOpener? settingsOpener,
  }) : _health = health ?? Health(),
       _profileLoader = profileLoader,
       _calorieEstimator =
           calorieEstimator ?? const ProfileMetrics().caloriesBurnedSoFar,
       _settingsOpener = settingsOpener ?? _openHealthConnectSettings;

  factory HealthService.test({
    Health? health,
    UserProfileLoader? profileLoader,
    ProfileCalorieEstimator? calorieEstimator,
    HealthConnectSettingsOpener? settingsOpener,
  }) => HealthService(
    health: health,
    profileLoader: profileLoader ?? () async => null,
    calorieEstimator: calorieEstimator,
    settingsOpener: settingsOpener,
  );

  final Health _health;
  final UserProfileLoader _profileLoader;
  final ProfileCalorieEstimator _calorieEstimator;
  final HealthConnectSettingsOpener _settingsOpener;
  bool _lastFetchUsedFallback = false;

  /// True if the most recent `getTotalCaloriesBurned` call returned a
  /// profile-based estimate instead of Health Connect data.
  bool get lastFetchUsedFallback => _lastFetchUsedFallback;

  HealthConnectSdkStatus status = HealthConnectSdkStatus.sdkUnavailable;

  HealthPermissionState _caloriesReadPermission = HealthPermissionState.unknown;
  HealthPermissionState get caloriesReadPermission => _caloriesReadPermission;
  bool get canReadTotalCalories =>
      _caloriesReadPermission == HealthPermissionState.granted;

  HealthPermissionState _nutritionWritePermission =
      HealthPermissionState.unknown;
  HealthPermissionState get nutritionWritePermission =>
      _nutritionWritePermission;
  bool get canWriteNutrition =>
      _nutritionWritePermission == HealthPermissionState.granted;

  bool get hasAnyHealthPermission => canReadTotalCalories || canWriteNutrition;
  bool get hasAllHealthPermissions => canReadTotalCalories && canWriteNutrition;

  /// Kept for older callers. New code should check the capability it needs.
  bool get isAuthorized => hasAnyHealthPermission;

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  HealthServiceInitializationState _initializationState =
      HealthServiceInitializationState.uninitialized;
  HealthServiceInitializationState get initializationState =>
      _initializationState;

  Object? _lastError;
  Object? get lastError => _lastError;

  Future<void>? _initializationFuture;
  Future<bool>? _authorizationRefreshFuture;

  Future<void> init() async {
    if (_isInitialized) return;

    final pending = _initializationFuture;
    if (pending != null) {
      await pending;
      return;
    }

    final operation = _initialize();
    _initializationFuture = operation;
    try {
      await operation;
    } finally {
      if (identical(_initializationFuture, operation)) {
        _initializationFuture = null;
      }
    }
  }

  Future<void> _initialize() async {
    _initializationState = HealthServiceInitializationState.initializing;
    _lastError = null;
    try {
      await _health.configure();
      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;

      if (status != HealthConnectSdkStatus.sdkAvailable) {
        log(
          'Health Connect SDK is unavailable on this device. Status: $status',
        );
        _clearPermissionState(HealthPermissionState.denied);
        _isInitialized = true;
        _initializationState = HealthServiceInitializationState.unavailable;
        return;
      }

      await _refreshCapabilityPermissions();
      _isInitialized = true;
      _initializationState =
          _allCapabilitiesUnknown
              ? HealthServiceInitializationState.failed
              : HealthServiceInitializationState.ready;
    } catch (e, st) {
      log('Error initializing HealthService:', error: e, stackTrace: st);
      _lastError = e;
      _clearPermissionState(HealthPermissionState.unknown);
      _isInitialized = false;
      _initializationState = HealthServiceInitializationState.failed;
    }
  }

  /// Initializes or retries initialization before an operation.
  Future<bool> _ensureInitialized() async {
    if (!_isInitialized) {
      await init();
    }
    return _isInitialized;
  }

  /// Re-reads SDK and permission state after the user returns from Health
  /// Connect or system settings.
  Future<bool> refreshAuthorizationStatus() async {
    final pending = _authorizationRefreshFuture;
    if (pending != null) return pending;

    final operation = _refreshAuthorizationStatus();
    _authorizationRefreshFuture = operation;
    try {
      return await operation;
    } finally {
      if (identical(_authorizationRefreshFuture, operation)) {
        _authorizationRefreshFuture = null;
      }
    }
  }

  Future<bool> _refreshAuthorizationStatus() async {
    _lastError = null;
    try {
      if (!await _ensureInitialized()) return false;

      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;
      if (status != HealthConnectSdkStatus.sdkAvailable) {
        _clearPermissionState(HealthPermissionState.denied);
        _initializationState = HealthServiceInitializationState.unavailable;
        return false;
      }

      await _refreshCapabilityPermissions();
      _initializationState =
          _allCapabilitiesUnknown
              ? HealthServiceInitializationState.failed
              : HealthServiceInitializationState.ready;
      return hasAnyHealthPermission;
    } catch (e, st) {
      log(
        'Error refreshing Health Connect authorization:',
        error: e,
        stackTrace: st,
      );
      _lastError = e;
      _clearPermissionState(HealthPermissionState.unknown);
      _initializationState = HealthServiceInitializationState.failed;
      return false;
    }
  }

  Future<void> _refreshCapabilityPermissions() async {
    final results = await Future.wait([
      _checkPermission(
        HealthDataType.TOTAL_CALORIES_BURNED,
        HealthDataAccess.READ,
      ),
      _checkPermission(HealthDataType.NUTRITION, HealthDataAccess.WRITE),
    ]);
    _caloriesReadPermission = results[0];
    _nutritionWritePermission = results[1];
  }

  Future<HealthPermissionState> _checkPermission(
    HealthDataType type,
    HealthDataAccess access,
  ) async {
    try {
      final granted =
          await _health.hasPermissions([type], permissions: [access]) ?? false;
      return granted
          ? HealthPermissionState.granted
          : HealthPermissionState.denied;
    } catch (e, st) {
      log(
        'Error checking Health Connect permission for $type/$access:',
        error: e,
        stackTrace: st,
      );
      _lastError = e;
      return HealthPermissionState.unknown;
    }
  }

  void _clearPermissionState(HealthPermissionState state) {
    _caloriesReadPermission = state;
    _nutritionWritePermission = state;
  }

  bool get _allCapabilitiesUnknown =>
      _caloriesReadPermission == HealthPermissionState.unknown &&
      _nutritionWritePermission == HealthPermissionState.unknown;

  Future<bool> get isHealthConnectAvailable async {
    if (!await _ensureInitialized()) {
      return false;
    }
    try {
      return await _health.isHealthConnectAvailable();
    } catch (e, st) {
      log(
        'Error checking Health Connect availability:',
        error: e,
        stackTrace: st,
      );
      _lastError = e;
      return false;
    }
  }

  Future<void> installHealthConnect() async {
    if (!await _ensureInitialized()) {
      log('Cannot install Health Connect: service not initialized');
      return;
    }
    try {
      await _health.installHealthConnect();
      status =
          await _health.getHealthConnectSdkStatus() ??
          HealthConnectSdkStatus.sdkUnavailable;
    } catch (e, st) {
      log(
        'Error during Health Connect install process:',
        error: e,
        stackTrace: st,
      );
      _lastError = e;
    }
  }

  /// Opens the native Health Connect app-access screen.
  Future<bool> openHealthConnectSettings() async {
    try {
      return await _settingsOpener();
    } catch (e, st) {
      log('Error opening Health Connect settings:', error: e, stackTrace: st);
      _lastError = e;
      return false;
    }
  }

  /// Revokes every Health Connect permission granted to this app.
  ///
  /// The pinned plugin notes that Android may require a process restart before
  /// the platform reflects the revocation, so cached capabilities are cleared
  /// immediately rather than re-read.
  Future<bool> revokeAuthorization() async {
    if (!await _ensureInitialized() ||
        status != HealthConnectSdkStatus.sdkAvailable) {
      return false;
    }
    try {
      await _health.revokePermissions();
      _clearPermissionState(HealthPermissionState.denied);
      return true;
    } catch (e, st) {
      log(
        'Error revoking Health Connect authorization:',
        error: e,
        stackTrace: st,
      );
      _lastError = e;
      return false;
    }
  }

  Future<bool> requestAuthorization() async {
    if (!await _ensureInitialized()) {
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
      await _refreshCapabilityPermissions();

      final missingTypes = <HealthDataType>[];
      final missingPermissions = <HealthDataAccess>[];
      if (!canReadTotalCalories) {
        missingTypes.add(HealthDataType.TOTAL_CALORIES_BURNED);
        missingPermissions.add(HealthDataAccess.READ);
      }
      if (!canWriteNutrition) {
        missingTypes.add(HealthDataType.NUTRITION);
        missingPermissions.add(HealthDataAccess.WRITE);
      }

      if (missingTypes.isEmpty) return true;

      final success = await _health.requestAuthorization(
        missingTypes,
        permissions: missingPermissions,
      );
      log('Health authorization request success: $success');
      await refreshAuthorizationStatus();
      return hasAnyHealthPermission;
    } catch (e, st) {
      log('Error requesting health authorization:', error: e, stackTrace: st);
      _lastError = e;
      return false;
    }
  }

  Future<List<HealthDataPoint>> fetchHealthData(
    DateTime startTime,
    DateTime endTime,
    HealthDataType type,
  ) async {
    if (!await _ensureInitialized()) {
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
    try {
      final authorized = await hasPermission(type, HealthDataAccess.READ);
      if (!authorized) {
        log('Not authorized to read health data for $type.');
        return [];
      }

      List<HealthDataPoint> healthData = await _health.getHealthDataFromTypes(
        startTime: startTime,
        endTime: endTime,
        types: [type],
      );
      // Filter out duplicates if any (sometimes happens)
      healthData = _health.removeDuplicates(healthData);
      return _dateOverlappingHealthPoints(healthData, startTime, endTime);
    } catch (e, st) {
      log('Error fetching health data for $type:', error: e, stackTrace: st);
      _lastError = e;
      return [];
    }
  }

  Future<bool> writeMealData(
    Meal meal, {
    required DateTime loggedAt,
    required String clientRecordId,
    required int clientRecordVersion,
  }) async {
    if (!await _ensureInitialized()) {
      log('Cannot write meal data: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      log(
        'Cannot write meal data: Health Connect SDK not available. Status: $status',
      );
      return false;
    }
    final normalizedRecordId = clientRecordId.trim();
    if (normalizedRecordId.isEmpty || clientRecordVersion < 1) {
      log('Cannot write meal data: invalid client record metadata');
      return false;
    }

    try {
      if (!await hasPermission(
        HealthDataType.NUTRITION,
        HealthDataAccess.WRITE,
      )) {
        return false;
      }

      final healthData = await _health.writeMeal(
        name: meal.name,
        mealType: _mealTypeToHealthMealType(meal.type),
        caloriesConsumed: meal.macros.calories.toDouble(),
        protein: meal.macros.protein.toDouble(),
        carbohydrates: meal.macros.carbs.toDouble(),
        fatTotal: meal.macros.fat.toDouble(),
        fiber: meal.macros.fiber.toDouble(),
        startTime: loggedAt,
        endTime: loggedAt,
        clientRecordId: normalizedRecordId,
        clientRecordVersion: clientRecordVersion.toDouble(),
        // health 13.2.1 maps Dart `active` (1) to Android's manual-entry
        // metadata and Dart `manual` (3) to actively-recorded metadata. This
        // workaround must be removed when that dependency mapping is fixed.
        recordingMethod: RecordingMethod.active,
      );

      return healthData;
    } catch (e, st) {
      log('Error writing meal data:', error: e, stackTrace: st);
      _lastError = e;
      return false;
    }
  }

  Future<bool> deleteMealData(String clientRecordId) async {
    if (!await _canMutateNutrition()) return false;

    final normalizedRecordId = clientRecordId.trim();
    if (normalizedRecordId.isEmpty) return false;

    try {
      return await _health.deleteByClientRecordId(
        dataTypeKey: HealthDataType.NUTRITION,
        clientRecordId: normalizedRecordId,
      );
    } catch (e, st) {
      log('Error deleting Health Connect meal:', error: e, stackTrace: st);
      _lastError = e;
      return false;
    }
  }

  Future<bool> _canMutateNutrition() async {
    if (!await _ensureInitialized() ||
        status != HealthConnectSdkStatus.sdkAvailable) {
      return false;
    }
    return hasPermission(HealthDataType.NUTRITION, HealthDataAccess.WRITE);
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

  Future<CaloriesResult?> getTotalCaloriesBurned() async {
    if (!await _ensureInitialized()) {
      log('Cannot get total calories burned: service not initialized');
      return null;
    }
    // Reset fallback flag for each fetch
    _lastFetchUsedFallback = false;

    // 1) Prefer Health Connect's aggregation API. Summing raw cumulative
    // records can double count overlapping data origins.
    try {
      if (status == HealthConnectSdkStatus.sdkAvailable &&
          await hasPermission(
            HealthDataType.TOTAL_CALORIES_BURNED,
            HealthDataAccess.READ,
          )) {
        final now = DateTime.now();
        final startTime = DateTime(now.year, now.month, now.day);
        final endTime = now;
        final durationSeconds = endTime.difference(startTime).inSeconds;

        // health 13.2.1's getHealthAggregateDataFromTypes argument shape does
        // not match its Android implementation. The interval API reaches the
        // same native AggregateGroupByDurationRequest with the correct shape.
        final data = await _health.getHealthIntervalDataFromTypes(
          startDate: startTime,
          endDate: endTime,
          types: const [HealthDataType.TOTAL_CALORIES_BURNED],
          interval: durationSeconds > 0 ? durationSeconds : 1,
        );

        if (data.isNotEmpty) {
          final calorieValues = data
              .where((point) => point.value is NumericHealthValue)
              .map(
                (point) =>
                    (point.value as NumericHealthValue).numericValue.toDouble(),
              )
              .toList(growable: false);
          if (calorieValues.isNotEmpty &&
              calorieValues.every((value) => value.isFinite && value >= 0)) {
            final totalCalories = calorieValues.fold<double>(
              0,
              (sum, value) => sum + value,
            );
            _lastFetchUsedFallback = false;
            return CaloriesResult(calories: totalCalories, usedFallback: false);
          }
        }
        // If data empty, fall through to fallback estimate
      }
    } catch (e, st) {
      log('Error fetching Health Connect calories:', error: e, stackTrace: st);
      _lastError = e;
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
      log('Error estimating calories from profile:', error: e, stackTrace: st);
      _lastError = e;
    }

    // Nothing available
    return null;
  }

  Future<bool> hasPermission(
    HealthDataType type,
    HealthDataAccess access,
  ) async {
    if (!await _ensureInitialized()) {
      log('Cannot check permission: service not initialized');
      return false;
    }
    if (status != HealthConnectSdkStatus.sdkAvailable) {
      return false;
    }
    final permission = await _checkPermission(type, access);
    if (type == HealthDataType.TOTAL_CALORIES_BURNED &&
        access == HealthDataAccess.READ) {
      _caloriesReadPermission = permission;
    } else if (type == HealthDataType.NUTRITION &&
        access == HealthDataAccess.WRITE) {
      _nutritionWritePermission = permission;
    }
    return permission == HealthPermissionState.granted;
  }

  Future<bool> get isNutritionAllowed =>
      hasPermission(HealthDataType.NUTRITION, HealthDataAccess.WRITE);

  Future<bool> get isCaloriesBurnedAllowed => hasPermission(
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataAccess.READ,
  );
}

List<HealthDataPoint> _dateOverlappingHealthPoints(
  List<HealthDataPoint> dataPoints,
  DateTime startTime,
  DateTime endTime,
) => dataPoints
    .where(
      (data) =>
          !data.dateTo.isBefore(startTime) && !data.dateFrom.isAfter(endTime),
    )
    .toList(growable: false);
