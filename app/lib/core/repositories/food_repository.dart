import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:models/models.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';
import 'package:utils/utils.dart';

class V2ImageAnalysisHandle {
  const V2ImageAnalysisHandle({
    required this.analysisId,
    required this.uploadedImageUrl,
    required this.events,
  });

  final String analysisId;
  final String uploadedImageUrl;
  final Stream<MealAnalysisPipelineEvent> events;
}

class FoodRepository {
  FoodRepository({NetworkClient? networkClient})
    : _networkClient = networkClient ?? NetworkClient.instance;

  final NetworkClient _networkClient;

  Future<Stream<MealAnalysisPipelineEvent>> analyzeTextV2({
    required String analysisId,
    required String textDescription,
    bool? localAttempted,
    MealAnalysisFallbackReason? fallbackReason,
    String? localAttemptId,
    DateTime? localAttemptStartedAt,
    DateTime? localAttemptCompletedAt,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/analyze-text',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisTextRequest(
        analysisId: analysisId,
        textDescription: textDescription,
        localAttempted: localAttempted,
        fallbackReason: fallbackReason,
        localAttemptId: localAttemptId,
        localAttemptStartedAtEpochMs:
            localAttemptStartedAt == null
                ? null
                : Int64(localAttemptStartedAt.toUtc().millisecondsSinceEpoch),
        localAttemptCompletedAtEpochMs:
            localAttemptCompletedAt == null
                ? null
                : Int64(localAttemptCompletedAt.toUtc().millisecondsSinceEpoch),
      ),
      cancellation: cancellation,
    );
  }

  /// Uploads a local meal image and returns the authenticated object URL used by the V2 API.
  Future<String> uploadMealImage(File imageFile) => _uploadImage(imageFile);

  /// Streams analysis events for an image already stored at [imageUrl] (upload URL from [uploadMealImage]).
  Future<Stream<MealAnalysisPipelineEvent>> analyzeImageFromUrlV2({
    required String analysisId,
    required String imageUrl,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/analyze-image',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisImageRequest(
        analysisId: analysisId,
        imageUrl: imageUrl,
      ),
      cancellation: cancellation,
    );
  }

  Future<V2ImageAnalysisHandle> analyzeImageV2({
    required File imageFile,
  }) async {
    final analysisId = const Uuid().v4();
    final uploadUrl = await _uploadImage(imageFile);
    final events = await analyzeImageFromUrlV2(
      analysisId: analysisId,
      imageUrl: uploadUrl,
    );
    return V2ImageAnalysisHandle(
      analysisId: analysisId,
      uploadedImageUrl: uploadUrl,
      events: events,
    );
  }

  Future<Stream<MealAnalysisPipelineEvent>> analyzeProposalV2({
    required String analysisId,
    required IngredientProposalV2 proposal,
    required String localAttemptId,
    required DateTime localAttemptStartedAt,
    required DateTime localAttemptCompletedAt,
    MealAnalysisFallbackReason fallbackReason =
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/analyze-proposal',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisProposalRequest(
        analysisId: analysisId,
        proposal: proposal,
        localAttemptId: localAttemptId,
        localAttemptStartedAtEpochMs: Int64(
          localAttemptStartedAt.toUtc().millisecondsSinceEpoch,
        ),
        localAttemptCompletedAtEpochMs: Int64(
          localAttemptCompletedAt.toUtc().millisecondsSinceEpoch,
        ),
        fallbackReason: fallbackReason,
      ),
      cancellation: cancellation,
    );
  }

  Future<LocalInferenceCapabilityPolicy> getLocalInferencePolicy() {
    return _networkClient.apiCall<ApiResult, LocalInferenceCapabilityPolicy>(
      '/api/v2/food/local-capabilities',
      LocalInferenceCapabilityPolicy.new,
    );
  }

  Future<LocalNutritionResolveResponse> resolveLocalNutrition({
    required String analysisId,
    required List<LocalNutritionLookup> lookups,
  }) {
    return _networkClient
        .apiCall<LocalNutritionResolveRequest, LocalNutritionResolveResponse>(
          '/api/v2/food/resolve-local-nutrition',
          LocalNutritionResolveResponse.new,
          request: LocalNutritionResolveRequest(
            analysisId: analysisId,
            lookups: lookups,
          ),
        );
  }

  Future<Stream<MealAnalysisPipelineEvent>> clarifyV2({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/clarify',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisClarifyRequest(
        analysisId: analysisId,
        answers: answers,
      ),
      cancellation: cancellation,
    );
  }

  Future<Stream<MealAnalysisPipelineEvent>> resumeV2({
    required String analysisId,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/resume',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisResumeRequest(analysisId: analysisId),
      cancellation: cancellation,
    );
  }

  Future<Stream<MealAnalysisPipelineEvent>> submitMealTypeV2({
    required String analysisId,
    required MealType mealType,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/meal-type',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisMealTypeRequest(
        analysisId: analysisId,
        mealType: mealType,
      ),
      cancellation: cancellation,
    );
  }

  Future<void> submitPositiveFeedbackV2({required String analysisId}) async {
    await _networkClient.apiCall<MealAnalysisFeedbackRequest, ApiResult>(
      '/api/v2/food/feedback',
      ApiResult.new,
      request: MealAnalysisFeedbackRequest(
        analysisId: analysisId,
        signal: MealAnalysisFeedbackSignal.UP,
      ),
    );
  }

  Future<void> confirmMealLogV2({
    required String analysisId,
    required Meal meal,
    required DateTime loggedAt,
  }) async {
    await _networkClient.apiCall<MealAnalysisConfirmLogRequest, ApiResult>(
      '/api/v2/food/confirm-log',
      ApiResult.new,
      request: MealAnalysisConfirmLogRequest(
        analysisId: analysisId,
        loggedAt: loggedAt.toUtc().toIso8601String(),
        meal: meal,
      ),
    );
  }

  Future<void> deleteMealLogV2({required String analysisId}) async {
    await _networkClient.apiCall<MealAnalysisConfirmLogRequest, ApiResult>(
      '/api/v2/food/confirm-log',
      ApiResult.new,
      request: MealAnalysisConfirmLogRequest(
        analysisId: analysisId,
        deleted: true,
      ),
    );
  }

  Future<Stream<MealAnalysisPipelineEvent>> reanalyzeV2({
    required String analysisId,
    required String newAnalysisId,
    required List<MealReanalyzeFeedbackIssue> issues,
    String? otherText,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/reanalyze',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisReanalyzeRequest(
        analysisId: analysisId,
        newAnalysisId: newAnalysisId,
        issues: issues,
        otherText: otherText,
      ),
      cancellation: cancellation,
    );
  }

  Future<String> _uploadImage(File imageFile) async {
    if (ImageConfig.oracleBucketUploadUrl.isEmpty) {
      throw StateError(
        'Image upload is not configured. Set ORACLE_BUCKET_UPLOAD_URL at build time.',
      );
    }
    final fileExtension = imageFile.path.split('.').last.toLowerCase();
    if (!ImageConfig.isAllowedImageExtension(fileExtension)) {
      throw ArgumentError(
        'Image format not supported. Allowed formats: ${ImageConfig.allowedImageExtensions.join(", ")}',
      );
    }

    final folder = AuthService.instance.currentUser?.uid ?? 'anonymous';
    const uuid = Uuid();
    final isoTimestamp = DateTime.now().toUtc().toIso8601String();
    final fileName = '${isoTimestamp}_${uuid.v4()}.$fileExtension';
    final objectKey =
        '${Uri.encodeComponent(folder)}/${Uri.encodeComponent(fileName)}';
    final uploadUrl = '${ImageConfig.oracleBucketUploadUrl}$objectKey';
    final contentType = ImageConfig.getMimeType(fileExtension);
    final fileLength = await imageFile.length();

    await _networkClient.client.put(
      uploadUrl,
      data: imageFile.openRead(),
      options: Options(
        headers: {
          'Content-Type': contentType,
          Headers.contentLengthHeader: fileLength,
        },
      ),
    );

    return uploadUrl;
  }

  Future<AiMealSummaryResponse?> getAiSummary() async {
    final proto = await _networkClient
        .apiCall<ApiResult, AiMealSummaryResponse>(
          '/api/v1/food/ai-summary',
          AiMealSummaryResponse.new,
        );
    if (!proto.hasSummary() || !proto.hasGeneratedAt()) {
      return null;
    }
    return proto;
  }

  /// Server-driven tips for the meal-analysis loading UI (no app update needed to change copy).
  /// Returns an empty list on failure; callers should fall back to bundled tips.
  ///
  /// When [count] is set, the server returns at most that many tips chosen at random
  /// (`GET ...?count=`).
  Future<List<String>> getMealAnalysisTips({int? count}) async {
    try {
      final endpoint =
          count != null
              ? '/api/v1/food/meal-analysis-tips?count=$count'
              : '/api/v1/food/meal-analysis-tips';
      final proto = await _networkClient
          .apiCall<ApiResult, MealAnalysisTipsResponse>(
            endpoint,
            MealAnalysisTipsResponse.new,
          );
      return proto.tips
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toList();
    } on DioException {
      return const [];
    }
  }

  Future<String> exportMealHistoryCsv() async {
    final response = await _networkClient.client.get<String>(
      '/api/v1/food/export',
      options: Options(responseType: ResponseType.plain),
    );
    return response.data ?? '';
  }
}
