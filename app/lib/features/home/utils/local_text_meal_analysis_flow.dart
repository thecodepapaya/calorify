import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/local_inference_providers.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_meal_analysis_engine.dart';
import 'package:calorify/core/services/text_meal_analysis_router.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/local_proposal_review_sheet.dart';
import 'package:calorify/features/home/controllers/meal_analysis_controller.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

Future<bool> showRoutedTextMealAnalysisFlow({
  required BuildContext context,
  required String textDescription,
}) async {
  final container = ProviderScope.containerOf(context, listen: false);
  final repository = container.read(foodRepositoryProvider);
  final route = await container
      .read(textMealAnalysisRouterProvider)
      .prepare(textDescription);
  if (!context.mounted) return false;

  switch (route) {
    case CloudTextMealAnalysisRoute():
      final executor = CloudTextMealAnalysisExecutor(
        repository: repository,
        text: textDescription,
        route: route,
      );
      return _showWithExecutor(
        context: context,
        textDescription: textDescription,
        executor: executor,
      );
    case LocalProposalTextMealAnalysisRoute():
      final reviewed = await showLocalProposalReviewSheet(
        context: context,
        proposal: route.result.proposal,
      );
      if (reviewed == null || !context.mounted) return false;
      try {
        IngredientProposalValidator.validate(
          reviewed,
          expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
        );
      } on LocalInferenceException {
        showFlushbar(t.meal.localInference.invalidProposal, context: context);
        final fallback = CloudTextMealAnalysisRoute(
          localAttempted: true,
          localAttemptId: route.result.requestId,
          fallbackReason:
              MealAnalysisFallbackReason
                  .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
          localAttemptStartedAt: route.startedAt,
          localAttemptCompletedAt: route.completedAt,
        );
        return _showWithExecutor(
          context: context,
          textDescription: textDescription,
          executor: CloudTextMealAnalysisExecutor(
            repository: repository,
            text: textDescription,
            route: fallback,
          ),
        );
      }

      final localEngine = container.read(
        localNutritionMealAnalysisEngineProvider,
      );
      final executor =
          route.useLocalNutrition
              ? HybridLocalNutritionMealAnalysisExecutor(
                localEngine: localEngine,
                repository: repository,
                proposal: reviewed,
                localResult: route.result,
                startedAt: route.startedAt,
                completedAt: route.completedAt,
              )
              : LocalProposalMealAnalysisExecutor(
                repository: repository,
                proposal: reviewed,
                localResult: route.result,
                startedAt: route.startedAt,
                completedAt: route.completedAt,
              );
      return _showWithExecutor(
        context: context,
        textDescription: textDescription,
        executor: executor,
        continuationRepository:
            route.useLocalNutrition
                ? _HybridLocalNutritionContinuation(
                  localEngine: localEngine,
                  remote: FoodRepositoryMealAnalysisContinuation(repository),
                )
                : null,
      );
  }
}

Future<bool> _showWithExecutor({
  required BuildContext context,
  required String textDescription,
  required MealAnalysisExecutor executor,
  MealAnalysisContinuationRepository? continuationRepository,
}) {
  return showV2MealAnalysisFlow(
    context: context,
    startAnalysis:
        (cancellation, analysisId) => executor.execute(
          analysisId: analysisId,
          cancellation: cancellation,
        ),
    textDescription: textDescription,
    continuationRepository: continuationRepository,
  );
}

class _HybridLocalNutritionContinuation
    implements MealAnalysisContinuationRepository {
  const _HybridLocalNutritionContinuation({
    required LocalNutritionMealAnalysisEngine localEngine,
    required MealAnalysisContinuationRepository remote,
  }) : _localEngine = localEngine,
       _remote = remote;

  final LocalNutritionMealAnalysisEngine _localEngine;
  final MealAnalysisContinuationRepository _remote;

  @override
  Future<Stream<MealAnalysisPipelineEvent>> clarify({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
    required NetworkRequestCancellation cancellation,
  }) {
    if (_localEngine.hasSession(analysisId)) {
      return _localEngine.clarify(analysisId: analysisId, answers: answers);
    }
    return _remote.clarify(
      analysisId: analysisId,
      answers: answers,
      cancellation: cancellation,
    );
  }

  @override
  Future<Stream<MealAnalysisPipelineEvent>> resume({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  }) {
    if (_localEngine.hasSession(analysisId)) {
      return _localEngine.resume(analysisId);
    }
    return _remote.resume(analysisId: analysisId, cancellation: cancellation);
  }

  @override
  Future<Stream<MealAnalysisPipelineEvent>> submitMealType({
    required String analysisId,
    required MealType mealType,
    required NetworkRequestCancellation cancellation,
  }) {
    if (_localEngine.hasSession(analysisId)) {
      return _localEngine.submitMealType(
        analysisId: analysisId,
        mealType: mealType,
      );
    }
    return _remote.submitMealType(
      analysisId: analysisId,
      mealType: mealType,
      cancellation: cancellation,
    );
  }
}
