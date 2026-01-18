import 'dart:async';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/wear_os_channel.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Service to handle Wear OS messages from the watch app
class WearOsService {
  WearOsService._();

  static final WearOsService instance = WearOsService._();

  bool _isInitialized = false;
  StreamSubscription<Map<String, dynamic>>? _messageSubscription;

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
    if (call.method == 'handleWatchMessage') {
      final args = call.arguments as Map<dynamic, dynamic>?;
      if (args != null) {
        final path = args['path'] as String? ?? '';
        final data = args['data'] as Map<dynamic, dynamic>? ?? {};
        final dataMap = Map<String, dynamic>.from(data);
        return await handleWatchMessage(path: path, data: dataMap);
      }
    }
    return null;
  }

  void _startListening() {
    // Message listening is handled by MainActivity's platform channel
    // which calls _handleMethodCall
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
        case '/meals/today':
          return await _handleGetTodaysMeals();
        case '/calorie_goal':
          return await _handleGetCalorieGoal();
        case '/user_profile':
          return await _handleGetUserProfile();
        default:
          debugPrint('Unknown message path: $path');
          return {'success': false, 'error': 'Unknown path'};
      }
    } catch (e) {
      debugPrint('Error handling watch message: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<Map<String, dynamic>> _handleMealLog(Map<String, dynamic> data) async {
    try {
      final meal = mealInfoFromLegacyJson(data);
      await DatabaseService.databaseInterface.logMeal(meal);
      return {'success': true};
    } catch (e) {
      debugPrint('Error logging meal from watch: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<Map<String, dynamic>> _handleGetTodaysMeals() async {
    try {
      final meals = await DatabaseService.databaseInterface
          .watchAllMealsForToday()
          .first
          .timeout(const Duration(seconds: 5));

      return {
        'success': true,
        'meals': meals.map(mealInfoToLegacyJson).toList(),
      };
    } catch (e) {
      debugPrint('Error getting today\'s meals: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<Map<String, dynamic>> _handleGetCalorieGoal() async {
    try {
      final goal =
          await DatabaseService.databaseInterface.getDailyCalorieGoal();
      return {
        'success': true,
        'goal': goal ?? 2000, // Default if null
      };
    } catch (e) {
      debugPrint('Error getting calorie goal: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<Map<String, dynamic>> _handleGetUserProfile() async {
    try {
      final profile = await DatabaseService.databaseInterface.getUserProfile();
      if (profile != null) {
        return {'success': true, 'profile': userProfileToLegacyJson(profile)};
      }
      return {'success': false, 'error': 'Profile not found'};
    } catch (e) {
      debugPrint('Error getting user profile: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  /// Send data update to watch app
  Future<bool> sendToWatch({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      return await WearOsPhoneChannel.sendToWatch(path: path, data: data);
    } catch (e) {
      debugPrint('Error sending to watch: $e');
      return false;
    }
  }

  void dispose() {
    _messageSubscription?.cancel();
    _messageSubscription = null;
    _isInitialized = false;
  }
}
