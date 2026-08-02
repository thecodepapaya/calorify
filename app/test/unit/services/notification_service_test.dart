import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/meal_reminder_settings_store.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../../setup/all_tests.dart';

class MockFlutterLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class MockFirebaseMessaging extends Mock implements FirebaseMessaging {}

class FakeTZDateTime extends Fake implements tz.TZDateTime {}

class FakeNotificationDetails extends Fake implements NotificationDetails {}

class FakeInitializationSettings extends Fake
    implements InitializationSettings {}

class MemoryMealReminderSettingsStore implements MealReminderSettingsStore {
  MealReminderSettings? value;

  @override
  Future<void> clear() async => value = null;

  @override
  Future<MealReminderSettings?> load() async => value;

  @override
  Future<void> save(MealReminderSettings settings) async => value = settings;
}

void main() {
  late NotificationService notificationService;
  late MockFlutterLocalNotificationsPlugin mockLocalNotifications;
  late MockFirebaseMessaging mockFirebaseMessaging;
  late MemoryMealReminderSettingsStore reminderSettingsStore;

  setUpAll(() {
    setupAllTests();
    tz.initializeTimeZones();
    registerFallbackValue(FakeTZDateTime());
    registerFallbackValue(FakeNotificationDetails());
    registerFallbackValue(FakeInitializationSettings());
    registerFallbackValue(AndroidScheduleMode.exact);
    registerFallbackValue(DateTimeComponents.time);
  });

  setUp(() {
    mockLocalNotifications = MockFlutterLocalNotificationsPlugin();
    mockFirebaseMessaging = MockFirebaseMessaging();
    reminderSettingsStore = MemoryMealReminderSettingsStore();

    notificationService = NotificationService.test(
      localNotifications: mockLocalNotifications,
      firebaseMessaging: mockFirebaseMessaging,
      reminderSettingsStore: reminderSettingsStore,
    );
    NotificationService.setMockInstance(notificationService);

    // Default stubs
    when(
      () => mockLocalNotifications.initialize(
        any(),
        onDidReceiveNotificationResponse: any(
          named: 'onDidReceiveNotificationResponse',
        ),
      ),
    ).thenAnswer((_) async => true);

    // Using thenReturn(null) instead of thenAnswer for methods returning void/Future<void> if needed,
    // but zonedSchedule returns Future<void>.
    when(
      () => mockLocalNotifications.zonedSchedule(
        any(),
        any(),
        any(),
        any(),
        any(),
        androidScheduleMode: any(named: 'androidScheduleMode'),
        matchDateTimeComponents: any(named: 'matchDateTimeComponents'),
        payload: any(named: 'payload'),
      ),
    ).thenAnswer((_) async {});
  });

  group('NotificationService', () {
    test('scheduleReminder calls zonedSchedule', () async {
      final scheduledTime = DateTime.now().add(const Duration(hours: 1));

      await notificationService.scheduleReminder(
        id: 1,
        title: 'Test Title',
        body: 'Test Body',
        scheduledTime: scheduledTime,
      );

      verify(
        () => mockLocalNotifications.zonedSchedule(
          1,
          'Test Title',
          'Test Body',
          any(), // TZDateTime
          any(), // NotificationDetails
          androidScheduleMode: any(named: 'androidScheduleMode'),
          matchDateTimeComponents: any(named: 'matchDateTimeComponents'),
        ),
      ).called(1);
    });

    test('cancelNotification calls cancel', () async {
      when(() => mockLocalNotifications.cancel(any())).thenAnswer((_) async {});

      await notificationService.cancelNotification(1);

      verify(() => mockLocalNotifications.cancel(1)).called(1);
    });

    test('cancelAllNotifications calls cancelAll', () async {
      when(() => mockLocalNotifications.cancelAll()).thenAnswer((_) async {});

      await notificationService.cancelAllNotifications();

      verify(() => mockLocalNotifications.cancelAll()).called(1);
    });

    test(
      'meal reminder choices and times survive reopening settings',
      () async {
        when(() => mockLocalNotifications.cancelAll()).thenAnswer((_) async {});

        await notificationService.scheduleMealReminders(
          breakfastEnabled: false,
          lunchEnabled: true,
          dinnerEnabled: false,
          snackEnabled: true,
          breakfastTime: DateTime(2026, 1, 1, 7, 15),
          lunchTime: DateTime(2026, 1, 1, 12, 45),
          dinnerTime: DateTime(2026, 1, 1, 19, 30),
          snackTime: DateTime(2026, 1, 1, 16, 5),
        );

        final saved = await notificationService.loadMealReminderSettings();
        expect(saved.breakfastEnabled, isFalse);
        expect(saved.lunchEnabled, isTrue);
        expect(saved.dinnerEnabled, isFalse);
        expect(saved.snackEnabled, isTrue);
        expect(saved.breakfastMinutes, 7 * 60 + 15);
        expect(saved.lunchMinutes, 12 * 60 + 45);
        expect(saved.dinnerMinutes, 19 * 60 + 30);
        expect(saved.snackMinutes, 16 * 60 + 5);
      },
    );
  });
}
