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

  test('completion persists, schedules sync, and records analytics', () async {
    when(database.setOnboardingCompleted).thenAnswer((_) async {});

    await onboardingService.completeOnboarding();

    verify(database.setOnboardingCompleted).called(1);
    verify(profileRepository.syncPendingHealthData).called(1);
    verify(
      () => analytics.logEvent(AnalyticsEvent.onboardingComplete),
    ).called(1);
  });
}
