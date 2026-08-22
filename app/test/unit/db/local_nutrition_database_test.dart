import 'dart:convert';

import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/local_nutrition_cache_entry.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

LocalNutritionCacheEntry _entry(int index, {int approximateBytes = 100}) =>
    LocalNutritionCacheEntry(
      fdcId: '$index',
      datasetVersion: 'fdc-v1',
      description: 'Food $index',
      normalizedName: 'food $index',
      dataType: 'foundation',
      lookupKeys: ['food $index'],
      nutrientsPer100g: PipelineMacros(calories: index.toDouble()),
      retrievedAt: DateTime.utc(2026).add(Duration(seconds: index)),
      lastAccessedAt: DateTime.utc(2026).add(Duration(seconds: index)),
      approximateBytes: approximateBytes,
    );

void main() {
  late AppDatabase database;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  test('offline nutrition preference is default-off and persists', () async {
    expect(
      (await database.getLocalInferencePreferences()).offlineNutritionEnabled,
      isFalse,
    );

    await database.setOfflineNutritionEnabled(true);

    expect(
      (await database.getLocalInferencePreferences()).offlineNutritionEnabled,
      isTrue,
    );
  });

  test('overlay cache enforces the 2000-row LRU bound', () async {
    await database.upsertLocalNutritionCache(
      List.generate(2001, (index) => _entry(index)),
    );

    final rows = await database.getLocalNutritionCache();
    final stats = await database.getLocalNutritionCacheStats();
    expect(rows, hasLength(2000));
    expect(stats.recordCount, 2000);
    expect(rows.any((entry) => entry.fdcId == '0'), isFalse);
    expect(rows.any((entry) => entry.fdcId == '2000'), isTrue);
  });

  test('overlay cache enforces the 20 MB approximate-size bound', () async {
    await database.upsertLocalNutritionCache([
      _entry(1, approximateBytes: 11 * 1024 * 1024),
      _entry(2, approximateBytes: 11 * 1024 * 1024),
    ]);

    final rows = await database.getLocalNutritionCache();
    expect(rows, hasLength(1));
    expect(rows.single.fdcId, '2');
  });

  test('logged meal retains an immutable local analysis snapshot', () async {
    final result = PipelineResultData(
      analysisId: 'analysis-local-1',
      mealName: 'Banana',
      quantity: '118 g total',
      mealType: MealType.SNACK,
      macros: PipelineMacros(calories: 105),
      receipt: MealAnalysisReceipt(
        schemaVersion: 1,
        calculationOrigin:
            CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC,
        calculationVersion: 'local-macro-v1',
        usdaDatasetVersion: 'fdc-v1',
      ),
    );
    await database.logMeal(
      Meal(
        name: 'Banana',
        quantity: '118 g total',
        type: MealType.SNACK,
        macros: MealMacro(calories: 105),
      ),
      analysisId: result.analysisId,
      analysisSnapshot: result,
    );
    await database.clearLocalNutritionCache();

    final row =
        await database
            .customSelect(
              'SELECT analysis_snapshot_json FROM meal_info_table LIMIT 1',
            )
            .getSingle();
    final snapshot =
        jsonDecode(row.read<String>('analysis_snapshot_json'))
            as Map<String, dynamic>;
    expect(snapshot['analysisId'], 'analysis-local-1');
    expect(
      (snapshot['receipt'] as Map<String, dynamic>)['calculationVersion'],
      'local-macro-v1',
    );
  });
}
