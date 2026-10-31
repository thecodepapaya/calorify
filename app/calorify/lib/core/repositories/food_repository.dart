import 'dart:convert';

import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:models/protos_go.dart' as pgo;

class FoodRepository {
  FoodRepository({NetworkClient? networkClient})
    : _networkClient = networkClient ?? NetworkClient.instance;

  final NetworkClient _networkClient;

  /// Initiates a meal analysis on backend (POST /users/meals/analysis).
  Future<pgo.MealAnalysisResponse> initiateMealAnalysis({
    String? text,
    String? imageBase64,
    MealAnalysisV3RequestContext? context,
  }) {
    final metaInfo = pgo.MetaInfo();
    if (context != null) {
      metaInfo.locale = context.locale;
      metaInfo.timezone = context.timeZone;
      metaInfo.countryCode = context.countryCode;
      metaInfo.timestamp = pgo.Timestamp.fromDateTime(context.capturedAt);
    }
    final request = pgo.MealAnalysisRequest(
      text: text,
      imageBase64: imageBase64,
      metaInfo: metaInfo,
    );
    return _networkClient
        .apiCall<pgo.MealAnalysisRequest, pgo.MealAnalysisResponse>(
          '/users/meals/analysis',
          pgo.MealAnalysisResponse.new,
          request: request,
          method: ProtoHttpMethod.post,
        );
  }

  /// Fetches current analysis status from backend (GET /users/meals/analysis/{analysis_id}).
  Future<pgo.MealAnalysisStatus> getMealAnalysisStatus(String analysisId) {
    return _networkClient.apiCall<pgo.Empty, pgo.MealAnalysisStatus>(
      '/users/meals/analysis/$analysisId',
      pgo.MealAnalysisStatus.new,
      method: ProtoHttpMethod.get,
    );
  }

  Future<void> submitAnalysisFeedback({
    required String analysisId,
    bool? isLiked,
  }) async {
    final request = pgo.MealFeedbackRequest();
    if (isLiked != null) {
      request.isLiked = isLiked;
    }
    await _networkClient.apiCall<pgo.MealFeedbackRequest, pgo.Empty>(
      '/users/meals/analysis/$analysisId/feedback',
      pgo.Empty.new,
      request: request,
      method: ProtoHttpMethod.post,
    );
  }

  /// Repeatedly polls GET /users/meals/analysis/{analysis_id} until completed or failed.
  Stream<MealAnalysisV3Event> pollMealAnalysis({
    required String analysisId,
    String? textDescription,
    Duration pollInterval = const Duration(milliseconds: 750),
    Duration timeout = const Duration(seconds: 60),
    NetworkRequestCancellation? cancellation,
  }) async* {
    yield MealAnalysisV3Event(
      analysisId: analysisId,
      kind: MealAnalysisV3EventKind.started,
    );

    final stopwatch = Stopwatch()..start();
    pgo.MealAnalysisStatus_AnalysisStatus? lastStatus;

    while (stopwatch.elapsed < timeout) {
      if (cancellation?.isCancelled ?? false) {
        return;
      }

      final pgo.MealAnalysisStatus status;
      try {
        status = await getMealAnalysisStatus(analysisId);
      } on Object catch (_) {
        // Transient network hiccup during poll; wait and retry
        await Future.delayed(pollInterval);
        continue;
      }

      final currentStatus = status.status;
      if (currentStatus != lastStatus) {
        lastStatus = currentStatus;
        final progress = _mapStatusToProgress(status);
        if (progress != null) {
          yield MealAnalysisV3Event(
            analysisId: analysisId,
            kind: MealAnalysisV3EventKind.progress,
            progress: progress,
          );
        }
      }

      if (currentStatus == pgo.MealAnalysisStatus_AnalysisStatus.PRESENTED) {
        final result = _parseFinalResponse(status, textDescription);
        yield MealAnalysisV3Event(
          analysisId: analysisId,
          kind: MealAnalysisV3EventKind.complete,
          result: result,
        );
        return;
      }

      if (currentStatus == pgo.MealAnalysisStatus_AnalysisStatus.FAILED) {
        final reason = status.hasFailureReason() && status.failureReason.isNotEmpty
            ? status.failureReason
            : null;
        yield MealAnalysisV3Event(
          analysisId: analysisId,
          kind: MealAnalysisV3EventKind.error,
          issue: MealAnalysisV3TerminalIssue(
            code: 'ANALYSIS_FAILED',
            retryable: true,
            recoveryAction: MealAnalysisV3RecoveryAction.retry,
            message: reason,
          ),
        );
        return;
      }

      await Future.delayed(pollInterval);
    }

    yield MealAnalysisV3Event(
      analysisId: analysisId,
      kind: MealAnalysisV3EventKind.error,
      issue: const MealAnalysisV3TerminalIssue(
        code: 'TIMEOUT',
        retryable: true,
        recoveryAction: MealAnalysisV3RecoveryAction.retry,
      ),
    );
  }

