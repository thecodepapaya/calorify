import 'dart:async';
import 'dart:developer';

import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/health_connect_sync_service.dart';
import 'package:calorify/core/services/meal_log_sync_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/performance_service.dart';
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
  static Future<void> initialize({
    required DatabaseInterface database,
    required HealthService healthService,
    required HealthConnectSyncService healthConnectSyncService,
    required MealLogSyncService mealLogSyncService,
    required ProfileRepository profileRepository,
  }) async {
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
          () => _loadSavedLanguagePreference(database),
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
    unawaited(() async {
      await _runInitializationStep(
        'meal log sync',
        TraceType.databaseServiceInit,
        mealLogSyncService.syncPending,
        parentSpan: span,
      );
    }());
    hadInitializationError |=
        !await _runInitializationStep(
          'Health service',
          TraceType.healthServiceInit,
          healthService.init,
          parentSpan: span,
        );
    WearOsService.instance.setHealthConnectSyncCallback(() async {
      await healthConnectSyncService.syncPending();
    });
    hadInitializationError |=
        !await _runInitializationStep(
          'Health Connect sync',
          TraceType.healthServiceInit,
          () async {
            await healthConnectSyncService.reconcileAuthorization(
              adoptExisting: true,
            );
            await healthConnectSyncService.syncPending();
          },
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
    hadInitializationError |=
        !await _runInitializationStep(
          'Firebase messaging listeners',
          TraceType.notificationServiceInit,
          NotificationService.instance.initializeFirebaseMessaging,
          parentSpan: span,
        );
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
        () => _syncPendingProfile(profileRepository),
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

  static Future<void> _loadSavedLanguagePreference(
    DatabaseInterface database,
  ) async {
    // Load saved language preference after DB is initialized
    final languageCode = await database.getLanguageCode();
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
        log('User session already available');
        return;
      }

      // Sign in anonymously for AI services
      final userCredential = await auth.signInAnonymously();
      final uid = userCredential.user?.uid ?? 'unknown';
      log('Guest user sign-in completed');
      await Analytics.instance.setUserId(uid);
    } catch (e) {
      log('Failed to sign in guest user: $e');
      // Don't throw - app can still work without AI features
    }
  }

  static Future<void> _syncPendingProfile(
    ProfileRepository profileRepository,
  ) async {
    final synced = await profileRepository.syncPendingProfile();
    if (!synced) log('Pending profile sync will retry on the next app start');
  }

  /// Check if app is initialized
  static bool get isInitialized => _initialized;
}
