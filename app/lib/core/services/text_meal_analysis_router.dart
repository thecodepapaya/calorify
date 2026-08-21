import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

class LocalTextEligibility {
  const LocalTextEligibility({
    required this.device,
    required this.rolloutEnabled,
  });

  final LocalInferenceCapabilities device;
  final bool rolloutEnabled;

  MealAnalysisFallbackReason? get ineligibleReason {
    if (!rolloutEnabled) {
      return MealAnalysisFallbackReason
          .MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED;
    }
    if (!device.platformSupported || !device.textSupported) {
      return MealAnalysisFallbackReason
          .MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE;
    }
    if (!device.ready || !device.structuredOutputSupported) {
      return MealAnalysisFallbackReason
          .MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY;
    }
    return null;
  }
}

sealed class TextMealAnalysisRoute {
  const TextMealAnalysisRoute();
}

class CloudTextMealAnalysisRoute extends TextMealAnalysisRoute {
  const CloudTextMealAnalysisRoute({
    required this.localAttempted,
    this.localAttemptId,
    this.fallbackReason,
    this.localAttemptStartedAt,
    this.localAttemptCompletedAt,
  });

  const CloudTextMealAnalysisRoute.cloudOnly()
    : localAttempted = false,
      localAttemptId = null,
      fallbackReason = null,
      localAttemptStartedAt = null,
      localAttemptCompletedAt = null;

  final bool localAttempted;
  final String? localAttemptId;
  final MealAnalysisFallbackReason? fallbackReason;
  final DateTime? localAttemptStartedAt;
  final DateTime? localAttemptCompletedAt;
}

class LocalProposalTextMealAnalysisRoute extends TextMealAnalysisRoute {
  const LocalProposalTextMealAnalysisRoute({
    required this.result,
    required this.startedAt,
    required this.completedAt,
  });

  final LocalInferenceResult result;
  final DateTime startedAt;
  final DateTime completedAt;
}

class TextMealAnalysisRouter {
  TextMealAnalysisRouter({
    required DatabaseInterface database,
    required LocalInferenceService localInference,
    required Future<LocalTextEligibility> Function() loadEligibility,
  }) : _database = database,
       _localInference = localInference,
       _loadEligibility = loadEligibility;

  final DatabaseInterface _database;
  final LocalInferenceService _localInference;
  final Future<LocalTextEligibility> Function() _loadEligibility;

  Future<TextMealAnalysisRoute> prepare(String text) async {
    LocalInferencePreferences preferences;
    try {
      preferences = await _database.getLocalInferencePreferences();
    } on Object {
      return const CloudTextMealAnalysisRoute.cloudOnly();
    }
    if (!preferences.enabled) {
      return const CloudTextMealAnalysisRoute.cloudOnly();
    }

    LocalTextEligibility eligibility;
    try {
      eligibility = await _loadEligibility();
    } on Object {
      return const CloudTextMealAnalysisRoute(
        localAttempted: false,
        fallbackReason:
            MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN,
      );
    }
    final ineligibleReason = eligibility.ineligibleReason;
    if (ineligibleReason != null) {
      return CloudTextMealAnalysisRoute(
        localAttempted: false,
        fallbackReason: ineligibleReason,
      );
    }

    final attemptId = const Uuid().v4();
    final startedAt = DateTime.now().toUtc();
    try {
      final result = await _localInference.analyzeText(
        text,
        requestId: attemptId,
      );
      final completedAt = DateTime.now().toUtc();
      return LocalProposalTextMealAnalysisRoute(
        result: result,
        startedAt: startedAt,
        completedAt: completedAt,
      );
    } on LocalInferenceException catch (error) {
      return CloudTextMealAnalysisRoute(
        localAttempted: true,
        localAttemptId: attemptId,
        fallbackReason: error.fallbackReason,
        localAttemptStartedAt: startedAt,
        localAttemptCompletedAt: DateTime.now().toUtc(),
      );
    } on Object {
      return CloudTextMealAnalysisRoute(
        localAttempted: true,
        localAttemptId: attemptId,
        fallbackReason:
            MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN,
        localAttemptStartedAt: startedAt,
        localAttemptCompletedAt: DateTime.now().toUtc(),
      );
    }
  }
}

abstract interface class MealAnalysisExecutor {
  Future<Stream<MealAnalysisPipelineEvent>> execute({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  });
}

class CloudTextMealAnalysisExecutor implements MealAnalysisExecutor {
  const CloudTextMealAnalysisExecutor({
    required FoodRepository repository,
    required String text,
    required CloudTextMealAnalysisRoute route,
  }) : _repository = repository,
       _text = text,
       _route = route;

  final FoodRepository _repository;
  final String _text;
  final CloudTextMealAnalysisRoute _route;

  @override
  Future<Stream<MealAnalysisPipelineEvent>> execute({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  }) {
    return _repository.analyzeTextV2(
      analysisId: analysisId,
      textDescription: _text,
      localAttempted: _route.localAttempted,
      localAttemptId: _route.localAttemptId,
      fallbackReason: _route.fallbackReason,
      localAttemptStartedAt: _route.localAttemptStartedAt,
      localAttemptCompletedAt: _route.localAttemptCompletedAt,
      cancellation: cancellation,
    );
  }
}

class LocalProposalMealAnalysisExecutor implements MealAnalysisExecutor {
  const LocalProposalMealAnalysisExecutor({
    required FoodRepository repository,
    required IngredientProposalV1 proposal,
    required LocalInferenceResult localResult,
    required DateTime startedAt,
    required DateTime completedAt,
  }) : _repository = repository,
       _proposal = proposal,
       _localResult = localResult,
       _startedAt = startedAt,
       _completedAt = completedAt;

  final FoodRepository _repository;
  final IngredientProposalV1 _proposal;
  final LocalInferenceResult _localResult;
  final DateTime _startedAt;
  final DateTime _completedAt;

  @override
  Future<Stream<MealAnalysisPipelineEvent>> execute({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  }) {
    return _repository.analyzeProposalV2(
      analysisId: analysisId,
      proposal: _proposal,
      localAttemptId: _localResult.requestId,
      localAttemptStartedAt: _startedAt,
      localAttemptCompletedAt: _completedAt,
      cancellation: cancellation,
    );
  }
}
