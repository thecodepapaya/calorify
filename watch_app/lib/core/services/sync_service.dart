import 'dart:async';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';

/// Service to sync data between watch and main app using Wear OS Data Layer
class SyncService {
  SyncService._();

  static final SyncService instance = SyncService._();

  bool _isInitialized = false;
  StreamSubscription<Map<String, dynamic>>? _messageSubscription;

  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Add a small delay to ensure platform channels are ready
      await Future.delayed(const Duration(milliseconds: 100));

      final success = await WearOsChannel.initialize();
      if (!success) {
        debugPrint('Wear OS channel initialization returned false');
        // Don't throw - allow app to continue without watch connection
        return;
      }
      _isInitialized = true;

      // Start listening for messages from phone
      _startListening();
    } catch (e) {
      debugPrint('Failed to initialize sync service: $e');
      // Don't rethrow - allow app to continue without watch connection
      // The app can function without the watch connection
    }
  }

  void _startListening() {
    _messageSubscription?.cancel();
    _messageSubscription = WearOsChannel.listenForMessages().listen(
      (message) {
        debugPrint('Received message from phone: $message');
        // Handle incoming messages if needed
      },
      onError: (error) {
        debugPrint('Error listening for messages: $error');
      },
    );
  }

  /// Send meal data to main app
  Future<bool> sendMeal(Meal meal) async {
    if (!_isInitialized) {
      throw Exception('SyncService not initialized');
    }

    try {
      // Convert Meal to LoggedMeal for the legacy JSON format
      final loggedMeal = LoggedMeal(
        meal: meal,
        createdAt: dateTimeToIso8601String(DateTime.now()),
      );
      final response = await WearOsChannel.sendMessage(
        path: '/meal',
        data: mealInfoToLegacyJson(loggedMeal),
      );

      if (response != null && response['success'] == true) {
        return true;
      }
      return false;
    } catch (e) {
      debugPrint('Failed to send meal: $e');
      return false;
    }
  }

  /// Request today's meals from main app
  Future<List<LoggedMeal>> requestTodaysMeals() async {
    if (!_isInitialized) {
      throw Exception('SyncService not initialized');
    }

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/meals/today',
        data: {},
      );

      if (response != null && response['success'] == true) {
        final mealsData = response['meals'] as List<dynamic>?;
        if (mealsData != null) {
          return mealsData
              .map(
                (json) => mealInfoFromLegacyJson(json as Map<String, dynamic>),
              )
              .toList();
        }
      }
      return [];
    } catch (e) {
      debugPrint('Failed to request today\'s meals: $e');
      return [];
    }
  }

  /// Request calorie goal from main app
  Future<int?> requestCalorieGoal() async {
    if (!_isInitialized) {
      throw Exception('SyncService not initialized');
    }

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/calorie_goal',
        data: {},
      );

      if (response != null && response['success'] == true) {
        final goal = response['goal'];
        if (goal is int) {
          return goal;
        } else if (goal is num) {
          return goal.toInt();
        }
      }
      return null;
    } catch (e) {
      debugPrint('Failed to request calorie goal: $e');
      return null;
    }
  }

  /// Request user profile from main app
  Future<Map<String, dynamic>?> requestUserProfile() async {
    if (!_isInitialized) {
      throw Exception('SyncService not initialized');
    }

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/user_profile',
        data: {},
      );

      if (response != null && response['success'] == true) {
        final profile = response['profile'];
        if (profile is Map) {
          return Map<String, dynamic>.from(profile);
        }
      }
      return null;
    } catch (e) {
      debugPrint('Failed to request user profile: $e');
      return null;
    }
  }

  /// Check if phone is connected
  Future<bool> isPhoneConnected() async {
    if (!_isInitialized) {
      return false;
    }
    return await WearOsChannel.isPhoneConnected();
  }

  void dispose() {
    _messageSubscription?.cancel();
    _messageSubscription = null;
    _isInitialized = false;
  }
}
