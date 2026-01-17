import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../../setup/all_tests.dart';

class MockFlutterLocalNotificationsPlugin extends Mock
    implements FlutterLocalNotificationsPlugin {}

class MockFirebaseMessaging extends Mock implements FirebaseMessaging {}

class FakeTZDateTime extends Fake implements tz.TZDateTime {}
class FakeNotificationDetails extends Fake implements NotificationDetails {}
class FakeInitializationSettings extends Fake implements InitializationSettings {}

void main() {
  late NotificationService notificationService;
  late MockFlutterLocalNotificationsPlugin mockLocalNotifications;
  late MockFirebaseMessaging mockFirebaseMessaging;

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

    notificationService = NotificationService.test(
      localNotifications: mockLocalNotifications,
      firebaseMessaging: mockFirebaseMessaging,
    );
    NotificationService.setMockInstance(notificationService);

    // Default stubs
    when(() => mockLocalNotifications.initialize(any(),
            onDidReceiveNotificationResponse: any(named: 'onDidReceiveNotificationResponse')))
        .thenAnswer((_) async => true);
    
    // Using thenReturn(null) instead of thenAnswer for methods returning void/Future<void> if needed, 
    // but zonedSchedule returns Future<void>.
    when(() => mockLocalNotifications.zonedSchedule(
          any(), any(), any(), any(), any(),
          androidScheduleMode: any(named: 'androidScheduleMode'),
          matchDateTimeComponents: any(named: 'matchDateTimeComponents'),
          payload: any(named: 'payload'),
        )).thenAnswer((_) async {});
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

      verify(() => mockLocalNotifications.zonedSchedule(
            1,
            'Test Title',
            'Test Body',
            any(), // TZDateTime
            any(), // NotificationDetails
            androidScheduleMode: any(named: 'androidScheduleMode'),
            matchDateTimeComponents: any(named: 'matchDateTimeComponents'),
          )).called(1);
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
  });
}
