import 'dart:async';
import 'dart:developer';

import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/services/performance_service.dart';
import 'package:calorify/core/services/remote_db.dart';
import 'package:calorify/core/services/sync_service.dart';
import 'package:calorify/core/services/wear_os_service.dart';
import 'package:i18n/i18n.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// App initialization service that sets up the database service
class AppInitialization {
  static bool _initialized = false;

  @visibleForTesting
  static bool isTesting = false;

  /// Initialize the app with database service
  static Future<void> initialize() async {
    if (isTesting) {
      _initialized = true;
      return;
    }

    if (_initialized) return;

    final span = Performance.instance.startTrace(TraceType.splashScreenLoad);

    try {
      // Load saved language preference after DB is initialized
      final db = DatabaseService.databaseInterface;
      final languageCode = await db.getLanguageCode();
      if (languageCode != null) {
        // Use saved preference
        final locale = AppLocaleUtils.parse(languageCode);
        await LocaleSettings.setLocale(locale);
      } else {
        // We let it be empty for now as requested.
        // Slang will use the default locale (en) if nothing is set.
        await LocaleSettings.setLocale(AppLocale.en);
      }

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
      unawaited(SyncService.instance.initialize());
      await Performance.trace(
        TraceType.watchServiceInit,
        WearOsService.instance.initialize,
        parentSpan: span,
      );

      Performance.trace(
        TraceType.remoteDbProfileUpdate,
        _updateRemoteDb,
        parentSpan: span,
      );

      log('App initialization completed successfully');
      Performance.instance.stopTrace(span);
    } on Exception catch (e, st) {
      debugPrint('Error initializing app: $e');
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

  static Future<void> _updateRemoteDb() async {
    try {
      final remoteDb = RemoteDb();
      await NotificationService.instance.initializeFirebaseMessaging();
      final fcmToken = NotificationService.instance.fcmToken;
      if (fcmToken != null) {
        await remoteDb.saveFcmToken(fcmToken);
      }

      final userProfile = await OnboardingService.instance.getProfileData();
      if (userProfile != null) {
        await remoteDb.updateUserProfile(userProfile);
      }
    } catch (e) {
      log('Failed to update remote DB: $e');
      // Don't throw - app can still work without remote DB
    }
  }

  /// Check if app is initialized
  static bool get isInitialized => _initialized;
}
