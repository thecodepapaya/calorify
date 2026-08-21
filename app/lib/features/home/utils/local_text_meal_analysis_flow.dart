import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/local_inference_providers.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/text_meal_analysis_router.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/local_proposal_review_sheet.dart';
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

      return _showWithExecutor(
        context: context,
        textDescription: textDescription,
        executor: LocalProposalMealAnalysisExecutor(
          repository: repository,
          proposal: reviewed,
          localResult: route.result,
          startedAt: route.startedAt,
          completedAt: route.completedAt,
        ),
      );
  }
}

Future<bool> _showWithExecutor({
  required BuildContext context,
  required String textDescription,
  required MealAnalysisExecutor executor,
}) {
  return showV2MealAnalysisFlow(
    context: context,
    startAnalysis:
        (cancellation, analysisId) => executor.execute(
          analysisId: analysisId,
          cancellation: cancellation,
        ),
    textDescription: textDescription,
  );
}
