import 'dart:async';

import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/wear_os_channel.dart';
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
  StreamSubscription<Map<String, dynamic>>? _messageSubscription;
  FoodRepository _foodRepository = FoodRepository();

  /// Initialize the Wear OS service
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Initialize platform channel
      await _initializePlatformChannel();
      _isInitialized = true;
      _startListening();
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
      case 'handleWatchEnvelope':
        final bytes = call.arguments;
        if (bytes is Uint8List) {
          return handleWatchEnvelope(bytes);
        }
        return null;
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

  void _startListening() {
    // Message listening is handled by MainActivity's platform channel
    // which calls _handleMethodCall
  }

  /// Handles the generated v2 protocol. Version 1 path/JSON handling remains
  /// below for one compatibility cycle while phone and watch update
  /// independently.
  Future<Uint8List> handleWatchEnvelope(Uint8List bytes) async {
    WearEnvelope envelope;
    try {
      envelope = WearProtocolCodec.decode(bytes);
    } on WearProtocolViolation catch (error) {
      return WearProtocolCodec.encode(
        WearProtocolCodec.errorResponse(
          requestId: '',
          operation: WearOperation.WEAR_OPERATION_UNSPECIFIED,
          error: error,
        ),
      );
    }

    final validationError = WearProtocolCodec.validateRequest(envelope);
    if (validationError != null) {
      return WearProtocolCodec.encode(
        WearProtocolCodec.errorResponse(
          requestId: envelope.requestId,
          operation: envelope.operation,
          error: validationError,
        ),
      );
    }

    try {
      final response = await _handleTypedRequest(envelope.request);
      return WearProtocolCodec.encode(
        WearProtocolCodec.successResponse(request: envelope, payload: response),
      );
    } on _WearServiceException catch (error) {
      return WearProtocolCodec.encode(
        WearProtocolCodec.errorResponse(
          requestId: envelope.requestId,
          operation: envelope.operation,
          error: WearProtocolViolation(error.code, error.message),
        ),
      );
    } catch (error) {
      debugPrint(
        'Error handling typed watch ${envelope.operation.name}: '
        'type=${error.runtimeType}',
      );
      return WearProtocolCodec.encode(
        WearProtocolCodec.errorResponse(
          requestId: envelope.requestId,
          operation: envelope.operation,
          error: const WearProtocolViolation(
            WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
            'Phone failed to handle the watch request',
            retryable: true,
          ),
        ),
      );
    }
  }

  Future<WearResponse> _handleTypedRequest(WearRequest request) async {
    switch (request.whichPayload()) {
      case WearRequest_Payload.mealLog:
        final payload = request.mealLog;
        if (!payload.hasMeal() ||
            !payload.meal.hasMeal() ||
            payload.operationId.trim().isEmpty) {
          throw const _WearServiceException(
            WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
            'Meal and operation id are required',
          );
        }
        await _logMeal(
          payload.meal,
          operationId: payload.operationId,
          favoriteMealId:
              payload.hasFavoriteMealId() ? payload.favoriteMealId : null,
        );
        return WearResponse(mealLog: MealLogResponse());
      case WearRequest_Payload.mealDelete:
        final mealId = request.mealDelete.mealId;
        if (mealId <= 0) {
          throw const _WearServiceException(
            WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
            'Meal id must be positive',
          );
        }
        await _deleteMeal(mealId);
        return WearResponse(mealDelete: MealDeleteResponse());
      case WearRequest_Payload.todayMeals:
        return WearResponse(
          todayMeals: TodayMealsResponse(meals: await _getTodaysMeals()),
        );
      case WearRequest_Payload.calorieGoal:
        return WearResponse(
          calorieGoal: CalorieGoalResponse(goal: await _getCalorieGoal()),
        );
      case WearRequest_Payload.userProfile:
        return WearResponse(
          userProfile: UserProfileResponse(profile: await _getUserProfile()),
        );
      case WearRequest_Payload.favorites:
        return WearResponse(
          favorites: FavoritesResponse(favorites: await _getFavoriteMeals()),
        );
      case WearRequest_Payload.authSession:
        return WearResponse(
          authSession: AuthSessionResponse(session: await _getAuthSession()),
        );
      case WearRequest_Payload.detectText:
        final description = request.detectText.textDescription.trim();
        if (description.isEmpty) {
          throw const _WearServiceException(
            WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
            'Meal description is required',
          );
        }
        return WearResponse(
          detectText: DetectTextResponse(
            response: await _analyzeTextV2(description),
          ),
        );
      case WearRequest_Payload.notSet:
        throw const _WearServiceException(
          WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
          'Unknown Wear operation',
        );
    }
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

      switch (operationForLegacyWearPath(path)) {
        case WearOperation.WEAR_OPERATION_MEAL_LOG:
          return await _handleMealLog(data);
        case WearOperation.WEAR_OPERATION_MEAL_DELETE:
          return await _handleDeleteMeal(data);
        case WearOperation.WEAR_OPERATION_TODAY_MEALS:
          return await _handleGetTodaysMeals();
        case WearOperation.WEAR_OPERATION_CALORIE_GOAL:
          return await _handleGetCalorieGoal();
        case WearOperation.WEAR_OPERATION_USER_PROFILE:
          return await _handleGetUserProfile();
        case WearOperation.WEAR_OPERATION_FAVORITES:
          return await _handleGetFavoriteMeals();
        case WearOperation.WEAR_OPERATION_AUTH_SESSION:
          return await _handleGetAuthSession();
        case WearOperation.WEAR_OPERATION_DETECT_TEXT:
          return await _handleDetectText(data);
        case null:
          debugPrint('Unknown message path: $path');
          return _legacyFailure(
            'Unknown watch request',
            WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
          );
        default:
          return _legacyFailure(
            'Unsupported legacy operation',
            WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
          );
      }
    } catch (e) {
      _logFailure('Watch message handling', e);
      return _legacyFailure(
        'Phone failed to handle the watch request',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
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
      return _legacyFailure(
        'Phone failed to log the meal',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
      );
    }
  }

  Future<Map<String, dynamic>> _handleDeleteMeal(
    Map<String, dynamic> data,
  ) async {
    try {
      final mealId = data['meal_id'];
      if (mealId is! num) {
        return _legacyFailure(
          'Invalid meal id',
          WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        );
      }

      await _deleteMeal(mealId.toInt());
      return {'success': true};
    } catch (e) {
      _logFailure('Watch meal deletion', e);
      return _legacyFailure(
        'Phone failed to delete the meal',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
      );
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
      return _legacyFailure(
        'Phone failed to load today\'s meals',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
      );
    }
  }

  Future<Map<String, dynamic>> _handleGetCalorieGoal() async {
    try {
      return {'success': true, 'goal': await _getCalorieGoal()};
    } catch (e) {
      _logFailure('Watch calorie goal request', e);
      return _legacyFailure(
        'Phone failed to load the calorie goal',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
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
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
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
      return _legacyFailure(
        'Phone failed to load favorite meals',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
      );
    }
  }

  Future<Map<String, dynamic>> _handleGetAuthSession() async {
    try {
      final session = await _getAuthSession();

      return {
        'success': true,
        'session': {
          'uid': session.uid,
          'authToken': session.authToken,
          'isAnonymous': session.isAnonymous,
          'syncedAt': session.syncedAt,
        },
      };
    } on _WearServiceException catch (error) {
      return _legacyFailure(error.message, error.code);
    } catch (e) {
      _logFailure('Watch auth session request', e);
      return _legacyFailure(
        'Phone failed to refresh watch authentication',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
      );
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
          WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        );
      }

      final response = await _analyzeTextV2(textDescription.trim());

      return {'success': true, 'response': response.toProto3Json()};
    } catch (e) {
      _logFailure('Watch text analysis', e);
      return _legacyFailure(
        'Phone failed to analyze the meal description',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
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
    );
    if (favoriteMealId != null && favoriteMealId > 0) {
      await DatabaseService.databaseInterface.updateFavoriteLastUsedAt(
        favoriteMealId,
      );
    }
  }

  Future<void> _deleteMeal(int mealId) {
    return DatabaseService.databaseInterface.deleteMeal(mealId);
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
      throw const _WearServiceException(
        WearErrorCode.WEAR_ERROR_CODE_NOT_FOUND,
        'Profile not found',
      );
    }
    return profile;
  }

  Future<List<FavoriteMeal>> _getFavoriteMeals() {
    return DatabaseService.databaseInterface
        .watchLastUsedFavoriteMeals()
        .first
        .timeout(const Duration(seconds: 5));
  }

  Future<WearAuthSession> _getAuthSession() async {
    final user = AuthService.instance.currentUser;
    if (user == null) {
      throw const _WearServiceException(
        WearErrorCode.WEAR_ERROR_CODE_UNAUTHENTICATED,
        'Phone user session is unavailable',
      );
    }

    final authToken = AuthService.instance.authToken ?? await user.getIdToken();
    if (authToken == null || authToken.isEmpty) {
      throw const _WearServiceException(
        WearErrorCode.WEAR_ERROR_CODE_UNAUTHENTICATED,
        'Phone auth token is unavailable',
      );
    }

    return WearAuthSession(
      uid: user.uid,
      authToken: authToken,
      isAnonymous: user.isAnonymous,
      syncedAt: DateTime.now().toUtc().toIso8601String(),
    );
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
          WearErrorCode.WEAR_ERROR_CODE_REJECTED,
          'Complete this meal analysis on the phone',
        );
      }
      if (event.step == PipelineStep.ERROR) {
        throw _WearServiceException(
          WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
          event.retryable
              ? 'Meal analysis is temporarily unavailable'
              : 'Meal analysis failed',
        );
      }
    }

    throw const _WearServiceException(
      WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
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
    dispose();
  }

  /// Send data update to watch app
  Future<bool> sendToWatch({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      return await WearOsPhoneChannel.sendToWatch(path: path, data: data);
    } catch (e) {
      _logFailure('Sending update to watch', e);
      return false;
    }
  }

  Map<String, dynamic> _legacyFailure(String message, WearErrorCode code) {
    return {
      'success': false,
      'error': message,
      'errorCode': switch (code) {
        WearErrorCode.WEAR_ERROR_CODE_INVALID_VERSION => 'invalid_version',
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD => 'invalid_payload',
        WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION => 'unknown_operation',
        WearErrorCode.WEAR_ERROR_CODE_TIMEOUT => 'timeout',
        WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED => 'disconnected',
        WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE => 'unavailable',
        WearErrorCode.WEAR_ERROR_CODE_NETWORK => 'network',
        WearErrorCode.WEAR_ERROR_CODE_UNAUTHENTICATED => 'unauthenticated',
        WearErrorCode.WEAR_ERROR_CODE_NOT_FOUND => 'not_found',
        WearErrorCode.WEAR_ERROR_CODE_REJECTED => 'rejected',
        WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE =>
          'malformed_response',
        WearErrorCode.WEAR_ERROR_CODE_INTERNAL => 'internal',
        WearErrorCode.WEAR_ERROR_CODE_PLATFORM => 'platform',
        WearErrorCode.WEAR_ERROR_CODE_UNSPECIFIED => 'internal',
        _ => 'internal',
      },
    };
  }

  void _logFailure(String operation, Object error) {
    debugPrint('$operation failed: type=${error.runtimeType}');
  }

  void dispose() {
    _messageSubscription?.cancel();
    _messageSubscription = null;
    _isInitialized = false;
  }
}

final class _WearServiceException implements Exception {
  const _WearServiceException(this.code, this.message);

  final WearErrorCode code;
  final String message;
}
