import 'dart:async';

import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_calculator.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_repository.dart';
import 'package:fixnum/fixnum.dart';
import 'package:models/models.dart';

class LocalNutritionAnalysisCopy {
  const LocalNutritionAnalysisCopy({
    required this.smaller,
    required this.estimated,
    required this.larger,
    required this.portionQuestion,
    required this.localTip,
  });

  factory LocalNutritionAnalysisCopy.english() => LocalNutritionAnalysisCopy(
    smaller: 'Smaller',
    estimated: 'Estimated',
    larger: 'Larger',
    portionQuestion:
        (ingredient) => 'Which portion was closest for $ingredient?',
    localTip: 'Calculated from verified local nutrition data.',
  );

  final String smaller;
  final String estimated;
  final String larger;
  final String Function(String ingredient) portionQuestion;
  final String localTip;
}

class LocalNutritionMealAnalysisEngine {
  LocalNutritionMealAnalysisEngine({
    required LocalNutritionRepository repository,
    required LocalNutritionCalculator calculator,
    required LocalNutritionAnalysisCopy copy,
  }) : _repository = repository,
       _calculator = calculator,
       _copy = copy;

  final LocalNutritionRepository _repository;
  final LocalNutritionCalculator _calculator;
  final LocalNutritionAnalysisCopy _copy;
  final Map<String, _LocalAnalysisSession> _sessions = {};

  bool hasSession(String analysisId) => _sessions.containsKey(analysisId);

  Future<Stream<MealAnalysisPipelineEvent>> start({
    required String analysisId,
    required IngredientProposalV2 proposal,
    required LocalInferenceResult localResult,
    required DateTime startedAt,
    required DateTime completedAt,
  }) async {
    final resolution = await _repository.resolveProposal(
      analysisId: analysisId,
      proposal: proposal,
    );
    if (_sessions.length >= 8) _sessions.remove(_sessions.keys.first);
    final session = _LocalAnalysisSession(
      analysisId: analysisId,
      proposal: proposal,
      resolution: resolution,
      localAttemptId: localResult.requestId,
      startedAt: startedAt,
      completedAt: completedAt,
    );
    _sessions[analysisId] = session;
    return Stream.fromIterable(_initialEvents(session));
  }

  Future<Stream<MealAnalysisPipelineEvent>> clarify({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
  }) async {
    final session = _requireSession(analysisId);
    for (final answer in answers) {
      final clarification =
          session.pendingClarifications[answer.clarificationId];
      final option =
          clarification?.options
              .where((option) => option.optionId == answer.selectedOptionId)
              .firstOrNull;
      if (clarification != null && option != null) {
        session.selectedGrams[clarification.rowId] = option.grams;
      }
    }
    return Stream.fromIterable(_calculationEvents(session));
  }

  Future<Stream<MealAnalysisPipelineEvent>> submitMealType({
    required String analysisId,
    required MealType mealType,
  }) async {
    final session = _requireSession(analysisId);
    if (mealType == MealType.UNKNOWN) {
      throw StateError('A concrete meal type is required');
    }
    session.selectedMealType = mealType;
    final result = _resultEvent(session, _calculate(session));
    session.pendingEvent = result;
    return Stream.value(result);
  }

  Future<Stream<MealAnalysisPipelineEvent>> resume(String analysisId) async {
    final session = _requireSession(analysisId);
    final pending = session.pendingEvent;
    if (pending != null) return Stream.value(pending);
    return Stream.fromIterable(_calculationEvents(session));
  }

  _LocalAnalysisSession _requireSession(String analysisId) {
    final session = _sessions[analysisId];
    if (session == null) throw StateError('No local analysis session exists');
    return session;
  }

