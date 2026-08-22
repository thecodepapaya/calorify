import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/local_nutrition_cache_entry.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:calorify/core/services/local_nutrition_repository.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _MockDatabase extends Mock implements DatabaseInterface {}

class _MockPackService extends Mock implements LocalNutritionPackService {}

class _MockFoodRepository extends Mock implements FoodRepository {}

IngredientProposalV1 _proposal(String hint) => IngredientProposalV1(
  schemaVersion: 1,
  proposalId: 'proposal-1',
  modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
  mealName: 'Test meal',
  inferredMealType: MealType.LUNCH,
  mealTypeConfident: true,
  confidence: 0.9,
  interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
  ingredients: [
    IngredientProposalItemV1(
      rowId: 'row-1',
      rawName: hint,
      canonicalHint: hint,
      gramsEstimated: 100,
      minGrams: 90,
      maxGrams: 110,
      portionKind: PortionKind.BULK,
    ),
  ],
);

InstalledLocalNutritionPack _installed() {
  final pack = LocalNutritionPack(
    schemaVersion: 1,
    packVersion: 'starter-v1',
    datasetVersion: 'fdc-v1',
    calculationVersion: localNutritionCalculationVersion,
    records: [
      LocalNutritionRecord(
        fdcId: '169910',
        description: 'Bananas, raw',
        normalizedName: 'bananas raw',
        aliases: const ['banana'],
        dataType: 'sr_legacy_food',
        nutrientsPer100g: PipelineMacros(
          calories: 89,
          protein: 1.09,
          carbs: 22.84,
          fat: 0.33,
          fiber: 2.6,
        ),
        datasetVersion: 'fdc-v1',
      ),
    ],
  );
  return InstalledLocalNutritionPack(
    manifest: LocalNutritionPackManifest(
      schemaVersion: 1,
      packVersion: 'starter-v1',
      datasetVersion: 'fdc-v1',
      objectName: 'local-nutrition/starter-v1.json',
      sizeBytes: Int64.ONE,
      signature: 'signature',
      signingKeyId: 'key',
      createdAtEpochMs: Int64.ONE,
      recordCount: 1,
      calculationVersion: localNutritionCalculationVersion,
    ),
    pack: pack,
    byteSize: 1,
    generation: 'starter-v1',
  );
}

