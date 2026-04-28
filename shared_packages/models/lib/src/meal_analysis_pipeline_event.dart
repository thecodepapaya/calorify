import 'protos/calorify/meal_analysis_pipeline.pb.dart';

PipelineStep _pipelineStepFromNdjson(String raw) {
  return switch (raw) {
    'STARTED' => PipelineStep.STARTED,
    'DECOMPOSITION' => PipelineStep.DECOMPOSITION,
    'INGREDIENTS' => PipelineStep.INGREDIENTS,
    'UNCERTAINTY' => PipelineStep.UNCERTAINTY,
    'MEAL_TYPE_QUESTION' => PipelineStep.MEAL_TYPE_QUESTION,
    'RESULT' => PipelineStep.RESULT,
    'ERROR' => PipelineStep.ERROR,
    _ => PipelineStep.ERROR,
  };
}

/// One NDJSON/SSE line from `/api/v2/food/*`; `data` is parsed with pipeline protos.
class MealAnalysisPipelineEvent {
  MealAnalysisPipelineEvent({
    required this.step,
    required this.analysisId,
    this.decomposition,
    this.ingredientsStep,
    this.uncertainty,
    this.mealTypeQuestion,
    this.result,
    this.errorMessage,
  });

  factory MealAnalysisPipelineEvent.fromJson(Map<String, dynamic> json) {
    final stepRaw = json['step'] as String? ?? 'ERROR';
    final data = (json['data'] as Map?)?.cast<String, dynamic>() ?? {};
    final step = _pipelineStepFromNdjson(stepRaw);

    switch (step) {
      case PipelineStep.STARTED:
        final m = PipelineStartedData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(step: step, analysisId: m.analysisId);
      case PipelineStep.DECOMPOSITION:
        final m = PipelineDecompositionData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(
          step: step,
          analysisId: m.analysisId,
          decomposition: m,
        );
      case PipelineStep.INGREDIENTS:
        final m = PipelineIngredientsData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(
          step: step,
          analysisId: m.analysisId,
          ingredientsStep: m,
        );
      case PipelineStep.UNCERTAINTY:
        final m = PipelineUncertaintyData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(
          step: step,
          analysisId: m.analysisId,
          uncertainty: m,
        );
      case PipelineStep.MEAL_TYPE_QUESTION:
        final m = PipelineMealTypeQuestionData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(
          step: step,
          analysisId: m.analysisId,
          mealTypeQuestion: m,
        );
      case PipelineStep.RESULT:
        final m = PipelineResultData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(
          step: step,
          analysisId: m.analysisId,
          result: m,
        );
      case PipelineStep.ERROR:
        final m = PipelineErrorData()..mergeFromProto3Json(data);
        return MealAnalysisPipelineEvent(
          step: step,
          analysisId: m.analysisId,
          errorMessage: m.message,
        );
      default:
        return MealAnalysisPipelineEvent(
          step: PipelineStep.ERROR,
          analysisId: '',
          errorMessage: 'Unspecified pipeline step',
        );
    }
  }

  final PipelineStep step;
  final String analysisId;
  final PipelineDecompositionData? decomposition;
  final PipelineIngredientsData? ingredientsStep;
  final PipelineUncertaintyData? uncertainty;
  final PipelineMealTypeQuestionData? mealTypeQuestion;
  final PipelineResultData? result;
  final String? errorMessage;

  String? get mealName {
    if (decomposition != null && decomposition!.hasMealName()) {
      return decomposition!.mealName;
    }
    if (ingredientsStep != null && ingredientsStep!.hasMealName()) {
      return ingredientsStep!.mealName;
    }
    if (uncertainty != null && uncertainty!.hasMealName()) {
      return uncertainty!.mealName;
    }
    if (mealTypeQuestion != null && mealTypeQuestion!.hasMealName()) {
      return mealTypeQuestion!.mealName;
    }
    if (result != null && result!.hasMealName()) {
      return result!.mealName;
    }
    return null;
  }

  double? get confidence =>
      decomposition != null && decomposition!.hasConfidence()
          ? decomposition!.confidence
          : null;
}