  List<MealAnalysisPipelineEvent> _initialEvents(
    _LocalAnalysisSession session,
  ) {
    final proposal = session.proposal;
    return [
      MealAnalysisPipelineEvent(
        step: PipelineStep.STARTED,
        analysisId: session.analysisId,
      ),
      MealAnalysisPipelineEvent(
        step: PipelineStep.DECOMPOSITION,
        analysisId: session.analysisId,
        decomposition: PipelineDecompositionData(
          analysisId: session.analysisId,
          mealName: proposal.mealName,
          confidence: proposal.outcomeConfidence,
          ingredients: proposal.items
              .map(
                (ingredient) => PipelineDecomposedIngredient(
                  rowId: ingredient.rowId,
                  rawName: ingredient.rawName,
                  gramsEstimated: ingredient.portion.gramsEstimated,
                  minGrams: ingredient.portion.minGrams,
                  maxGrams: ingredient.portion.maxGrams,
                  portionKind: ingredient.portion.kind,
                  count:
                      ingredient.portion.hasCount()
                          ? ingredient.portion.count
                          : null,
                  perUnitGrams:
                      ingredient.portion.hasPerUnitGrams()
                          ? ingredient.portion.perUnitGrams
                          : null,
                  perUnitMinGrams:
                      ingredient.portion.hasPerUnitMinGrams()
                          ? ingredient.portion.perUnitMinGrams
                          : null,
                  perUnitMaxGrams:
                      ingredient.portion.hasPerUnitMaxGrams()
                          ? ingredient.portion.perUnitMaxGrams
                          : null,
                  sizeSpecifiedByUser: ingredient.portion.sizeSpecifiedByUser,
                ),
              )
              .toList(growable: false),
          inferredMealType: proposal.inferredMealType,
          mealTypeConfident: proposal.mealTypeConfident,
          interpretationOrigin:
              InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
        ),
      ),
      ..._calculationEvents(session),
    ];
  }

  List<MealAnalysisPipelineEvent> _calculationEvents(
    _LocalAnalysisSession session,
  ) {
    final calculation = _calculate(session);
    final ingredients = calculation.ingredients
        .map((ingredient) => ingredient.toProto())
        .toList(growable: false);
    final ingredientsEvent = MealAnalysisPipelineEvent(
      step: PipelineStep.INGREDIENTS,
      analysisId: session.analysisId,
      ingredientsStep: PipelineIngredientsData(
        analysisId: session.analysisId,
        mealName: session.proposal.mealName,
        ingredients: ingredients,
      ),
    );
    final clarifications = _buildClarifications(calculation);
    session.pendingClarifications = {
      for (final clarification in clarifications)
        clarification.clarificationId: clarification,
    };
    final uncertaintyEvent = MealAnalysisPipelineEvent(
      step: PipelineStep.UNCERTAINTY,
      analysisId: session.analysisId,
      uncertainty: PipelineUncertaintyData(
        analysisId: session.analysisId,
        mealName: session.proposal.mealName,
        variancePercent: calculation.variancePercent,
        needsClarification: clarifications.isNotEmpty,
        calorieBand: PipelineCalorieBand(
          min: calculation.minMacros.calories.round(),
          max: calculation.maxMacros.calories.round(),
        ),
        clarifications: clarifications,
      ),
    );
    if (clarifications.isNotEmpty) {
      session.pendingEvent = uncertaintyEvent;
      return [ingredientsEvent, uncertaintyEvent];
    }

    final mealType =
        session.selectedMealType ?? session.proposal.inferredMealType;
    if (!session.proposal.mealTypeConfident &&
            session.selectedMealType == null ||
        mealType == MealType.UNKNOWN) {
      final questionEvent = MealAnalysisPipelineEvent(
        step: PipelineStep.MEAL_TYPE_QUESTION,
        analysisId: session.analysisId,
        mealTypeQuestion: PipelineMealTypeQuestionData(
          analysisId: session.analysisId,
          mealName: session.proposal.mealName,
          options: const [
            MealType.BREAKFAST,
            MealType.LUNCH,
            MealType.DINNER,
            MealType.SNACK,
          ],
          inferredMealType: session.proposal.inferredMealType,
        ),
      );
      session.pendingEvent = questionEvent;
      return [ingredientsEvent, uncertaintyEvent, questionEvent];
    }
    final result = _resultEvent(session, calculation);
    session.pendingEvent = result;
    return [ingredientsEvent, uncertaintyEvent, result];
  }

  LocalNutritionCalculation _calculate(_LocalAnalysisSession session) =>
      _calculator.calculate(
        session.resolution,
        selectedGrams: session.selectedGrams,
      );

