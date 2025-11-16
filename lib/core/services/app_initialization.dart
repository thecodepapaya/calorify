import 'dart:developer';

import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/performance_service.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// App initialization service that sets up the database service
class AppInitialization {
  static bool _initialized = false;

  /// Initialize the app with database service
  static Future<void> initialize() async {
    if (_initialized) return;

    final span = Performance.instance.startTrace(TraceType.splashScreenLoad);

    try {
      await Performance.trace(
        TraceType.envConfigInit,
        EnvConfig.instance.init,
        parentSpan: span,
      );

      // Configure data source based on environment
      // In production, use real data; in development, use mock data
      await Performance.trace(
        TraceType.dataSourceConfigInit,
        () => DataSourceConfig.configureForEnvironment(
          isProduction: EnvConfig.instance.isProd,
        ),
        parentSpan: span,
      );

      await Performance.trace(
        TraceType.firebaseCrashlyticsInit,
        _initializeCrashlytics,
        parentSpan: span,
      );
      await Performance.trace(
        TraceType.firebaseAuthInit,
        _initializeFirebaseAuth,
        parentSpan: span,
      );
      await Performance.trace(
        TraceType.firebaseAppCheckInit,
        _initializeAppCheck,
        parentSpan: span,
      );

      // Initialize core services
      await Performance.trace(
        TraceType.healthServiceInit,
        HealthService.instance.init,
        parentSpan: span,
      );
      await Performance.trace(
        TraceType.databaseServiceInit,
        DatabaseService.initialize,
        parentSpan: span,
      );
      await Performance.trace(
        TraceType.analyticsServiceInit,
        Analytics.instance.initialize,
        parentSpan: span,
      );
      await Performance.trace(
        TraceType.foodAnalysisServiceInit,
        FoodAnalysisService.instance.initialize,
        parentSpan: span,
      );
      await Performance.trace(
        TraceType.notificationServiceInit,
        NotificationService.instance.initialize,
        parentSpan: span,
      );

      log('App initialization completed successfully');
      Performance.instance.stopTrace(span);
    } on Exception catch (e, st) {
      print('Error initializing app: $e');
      log('Error initializing app:', error: e, stackTrace: st);
      // Continue to home even if some services fail to initialize
      Performance.instance.traceError(span);
    }

    _initialized = true;
  }

  static Future<void> _initializeCrashlytics() async {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  static Future<void> _initializeAppCheck() async {
    try {
      await FirebaseAppCheck.instance.activate();
      log('Firebase App Check activated');
    } catch (e) {
      log('Failed to initialize Firebase App Check: $e');
      // Don't throw - app can still work without it in some cases
    }
  }

  /// Initialize Firebase Auth with guest user for AI services
  static Future<void> _initializeFirebaseAuth() async {
    try {
      final auth = FirebaseAuth.instance;

      // Check if user is already signed in
      if (auth.currentUser != null) {
        log('User already authenticated: ${auth.currentUser!.uid}');
        return;
      }

      // Sign in anonymously for AI services
      final userCredential = await auth.signInAnonymously();
      final uid = userCredential.user?.uid ?? 'unknown';
      log('Guest user signed in: $uid');
      await Analytics.instance.setUserId(uid);
    } catch (e) {
      log('Failed to sign in guest user: $e');
      // Don't throw - app can still work without AI features
    }
  }

  /// Check if app is initialized
  static bool get isInitialized => _initialized;
}
