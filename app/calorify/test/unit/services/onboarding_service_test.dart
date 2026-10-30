import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockProfileRepository extends Mock implements ProfileRepository {}

class MockAnalytics extends Mock implements Analytics {}

class FakeHealthData extends Fake implements HealthData {}

void main() {
  late OnboardingService onboardingService;
  late MockDatabaseInterface database;
  late MockProfileRepository profileRepository;
  late MockAnalytics analytics;

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    registerFallbackValue(FakeHealthData());
    registerFallbackValue(AnalyticsEvent.onboardingComplete);
  });

  setUp(() {
    database = MockDatabaseInterface();
    profileRepository = MockProfileRepository();
    analytics = MockAnalytics();
    onboardingService = OnboardingService(
      database: database,
      profileRepository: profileRepository,
      analytics: analytics,
    );

    when(database.hasCompletedOnboarding).thenAnswer((_) async => false);
    when(profileRepository.syncPendingHealthData).thenAnswer((_) async => true);
  });

  test(
    'reads explicit onboarding completion from the injected database',
    () async {
      when(database.hasCompletedOnboarding).thenAnswer((_) async => true);

      expect(await onboardingService.isOnboardingCompleted(), isTrue);
    },
  );

  test(
    'persists and restores onboarding progress through one database',
    () async {
      when(database.getOnboardingStep).thenAnswer((_) async => 7);
      when(() => database.setOnboardingStep(8)).thenAnswer((_) async {});

      expect(await onboardingService.getOnboardingStep(), 7);
      await onboardingService.saveOnboardingStep(8);

      verify(() => database.setOnboardingStep(8)).called(1);
    },
  );

  test('defaults missing onboarding progress to the first page', () async {
    when(database.getOnboardingStep).thenAnswer((_) async => null);

    expect(await onboardingService.getOnboardingStep(), 0);
  });

  test('completion persists, schedules sync, and records analytics', () async {
    when(database.setOnboardingCompleted).thenAnswer((_) async {});

    await onboardingService.completeOnboarding();

    verify(database.setOnboardingCompleted).called(1);
    verify(profileRepository.syncPendingHealthData).called(1);
    verify(
      () => analytics.logEvent(AnalyticsEvent.onboardingComplete),
    ).called(1);
  });

  test('health data reads and writes use the injected repository', () async {
    final data = HealthData(height: Height(value: 180, unit: HeightUnit.CM));
    when(profileRepository.getHealthData).thenAnswer((_) async => data);
    when(
      () => profileRepository.saveLocalHealthData(data),
    ).thenAnswer((_) async => true);

    expect(await onboardingService.getHealthData(), same(data));
    await onboardingService.saveHealthData(data);

    verify(profileRepository.getHealthData).called(1);
    verify(() => profileRepository.saveLocalHealthData(data)).called(1);
  });
}
