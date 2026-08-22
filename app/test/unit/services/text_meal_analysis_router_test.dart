import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/text_meal_analysis_router.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _MockDatabase extends Mock implements DatabaseInterface {}

class _FakeLocalInferenceService implements LocalInferenceService {
  _FakeLocalInferenceService({this.error});

  final LocalInferenceException? error;
  int analyzeCalls = 0;
  String? receivedRequestId;

  @override
  Future<LocalInferenceResult> analyzeText(
    String text, {
    String? requestId,
    Duration timeout = const Duration(seconds: 20),
    String? debugFailure,
  }) async {
    analyzeCalls += 1;
    receivedRequestId = requestId;
    final failure = error;
    if (failure != null) throw failure;
    return LocalInferenceResult(
      proposal: _proposal(),
      requestId: requestId!,
      elapsed: const Duration(milliseconds: 120),
    );
  }

  @override
  Future<void> cancel(String requestId) async {}

  @override
  Future<LocalInferenceCapabilities> downloadModel() async => _readyDevice();

  @override
  Future<LocalInferenceCapabilities> getCapabilities() async => _readyDevice();

  @override
  Future<Duration> warmUp() async => Duration.zero;
}

LocalInferenceCapabilities _readyDevice() => const LocalInferenceCapabilities(
  platformSupported: true,
  featureStatus: LocalInferenceFeatureStatus.available,
  ready: true,
  canDownload: false,
  structuredOutputSupported: true,
  textSupported: true,
  imageSupported: false,
);

IngredientProposalV1 _proposal() => IngredientProposalV1(
  schemaVersion: 1,
  proposalId: 'proposal-1',
  modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
  mealName: 'Dal and rice',
  inferredMealType: MealType.LUNCH,
  mealTypeConfident: true,
  confidence: 0.9,
  interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
  ingredients: [
    IngredientProposalItemV1(
      rowId: 'ingredient-1',
      rawName: 'dal',
      canonicalHint: 'lentils cooked',
      gramsEstimated: 200,
      minGrams: 170,
      maxGrams: 230,
      portionKind: PortionKind.BULK,
      confidence: 0.9,
      fieldProvenance: [
        IngredientFieldProvenance(
          fieldName: 'identity',
          origin: IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
        ),
        IngredientFieldProvenance(
          fieldName: 'portion',
          origin: IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
        ),
      ],
    ),
  ],
);

