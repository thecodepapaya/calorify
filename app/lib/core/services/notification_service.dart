import 'dart:io';
import 'package:i18n/i18n.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

/// Service for managing local and push notifications (Android only)
class NotificationService {
  NotificationService._();

  static final _instance = NotificationService._();
  static NotificationService get instance => _instance;

  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  bool _isInitialized = false;
  String? _fcmToken;

  // Notification channels
  static const String remindersChannel = 'reminders';
  static const String generalChannel = 'general';

  /// Initialize the notification service
  Future<void> initialize() async {
    if (_isInitialized) return;

    // Initialize time zones
    tz.initializeTimeZones();

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

  /// Initialize Firebase messaging and request permissions
  Future<void> initializeFirebaseMessaging() async {
    // Request permission for notifications
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      // Get FCM token
      _fcmToken = await _firebaseMessaging.getToken();
      debugPrint('FCM Token: $_fcmToken');

      // Set up message handlers
      FirebaseMessaging.onMessage.listen(_onForegroundMessage);
      FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);
      FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
    }
  }

  /// Handle notification tap
  void _onNotificationTapped(NotificationResponse response) {
    debugPrint('Notification tapped: ${response.payload}');
    // Handle navigation based on payload
  }

  /// Handle foreground messages
  void _onForegroundMessage(RemoteMessage message) {
    debugPrint('Foreground message: ${message.notification?.title}');

    // Show local notification for foreground messages
    _showLocalNotification(
      title: message.notification?.title ?? 'New Message',
      body: message.notification?.body ?? '',
      payload: message.data.toString(),
    );
  }

  /// Handle message opened app
  void _onMessageOpenedApp(RemoteMessage message) {
    debugPrint('Message opened app: ${message.notification?.title}');
    // Handle navigation based on message data
  }

  /// Background message handler (must be top-level function)
  static Future<void> _onBackgroundMessage(RemoteMessage message) async {
    debugPrint('Background message: ${message.notification?.title}');
  }

  /// Request notification permissions (Android only)
  Future<bool> requestPermissions() async {
    if (Platform.isAndroid) {
      final status = await Permission.notification.request();
      return status.isGranted;
    }
    return false;
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
