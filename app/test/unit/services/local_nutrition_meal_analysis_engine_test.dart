import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_calculator.dart';
import 'package:calorify/core/services/local_nutrition_meal_analysis_engine.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _MockRepository extends Mock implements LocalNutritionRepository {}

IngredientProposalV2 _proposal() => IngredientProposalV2(
  schemaVersion: 2,
  proposalId: 'proposal-1',
  modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
  mealName: 'Banana',
  outcome: DecompositionOutcome.DECOMPOSITION_OUTCOME_FOOD,
  outcomeReason: 'Banana is food.',
  outcomeConfidence: 0.9,
  inferredMealType: MealType.SNACK,
  mealTypeReason: 'Suitable as a snack.',
  mealTypeConfident: true,
  interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
  items: [
    IngredientProposalItemV2(
      rowId: 'banana',
      rawName: 'banana',
      isFoodReason: 'Banana is food.',
      isFoodConfidence: 0.8,
      usdaLookup: UsdaLookupProposalV2(proposedCanonicalName: 'bananas raw'),
      portion: PortionProposalV2(
        kind: PortionKind.BULK,
        gramsEstimated: 118,
        minGrams: 60,
        maxGrams: 200,
      ),
    ),
  ],
);

LocalNutritionResolvedMeal _resolved(IngredientProposalV2 proposal) {
  final pack = LocalNutritionPack(
    schemaVersion: 1,
    packVersion: 'starter-v1',
    datasetVersion: 'fdc-v1',
    calculationVersion: localNutritionCalculationVersion,
    records: const [],
  );
  return LocalNutritionResolvedMeal(
    pack: InstalledLocalNutritionPack(pack: pack, byteSize: 1),
    ingredients: [
      LocalNutritionResolvedIngredient(
        proposal: proposal.items.single,
        canonicalName: 'Bananas, raw',
        matchType: 'reviewed_alias',
        fdcId: '169910',
        datasetVersion: 'fdc-v1',
        nutrientsPer100g: PipelineMacros(
          calories: 89,
          protein: 1.09,
          carbs: 22.84,
          fat: 0.33,
          fiber: 2.6,
        ),
        origin: NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA,
      ),
    ],
  );
}

void main() {
  test(
    'clarification settles into a fully local result with provenance',
    () async {
      final proposal = _proposal();
      final repository = _MockRepository();
      when(
        () => repository.resolveProposal(
          analysisId: any(named: 'analysisId'),
          proposal: proposal,
        ),
      ).thenAnswer((_) async => _resolved(proposal));
      final engine = LocalNutritionMealAnalysisEngine(
        repository: repository,
        calculator: const LocalNutritionCalculator(),
        copy: LocalNutritionAnalysisCopy.english(),
      );
      final localResult = LocalInferenceResult(
        proposal: proposal,
        requestId: 'local-attempt-1',
        elapsed: const Duration(milliseconds: 100),
      );

      final initial = await engine.start(
        analysisId: 'analysis-1',
        proposal: proposal,
        localResult: localResult,
        startedAt: DateTime.utc(2026),
        completedAt: DateTime.utc(2026).add(const Duration(milliseconds: 100)),
      );
      final initialEvents = await initial.toList();
      final uncertainty = initialEvents.last.uncertainty!;
      expect(uncertainty.needsClarification, isTrue);
      expect(uncertainty.clarifications, hasLength(1));
      expect(initialEvents.any((event) => event.result != null), isFalse);

      final clarification = uncertainty.clarifications.single;
      final continuation = await engine.clarify(
        analysisId: 'analysis-1',
        answers: [
          MealClarificationAnswer(
            clarificationId: clarification.clarificationId,
            selectedOptionId: 'estimated',
          ),
        ],
      );
      final result = (await continuation.toList()).last.result!;

      expect(result.macros.calories, 105);
      expect(
        result.receipt.calculationOrigin,
        CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC,
      );
      expect(result.ingredients.single.rawName, 'banana');
      expect(result.receipt.calculationVersion, 'local-macro-v1');
    },
  );
}
