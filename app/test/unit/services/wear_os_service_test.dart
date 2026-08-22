import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/wear_os_service.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockFoodRepository extends Mock implements FoodRepository {}

class MockAuthService extends Mock implements AuthService {}

class MockUser extends Mock implements User {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;
  late MockFoodRepository mockFoodRepository;
  late MockAuthService mockAuthService;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(Meal());
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockFoodRepository = MockFoodRepository();
    mockAuthService = MockAuthService();

    DatabaseService.setMockInterface(mockDatabaseInterface);
    WearOsService.instance.resetForTesting();
    WearOsService.instance.setFoodRepository(mockFoodRepository);
    AuthService.setMockInstance(mockAuthService);
  });

  tearDown(() {
    WearOsService.instance.resetForTesting();
  });

  Future<WearEnvelope> sendTyped(
    WearOperation operation,
    WearRequest request, {
    int version = wearProtocolVersion,
  }) async {
    final envelope = WearProtocolCodec.request(
      requestId: 'phone-handler-test',
      operation: operation,
      payload: request,
    )..version = version;
    final bytes = await WearOsService.instance.handleWatchEnvelope(
      WearProtocolCodec.encode(envelope),
    );
    return WearProtocolCodec.decode(bytes);
  }

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
          loggedAt: DateTime.utc(2026, 4, 22, 8),
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
          loggedAt: DateTime.utc(2026, 4, 22, 8),
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

      final response = await WearOsService.instance.handleWatchMessage(
        path: '/auth/session',
        data: const {},
      );

      expect(response?['success'], true);
      final session = Map<String, dynamic>.from(response?['session'] as Map);
      expect(session['uid'], 'phone-user-123');
      expect(session['authToken'], 'phone-auth-token');
      expect(session, isNot(contains('fcmToken')));
      expect(session['isAnonymous'], false);
      expect(session['syncedAt'], isA<String>());
    });

    test('analyzes watch text through the phone V2 pipeline', () async {
      final result = PipelineResultData(
        analysisId: 'analysis-watch',
        mealName: 'Avocado Toast',
        quantity: '2 slices',
        mealType: MealType.BREAKFAST,
        calorieConfidence: CalorieConfidence.HIGH,
        tip: 'Looks balanced.',
        macros: PipelineMacros(
          calories: 360,
          protein: 11,
          carbs: 34,
          fat: 20,
          fiber: 8,
        ),
      );

      when(
        () => mockFoodRepository.analyzeTextV2(
          analysisId: any(named: 'analysisId'),
          textDescription: 'two slices of avocado toast',
        ),
      ).thenAnswer(
        (_) async => Stream.value(
          MealAnalysisPipelineEvent(
            step: PipelineStep.RESULT,
            analysisId: 'analysis-watch',
            result: result,
          ),
        ),
      );

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
        () => mockFoodRepository.analyzeTextV2(
          analysisId: any(named: 'analysisId'),
          textDescription: 'two slices of avocado toast',
        ),
      ).called(1);
    });

    test(
      'legacy and typed failures never expose analysis exceptions',
      () async {
        when(
          () => mockFoodRepository.analyzeTextV2(
            analysisId: any(named: 'analysisId'),
            textDescription: 'private meal description',
          ),
        ).thenThrow(
          StateError('Bearer secret-token: private backend response body'),
        );

        final legacy = await WearOsService.instance.handleWatchMessage(
          path: '/analysis/detect-text',
          data: {'textDescription': 'private meal description'},
        );
        final typed = await sendTyped(
          WearOperation.WEAR_OPERATION_DETECT_TEXT,
          WearRequest(
            detectText: DetectTextRequest(
              textDescription: 'private meal description',
            ),
          ),
        );

        expect(legacy?['success'], false);
        expect(legacy?['errorCode'], 'internal');
        expect(
          legacy?['error'],
          'Phone failed to analyze the meal description',
        );
        expect(legacy.toString(), isNot(contains('secret-token')));
        expect(legacy.toString(), isNot(contains('backend response body')));
        expect(
          typed.response.error.code,
          WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
        );
        expect(
          typed.response.error.message,
          'Phone failed to handle the watch request',
        );
        expect(typed.response.error.message, isNot(contains('secret-token')));
      },
    );

    test('legacy auth failures never expose credential exceptions', () async {
      final mockUser = MockUser();
      when(() => mockAuthService.currentUser).thenReturn(mockUser);
      when(() => mockAuthService.authToken).thenReturn(null);
      when(
        () => mockUser.getIdToken(),
      ).thenThrow(StateError('credential refresh included secret-token'));

      final response = await WearOsService.instance.handleWatchMessage(
        path: '/auth/session',
        data: const {},
      );

      expect(response?['success'], false);
      expect(response?['errorCode'], 'internal');
      expect(
        response?['error'],
        'Phone failed to refresh watch authentication',
      );
      expect(response.toString(), isNot(contains('secret-token')));
    });

    test('watch debug history retains metadata instead of payloads', () {
      WearOsMessageLog.clear();

      WearOsMessageLog.addMessage('/analysis/detect-text', {
        'textDescription': 'private meal description',
        'authToken': 'secret-token',
      });

      final logged = WearOsMessageLog.messages.single;
      expect(logged['path'], '/analysis/detect-text');
      expect(logged['data'], {
        'fieldCount': 2,
        'fields': 'authToken, textDescription',
      });
      expect(logged.toString(), isNot(contains('private meal description')));
      expect(logged.toString(), isNot(contains('secret-token')));
      WearOsMessageLog.clear();
    });

    test('typed meal log and delete use protobuf domain payloads', () async {
      final loggedMeal = LoggedMeal(
        clientId: -3,
        createdAt: '2026-08-21T08:00:00.000Z',
        meal: Meal(name: 'Idli', macros: MealMacro(calories: 260)),
      );
      when(
        () => mockDatabaseInterface.logMeal(
          any(),
          analysisId: 'watch:-3:2026-08-21T08:00:00.000Z',
          loggedAt: DateTime.utc(2026, 8, 21, 8),
        ),
      ).thenAnswer((_) async {});
      when(
        () => mockDatabaseInterface.updateFavoriteLastUsedAt(9),
      ).thenAnswer((_) async {});
      when(() => mockDatabaseInterface.deleteMeal(42)).thenAnswer((_) async {});

      final logResponse = await sendTyped(
        WearOperation.WEAR_OPERATION_MEAL_LOG,
        WearRequest(
          mealLog: MealLogRequest(
            meal: loggedMeal,
            operationId: 'watch:-3:2026-08-21T08:00:00.000Z',
            favoriteMealId: 9,
          ),
        ),
      );
      final deleteResponse = await sendTyped(
        WearOperation.WEAR_OPERATION_MEAL_DELETE,
        WearRequest(mealDelete: MealDeleteRequest(mealId: 42)),
      );

      expect(logResponse.response.hasMealLog(), isTrue);
      expect(deleteResponse.response.hasMealDelete(), isTrue);
      verify(
        () => mockDatabaseInterface.logMeal(
          any(that: isA<Meal>().having((meal) => meal.name, 'name', 'Idli')),
          analysisId: 'watch:-3:2026-08-21T08:00:00.000Z',
          loggedAt: DateTime.utc(2026, 8, 21, 8),
        ),
      ).called(1);
      verify(() => mockDatabaseInterface.deleteMeal(42)).called(1);
    });

    test('typed dashboard, profile, and favorites return protobufs', () async {
      final meal = LoggedMeal(
        clientId: 12,
        meal: Meal(name: 'Dosa'),
        createdAt: '2026-08-21T07:30:00.000Z',
      );
      final profile = UserProfile(dailyCalorieGoal: 2100, height: 170);
      final favorite = FavoriteMeal(
        clientId: 5,
        loggedMeal: meal,
        favoriteAt: '2026-08-20T10:00:00.000Z',
      );
      when(
        () => mockDatabaseInterface.watchAllMealsForToday(),
      ).thenAnswer((_) => Stream.value([meal]));
      when(
        () => mockDatabaseInterface.getDailyCalorieGoal(),
      ).thenAnswer((_) async => 2100);
      when(
        () => mockDatabaseInterface.getUserProfile(),
      ).thenAnswer((_) async => profile);
      when(
        () => mockDatabaseInterface.watchLastUsedFavoriteMeals(),
      ).thenAnswer((_) => Stream.value([favorite]));

      final meals = await sendTyped(
        WearOperation.WEAR_OPERATION_TODAY_MEALS,
        WearRequest(todayMeals: TodayMealsRequest()),
      );
      final goal = await sendTyped(
        WearOperation.WEAR_OPERATION_CALORIE_GOAL,
        WearRequest(calorieGoal: CalorieGoalRequest()),
      );
      final userProfile = await sendTyped(
        WearOperation.WEAR_OPERATION_USER_PROFILE,
        WearRequest(userProfile: UserProfileRequest()),
      );
      final favorites = await sendTyped(
        WearOperation.WEAR_OPERATION_FAVORITES,
        WearRequest(favorites: FavoritesRequest()),
      );

      expect(meals.response.todayMeals.meals.single.meal.name, 'Dosa');
      expect(goal.response.calorieGoal.goal, 2100);
      expect(userProfile.response.userProfile.profile.height, 170);
      expect(
        favorites.response.favorites.favorites.single.loggedMeal.meal.name,
        'Dosa',
      );
    });

    test(
      'typed auth and detect-text keep sensitive/domain data binary',
      () async {
        final mockUser = MockUser();
        when(() => mockAuthService.currentUser).thenReturn(mockUser);
        when(() => mockAuthService.authToken).thenReturn('binary-auth-token');
        when(() => mockUser.uid).thenReturn('typed-user');
        when(() => mockUser.isAnonymous).thenReturn(false);
        when(
          () => mockFoodRepository.analyzeTextV2(
            analysisId: any(named: 'analysisId'),
            textDescription: 'fruit bowl',
          ),
        ).thenAnswer(
          (_) async => Stream.value(
            MealAnalysisPipelineEvent(
              step: PipelineStep.RESULT,
              analysisId: 'analysis-fruit',
              result: PipelineResultData(
                analysisId: 'analysis-fruit',
                mealName: 'Fruit bowl',
              ),
            ),
          ),
        );

        final auth = await sendTyped(
          WearOperation.WEAR_OPERATION_AUTH_SESSION,
          WearRequest(authSession: AuthSessionRequest()),
        );
        final analysis = await sendTyped(
          WearOperation.WEAR_OPERATION_DETECT_TEXT,
          WearRequest(
            detectText: DetectTextRequest(textDescription: 'fruit bowl'),
          ),
        );

        expect(
          auth.response.authSession.session.authToken,
          'binary-auth-token',
        );
        expect(
          analysis.response.detectText.response.result.meal.name,
          'Fruit bowl',
        );
      },
    );

    test(
      'typed handler rejects unknown versions and mismatched payloads',
      () async {
        final wrongVersion = await sendTyped(
          WearOperation.WEAR_OPERATION_TODAY_MEALS,
          WearRequest(todayMeals: TodayMealsRequest()),
          version: 77,
        );
        final mismatch = await sendTyped(
          WearOperation.WEAR_OPERATION_FAVORITES,
          WearRequest(todayMeals: TodayMealsRequest()),
        );

        expect(
          wrongVersion.response.error.code,
          WearErrorCode.WEAR_ERROR_CODE_INVALID_VERSION,
        );
        expect(
          mismatch.response.error.code,
          WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        );
      },
    );
  });
}
