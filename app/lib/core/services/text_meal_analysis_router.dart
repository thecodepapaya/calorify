import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

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
    this.useLocalNutrition = false,
  });

  final LocalInferenceResult result;
  final DateTime startedAt;
  final DateTime completedAt;
  final bool useLocalNutrition;
}

class TextMealAnalysisRouter {
  TextMealAnalysisRouter({
    required DatabaseInterface database,
    required LocalInferenceService localInference,
    required Future<LocalInferenceCapabilityPolicy> Function() loadPolicy,
  }) : _database = database,
       _localInference = localInference,
       _loadPolicy = loadPolicy;

  static const localAttemptTimeout = Duration(seconds: 5);

  final DatabaseInterface _database;
  final LocalInferenceService _localInference;
  final Future<LocalInferenceCapabilityPolicy> Function() _loadPolicy;

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

    late LocalInferenceCapabilities device;
    late LocalInferenceCapabilityPolicy policy;
    try {
      final eligibility = await Future.wait<Object>([
        _localInference.getCapabilities(),
        _loadPolicy(),
      ]);
      device = eligibility[0] as LocalInferenceCapabilities;
      policy = eligibility[1] as LocalInferenceCapabilityPolicy;
    } on Object {
      return const CloudTextMealAnalysisRoute(
        localAttempted: false,
        fallbackReason:
            MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN,
      );
    }
    final ineligibleReason = _ineligibleReason(device, policy);
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
        timeout: localAttemptTimeout,
      );
      final completedAt = DateTime.now().toUtc();
      return LocalProposalTextMealAnalysisRoute(
        result: result,
        startedAt: startedAt,
        completedAt: completedAt,
        useLocalNutrition:
            preferences.offlineNutritionEnabled &&
            policy.hasLocalNutritionPackUrl(),
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

MealAnalysisFallbackReason? _ineligibleReason(
  LocalInferenceCapabilities device,
  LocalInferenceCapabilityPolicy policy,
) {
  if (!policy.textEnabled) {
    return MealAnalysisFallbackReason
        .MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED;
  }
  if (!device.supported) {
    return MealAnalysisFallbackReason
        .MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE;
  }
  if (!device.ready) {
    return MealAnalysisFallbackReason
        .MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY;
  }
  return null;
}