void main() {
  late _MockDatabase database;
  late _MockPackService packService;
  late _MockFoodRepository foodRepository;
  late LocalNutritionRepository repository;

  setUp(() {
    database = _MockDatabase();
    packService = _MockPackService();
    foodRepository = _MockFoodRepository();
    repository = LocalNutritionRepository(
      database: database,
      packService: packService,
      foodRepository: foodRepository,
    );
    when(() => packService.loadActive()).thenAnswer((_) async => _installed());
    when(() => database.getLocalNutritionCache()).thenAnswer((_) async => []);
    when(
      () => database.touchLocalNutritionCache(any()),
    ).thenAnswer((_) async {});
    when(
      () => database.upsertLocalNutritionCache(any()),
    ).thenAnswer((_) async {});
  });

  test('uses reviewed pack aliases without a backend lookup', () async {
    final result = await repository.resolveProposal(
      analysisId: 'analysis-1',
      proposal: _proposal('banana'),
    );

    expect(
      result.ingredients.single.origin,
      NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA,
    );
    expect(result.ingredients.single.fdcId, '169910');
    verifyNever(
      () => foodRepository.resolveLocalNutrition(
        analysisId: any(named: 'analysisId'),
        lookups: any(named: 'lookups'),
      ),
    );
  });

  test('uses a compatible cache alias and updates its LRU access', () async {
    final cached = LocalNutritionCacheEntry(
      fdcId: '200',
      datasetVersion: 'fdc-v1',
      description: 'Cooked lentils',
      normalizedName: 'lentils cooked',
      dataType: 'foundation',
      lookupKeys: const ['dal cooked'],
      nutrientsPer100g: PipelineMacros(calories: 116),
      retrievedAt: DateTime.utc(2026),
      lastAccessedAt: DateTime.utc(2026),
      approximateBytes: 100,
    );
    when(
      () => database.getLocalNutritionCache(),
    ).thenAnswer((_) async => [cached]);

    final result = await repository.resolveProposal(
      analysisId: 'analysis-2',
      proposal: _proposal('dal cooked'),
    );

    expect(
      result.ingredients.single.origin,
      NutritionOrigin.NUTRITION_ORIGIN_CACHED_USDA,
    );
    final captured =
        verify(
              () => database.touchLocalNutritionCache(captureAny()),
            ).captured.single
            as Iterable<({String fdcId, String datasetVersion})>;
    expect(captured.single.fdcId, '200');
  });

  test('fills a compatible remote USDA miss into the cache', () async {
    when(
      () => foodRepository.resolveLocalNutrition(
        analysisId: any(named: 'analysisId'),
        lookups: any(named: 'lookups'),
      ),
    ).thenAnswer(
      (_) async => LocalNutritionResolveResponse(
        analysisId: 'analysis-3',
        records: [
          CacheableNutritionRecord(
            rowId: 'row-1',
            fdcId: '300',
            description: 'Cooked chickpeas',
            normalizedName: 'chickpeas cooked',
            dataType: 'foundation',
            nutrientsPer100g: PipelineMacros(calories: 164),
            datasetVersion: 'fdc-v1',
            retrievedAtEpochMs: Int64(1_700_000_000_000),
            lookupKeys: ['chickpeas cooked'],
            matchType: 'exact',
            matchConfidence: 1,
          ),
        ],
      ),
    );

    final result = await repository.resolveProposal(
      analysisId: 'analysis-3',
      proposal: _proposal('chickpeas cooked'),
    );

    expect(
      result.ingredients.single.origin,
      NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA,
    );
    final entries =
        verify(
              () => database.upsertLocalNutritionCache(captureAny()),
            ).captured.single
            as List<LocalNutritionCacheEntry>;
    expect(entries.single.fdcId, '300');
  });

  test('rejects a remote row from another USDA dataset', () async {
    when(
      () => foodRepository.resolveLocalNutrition(
        analysisId: any(named: 'analysisId'),
        lookups: any(named: 'lookups'),
      ),
    ).thenAnswer(
      (_) async => LocalNutritionResolveResponse(
        analysisId: 'analysis-4',
        records: [
          CacheableNutritionRecord(
            rowId: 'row-1',
            fdcId: '300',
            description: 'Cooked chickpeas',
            normalizedName: 'chickpeas cooked',
            dataType: 'foundation',
            nutrientsPer100g: PipelineMacros(calories: 164),
            datasetVersion: 'fdc-v2',
          ),
        ],
      ),
    );

    await expectLater(
      repository.resolveProposal(
        analysisId: 'analysis-4',
        proposal: _proposal('chickpeas cooked'),
      ),
      throwsA(
        isA<LocalNutritionResolutionException>().having(
          (error) => error.fallbackReason,
          'fallbackReason',
          MealAnalysisFallbackReason
              .MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE,
        ),
      ),
    );
  });

  test('rejects invalid remote nutrients without caching them', () async {
    when(
      () => foodRepository.resolveLocalNutrition(
        analysisId: any(named: 'analysisId'),
        lookups: any(named: 'lookups'),
      ),
    ).thenAnswer(
      (_) async => LocalNutritionResolveResponse(
        analysisId: 'analysis-5',
        records: [
          CacheableNutritionRecord(
            rowId: 'row-1',
            fdcId: '300',
            description: 'Cooked chickpeas',
            normalizedName: 'chickpeas cooked',
            dataType: 'foundation',
            nutrientsPer100g: PipelineMacros(calories: double.nan),
            datasetVersion: 'fdc-v1',
          ),
        ],
      ),
    );

    await expectLater(
      repository.resolveProposal(
        analysisId: 'analysis-5',
        proposal: _proposal('chickpeas cooked'),
      ),
      throwsA(isA<LocalNutritionResolutionException>()),
    );
    verifyNever(() => database.upsertLocalNutritionCache(any()));
  });
}