void main() {
  late _MockDatabase database;

  setUp(() {
    database = _MockDatabase();
  });

  test('preference lookup failure fails closed to cloud', () async {
    when(
      () => database.getLocalInferencePreferences(),
    ).thenThrow(StateError('database unavailable'));
    final local = _FakeLocalInferenceService();
    final router = TextMealAnalysisRouter(
      database: database,
      localInference: local,
      loadEligibility:
          () async => LocalTextEligibility(
            device: _readyDevice(),
            rolloutEnabled: true,
          ),
    );

    final route = await router.prepare('dal and rice');

    expect(route, isA<CloudTextMealAnalysisRoute>());
    expect((route as CloudTextMealAnalysisRoute).localAttempted, isFalse);
    expect(local.analyzeCalls, 0);
  });

  test(
    'default-off preference never queries or invokes local inference',
    () async {
      when(
        () => database.getLocalInferencePreferences(),
      ).thenAnswer((_) async => const LocalInferencePreferences.defaults());
      final local = _FakeLocalInferenceService();
      var eligibilityCalls = 0;
      final router = TextMealAnalysisRouter(
        database: database,
        localInference: local,
        loadEligibility: () async {
          eligibilityCalls += 1;
          return LocalTextEligibility(
            device: _readyDevice(),
            rolloutEnabled: true,
          );
        },
      );

      final route = await router.prepare('dal and rice');

      expect(route, isA<CloudTextMealAnalysisRoute>());
      expect((route as CloudTextMealAnalysisRoute).localAttempted, isFalse);
      expect(route.fallbackReason, isNull);
      expect(eligibilityCalls, 0);
      expect(local.analyzeCalls, 0);
    },
  );

  test(
    'rollout kill switch routes directly to cloud without a local attempt',
    () async {
      when(
        () => database.getLocalInferencePreferences(),
      ).thenAnswer((_) async => const LocalInferencePreferences(enabled: true));
      final local = _FakeLocalInferenceService();
      final router = TextMealAnalysisRouter(
        database: database,
        localInference: local,
        loadEligibility:
            () async => LocalTextEligibility(
              device: _readyDevice(),
              rolloutEnabled: false,
            ),
      );

      final route = await router.prepare('dal and rice');

      expect(route, isA<CloudTextMealAnalysisRoute>());
      final cloud = route as CloudTextMealAnalysisRoute;
      expect(cloud.localAttempted, isFalse);
      expect(
        cloud.fallbackReason,
        MealAnalysisFallbackReason
            .MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED,
      );
      expect(local.analyzeCalls, 0);
    },
  );

  test('eligible requests return a reviewed local proposal route', () async {
    when(
      () => database.getLocalInferencePreferences(),
    ).thenAnswer((_) async => const LocalInferencePreferences(enabled: true));
    final local = _FakeLocalInferenceService();
    final router = TextMealAnalysisRouter(
      database: database,
      localInference: local,
      loadEligibility:
          () async => LocalTextEligibility(
            device: _readyDevice(),
            rolloutEnabled: true,
          ),
    );

    final route = await router.prepare('dal and rice');

    expect(route, isA<LocalProposalTextMealAnalysisRoute>());
    final localRoute = route as LocalProposalTextMealAnalysisRoute;
    expect(local.analyzeCalls, 1);
    expect(localRoute.result.requestId, local.receivedRequestId);
    expect(localRoute.completedAt.isBefore(localRoute.startedAt), isFalse);
    expect(localRoute.useLocalNutrition, isFalse);
  });

  test(
    'separate default-off nutrition preference gates local grounding',
    () async {
      when(() => database.getLocalInferencePreferences()).thenAnswer(
        (_) async => const LocalInferencePreferences(
          enabled: true,
          offlineNutritionEnabled: true,
        ),
      );
      final router = TextMealAnalysisRouter(
        database: database,
        localInference: _FakeLocalInferenceService(),
        loadEligibility:
            () async => LocalTextEligibility(
              device: _readyDevice(),
              rolloutEnabled: true,
              localNutritionEnabled: true,
            ),
      );

      final route = await router.prepare('dal and rice');

      expect(
        (route as LocalProposalTextMealAnalysisRoute).useLocalNutrition,
        isTrue,
      );
    },
  );

  test(
    'runtime failure records the local attempt and falls back automatically',
    () async {
      when(
        () => database.getLocalInferencePreferences(),
      ).thenAnswer((_) async => const LocalInferencePreferences(enabled: true));
      final local = _FakeLocalInferenceService(
        error: const LocalInferenceException(
          code: 'busy',
          message: 'busy',
          fallbackReason:
              MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_BUSY,
        ),
      );
      final router = TextMealAnalysisRouter(
        database: database,
        localInference: local,
        loadEligibility:
            () async => LocalTextEligibility(
              device: _readyDevice(),
              rolloutEnabled: true,
            ),
      );

      final route = await router.prepare('dal and rice');

      final cloud = route as CloudTextMealAnalysisRoute;
      expect(cloud.localAttempted, isTrue);
      expect(cloud.localAttemptId, local.receivedRequestId);
      expect(cloud.localAttemptStartedAt, isNotNull);
      expect(cloud.localAttemptCompletedAt, isNotNull);
      expect(
        cloud.fallbackReason,
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_BUSY,
      );
    },
  );

  test(
    'capability lookup failure fails closed before invoking the model',
    () async {
      when(
        () => database.getLocalInferencePreferences(),
      ).thenAnswer((_) async => const LocalInferencePreferences(enabled: true));
      final local = _FakeLocalInferenceService();
      final router = TextMealAnalysisRouter(
        database: database,
        localInference: local,
        loadEligibility: () async => throw StateError('policy unavailable'),
      );

      final route = await router.prepare('dal and rice');

      final cloud = route as CloudTextMealAnalysisRoute;
      expect(cloud.localAttempted, isFalse);
      expect(
        cloud.fallbackReason,
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN,
      );
      expect(local.analyzeCalls, 0);
    },
  );
}
