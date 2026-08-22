import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:calorify/core/services/wear_os_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockFoodRepository extends Mock implements FoodRepository {}

void main() {
  late MockDatabaseInterface database;
  late MockFoodRepository foodRepository;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(Meal());
  });

  setUp(() {
    database = MockDatabaseInterface();
    foodRepository = MockFoodRepository();
    DatabaseService.setMockInterface(database);
    WearOsService.instance.resetForTesting();
    WearOsService.instance.setFoodRepository(foodRepository);
  });

  tearDown(WearOsService.instance.resetForTesting);

  test(
    'JSON meal logging preserves mutation idempotency and favorite use',
    () async {
      final payload =
          mealInfoToLegacyJson(
              LoggedMeal(
                clientId: -1,
                meal: Meal(
                  name: 'Greek Yogurt Bowl',
                  macros: MealMacro(calories: 280),
                ),
                createdAt: '2026-04-22T08:00:00.000Z',
              ),
            )
            ..['favorite_meal_id'] = 7
            ..['watch_operation_id'] = 'watch:-1:2026-04-22T08:00:00.000Z';
      when(
        () => database.logMeal(
          any(),
          analysisId: 'watch:-1:2026-04-22T08:00:00.000Z',
          loggedAt: DateTime.utc(2026, 4, 22, 8),
        ),
      ).thenAnswer((_) async {});
      when(() => database.updateFavoriteLastUsedAt(7)).thenAnswer((_) async {});

      final response = await WearOsService.instance.handleWatchMessage(
        path: '/meal',
        data: payload,
      );

      expect(response, {'success': true});
      verify(
        () => database.logMeal(
          any(
            that: isA<Meal>().having(
              (meal) => meal.name,
              'name',
              'Greek Yogurt Bowl',
            ),
          ),
          analysisId: 'watch:-1:2026-04-22T08:00:00.000Z',
          loggedAt: DateTime.utc(2026, 4, 22, 8),
        ),
      ).called(1);
      verify(() => database.updateFavoriteLastUsedAt(7)).called(1);
    },
  );

  test('JSON requests return dashboard data', () async {
    final meal = LoggedMeal(
      clientId: 12,
      meal: Meal(name: 'Dosa'),
      createdAt: '2026-08-21T07:30:00.000Z',
    );
    final favorite = FavoriteMeal(
      clientId: 5,
      loggedMeal: meal,
      favoriteAt: '2026-08-20T10:00:00.000Z',
    );
    when(
      database.watchAllMealsForToday,
    ).thenAnswer((_) => Stream.value([meal]));
    when(database.getDailyCalorieGoal).thenAnswer((_) async => 2100);
    when(
      database.watchLastUsedFavoriteMeals,
    ).thenAnswer((_) => Stream.value([favorite]));

    final meals = await WearOsService.instance.handleWatchMessage(
      path: '/meals/today',
      data: const {},
    );
    final goal = await WearOsService.instance.handleWatchMessage(
      path: '/calorie_goal',
      data: const {},
    );
    final favorites = await WearOsService.instance.handleWatchMessage(
      path: '/favorites',
      data: const {},
    );

    expect((meals!['meals'] as List).single, containsPair('meal_name', 'Dosa'));
    expect(goal, {'success': true, 'goal': 2100});
    final favoriteJson =
        (favorites!['favorites'] as List).single as Map<String, dynamic>;
    expect(
      (favoriteJson['meal_info'] as Map)['meal_name'],
      'Dosa',
    );
  });

  test('text analysis stays phone-proxied over JSON', () async {
    when(
      () => foodRepository.analyzeTextV2(
        analysisId: any(named: 'analysisId'),
        textDescription: 'two slices of avocado toast',
      ),
    ).thenAnswer(
      (_) async => Stream.value(
        MealAnalysisPipelineEvent(
          step: PipelineStep.RESULT,
          analysisId: 'analysis-watch',
          result: PipelineResultData(
            analysisId: 'analysis-watch',
            mealName: 'Avocado Toast',
            macros: PipelineMacros(calories: 360),
          ),
        ),
      ),
    );

    final response = await WearOsService.instance.handleWatchMessage(
      path: '/analysis/detect-text',
      data: {'textDescription': 'two slices of avocado toast'},
    );
    final parsed =
        MealDetectionResponse()..mergeFromProto3Json(
          Map<String, dynamic>.from(response!['response'] as Map),
        );

    expect(response['success'], true);
    expect(parsed.result.meal.name, 'Avocado Toast');
    expect(parsed.result.meal.macros.calories, 360);
  });

  test('JSON failures and debug history stay redacted', () async {
    when(
      () => foodRepository.analyzeTextV2(
        analysisId: any(named: 'analysisId'),
        textDescription: 'private meal description',
      ),
    ).thenThrow(StateError('Bearer secret-token: private backend response'));

    final response = await WearOsService.instance.handleWatchMessage(
      path: '/analysis/detect-text',
      data: {'textDescription': 'private meal description'},
    );
    expect(response, {
      'success': false,
      'error': 'Phone failed to analyze the meal description',
      'errorCode': 'internal',
    });
    expect(response.toString(), isNot(contains('secret-token')));

    WearOsMessageLog.clear();
    WearOsMessageLog.addMessage('/analysis/detect-text', {
      'textDescription': 'private meal description',
      'authToken': 'secret-token',
    });
    final logged = WearOsMessageLog.messages.single;
    expect(logged['data'], {
      'fieldCount': 2,
      'fields': 'authToken, textDescription',
    });
    expect(logged.toString(), isNot(contains('private meal description')));
    expect(logged.toString(), isNot(contains('secret-token')));
    WearOsMessageLog.clear();
  });

  test(
    'unknown and malformed JSON requests return stable error codes',
    () async {
      final unknown = await WearOsService.instance.handleWatchMessage(
        path: '/unknown',
        data: const {},
      );
      final malformedDelete = await WearOsService.instance.handleWatchMessage(
        path: '/meal/delete',
        data: const {},
      );

      expect(unknown?['errorCode'], 'unknown_operation');
      expect(malformedDelete?['errorCode'], 'invalid_payload');
    },
  );
}
