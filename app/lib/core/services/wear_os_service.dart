import 'dart:async';

import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

/// Service to handle Wear OS messages from the watch app
class WearOsService {
  WearOsService._();

  static final WearOsService instance = WearOsService._();

  bool _isInitialized = false;
  FoodRepository _foodRepository = FoodRepository();
  Future<void> Function()? _syncHealthConnect;

  void setHealthConnectSyncCallback(Future<void> Function() callback) {
    _syncHealthConnect = callback;
  }

  /// Initialize the Wear OS service
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Initialize platform channel
      await _initializePlatformChannel();
      _isInitialized = true;
    } catch (e) {
      debugPrint('Failed to initialize Wear OS service: $e');
      rethrow;
    }
  }

  Future<void> _initializePlatformChannel() async {
    // Set up method channel handler for incoming watch messages
    const methodChannel = MethodChannel(
      'dev.thecodepapaya.calorify/wear_os_phone',
    );
    methodChannel.setMethodCallHandler(_handleMethodCall);
  }

  Future<dynamic> _handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'handleWatchMessage':
        final args = call.arguments as Map<dynamic, dynamic>?;
        if (args != null) {
          final path = args['path'] as String? ?? '';
          final data = args['data'] as Map<dynamic, dynamic>? ?? {};
          final dataMap = Map<String, dynamic>.from(data);
          return handleWatchMessage(path: path, data: dataMap);
        }
    }
    return null;
  }

  /// Handle incoming message from watch app
  Future<Map<String, dynamic>?> handleWatchMessage({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      // Log message for debug purposes (only in debug mode)
      if (kDebugMode) {
        WearOsMessageLog.addMessage(path, data);
      }

      switch (path) {
        case '/meal':
          return await _handleMealLog(data);
        case '/meal/delete':
          return await _handleDeleteMeal(data);
        case '/meals/today':
          return await _handleGetTodaysMeals();
        case '/calorie_goal':
          return await _handleGetCalorieGoal();
        case '/user_profile':
          return await _handleGetUserProfile();
        case '/favorites':
          return await _handleGetFavoriteMeals();
        case '/analysis/detect-text':
          return await _handleDetectText(data);
        default:
          debugPrint('Unknown message path: $path');
          return _legacyFailure('Unknown watch request', 'unknown_operation');
      }
    } catch (e) {
      _logFailure('Watch message handling', e);
      return _legacyFailure(
        'Phone failed to handle the watch request',
        'internal',
      );
    }
  }

  Future<Map<String, dynamic>> _handleMealLog(Map<String, dynamic> data) async {
    try {
      final meal = mealInfoFromLegacyJson(data);
      final operationId = data['watch_operation_id'];
      final favoriteMealId = data['favorite_meal_id'];
      await _logMeal(
        meal,
        operationId: operationId is String ? operationId : null,
        favoriteMealId: favoriteMealId is num ? favoriteMealId.toInt() : null,
      );
      return {'success': true};
    } catch (e) {
      _logFailure('Watch meal logging', e);
      return _legacyFailure('Phone failed to log the meal', 'internal');
    }
  }

  Future<Map<String, dynamic>> _handleDeleteMeal(
    Map<String, dynamic> data,
  ) async {
    try {
      final mealId = data['meal_id'];
      if (mealId is! num) {
        return _legacyFailure('Invalid meal id', 'invalid_payload');
      }

      await _deleteMeal(mealId.toInt());
      return {'success': true};
    } catch (e) {
      _logFailure('Watch meal deletion', e);
      return _legacyFailure('Phone failed to delete the meal', 'internal');
    }
  }

  Future<Map<String, dynamic>> _handleGetTodaysMeals() async {
    try {
      final meals = await _getTodaysMeals();

      return {
        'success': true,
        'meals': meals.map(mealInfoToLegacyJson).toList(),
      };
    } catch (e) {
      _logFailure('Watch meal history request', e);
      return _legacyFailure('Phone failed to load today\'s meals', 'internal');
    }
  }

  Future<Map<String, dynamic>> _handleGetCalorieGoal() async {
    try {
      return {'success': true, 'goal': await _getCalorieGoal()};
    } catch (e) {
      _logFailure('Watch calorie goal request', e);
      return _legacyFailure(
        'Phone failed to load the calorie goal',
        'internal',
      );
    }
  }

  Future<Map<String, dynamic>> _handleGetUserProfile() async {
    try {
      final profile = await _getUserProfile();
      return {'success': true, 'profile': userProfileToLegacyJson(profile)};
    } on _WearServiceException catch (error) {
      return _legacyFailure(error.message, error.code);
    } catch (e) {
      _logFailure('Watch profile request', e);
      return _legacyFailure(
        'Phone failed to load the user profile',
        'internal',
      );
    }
  }

  Future<Map<String, dynamic>> _handleGetFavoriteMeals() async {
    try {
      final favorites = await _getFavoriteMeals();

      return {
        'success': true,
        'favorites': favorites.map(favoriteMealToLegacyJson).toList(),
      };
    } catch (e) {
      _logFailure('Watch favorites request', e);
      return _legacyFailure('Phone failed to load favorite meals', 'internal');
    }
  }

  Future<Map<String, dynamic>> _handleDetectText(
    Map<String, dynamic> data,
  ) async {
    try {
      final textDescription = data['textDescription'] as String?;
      if (textDescription == null || textDescription.trim().isEmpty) {
        return _legacyFailure(
          'Meal description is required',
          'invalid_payload',
        );
      }

      final response = await _analyzeTextV2(textDescription.trim());

      return {'success': true, 'response': response.toProto3Json()};
    } catch (e) {
      _logFailure('Watch text analysis', e);
      return _legacyFailure(
        'Phone failed to analyze the meal description',
        'internal',
      );
    }
  }

  Future<void> _logMeal(
    LoggedMeal loggedMeal, {
    String? operationId,
    int? favoriteMealId,
  }) async {
    final analysisId =
        operationId != null && operationId.startsWith('watch:')
            ? operationId
            : null;
    await DatabaseService.databaseInterface.logMeal(
      loggedMeal.meal,
      analysisId: analysisId,
      loggedAt:
          loggedMeal.hasCreatedAt()
              ? iso8601StringToDateTime(loggedMeal.createdAt)
              : null,
    );
    _scheduleHealthConnectSync();
    if (favoriteMealId != null && favoriteMealId > 0) {
      await DatabaseService.databaseInterface.updateFavoriteLastUsedAt(
        favoriteMealId,
      );
    }
  }

  Future<void> _deleteMeal(int mealId) async {
    await DatabaseService.databaseInterface.deleteMeal(mealId);
    _scheduleHealthConnectSync();
  }

  void _scheduleHealthConnectSync() {
    final syncHealthConnect = _syncHealthConnect;
    if (syncHealthConnect == null) return;
    unawaited(() async {
      try {
        await syncHealthConnect();
      } catch (error) {
        debugPrint(
          'Health Connect sync after a Wear OS mutation failed: '
          '${error.runtimeType}',
        );
      }
    }());
  }

  Future<List<LoggedMeal>> _getTodaysMeals() {
    return DatabaseService.databaseInterface
        .watchAllMealsForToday()
        .first
        .timeout(const Duration(seconds: 5));
  }

  Future<int> _getCalorieGoal() async {
    return await DatabaseService.databaseInterface.getDailyCalorieGoal() ??
        2000;
  }

  Future<UserProfile> _getUserProfile() async {
    final profile = await DatabaseService.databaseInterface.getUserProfile();
    if (profile == null) {
      throw const _WearServiceException('not_found', 'Profile not found');
    }
    return profile;
  }

  Future<List<FavoriteMeal>> _getFavoriteMeals() {
    return DatabaseService.databaseInterface
        .watchLastUsedFavoriteMeals()
        .first
        .timeout(const Duration(seconds: 5));
  }

  Future<MealDetectionResponse> _analyzeTextV2(String description) async {
    final analysisId = const Uuid().v4();
    final events = await _foodRepository.analyzeTextV2(
      analysisId: analysisId,
      textDescription: description,
    );

    await for (final event in events) {
      if (event.step == PipelineStep.RESULT && event.result != null) {
        final context = MealAnalysisPipelineSessionContext(
          result: event.result,
          textDescription: description,
        );
        return MealDetectionResponse(result: context.toMealDetectionResult());
      }
      if (event.step == PipelineStep.UNCERTAINTY ||
          event.step == PipelineStep.MEAL_TYPE_QUESTION) {
        throw const _WearServiceException(
          'rejected',
          'Complete this meal analysis on the phone',
        );
      }
      if (event.step == PipelineStep.ERROR) {
        throw _WearServiceException(
          'internal',
          event.retryable
              ? 'Meal analysis is temporarily unavailable'
              : 'Meal analysis failed',
        );
      }
    }

    throw const _WearServiceException(
      'malformed_response',
      'Meal analysis ended without a result',
    );
  }

  @visibleForTesting
  void setFoodRepository(FoodRepository repository) {
    _foodRepository = repository;
  }

  @visibleForTesting
  void resetForTesting() {
    _foodRepository = FoodRepository();
    _syncHealthConnect = null;
    dispose();
  }

  Map<String, dynamic> _legacyFailure(String message, String code) {
    return {'success': false, 'error': message, 'errorCode': code};
  }

  void _logFailure(String operation, Object error) {
    debugPrint('$operation failed: type=${error.runtimeType}');
  }

  void dispose() {
    _isInitialized = false;
  }
}

final class _WearServiceException implements Exception {
  const _WearServiceException(this.code, this.message);

  final String code;
  final String message;
}
