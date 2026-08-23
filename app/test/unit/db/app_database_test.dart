import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

String _legacyMealTableSql(
  String tableName, {
  required bool includeHealthColumns,
  required bool includeAnalysisColumn,
  bool includeSourceColumn = false,
}) {
  final healthColumns =
      includeHealthColumns
          ? ', health_score TEXT, health_score_reason TEXT'
          : '';
  final analysisColumn = includeAnalysisColumn ? ', analysis_id TEXT' : '';
  final sourceColumn =
      tableName == 'favorite_meal_table' && includeSourceColumn
          ? ', source_meal_id INTEGER UNIQUE'
          : '';
  final favoriteColumns =
      tableName == 'favorite_meal_table'
          ? ', created_at INTEGER NOT NULL DEFAULT 0, last_used_at INTEGER'
          : '';
  return '''
    CREATE TABLE $tableName (
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
      $healthColumns
      $analysisColumn
      $sourceColumn
      $favoriteColumns
    )
  ''';
}

const _legacyPreferencesTableSql = '''
  CREATE TABLE user_preferences_table (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    language_code TEXT,
    theme TEXT,
    feedback_sheet_shown_at INTEGER,
    updated_at INTEGER NOT NULL DEFAULT 0
  )
''';

const _v22PreferencesTableSql = '''
  CREATE TABLE user_preferences_table (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    language_code TEXT,
    theme TEXT,
    feedback_sheet_shown_at INTEGER,
    onboarding_current_step INTEGER,
    onboarding_completed_at INTEGER,
    updated_at INTEGER NOT NULL DEFAULT (CAST(strftime('%s', 'now') AS INTEGER))
  )
''';

const _legacyProfileTableSql = '''
  CREATE TABLE user_profile_table (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    height REAL,
    weight REAL,
    gender TEXT,
    date_of_birth TEXT,
    weight_goal TEXT,
    activity_level TEXT
  )
''';

const _legacySyncQueueTableSql = '''
  CREATE TABLE sync_queue_table (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    op_type INTEGER NOT NULL,
    idempotency_key TEXT NOT NULL,
    payload BLOB NOT NULL,
    attempt_count INTEGER NOT NULL DEFAULT 0,
    created_at INTEGER NOT NULL DEFAULT 0,
    last_attempt_at INTEGER,
    next_retry_at INTEGER,
    last_error TEXT
  )
''';