  Future<Stream<MealAnalysisV3Event>> analyzeTextV3({
    required String analysisId,
    required String text,
    required MealAnalysisV3RequestContext context,
    NetworkRequestCancellation? cancellation,
  }) async {
    final response = await initiateMealAnalysis(text: text, context: context);
    final resolvedAnalysisId =
        response.analysisId.isNotEmpty ? response.analysisId : analysisId;

    return pollMealAnalysis(
      analysisId: resolvedAnalysisId,
      textDescription: text,
      cancellation: cancellation,
    );
  }

  Future<Stream<MealAnalysisV3Event>> analyzeImageV3({
    required String analysisId,
    String? imageBase64,
    required MealAnalysisV3RequestContext context,
    String? textDescription,
    NetworkRequestCancellation? cancellation,
  }) async {
    final response = await initiateMealAnalysis(
      text: textDescription,
      imageBase64: imageBase64,
      context: context,
    );
    final resolvedAnalysisId =
        response.analysisId.isNotEmpty ? response.analysisId : analysisId;

    return pollMealAnalysis(
      analysisId: resolvedAnalysisId,
      textDescription: textDescription,
      cancellation: cancellation,
    );
  }

  (String?, List<MealAnalysisV3ProgressComponent>) _extractProgressComponents(
    pgo.MealAnalysisStatus status,
  ) {
    String? mealName;
    List<String> componentNames = [];

    if (status.hasDecomposedComponent()) {
      try {
        final json = jsonDecode(status.decomposedComponent);
        if (json is Map) {
          mealName = json['name'] as String?;
          if (json['components'] is List) {
            componentNames = (json['components'] as List)
                .whereType<Map<String, dynamic>>()
                .map((c) => c['name']?.toString() ?? '')
                .where((n) => n.isNotEmpty)
                .toList();
          }
        }
      } catch (_) {}
    }

    if (mealName == null && status.hasFinalResponse()) {
      try {
        final decoded = jsonDecode(status.finalResponse);
        if (decoded is Map<String, dynamic>) {
          if (decoded['meal'] is Map<String, dynamic>) {
            mealName = decoded['meal']['name'] as String?;
          } else {
            mealName = decoded['name'] as String?;
          }
        }
      } catch (_) {}
    }

    List<String> ingredientNames = [];
    if (status.hasDecomposedIngredient()) {
      try {
        final json = jsonDecode(status.decomposedIngredient);
        if (json is Map && json['ingredients'] is List) {
          ingredientNames = (json['ingredients'] as List)
              .whereType<Map<String, dynamic>>()
              .map((i) => i['name']?.toString() ?? '')
              .where((n) => n.isNotEmpty)
              .toList();
        }
      } catch (_) {}
    } else if (status.hasUsdaEnriched()) {
      try {
        final json = jsonDecode(status.usdaEnriched);
        if (json is Map && json['ingredients'] is List) {
          ingredientNames = (json['ingredients'] as List)
              .whereType<Map<String, dynamic>>()
              .map((i) => i['name']?.toString() ?? '')
              .where((n) => n.isNotEmpty)
              .toList();
        }
      } catch (_) {}
    }

    List<MealAnalysisV3ProgressComponent> components = const [];

    if (componentNames.isNotEmpty) {
      if (ingredientNames.isEmpty) {
        components = componentNames
            .map(
              (name) => MealAnalysisV3ProgressComponent(
                componentId: name.toLowerCase().replaceAll(RegExp(r'\s+'), '_'),
                name: name,
                ingredientNames: const [],
              ),
            )
            .toList();
      } else {
        final assigned = <String, List<String>>{
          for (final c in componentNames) c: <String>[],
        };
        final unassigned = <String>[];

        for (final ing in ingredientNames) {
          String? matchedComp;
          for (final c in componentNames) {
            if (_matchesComponent(ing, c)) {
              matchedComp = c;
              break;
            }
          }
          if (matchedComp != null) {
            assigned[matchedComp]!.add(ing);
          } else {
            unassigned.add(ing);
          }
        }

        if (unassigned.isNotEmpty && componentNames.isNotEmpty) {
          assigned[componentNames.first]!.addAll(unassigned);
        }

        components = componentNames
            .map(
              (name) => MealAnalysisV3ProgressComponent(
                componentId: name.toLowerCase().replaceAll(RegExp(r'\s+'), '_'),
                name: name,
                ingredientNames: assigned[name] ?? const [],
              ),
            )
            .toList();
      }
    } else if (ingredientNames.isNotEmpty) {
      components = ingredientNames
          .map(
            (name) => MealAnalysisV3ProgressComponent(
              componentId: name.toLowerCase().replaceAll(RegExp(r'\s+'), '_'),
              name: name,
              ingredientNames: const [],
            ),
          )
          .toList();
    }

    return (mealName, components);
  }