  List<PipelineClarification> _buildClarifications(
    LocalNutritionCalculation calculation,
  ) {
    if (calculation.variancePercent <= 0.15) return const [];
    final threshold = (calculation.macros.calories * 0.05).clamp(
      50,
      double.infinity,
    );
    final result = <PipelineClarification>[];
    for (final ingredient in calculation.ingredients) {
      final proposal = ingredient.resolution.proposal;
      if (proposal.portion.kind == PortionKind.PINCH ||
          proposal.portion.sizeSpecifiedByUser ||
          ingredient.maxMacros.calories - ingredient.minMacros.calories <
              threshold) {
        continue;
      }
      final values = <(String, String, double)>[
        ('smaller', _copy.smaller, ingredient.minGrams),
        ('estimated', _copy.estimated, ingredient.grams),
        ('larger', _copy.larger, ingredient.maxGrams),
      ];
      final seen = <double>{};
      final options = <PipelineClarificationOption>[];
      for (final value in values) {
        final grams = LocalNutritionCalculator.roundGrams(value.$3);
        if (!seen.add(grams)) continue;
        options.add(
          PipelineClarificationOption(
            optionId: value.$1,
            grams: grams,
            calorieDelta:
                _calculator
                    .scale(ingredient.resolution.nutrientsPer100g, grams)
                    .calories
                    .round() -
                ingredient.macros.calories.round(),
          ),
        );
      }
      if (options.length < 2) continue;
      result.add(
        PipelineClarification(
          clarificationId: 'local_${proposal.rowId}_portion',
          rowId: proposal.rowId,
          ingredientName: proposal.rawName,
          portionKind: proposal.portion.kind,
          options: options,
          defaultOptionId:
              options.any((option) => option.optionId == 'estimated')
                  ? 'estimated'
                  : options.first.optionId,
        ),
      );
    }
    return result;
  }

  MealAnalysisPipelineEvent _resultEvent(
    _LocalAnalysisSession session,
    LocalNutritionCalculation calculation,
  ) {
    final proposal = session.proposal;
    final mealType = session.selectedMealType ?? proposal.inferredMealType;
    final totalGrams = calculation.ingredients.fold<double>(
      0,
      (total, ingredient) => total + ingredient.grams,
    );
    return MealAnalysisPipelineEvent(
      step: PipelineStep.RESULT,
      analysisId: session.analysisId,
      result: PipelineResultData(
        analysisId: session.analysisId,
        mealName: proposal.mealName,
        quantity: '${_formatGrams(totalGrams)} g total',
        mealType: mealType,
        mealTypeSource: session.selectedMealType == null ? 'model' : 'user',
        tip: _copy.localTip,
        macros: calculation.macros,
        calorieConfidence: calculation.calorieConfidence,
        calorieBand: PipelineCalorieBand(
          min: calculation.minMacros.calories.round(),
          max: calculation.maxMacros.calories.round(),
        ),
        ingredients: calculation.ingredients
            .map((ingredient) => ingredient.toProto())
            .toList(growable: false),
        confidenceReasons: [
          if (calculation.variancePercent > 0.15) 'portion_uncertainty',
        ],
        receipt: MealAnalysisReceipt(
          schemaVersion: 1,
          proposalSchemaVersion: proposal.schemaVersion,
          localAttempted: true,
          interpretationOrigin:
              InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
          nutritionOrigin: calculation.nutritionOrigin,
          calculationOrigin:
              CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC,
          usdaDatasetVersion: session.resolution.pack.pack.datasetVersion,
          calculationVersion: localNutritionCalculationVersion,
          attempts: [
            AnalysisAttemptReceipt(
              attemptId: session.localAttemptId,
              executorOrigin:
                  InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
              startedAtEpochMs: Int64(
                session.startedAt.toUtc().millisecondsSinceEpoch,
              ),
              completedAtEpochMs: Int64(
                session.completedAt.toUtc().millisecondsSinceEpoch,
              ),
              status: AnalysisAttemptStatus.ANALYSIS_ATTEMPT_STATUS_ACCEPTED,
              fallbackReason:
                  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
            ),
          ],
          fallbackReason:
              MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
        ),
      ),
    );
  }

  static String _formatGrams(double grams) {
    final rounded = LocalNutritionCalculator.roundGrams(grams);
    return rounded == rounded.roundToDouble()
        ? rounded.round().toString()
        : rounded.toStringAsFixed(1);
  }
}

class _LocalAnalysisSession {
  _LocalAnalysisSession({
    required this.analysisId,
    required this.proposal,
    required this.resolution,
    required this.localAttemptId,
    required this.startedAt,
    required this.completedAt,
  });

  final String analysisId;
  final IngredientProposalV2 proposal;
  final LocalNutritionResolvedMeal resolution;
  final String localAttemptId;
  final DateTime startedAt;
  final DateTime completedAt;
  final Map<String, double> selectedGrams = {};
  Map<String, PipelineClarification> pendingClarifications = {};
  MealType? selectedMealType;
  MealAnalysisPipelineEvent? pendingEvent;
}
