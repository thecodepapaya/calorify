import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/wear_os_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockFoodRepository extends Mock implements FoodRepository {}

class MockAuthService extends Mock implements AuthService {}

class MockUser extends Mock implements User {}

class MockNotificationService extends Mock implements NotificationService {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;
  late MockFoodRepository mockFoodRepository;
  late MockAuthService mockAuthService;
  late MockNotificationService mockNotificationService;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(Meal());
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockFoodRepository = MockFoodRepository();
    mockAuthService = MockAuthService();
    mockNotificationService = MockNotificationService();

    DatabaseService.setMockInterface(mockDatabaseInterface);
    WearOsService.instance.resetForTesting();
    WearOsService.instance.setFoodRepository(mockFoodRepository);
    AuthService.setMockInstance(mockAuthService);
    NotificationService.setMockInstance(mockNotificationService);

    when(() => mockNotificationService.fcmToken).thenReturn(null);
  });

  tearDown(() {
    WearOsService.instance.resetForTesting();
  });

  group('WearOsService', () {
    test('logs meals from watch and updates favorite usage', () async {
      final meal = Meal(
        name: 'Greek Yogurt Bowl',
        quantity: '1 bowl',
        type: MealType.BREAKFAST,
        macros: MealMacro(
          calories: 280,
          protein: 18,
          carbs: 26,
          fat: 9,
          fiber: 3,
        ),
        health: MealHealth(healthScore: HealthScore.HEALTHY),
      );
      final payload =
          mealInfoToLegacyJson(
              LoggedMeal(
                clientId: 12,
                meal: meal,
                createdAt: dateTimeToIso8601String(
                  DateTime.utc(2026, 4, 22, 8, 0),
                ),
              ),
            )
            ..['favorite_meal_id'] = 7
            ..['watch_operation_id'] = 'watch:-1:2026-04-22T08:00:00.000Z';

      when(
        () => mockDatabaseInterface.logMeal(
          any(),
          analysisId: 'watch:-1:2026-04-22T08:00:00.000Z',
        ),
      ).thenAnswer((_) async {});
      when(
        () => mockDatabaseInterface.updateFavoriteLastUsedAt(7),
      ).thenAnswer((_) async {});

      final response = await WearOsService.instance.handleWatchMessage(
        path: '/meal',
        data: payload,
      );

      expect(response, {'success': true});
      verify(
        () => mockDatabaseInterface.logMeal(
          any(
            that: isA<Meal>()
                .having((meal) => meal.name, 'name', meal.name)
                .having(
                  (meal) => meal.macros.calories,
                  'calories',
                  meal.macros.calories,
                ),
          ),
          analysisId: any(named: 'analysisId'),
        ),
      ).called(1);
      verify(() => mockDatabaseInterface.updateFavoriteLastUsedAt(7)).called(1);
    });

    test('returns the phone auth session for the watch', () async {
      final mockUser = MockUser();
      when(() => mockAuthService.currentUser).thenReturn(mockUser);
      when(() => mockAuthService.authToken).thenReturn('phone-auth-token');
      when(() => mockUser.uid).thenReturn('phone-user-123');
      when(() => mockUser.isAnonymous).thenReturn(false);
      when(() => mockNotificationService.fcmToken).thenReturn('fcm-token-xyz');

      final response = await WearOsService.instance.handleWatchMessage(
        path: '/auth/session',
        data: const {},
      );

      expect(response?['success'], true);
      final session = Map<String, dynamic>.from(response?['session'] as Map);
      expect(session['uid'], 'phone-user-123');
      expect(session['authToken'], 'phone-auth-token');
      expect(session['fcmToken'], 'fcm-token-xyz');
      expect(session['isAnonymous'], false);
      expect(session['syncedAt'], isA<String>());
    });

    test('analyzes watch text using the phone repository session', () async {
      final expectedResponse = MealDetectionResponse(
        result: MealDetectionResult(
          mealIdentified: true,
          calorieConfidence: CalorieConfidence.HIGH,
          tip: 'Looks balanced.',
          meal: Meal(
            name: 'Avocado Toast',
            quantity: '2 slices',
            type: MealType.BREAKFAST,
            macros: MealMacro(
              calories: 360,
              protein: 11,
              carbs: 34,
              fat: 20,
              fiber: 8,
            ),
            health: MealHealth(
              healthScore: HealthScore.HEALTHY,
              healthScoreReason: 'Fiber and healthy fats.',
            ),
          ),
        ),
      );

      when(
        () => mockFoodRepository.detectText(
          textDescription: 'two slices of avocado toast',
        ),
      ).thenAnswer((_) async => expectedResponse);

      final response = await WearOsService.instance.handleWatchMessage(
        path: '/analysis/detect-text',
        data: {'textDescription': 'two slices of avocado toast'},
      );

      expect(response?['success'], true);
      final payload = Map<String, dynamic>.from(response?['response'] as Map);
      final parsed = MealDetectionResponse()..mergeFromProto3Json(payload);
      expect(parsed.result.meal.name, 'Avocado Toast');
      expect(parsed.result.meal.macros.calories, 360);
      verify(
        () => mockFoodRepository.detectText(
          textDescription: 'two slices of avocado toast',
        ),
      ).called(1);
    });
  });
}
