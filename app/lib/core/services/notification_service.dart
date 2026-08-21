import 'dart:io';
import 'package:calorify/core/services/meal_reminder_settings_store.dart';
import 'package:i18n/i18n.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

/// Background message handler (must be top-level for Firebase Messaging).
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) debugPrint('Background notification received');
}

/// Service for managing local and push notifications (Android only)
class NotificationService {
  NotificationService._({
    FlutterLocalNotificationsPlugin? localNotifications,
    FirebaseMessaging? firebaseMessaging,
    MealReminderSettingsStore? reminderSettingsStore,
    Stream<RemoteMessage>? foregroundMessages,
    Stream<RemoteMessage>? openedMessages,
    void Function(BackgroundMessageHandler)? backgroundMessageRegistrar,
  }) : _localNotifications =
           localNotifications ?? FlutterLocalNotificationsPlugin(),
       _firebaseMessaging = firebaseMessaging ?? FirebaseMessaging.instance,
       _reminderSettingsStore =
           reminderSettingsStore ?? FileMealReminderSettingsStore(),
       _foregroundMessages = foregroundMessages ?? FirebaseMessaging.onMessage,
       _openedMessages = openedMessages ?? FirebaseMessaging.onMessageOpenedApp,
       _backgroundMessageRegistrar =
           backgroundMessageRegistrar ?? FirebaseMessaging.onBackgroundMessage;

  static NotificationService _instance = NotificationService._();
  static NotificationService get instance => _instance;

  @visibleForTesting
  static void setMockInstance(NotificationService mock) {
    _instance = mock;
  }

  @visibleForTesting
  factory NotificationService.test({
    FlutterLocalNotificationsPlugin? localNotifications,
    FirebaseMessaging? firebaseMessaging,
    MealReminderSettingsStore? reminderSettingsStore,
    Stream<RemoteMessage>? foregroundMessages,
    Stream<RemoteMessage>? openedMessages,
    void Function(BackgroundMessageHandler)? backgroundMessageRegistrar,
  }) => NotificationService._(
    localNotifications: localNotifications,
    firebaseMessaging: firebaseMessaging,
    reminderSettingsStore: reminderSettingsStore,
    foregroundMessages: foregroundMessages,
    openedMessages: openedMessages,
    backgroundMessageRegistrar: backgroundMessageRegistrar,
  );

  final FlutterLocalNotificationsPlugin _localNotifications;
  final FirebaseMessaging _firebaseMessaging;
  final MealReminderSettingsStore _reminderSettingsStore;
  final Stream<RemoteMessage> _foregroundMessages;
  final Stream<RemoteMessage> _openedMessages;
  final void Function(BackgroundMessageHandler) _backgroundMessageRegistrar;

  bool _isInitialized = false;
  bool _isFirebaseMessagingInitialized = false;
  Future<void>? _firebaseMessagingInitialization;
  String? _fcmToken;

  // Notification channels
  static const String remindersChannel = 'reminders';
  static const String generalChannel = 'general';

  /// Initialize the notification service
  Future<void> initialize() async {
    if (_isInitialized) return;

    // Initialize time zones
    tz.initializeTimeZones();
    try {
      final localTimezone = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(localTimezone.identifier));
    } on Object catch (error) {
      // UTC is still a valid fallback. Do not prevent notifications from
      // initializing on devices that return an unknown vendor timezone.
      debugPrint('Could not resolve the device timezone: $error');
    }

    // Initialize local notifications
    await _initializeLocalNotifications();