const _v19ProfileTableSql = '''
  CREATE TABLE user_profile_table (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    daily_calorie_goal INTEGER,
    height REAL,
    weight REAL,
    target_weight REAL,
    gender TEXT,
    date_of_birth INTEGER,
    weight_goal TEXT,
    activity_level TEXT,
    height_unit TEXT NOT NULL DEFAULT 'metric',
    weight_unit TEXT NOT NULL DEFAULT 'metric',
    created_at INTEGER NOT NULL DEFAULT 0,
    updated_at INTEGER NOT NULL DEFAULT 0
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

  test(
    'local inference preference is off by default and persists consent',
    () async {
      expect(
        await database.getLocalInferencePreferences(),
        isA<LocalInferencePreferences>()
            .having((value) => value.enabled, 'enabled', isFalse)
            .having(
              (value) => value.acknowledgedPolicyVersion,
              'acknowledgedPolicyVersion',
              isNull,
            ),
      );

      await database.acknowledgeLocalInferencePolicy('policy-v1');
      await database.setLocalInferenceEnabled(true);

      expect(
        await database.getLocalInferencePreferences(),
        isA<LocalInferencePreferences>()
            .having((value) => value.enabled, 'enabled', isTrue)
            .having(
              (value) => value.acknowledgedPolicyVersion,
              'acknowledgedPolicyVersion',
              'policy-v1',
            ),
      );
    },
  );

  test(
    'v22 upgrade adds default-off local inference and nutrition data',
    () async {
      await database.close();
      database = AppDatabase.forTesting(
        NativeDatabase.memory(
          setup: (rawDatabase) {
            rawDatabase.execute(_v22PreferencesTableSql);
            rawDatabase.execute('''
            INSERT INTO user_preferences_table (id, theme)
            VALUES (1, 'system')
          ''');
            rawDatabase.execute('PRAGMA user_version = 22');
          },
        ),
      );

      final preferences = await database.getLocalInferencePreferences();
      final columns = await _columnNames(database, 'user_preferences_table');

      expect(columns, contains('local_inference_enabled'));
      expect(columns, contains('local_inference_acknowledged_policy_version'));
      expect(columns, contains('offline_nutrition_enabled'));
      expect(columns, contains('health_connect_nutrition_sync_enabled'));
      expect(columns, contains('health_connect_prompt_dismissed'));
      expect(preferences.enabled, isFalse);
      expect(preferences.offlineNutritionEnabled, isFalse);
      expect(preferences.acknowledgedPolicyVersion, isNull);
      expect(
        await _tableExists(database, 'local_nutrition_cache_table'),
        isTrue,
      );
    },
  );

  test('v17 upgrade repairs missing inherited favorite columns', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(
            _legacyMealTableSql(
              'favorite_meal_table',
              includeHealthColumns: false,
              includeAnalysisColumn: false,
            ),
          );
          rawDatabase.execute(_legacyPreferencesTableSql);
          rawDatabase.execute(_legacyProfileTableSql);
          rawDatabase.execute('''
            INSERT INTO user_profile_table (
              id, height, weight, gender, date_of_birth,
              weight_goal, activity_level
            ) VALUES (1, 180, 80, 'MALE', '1990-01-01', 'LOSE', 'ACTIVE')
          ''');
          rawDatabase.execute('PRAGMA user_version = 17');
        },
      ),
    );

    await database.customSelect('SELECT 1').get();
    final favoriteColumns = await _columnNames(database, 'favorite_meal_table');
    final preferenceColumns = await _columnNames(
      database,
      'user_preferences_table',
    );

    expect(
      favoriteColumns,
      containsAll(['health_score', 'health_score_reason', 'analysis_id']),
    );
    expect(
      preferenceColumns,
      containsAll(['onboarding_current_step', 'onboarding_completed_at']),
    );
    expect(await database.hasCompletedOnboarding(), isTrue);
  });

  test('v17 upgrade is safe when inherited columns already exist', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(
            _legacyMealTableSql(
              'favorite_meal_table',
              includeHealthColumns: true,
              includeAnalysisColumn: true,
            ),
          );
          rawDatabase.execute(_legacyPreferencesTableSql);
          rawDatabase.execute(_legacyProfileTableSql);
          rawDatabase.execute('PRAGMA user_version = 17');
        },
      ),
    );

    await database.customSelect('SELECT 1').get();
    final columns = await _columnNames(database, 'favorite_meal_table');

    expect(columns.where((column) => column == 'health_score'), hasLength(1));
    expect(columns.where((column) => column == 'analysis_id'), hasLength(1));
  });

  test('v11 upgrade creates preferences without duplicate columns', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(
            _legacyMealTableSql(
              'meal_info_table',
              includeHealthColumns: true,
              includeAnalysisColumn: false,
            ),
          );
          rawDatabase.execute(
            _legacyMealTableSql(
              'favorite_meal_table',
              includeHealthColumns: false,
              includeAnalysisColumn: false,
            ),
          );
          rawDatabase.execute(_legacyProfileTableSql);
          rawDatabase.execute('PRAGMA user_version = 11');
        },
      ),
    );

    await database.customSelect('SELECT 1').get();
    final columns = await _columnNames(database, 'user_preferences_table');

    expect(
      columns.where((column) => column == 'feedback_sheet_shown_at'),
      hasLength(1),
    );
    expect(columns, contains('onboarding_completed_at'));
  });

  test('v18 upgrade removes the abandoned phone sync queue', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(_v19ProfileTableSql);
          rawDatabase.execute(_legacySyncQueueTableSql);
          rawDatabase.execute('PRAGMA user_version = 18');
        },
      ),
    );

    await database.customSelect('SELECT 1').get();

    expect(await _tableExists(database, 'sync_queue_table'), isFalse);
  });

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

  test('v19 upgrade creates a pending profile outbox revision', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(_v19ProfileTableSql);
          rawDatabase.execute(
            'INSERT INTO user_profile_table (id, weight) VALUES (1, 70)',
          );
          rawDatabase.execute('PRAGMA user_version = 19');
        },
      ),
    );

    final pending = await database.getPendingProfileSync();
    expect(pending, isNotNull);
    expect(pending?.revision, isNotEmpty);
    expect(pending?.profile.weight, 70);
  });

  test(
    'v20 upgrade preserves custom favorites and restores safe links',
    () async {
      await database.close();
      database = AppDatabase.forTesting(
        NativeDatabase.memory(
          setup: (rawDatabase) {
            rawDatabase.execute(
              _legacyMealTableSql(
                'meal_info_table',
                includeHealthColumns: true,
                includeAnalysisColumn: true,
              ),
            );
            rawDatabase.execute(
              _legacyMealTableSql(
                'favorite_meal_table',
                includeHealthColumns: true,
                includeAnalysisColumn: true,
              ),
            );
            rawDatabase.execute('''
            INSERT INTO meal_info_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp
            ) VALUES
              (1, 'Logged lunch', '1 serving', 'snack', 100, 2, 20, 1, 3, 100),
              (2, 'Linked meal', '1 serving', 'snack', 100, 2, 20, 1, 3, 200)
          ''');
            rawDatabase.execute('''
            INSERT INTO favorite_meal_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp, created_at
            ) VALUES
              (1, 'Custom oats', '1 serving', 'snack', 100, 2, 20, 1, 3, 100, 100),
              (2, 'Linked meal', '1 serving', 'snack', 100, 2, 20, 1, 3, 200, 200)
          ''');
            rawDatabase.execute('PRAGMA user_version = 20');
          },
        ),
      );

      final favorites = await database.watchAllFavoriteMeals().first;
      expect(favorites, hasLength(2));
      final custom = favorites.singleWhere(
        (favorite) => favorite.loggedMeal.meal.name == 'Custom oats',
      );
      final linked = favorites.singleWhere(
        (favorite) => favorite.loggedMeal.meal.name == 'Linked meal',
      );
      expect(custom.clientId, 1);
      expect(custom.loggedMeal.hasClientId(), isFalse);
      expect(linked.clientId, 2);
      expect(linked.loggedMeal.clientId, 2);
      expect(await database.isFavoriteMeal(1), isFalse);
      expect(await database.isFavoriteMeal(2), isTrue);

      await database.addToFavorites((await database.getMealById(1))!);
      final afterCollision = await database.watchAllFavoriteMeals().first;
      expect(afterCollision, hasLength(3));
      expect(
        afterCollision.where(
          (favorite) => favorite.loggedMeal.meal.name == 'Custom oats',
        ),
        hasLength(1),
      );
    },
  );

  test('v20 upgrade retains trustworthy legacy source ids', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(
            _legacyMealTableSql(
              'meal_info_table',
              includeHealthColumns: true,
              includeAnalysisColumn: true,
            ),
          );
          rawDatabase.execute(
            _legacyMealTableSql(
              'favorite_meal_table',
              includeHealthColumns: true,
              includeAnalysisColumn: true,
              includeSourceColumn: true,
            ),
          );
          rawDatabase.execute('''
            INSERT INTO meal_info_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp
            ) VALUES
              (22, 'Post-v15 link', '1 serving', 'snack', 100, 2, 20, 1, 3, 300)
          ''');
          rawDatabase.execute('''
            INSERT INTO favorite_meal_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp, source_meal_id, created_at
            ) VALUES
              (20, 'Legacy link', '1 serving', 'snack', 100, 2, 20, 1, 3, 100, 5, 100),
              (21, 'Legacy custom', '1 serving', 'snack', 100, 2, 20, 1, 3, 200, NULL, 200),
              (22, 'Post-v15 link', '1 serving', 'snack', 100, 2, 20, 1, 3, 300, NULL, 300)
          ''');
          rawDatabase.execute('PRAGMA user_version = 20');
        },
      ),
    );

    final favorites = await database.watchAllFavoriteMeals().first;
    final linked = favorites.singleWhere(
      (favorite) => favorite.loggedMeal.meal.name == 'Legacy link',
    );
    final custom = favorites.singleWhere(
      (favorite) => favorite.loggedMeal.meal.name == 'Legacy custom',
    );
    final restored = favorites.singleWhere(
      (favorite) => favorite.loggedMeal.meal.name == 'Post-v15 link',
    );
    expect(linked.clientId, 20);
    expect(linked.loggedMeal.clientId, 5);
    expect(custom.clientId, 21);
    expect(custom.loggedMeal.hasClientId(), isFalse);
    expect(restored.clientId, 22);
    expect(restored.loggedMeal.clientId, 22);
    expect(await database.isFavoriteMeal(5), isTrue);
    expect(await database.isFavoriteMeal(22), isTrue);
  });

  test('v21 upgrade preserves duplicate meals and favorite links', () async {
    await database.close();
    database = AppDatabase.forTesting(
      NativeDatabase.memory(
        setup: (rawDatabase) {
          rawDatabase.execute(
            _legacyMealTableSql(
              'meal_info_table',
              includeHealthColumns: true,
              includeAnalysisColumn: true,
            ),
          );
          rawDatabase.execute(
            _legacyMealTableSql(
              'favorite_meal_table',
              includeHealthColumns: true,
              includeAnalysisColumn: true,
              includeSourceColumn: true,
            ),
          );
          rawDatabase.execute('''
            INSERT INTO meal_info_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp, analysis_id
            ) VALUES
              (1, 'First', '1 serving', 'snack', 100, 2, 20, 1, 3, 100, 'duplicate-id'),
              (2, 'Retry', '1 serving', 'snack', 100, 2, 20, 1, 3, 101, ' duplicate-id '),
              (3, 'Legacy blank', '1 serving', 'snack', 100, 2, 20, 1, 3, 102, '')
          ''');
          rawDatabase.execute('''
            INSERT INTO favorite_meal_table (
              id, meal_name, meal_quantity, meal_type, calories,
              protein, carbs, fat, fiber, timestamp, source_meal_id, created_at
            ) VALUES
              (20, 'Retry', '1 serving', 'snack', 100, 2, 20, 1, 3, 101, 2, 101)
          ''');
          rawDatabase.execute('PRAGMA user_version = 21');
        },
      ),
    );

    final rows =
        await database
            .customSelect(
              'SELECT id, analysis_id FROM meal_info_table ORDER BY id',
            )
            .get();
    expect(rows.map((row) => row.read<int>('id')), [1, 2, 3]);
    expect(rows.first.readNullable<String>('analysis_id'), 'duplicate-id');
    expect(rows.skip(1).map((row) => row.readNullable<String>('analysis_id')), [
      null,
      null,
    ]);
    expect(await database.isFavoriteMeal(2), isTrue);
    expect((await database.getMealById(2))?.meal.name, 'Retry');
    expect(
      await _indexExists(database, 'meal_info_analysis_id_unique'),
      isTrue,
    );

    await database.logMeal(_meal('Late retry'), analysisId: 'duplicate-id');
    final afterRetry =
        await database
            .customSelect(
              "SELECT COUNT(*) AS count FROM meal_info_table WHERE analysis_id = 'duplicate-id'",
            )
            .getSingle();
    expect(afterRetry.read<int>('count'), 1);
  });
}

Future<List<String>> _columnNames(AppDatabase database, String table) async {
  final rows = await database.customSelect('PRAGMA table_info($table)').get();
  return rows.map((row) => row.read<String>('name')).toList();
}

Future<bool> _tableExists(AppDatabase database, String table) async {
  final rows =
      await database
          .customSelect(
            "SELECT name FROM sqlite_master WHERE type = 'table' AND name = '$table'",
          )
          .get();
  return rows.isNotEmpty;
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