  bool _matchesComponent(String ingredient, String component) {
    final ingLower = ingredient.toLowerCase();
    final compLower = component.toLowerCase();
    if (ingLower.contains(compLower) || compLower.contains(ingLower)) return true;
    final compWords = compLower.split(RegExp(r'\s+')).where((w) => w.length > 2);
    for (final word in compWords) {
      if (ingLower.contains(word)) return true;
    }
    final ingWords = ingLower.split(RegExp(r'\s+')).where((w) => w.length > 2);
    for (final word in ingWords) {
      if (compLower.contains(word)) return true;
    }
    return false;
  }

  MealAnalysisV3Progress? _mapStatusToProgress(pgo.MealAnalysisStatus status) {
    final (mealName, components) = _extractProgressComponents(status);

    switch (status.status) {
      case pgo.MealAnalysisStatus_AnalysisStatus.INITIATED:
        return const MealAnalysisV3Progress(
          phase: MealAnalysisV3ProgressPhase.understand,
          progress: 0.2,
        );
      case pgo.MealAnalysisStatus_AnalysisStatus.COMPONENT_DECOMPOSED:
        return MealAnalysisV3Progress(
          phase: MealAnalysisV3ProgressPhase.understand,
          progress: 0.45,
          mealName: mealName,
          components: components,
        );
      case pgo.MealAnalysisStatus_AnalysisStatus.INGREDIENT_DECOMPOSED:
        return MealAnalysisV3Progress(
          phase: MealAnalysisV3ProgressPhase.match,
          progress: 0.7,
          mealName: mealName,
          components: components,
        );
      case pgo.MealAnalysisStatus_AnalysisStatus.USDA_MACRO_HYDRATED:
        return MealAnalysisV3Progress(
          phase: MealAnalysisV3ProgressPhase.check,
          progress: 0.85,
          mealName: mealName,
          components: components,
        );
      case pgo.MealAnalysisStatus_AnalysisStatus.CLARIFICATION_GENERATED:
        return MealAnalysisV3Progress(
          phase: MealAnalysisV3ProgressPhase.check,
          progress: 0.95,
          mealName: mealName,
          components: components,
        );
      case pgo.MealAnalysisStatus_AnalysisStatus.PRESENTED:
        return MealAnalysisV3Progress(
          phase: MealAnalysisV3ProgressPhase.finish,
          progress: 1.0,
          mealName: mealName,
          components: components,
        );
      default:
        return null;
    }
  }