    _isInitialized = true;
  }

  /// Initialize local notifications (Android only)
  Future<void> _initializeLocalNotifications() async {
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@drawable/ic_notification');

    const InitializationSettings settings = InitializationSettings(
      android: androidSettings,
    );

    await _localNotifications.initialize(
      settings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    // Create notification channels
    await _createNotificationChannels();
  }

  /// Create Android notification channels
  Future<void> _createNotificationChannels() async {
    const AndroidNotificationChannel remindersChannel =
        AndroidNotificationChannel(
          'reminders',
          'Reminders',
          description: 'Meal reminder notifications',
          importance: Importance.high,
        );

    const AndroidNotificationChannel generalChannel =
        AndroidNotificationChannel(
          'general',
          'General',
          description: 'General app notifications',
          importance: Importance.defaultImportance,
        );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(remindersChannel);

    await _localNotifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(generalChannel);
  }

  /// Register Firebase message listeners without prompting for permission.
  Future<void> initializeFirebaseMessaging() {
    if (_isFirebaseMessagingInitialized) return Future.value();
    return _firebaseMessagingInitialization ??= _initializeFirebaseMessaging()
        .whenComplete(() {
          _firebaseMessagingInitialization = null;
        });
  }

  Future<void> _initializeFirebaseMessaging() async {
    _foregroundMessages.listen(_onForegroundMessage);
    _openedMessages.listen(_onMessageOpenedApp);
    _backgroundMessageRegistrar(firebaseMessagingBackgroundHandler);
    _isFirebaseMessagingInitialized = true;

    // Reading settings is non-interactive. Existing authorized users can still
    // provide a token during startup, while first-time users are only prompted
    // from requestPermissions after an explicit UI action.
    final settings = await _firebaseMessaging.getNotificationSettings();
    if (_isAuthorized(settings.authorizationStatus)) {
      _fcmToken = await _firebaseMessaging.getToken();
    }
  }

  /// Handle notification tap
  void _onNotificationTapped(NotificationResponse response) {
    if (kDebugMode) debugPrint('Local notification opened');
    // Handle navigation based on payload
  }

  /// Handle foreground messages
  void _onForegroundMessage(RemoteMessage message) {
    if (kDebugMode) debugPrint('Foreground notification received');

    // Show local notification for foreground messages
    _showLocalNotification(
      title: message.notification?.title ?? 'New Message',
      body: message.notification?.body ?? '',
      payload: message.data.toString(),
    );
  }

  /// Handle message opened app
  void _onMessageOpenedApp(RemoteMessage message) {
    if (kDebugMode) debugPrint('Push notification opened');
    // Handle navigation based on message data
  }

  /// Request notification permissions after an explicit user action.
  Future<bool> requestPermissions() async {
    var granted = false;
    if (Platform.isAndroid) {
      final status = await Permission.notification.request();
      granted = status.isGranted;
    } else if (Platform.isIOS) {
      final settings = await _firebaseMessaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        provisional: false,
      );
      granted = _isAuthorized(settings.authorizationStatus);
    }

    if (granted) {
      _fcmToken = await _firebaseMessaging.getToken();
    }
    return granted;
  }

  bool _isAuthorized(AuthorizationStatus status) {
    return status == AuthorizationStatus.authorized ||
        status == AuthorizationStatus.provisional;
  }

  /// Check if notifications are enabled (Android only)
  Future<bool> areNotificationsEnabled() async {
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      return status.isGranted;
    }
    return false;
  }

  /// Show local notification (Android only)
  Future<void> _showLocalNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'general',
          'General',
          channelDescription: 'General app notifications',
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
        );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
    );

    await _localNotifications.show(
      DateTime.now().millisecondsSinceEpoch.remainder(100000),
      title,
      body,
      details,
      payload: payload,
    );
  }

  /// Schedule a reminder notification (Android only)
  Future<void> scheduleReminder({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledTime,
    String? payload,
    String channel = 'reminders',
  }) async {
    // Ensure service is initialized before using timezone functions
    await initialize();

    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'reminders',
          'Reminders',
          channelDescription: 'Meal reminder notifications',
          importance: Importance.high,
          priority: Priority.high,
        );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
    );

    await _localNotifications.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(scheduledTime, tz.local),
      details,
      payload: payload,
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  /// Cancel a scheduled notification
  Future<void> cancelNotification(int id) async {
    await _localNotifications.cancel(id);
  }

  /// Cancel all notifications
  Future<void> cancelAllNotifications() async {
    await _localNotifications.cancelAll();
  }

  Future<List<PendingNotificationRequest>> pendingNotificationRequests() async {
    final pendingRequests =
        await _localNotifications.pendingNotificationRequests();
    return pendingRequests;
  }

  /// Get FCM token
  String? get fcmToken => _fcmToken;

  /// Subscribe to a topic
  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  /// Unsubscribe from a topic
  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }

  /// Schedule meal reminder notifications (iOS only)
  Future<void> scheduleMealReminders({
    required bool breakfastEnabled,
    required bool lunchEnabled,
    required bool dinnerEnabled,
    required bool snackEnabled,
    required DateTime breakfastTime,
    required DateTime lunchTime,
    required DateTime dinnerTime,
    required DateTime snackTime,
  }) async {
    // Ensure service is initialized before using timezone functions
    await initialize();

    // Cancel existing meal reminders
    await cancelAllNotifications();

    if (breakfastEnabled) {
      await scheduleReminder(
        id: 1,
        title: t.notifications.breakfast.title,
        body: t.notifications.breakfast.body,
        scheduledTime: breakfastTime,
        payload: 'meal_reminder_breakfast',
        channel: remindersChannel,
      );
    }

    if (lunchEnabled) {
      await scheduleReminder(
        id: 2,
        title: t.notifications.lunch.title,
        body: t.notifications.lunch.body,
        scheduledTime: lunchTime,
        payload: 'meal_reminder_lunch',
        channel: remindersChannel,
      );
    }

    if (dinnerEnabled) {
      await scheduleReminder(
        id: 3,
        title: t.notifications.dinner.title,
        body: t.notifications.dinner.body,
        scheduledTime: dinnerTime,
        payload: 'meal_reminder_dinner',
        channel: remindersChannel,
      );
    }

    if (snackEnabled) {
      await scheduleReminder(
        id: 4,
        title: t.notifications.snack.title,
        body: t.notifications.snack.body,
        scheduledTime: snackTime,
        payload: 'meal_reminder_snack',
        channel: remindersChannel,
      );
    }

    await _reminderSettingsStore.save(
      MealReminderSettings(
        breakfastEnabled: breakfastEnabled,
        lunchEnabled: lunchEnabled,
        dinnerEnabled: dinnerEnabled,
        snackEnabled: snackEnabled,
        breakfastMinutes: breakfastTime.hour * 60 + breakfastTime.minute,
        lunchMinutes: lunchTime.hour * 60 + lunchTime.minute,
        dinnerMinutes: dinnerTime.hour * 60 + dinnerTime.minute,
        snackMinutes: snackTime.hour * 60 + snackTime.minute,
      ),
    );
  }

  Future<MealReminderSettings> loadMealReminderSettings() async =>
      await _reminderSettingsStore.load() ?? MealReminderSettings.defaults;

  Future<void> clearMealReminders() async {
    try {
      await cancelAllNotifications();
    } on Object catch (error) {
      // Clearing local profile data must not become stuck because the OS
      // notification service is temporarily unavailable.
      debugPrint('Could not cancel notifications while clearing data: $error');
    }
    await _reminderSettingsStore.clear();
  }

  /// Show general notification (Android only)
  Future<void> showGeneralNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'general',
          'General',
          channelDescription: 'General app notifications',
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
        );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
    );

    await _localNotifications.show(
      DateTime.now().millisecondsSinceEpoch.remainder(100000) + 100,
      title,
      body,
      details,
      payload: payload,
    );
  }
}
