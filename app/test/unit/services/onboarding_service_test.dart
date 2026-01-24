import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class FakeUserProfile extends Fake implements UserProfile {}

void main() {
  late OnboardingService onboardingService;
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() {
    setupAllTests();
    OnboardingService.setMockInstance(
      null,
    ); // Reset to real instance for testing
    registerFallbackValue(FakeUserProfile());
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    onboardingService = OnboardingService.instance;
    // We need to inject the mock database interface into DatabaseService
    // Since DatabaseService uses a static field, we might need a way to reset it or mock it.
    // Looking at DatabaseService.initialize(), it sets _databaseInterface.
  });

  group('OnboardingService Calculations', () {
    final testProfile = UserProfile(
      height: 180,
      weight: 80,
      gender: Gender.MALE,
      dateOfBirth: dateTimeToTimestamp(DateTime(1990, 1, 1)),
      activityLevel: ActivityLevel.MODERATELY_ACTIVE,
      weightGoal: WeightGoal.LOSE_WEIGHT,
    );

    test('calculateBMR returns correct value for male', () {
      final bmr = onboardingService.calculateBMR(testProfile);
      // BMR = (10 * 80) + (6.25 * 180) - (5 * 36) + 5
      // Age in 2026 for 1990 birth is 36
      // BMR = 800 + 1125 - 180 + 5 = 1750
      expect(bmr, closeTo(1750.0, 1.0));
    });

    test('calculateBMR returns correct value for female', () {
      final femaleProfile = testProfile.deepCopy();
      femaleProfile.gender = Gender.FEMALE;
      final bmr = onboardingService.calculateBMR(femaleProfile);
      // BMR = 800 + 1125 - 180 - 161 = 1584
      expect(bmr, closeTo(1584.0, 1.0));
    });

    test('calculateTDEE returns correct value', () {
      final tdee = onboardingService.calculateTDEE(testProfile);
      // TDEE = BMR * 1.55 = 1750 * 1.55 = 2712.5
      expect(tdee, closeTo(2712.5, 1.0));
    });

    test('calculateDailyCalorieGoal returns correct value for weight loss', () {
      final goal = onboardingService.calculateDailyCalorieGoal(testProfile);
      // Goal = TDEE - 500 = 2712.5 - 500 = 2212.5
      expect(goal, closeTo(2212.5, 1.0));
    });

    test('calculateBMI returns correct value', () {
      final bmi = onboardingService.calculateBMI(testProfile);
      // BMI = 80 / (1.8 * 1.8) = 80 / 3.24 = 24.69
      expect(bmi, closeTo(24.69, 0.1));
    });

    test('calculateIdealWeight returns correct value', () {
      final idealWeight = onboardingService.calculateIdealWeight(testProfile);
      // Ideal = 22 * (1.8 * 1.8) = 22 * 3.24 = 71.28
      expect(idealWeight, closeTo(71.28, 0.1));
    });
  });

  group('OnboardingService Profile Operations', () {
    test(
      'isOnboardingCompleted returns true when profile is complete',
      () async {
        final completeProfile = UserProfile(
          height: 180,
          weight: 80,
          gender: Gender.MALE,
          dateOfBirth: dateTimeToTimestamp(DateTime(1990, 1, 1)),
          activityLevel: ActivityLevel.MODERATELY_ACTIVE,
          weightGoal: WeightGoal.LOSE_WEIGHT,
        );

        when(
          () => mockDatabaseInterface.getUserProfile(),
        ).thenAnswer((_) async => completeProfile);
        DatabaseService.setMockInterface(mockDatabaseInterface);

        final result = await onboardingService.isOnboardingCompleted();
        expect(result, isTrue);
      },
    );

    test(
      'isOnboardingCompleted returns false when profile is incomplete',
      () async {
        final incompleteProfile = UserProfile(height: 180);

        when(
          () => mockDatabaseInterface.getUserProfile(),
        ).thenAnswer((_) async => incompleteProfile);
        DatabaseService.setMockInterface(mockDatabaseInterface);

        final result = await onboardingService.isOnboardingCompleted();
        expect(result, isFalse);
      },
    );

    test('saveProfileData calls databaseInterface.saveUserProfile', () async {
      final profile = UserProfile(height: 180);
      when(
        () => mockDatabaseInterface.saveUserProfile(any()),
      ).thenAnswer((_) async {});
      DatabaseService.setMockInterface(mockDatabaseInterface);

      await onboardingService.saveProfileData(profile);

      verify(() => mockDatabaseInterface.saveUserProfile(profile)).called(1);
    });
  });
}
