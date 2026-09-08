import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:calorify/core/ai_summary/ai_summary_models.dart';

const _preBaselineMealTableSql = '''
  CREATE TABLE meal_info_table (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    meal_name TEXT NOT NULL,
    meal_quantity TEXT NOT NULL,
    meal_type TEXT NOT NULL,
    calories INTEGER NOT NULL,
    protein INTEGER NOT NULL,
    carbs INTEGER NOT NULL,
    fat INTEGER NOT NULL,
    fiber INTEGER NOT NULL,
    timestamp INTEGER NOT NULL,
    image_url TEXT
  )
''';

Meal _meal(String name) => Meal(
  name: name,
  quantity: '1 serving',
  type: MealType.SNACK,
  macros: MealMacro(calories: 100, protein: 2, carbs: 20, fat: 1, fiber: 3),
);

void main() {
  late AppDatabase database;

  setUp(() async {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    await database.setHealthConnectNutritionSyncEnabled(true);
  });

  tearDown(() => database.close());

  test('meal analysis id makes logging idempotent', () async {
    await database.logMeal(_meal('Apple'), analysisId: 'analysis-123');
    await database.logMeal(_meal('Apple'), analysisId: 'analysis-123');

    final meals = await database.paginatedMealsHistory(offset: 0);
    expect(meals, hasLength(1));
  });

  test('completed-day query applies both bounds and stable ordering', () async {
    final start = DateTime(2026, 8, 18);
    final end = DateTime(2026, 8, 25);
    await database.logMeal(
      _meal('before'),
      loggedAt: start.subtract(const Duration(minutes: 1)),
    );
    await database.logMeal(_meal('first'), loggedAt: start);
    await database.logMeal(
      _meal('last'),
      loggedAt: end.subtract(const Duration(minutes: 1)),
    );
    await database.logMeal(_meal('today'), loggedAt: end);

    final meals = await database.getMealsBetween(start, end);
    expect(meals.map((meal) => meal.meal.name), ['first', 'last']);
  });

  test('local AI summary cache round-trips and clear-all removes it', () async {
    final cached = LocalAiSummary(
      summaryLocalDate: '2026-08-25',
      resolvedLocale: 'hi',
      response: AiMealSummaryResponse(
        summary: 'सारांश',
        generatedAt: '2026-08-25T10:00:00Z',
        mealCount: 3,
        topFoods: ['Dal'],
        macroBalanceScore: 80,
        trend: AiMealSummaryTrend.UNSPECIFIED,
      ),
    );
    await database.saveLocalAiSummary(cached);
    expect(
      (await database.getLocalAiSummary('2026-08-25'))?.response.summary,
      'सारांश',
    );

    await database.clearAllData();
    expect(await database.getLocalAiSummary('2026-08-25'), isNull);
  });

  test(
    'analyzed meal save, edit, and delete share one durable outbox row',
    () async {
      const analysisId = '00000000-0000-4000-8000-000000000501';
      final loggedAt = DateTime(2026, 8, 24, 12);
      await database.logMeal(
        _meal('Banana'),
        analysisId: analysisId,
        loggedAt: loggedAt,
      );

      var pending = await database.getPendingMealLogSyncs();
      expect(pending, hasLength(1));
      expect(pending.single.operation, MealLogSyncOperation.upsert);
      expect(pending.single.version, 1);
      expect(pending.single.meal?.name, 'Banana');

      final stored = (await database.paginatedMealsHistory(offset: 0)).single;
      await database.upsertMeal(
        LoggedMeal(
          clientId: stored.clientId,
          meal: _meal('Edited banana'),
          createdAt: stored.createdAt,
        ),
      );
      pending = await database.getPendingMealLogSyncs();
      expect(pending, hasLength(1));
      expect(pending.single.version, 2);
      expect(pending.single.meal?.name, 'Edited banana');

      await database.deleteMeal(stored.clientId);
      pending = await database.getPendingMealLogSyncs();
      expect(pending, hasLength(1));
      expect(pending.single.operation, MealLogSyncOperation.delete);
      expect(pending.single.version, 3);
      expect(pending.single.meal, isNull);
    },
  );

  test(
    'local deterministic analyses stay outside the backend session mirror',
    () async {
      const analysisId = '00000000-0000-4000-8000-000000000502';
      await database.logMeal(
        _meal('Local banana'),
        analysisId: analysisId,
        analysisSnapshot: PipelineResultData(
          analysisId: analysisId,
          receipt: MealAnalysisReceipt(
            calculationOrigin:
                CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC,
          ),
        ),
      );

      expect(await database.getPendingMealLogSyncs(), isEmpty);
    },
  );

  test('acknowledged meal-log versions are not requeued at startup', () async {
    const analysisId = '00000000-0000-4000-8000-000000000503';
    await database.logMeal(_meal('Banana'), analysisId: analysisId);

    final operation = (await database.getPendingMealLogSyncs()).single;
    await database.markMealLogSyncCompleted(operation.id, operation.version);
    await database.preparePendingMealLogSyncs();

    expect(await database.getPendingMealLogSyncs(), isEmpty);
  });

  test(
    'meal mutations maintain a durable versioned Health Connect outbox',
    () async {
      final loggedAt = DateTime(2026, 8, 22, 9, 30);
      await database.logMeal(_meal('Apple'), loggedAt: loggedAt);

      var pending = await database.getPendingHealthConnectSyncs();
      expect(pending, hasLength(1));
      final first = pending.single;
      expect(first.operation, HealthConnectSyncOperation.upsert);
      expect(first.clientRecordId, startsWith('calorify-meal-'));
      expect(first.clientRecordVersion, 1);
      expect(first.meal?.name, 'Apple');
      expect(first.loggedAt, loggedAt);

      final stored = (await database.paginatedMealsHistory(offset: 0)).single;
      await database.upsertMeal(
        LoggedMeal(
          clientId: stored.clientId,
          meal: _meal('Edited apple'),
          createdAt: dateTimeToIso8601String(loggedAt),
        ),
      );

      pending = await database.getPendingHealthConnectSyncs();
      expect(pending, hasLength(1));
      expect(pending.single.clientRecordId, first.clientRecordId);
      expect(pending.single.clientRecordVersion, 2);
      expect(pending.single.meal?.name, 'Edited apple');

      await database.deleteMeal(stored.clientId);
      pending = await database.getPendingHealthConnectSyncs();
      expect(pending, hasLength(1));
      expect(pending.single.operation, HealthConnectSyncOperation.delete);
      expect(pending.single.clientRecordId, first.clientRecordId);
      expect(pending.single.clientRecordVersion, 3);
      expect(pending.single.meal, isNull);
    },
  );

  test(
    'duplicate analysis retry does not create another sync operation',
    () async {
      await database.logMeal(_meal('Apple'), analysisId: 'same-analysis');
      await database.logMeal(_meal('Apple'), analysisId: 'same-analysis');

      final pending = await database.getPendingHealthConnectSyncs();
      expect(pending, hasLength(1));
      expect(pending.single.clientRecordVersion, 1);
    },
  );

  test('meals logged before export opt-in are not queued', () async {
    await database.setHealthConnectNutritionSyncEnabled(false);

    await database.logMeal(_meal('Private apple'));

    expect(await database.getPendingHealthConnectSyncs(), isEmpty);
    final row =
        await database
            .customSelect(
              'SELECT health_connect_record_id FROM meal_info_table',
            )
            .getSingle();
    expect(row.readNullable<String>('health_connect_record_id'), isNull);
  });

  test('clear all stays local and removes queued meal payloads', () async {
    await database.logMeal(_meal('Apple'));
    expect(await database.getPendingHealthConnectSyncs(), isNotEmpty);

    await database.clearAllData();

    expect(await database.getPendingHealthConnectSyncs(), isEmpty);
    expect(await database.paginatedMealsHistory(offset: 0), isEmpty);
  });

  test('concurrent meal-analysis retries insert one row atomically', () async {
    await Future.wait(
      List.generate(
        20,
        (_) => database.logMeal(
          _meal('Concurrent apple'),
          analysisId: 'analysis-concurrent',
        ),
      ),
    );

    final meals = await database.paginatedMealsHistory(offset: 0);
    expect(meals, hasLength(1));
    expect(
      await _indexExists(database, 'meal_info_analysis_id_unique'),
      isTrue,
    );
  });

  test('editing an analyzed meal preserves retry idempotency', () async {
    await database.logMeal(_meal('Before edit'), analysisId: 'analysis-edit');
    final original = (await database.paginatedMealsHistory(offset: 0)).single;

    await database.upsertMeal(
      LoggedMeal(
        clientId: original.clientId,
        meal: _meal('After edit'),
        createdAt: original.createdAt,
      ),
    );
    await database.logMeal(
      _meal('Late watch retry'),
      analysisId: 'analysis-edit',
    );

    final rows =
        await database
            .customSelect(
              'SELECT meal_name, analysis_id FROM meal_info_table ORDER BY id',
            )
            .get();
    expect(rows, hasLength(1));
    expect(rows.single.read<String>('meal_name'), 'After edit');
    expect(rows.single.read<String>('analysis_id'), 'analysis-edit');
  });

  test('today stream shows newest meals first', () async {
    await database.logMeal(_meal('First'));
    await Future<void>.delayed(const Duration(milliseconds: 2));
    await database.logMeal(_meal('Second'));

    final meals = await database.watchAllMealsForToday().first;
    expect(meals.map((meal) => meal.meal.name), ['Second', 'First']);
  });

  test('new meals let SQLite allocate unique ids', () async {
    LoggedMeal newMeal(String name) => LoggedMeal(
      meal: _meal(name),
      createdAt: DateTime(2026, 8, 21).toIso8601String(),
    );

    await database.upsertMeal(newMeal('First'));
    await database.upsertMeal(newMeal('Second'));

    final meals = await database.paginatedMealsHistory(offset: 0);
    expect(meals.map((meal) => meal.clientId).toSet(), hasLength(2));
    expect(meals.every((meal) => meal.clientId > 0), isTrue);
  });

  test('new favorites let SQLite allocate an id', () async {
    final favorite = LoggedMeal(
      meal: _meal('Oats'),
      createdAt: DateTime(2026, 8, 21).toIso8601String(),
    );

    await database.addToFavorites(favorite);

    final favorites = await database.watchAllFavoriteMeals().first;
    expect(favorites, hasLength(1));
    expect(favorites.single.clientId, greaterThan(0));
  });

  test(
    'custom favorite survives a row-id collision with a logged meal',
    () async {
      final timestamp = DateTime(2026, 8, 21).toIso8601String();
      await database.addToFavorites(
        LoggedMeal(meal: _meal('Custom oats'), createdAt: timestamp),
      );
      await database.upsertMeal(
        LoggedMeal(meal: _meal('Logged lunch'), createdAt: timestamp),
      );

      final sourceMeal = await database.getMealById(1);
      expect(sourceMeal, isNotNull);
      expect(await database.isFavoriteMeal(1), isFalse);

      await database.addToFavorites(sourceMeal!);

      var favorites = await database.watchAllFavoriteMeals().first;
      expect(favorites, hasLength(2));
      final custom = favorites.singleWhere(
        (favorite) => favorite.loggedMeal.meal.name == 'Custom oats',
      );
      final linked = favorites.singleWhere(
        (favorite) => favorite.loggedMeal.meal.name == 'Logged lunch',
      );
      expect(custom.clientId, 1);
      expect(custom.loggedMeal.hasClientId(), isFalse);
      expect(linked.clientId, isNot(custom.clientId));
      expect(linked.loggedMeal.clientId, sourceMeal.clientId);
      expect(await database.isFavoriteMeal(sourceMeal.clientId), isTrue);

      await database.removeFavoriteMealBySourceMealId(sourceMeal.clientId);
      favorites = await database.watchAllFavoriteMeals().first;
      expect(favorites, hasLength(1));
      expect(favorites.single.loggedMeal.meal.name, 'Custom oats');
    },
  );

  test('editing a custom favorite retains its favorite id', () async {
    await database.addToFavorites(LoggedMeal(meal: _meal('Before')));
    final original = (await database.watchAllFavoriteMeals().first).single;

    await database.updateFavoriteMeal(
      original.clientId,
      LoggedMeal(meal: _meal('After')),
    );

    final updated = (await database.watchAllFavoriteMeals().first).single;
    expect(updated.clientId, original.clientId);
    expect(updated.loggedMeal.meal.name, 'After');
    expect(updated.loggedMeal.hasClientId(), isFalse);
  });

  test('re-favoriting clears stale nullable snapshot fields', () async {
    await database.addToFavorites(
      LoggedMeal(
        clientId: 7,
        meal: Meal(
          name: 'Before',
          quantity: '1 serving',
          type: MealType.SNACK,
          macros: MealMacro(calories: 100),
          health: MealHealth(
            healthScore: HealthScore.HEALTHY,
            healthScoreReason: 'Fresh ingredients',
          ),
        ),
        metadata: MealMetadata(imageUrl: 'https://example.com/meal.jpg'),
      ),
    );
    await database.customStatement(
      "UPDATE favorite_meal_table SET analysis_id = 'stale-analysis'",
    );

    final replacement = _meal('After')..health = MealHealth();
    await database.addToFavorites(LoggedMeal(clientId: 7, meal: replacement));

    final row =
        await database.customSelect('''
              SELECT image_url, health_score, health_score_reason, analysis_id
              FROM favorite_meal_table
              WHERE source_meal_id = 7
            ''').getSingle();
    expect(row.readNullable<String>('image_url'), isNull);
    expect(row.readNullable<String>('health_score'), isNull);
    expect(row.readNullable<String>('health_score_reason'), isNull);
    expect(row.readNullable<String>('analysis_id'), isNull);
  });

  test('persists onboarding progress and explicit completion', () async {
    expect(await database.getOnboardingStep(), isNull);
    expect(await database.hasCompletedOnboarding(), isFalse);

    await database.setOnboardingStep(10);
    expect(await database.getOnboardingStep(), 10);
    expect(await database.hasCompletedOnboarding(), isFalse);

    await database.setOnboardingCompleted();
    expect(await database.hasCompletedOnboarding(), isTrue);
  });

  test('persists Health Connect prompt dismissal', () async {
    expect(await database.isHealthConnectPromptDismissed(), isFalse);

    await database.setHealthConnectPromptDismissed();

    expect(await database.isHealthConnectPromptDismissed(), isTrue);
  });

  test('baseline schema creates every outbox unique index', () async {
    // Drift's Migrator.createTable does not create @TableIndex indexes, which
    // is how the pre-squash databases lost them. The baseline must create
    // every index an upsert targets.
    expect(
      await _indexExists(database, 'health_connect_sync_client_record_unique'),
      isTrue,
    );
    expect(
      await _indexExists(database, 'meal_log_sync_analysis_id_unique'),
      isTrue,
    );
    expect(
      await _indexExists(database, 'meal_info_analysis_id_unique'),
      isTrue,
    );
  });

  test(
    'pre-baseline database is wiped and rebuilt from the baseline',
    () async {
      await database.close();
      database = AppDatabase.forTesting(
        NativeDatabase.memory(
          setup: (rawDatabase) {
            rawDatabase.execute(_preBaselineMealTableSql);
            rawDatabase.execute('''
            INSERT INTO meal_info_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp
            ) VALUES
              (1, 'Legacy meal', '1 serving', 'snack', 100, 2, 20, 1, 3, 100)
          ''');
            rawDatabase.execute(
              'CREATE TABLE sync_queue_table (id INTEGER PRIMARY KEY)',
            );
            rawDatabase.execute('PRAGMA user_version = 29');
          },
        ),
      );

      final version =
          await database.customSelect('PRAGMA user_version').getSingle();
      expect(version.read<int>('user_version'), 1);

      expect(await database.paginatedMealsHistory(offset: 0), isEmpty);

      final legacyTables =
          await database
              .customSelect(
                'SELECT COUNT(*) AS count FROM sqlite_master '
                "WHERE type = 'table' AND name = 'sync_queue_table'",
              )
              .getSingle();
      expect(legacyTables.read<int>('count'), 0);

      expect(
        await _indexExists(
          database,
          'health_connect_sync_client_record_unique',
        ),
        isTrue,
      );

      await database.setHealthConnectNutritionSyncEnabled(true);
      await database.logMeal(_meal('Saved after rebuild'));

      final meals = await database.paginatedMealsHistory(offset: 0);
      expect(meals.single.meal.name, 'Saved after rebuild');
    },
  );

  test('development database uses reactive Drift streams', () async {
    await database.close();
    database = AppDatabase.inMemory(seedDevelopmentData: false);

    expect(database.dataSourceType, DataSourceType.mock);
    final streamExpectation = expectLater(
      database.watchAllMealsForToday().take(2),
      emitsInOrder([isEmpty, hasLength(1)]),
    );
    await Future<void>.delayed(Duration.zero);

    await database.logMeal(
      Meal(
        name: 'Reactive meal',
        quantity: '1 serving',
        type: MealType.LUNCH,
        macros: MealMacro(calories: 400, protein: 20, carbs: 40, fat: 12),
      ),
    );

    await streamExpectation;
  });

  test('development database seeds sample data through Drift', () async {
    await database.close();
    database = AppDatabase.inMemory();

    expect(await database.watchAllMealsForToday().first, isNotEmpty);
    expect(await database.watchAllFavoriteMeals().first, isNotEmpty);
    expect(await database.getDailyCalorieGoal(), isNotNull);
  });

  test('profile outbox acknowledges only the revision that was sent', () async {
    await database.saveUserProfile(
      UserProfile(height: 170, weight: 70, dailyCalorieGoal: 2100),
    );
    final first = await database.getPendingProfileSync();
    expect(first, isNotNull);
    expect(first!.profile.dailyCalorieGoal, 2100);

    await database.saveUserProfile(
      UserProfile(height: 170, weight: 71, dailyCalorieGoal: 2200),
    );
    final second = await database.getPendingProfileSync();
    expect(second, isNotNull);
    expect(second!.revision, isNot(first.revision));

    expect(await database.markProfileSynced(first.revision), isFalse);
    expect((await database.getPendingProfileSync())?.revision, second.revision);
    expect(await database.markProfileSynced(second.revision), isTrue);
    expect(await database.getPendingProfileSync(), isNull);
  });
}

Future<bool> _indexExists(AppDatabase database, String index) async {
  final rows =
      await database
          .customSelect(
            "SELECT name FROM sqlite_master WHERE type = 'index' AND name = '$index'",
          )
          .get();
  return rows.isNotEmpty;
}
