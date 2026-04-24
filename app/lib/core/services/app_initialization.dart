import 'dart:async';
import 'dart:developer';

import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/services/performance_service.dart';
import 'package:calorify/core/services/remote_db.dart';
// import 'package:calorify/core/services/sync_service.dart'; // Temporarily disabled
import 'package:calorify/core/services/wear_os_service.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:i18n/i18n.dart';
import 'package:measure_flutter/measure_flutter.dart' show Span;

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

    var hadInitializationError = false;

    hadInitializationError |=
        !await _runInitializationStep(
          'language preference',
          TraceType.databaseServiceInit,
          _loadSavedLanguagePreference,
          parentSpan: span,
        );
    hadInitializationError |=
        !await _runInitializationStep(
          'Firebase Crashlytics',
          TraceType.firebaseCrashlyticsInit,
          _initializeCrashlytics,
          parentSpan: span,
        );
    hadInitializationError |=
        !await _runInitializationStep(
          'Firebase Auth',
          TraceType.firebaseAuthInit,
          _initializeFirebaseAuth,
          parentSpan: span,
        );
    hadInitializationError |=
        !await _runInitializationStep(
          'Firebase App Check',
          TraceType.firebaseAppCheckInit,
          _initializeAppCheck,
          parentSpan: span,
        );
    hadInitializationError |=
        !await _runInitializationStep(
          'Health service',
          TraceType.healthServiceInit,
          HealthService.instance.init,
          parentSpan: span,
        );
    hadInitializationError |=
        !await _runInitializationStep(
          'Analytics service',
          TraceType.analyticsServiceInit,
          Analytics.instance.initialize,
          parentSpan: span,
        );
    hadInitializationError |=
        !await _runInitializationStep(
          'Notification service',
          TraceType.notificationServiceInit,
          NotificationService.instance.initialize,
          parentSpan: span,
        );
    // SyncService temporarily disabled
    // unawaited(SyncService.instance.initialize());
    hadInitializationError |=
        !await _runInitializationStep(
          'Wear OS service',
          TraceType.watchServiceInit,
          WearOsService.instance.initialize,
          parentSpan: span,
        );

    unawaited(() async {
      await _runInitializationStep(
        'remote DB profile update',
        TraceType.remoteDbProfileUpdate,
        _updateRemoteDb,
        parentSpan: span,
      );
    }());

    if (hadInitializationError) {
      Performance.instance.traceError(span);
    } else {
      log('App initialization completed successfully');
      Performance.instance.stopTrace(span);
    }

    _initialized = true;
  }

  static Future<bool> _runInitializationStep(
    String name,
    TraceType traceType,
    FutureOr<void> Function() initialize, {
    required Span parentSpan,
  }) async {
    try {
      await Performance.trace(traceType, initialize, parentSpan: parentSpan);
      return true;
    } catch (e, st) {
      debugPrint('Error initializing $name: $e');
      log('Error initializing $name:', error: e, stackTrace: st);
      return false;
    }
  }

  static Future<void> _loadSavedLanguagePreference() async {
    // Load saved language preference after DB is initialized
    final db = DatabaseService.databaseInterface;
    final languageCode = await db.getLanguageCode();
    if (languageCode != null) {
      final locale = AppLocaleUtils.parse(languageCode);
      await LocaleSettings.setLocale(locale);
    } else {
      // Slang will use the default locale (en) if nothing is set.
      await LocaleSettings.setLocale(AppLocale.en);
    }
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
        await ProfileRepository().updateUserProfile(userProfile);
      }
    } catch (e) {
      log('Failed to update remote DB: $e');
      // Don't throw - app can still work without remote DB
    }
  }

  /// Check if app is initialized
  static bool get isInitialized => _initialized;
}