  MealAnalysisV3CompleteResult _parseFinalResponse(
    pgo.MealAnalysisStatus status,
    String? textDescription,
  ) {
    Map<String, dynamic> rawJson = const {};
    final meal = pgo.Meal();
    pgo.Clarifications? clarifications;

    if (status.hasFinalResponse() && status.finalResponse.isNotEmpty) {
      try {
        final decoded = jsonDecode(status.finalResponse);
        if (decoded is Map<String, dynamic>) {
          rawJson = decoded;
          if (decoded['meal'] is Map<String, dynamic>) {
            meal.mergeFromProto3Json(decoded['meal'] as Map<String, dynamic>);
          } else {
            meal.mergeFromProto3Json(decoded);
          }

          if (decoded['clarifications'] is Map<String, dynamic>) {
            clarifications = pgo.Clarifications()
              ..mergeFromProto3Json(
                decoded['clarifications'] as Map<String, dynamic>,
              );
          }
        }
      } catch (_) {}
    }

    if (clarifications == null &&
        status.hasGeneratedClarification() &&
        status.generatedClarification.isNotEmpty) {
      try {
        final clarJson = jsonDecode(status.generatedClarification);
        if (clarJson is Map<String, dynamic>) {
          clarifications = pgo.Clarifications()..mergeFromProto3Json(clarJson);
        }
      } catch (_) {}
    }

    final calories = meal.macros.calorie.value.toDouble();
    final protein = meal.macros.protein.value.toDouble();
    final carbs = meal.macros.carb.value.toDouble();
    final fat = meal.macros.fat.value.toDouble();
    final fiber = meal.macros.fiber.value.toDouble();

    double minVal(pgo.Measurement m, double val) {
      final min = m.minValue.toDouble();
      if (min > 0 && min <= val) return min;
      return val > 0 ? (val * 0.9).floorToDouble() : 0.0;
    }

    double maxVal(pgo.Measurement m, double val) {
      final max = m.maxValue.toDouble();
      if (max >= val && max > 0) return max;
      return val > 0 ? (val * 1.1).ceilToDouble() : 0.0;
    }

    final mealTypeStr = switch (meal.type) {
      pgo.MealType.BREAKFAST => 'BREAKFAST',
      pgo.MealType.LUNCH => 'LUNCH',
      pgo.MealType.DINNER => 'DINNER',
      pgo.MealType.SNACK => 'SNACK',
      _ => 'UNKNOWN',
    };

    List<Map<String, dynamic>> components = const [];
    if (status.hasDecomposedComponent()) {
      try {
        final compJson = jsonDecode(status.decomposedComponent);
        if (compJson is Map && compJson['components'] is List) {
          components =
              (compJson['components'] as List)
                  .whereType<Map<String, dynamic>>()
                  .toList();
        }
      } catch (_) {}
    }

    return MealAnalysisV3CompleteResult(
      mealName: meal.name.isNotEmpty ? meal.name : (textDescription ?? 'Meal'),
      servingSizeText: meal.quantity.isNotEmpty ? meal.quantity : '1 serving',
      tip:
          meal.hasMetadata() && meal.metadata.hasTip() ? meal.metadata.tip : '',
      mealType: mealTypeStr,
      macros: MealAnalysisV3MacroPoints(
        calories: calories,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fiber: fiber,
      ),
      macroRanges: MealAnalysisV3MacroRanges(
        calories: MealAnalysisV3Range(
          min: minVal(meal.macros.calorie, calories),
          max: maxVal(meal.macros.calorie, calories),
        ),
        protein: MealAnalysisV3Range(
          min: minVal(meal.macros.protein, protein),
          max: maxVal(meal.macros.protein, protein),
        ),
        carbs: MealAnalysisV3Range(
          min: minVal(meal.macros.carb, carbs),
          max: maxVal(meal.macros.carb, carbs),
        ),
        fat: MealAnalysisV3Range(
          min: minVal(meal.macros.fat, fat),
          max: maxVal(meal.macros.fat, fat),
        ),
        fiber: MealAnalysisV3Range(
          min: minVal(meal.macros.fiber, fiber),
          max: maxVal(meal.macros.fiber, fiber),
        ),
      ),
      components: components,
      receipt: const {},
      rawJson: rawJson,
      clarifications: clarifications,
    );
  }

  Future<List<String>> getMealAnalysisTips({int? count}) async => const [];
}
