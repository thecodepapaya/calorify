import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/onboarding/welcome_screen.dart';
import 'package:calorify/features/onboarding/weight_goal_screen.dart';
import 'package:calorify/features/onboarding/activity_level_screen.dart';
import 'package:calorify/features/onboarding/steps/gender_step.dart';
import 'package:calorify/features/onboarding/steps/height_step.dart';
import 'package:calorify/features/onboarding/steps/weight_step.dart';
import 'package:calorify/features/onboarding/steps/age_step.dart';
import 'package:calorify/features/onboarding/health_connect_screen.dart';
import 'package:calorify/features/onboarding/reminder_notifications_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:health/health.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

class MockAnalytics extends Mock implements Analytics {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;
  late MockAnalytics mockAnalytics;

  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
    registerFallbackValue(AnalyticsEvent.onboardingStart);
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();
    mockAnalytics = MockAnalytics();

    DatabaseService.setMockInterface(mockDatabaseInterface);
    HealthService.setMockInstance(mockHealthService);
    Analytics.setMockInstance(mockAnalytics);

    when(() => mockAnalytics.logEvent(any())).thenAnswer((_) {});
    when(
      () => mockDatabaseInterface.getUserProfile(),
    ).thenAnswer((_) async => null);
    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(false);
  });

  group('Onboarding Golden Tests', () {
    testGoldens('Welcome screen', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          WelcomeScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'onboarding_welcome_${device.name}');
      }
    });

    testGoldens('Weight Goal screen', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          WeightGoalScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(
          tester,
          'onboarding_weight_goal_${device.name}',
        );
      }
    });

    testGoldens('Activity Level screen', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          ActivityLevelScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(
          tester,
          'onboarding_activity_level_${device.name}',
        );
      }
    });

    testGoldens('Gender step', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          GenderStepScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'onboarding_gender_${device.name}');
      }
    });

    testGoldens('Height step', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          HeightStepScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'onboarding_height_${device.name}');
      }
    });

    testGoldens('Weight step', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          WeightStepScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'onboarding_weight_${device.name}');
      }
    });

    testGoldens('Age step', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          AgeStepScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'onboarding_age_${device.name}');
      }
    });

    testGoldens('Health Connect screen', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          HealthConnectScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(
          tester,
          'onboarding_health_connect_${device.name}',
        );
      }
    });

    testGoldens('Reminder Notifications screen', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          ReminderNotificationsScreen(onContinue: () {}),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(
          tester,
          'onboarding_reminders_${device.name}',
        );
      }
    });
  });
}
