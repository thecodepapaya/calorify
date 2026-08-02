import 'dart:io';

import 'package:models/models.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';
import 'package:utils/utils.dart';

class V2ImageAnalysisHandle {
  const V2ImageAnalysisHandle({
    required this.uploadedImageUrl,
    required this.events,
  });

  final String uploadedImageUrl;
  final Stream<MealAnalysisPipelineEvent> events;
}

class FoodRepository {
  FoodRepository({NetworkClient? networkClient})
    : _networkClient = networkClient ?? NetworkClient.instance;

  final NetworkClient _networkClient;

  Future<MealDetectionResponse> analyzeImage({required File imageFile}) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        imageFile.path,
        filename: imageFile.path.split('/').last,
      ),
    });

    final response = await _networkClient.client.post<Map<String, dynamic>>(
      '/api/v1/food/analyze-image',
      data: formData,
      options: Options(contentType: 'multipart/form-data'),
    );

    return MealDetectionResponse()..mergeFromProto3Json(response.data!);
  }

  Future<MealDetectionResponse> detectImage({required File imageFile}) async {
    final uploadUrl = await _uploadImage(imageFile);

    // Send the full authenticated upload URL
    final request = ImageMealDetectionRequest(imageUrl: uploadUrl);
    return _networkClient
        .apiCall<ImageMealDetectionRequest, MealDetectionResponse>(
          '/api/v1/food/detect-image',
          MealDetectionResponse.new,
          request: request,
        );
  }

  Future<MealDetectionResponse> detectText({required String textDescription}) {
    final request = TextMealDetectionRequest(textDescription: textDescription);
    return _networkClient
        .apiCall<TextMealDetectionRequest, MealDetectionResponse>(
          '/api/v1/food/detect-text',
          MealDetectionResponse.new,
          request: request,
        );
  }

  Future<Stream<MealAnalysisPipelineEvent>> analyzeTextV2({
    required String textDescription,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/analyze-text',
      MealAnalysisPipelineEvent.fromJson,
      data: TextMealDetectionRequest(textDescription: textDescription),
    );
  }

  /// Uploads a local meal image and returns the authenticated object URL used by the V2 API.
  Future<String> uploadMealImage(File imageFile) => _uploadImage(imageFile);

  /// Streams analysis events for an image already stored at [imageUrl] (upload URL from [uploadMealImage]).
  Future<Stream<MealAnalysisPipelineEvent>> analyzeImageFromUrlV2({
    required String imageUrl,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/analyze-image',
      MealAnalysisPipelineEvent.fromJson,
      data: ImageMealDetectionRequest(imageUrl: imageUrl),
    );
  }

  Future<V2ImageAnalysisHandle> analyzeImageV2({
    required File imageFile,
  }) async {
    final uploadUrl = await _uploadImage(imageFile);
    final events = await analyzeImageFromUrlV2(imageUrl: uploadUrl);
    return V2ImageAnalysisHandle(uploadedImageUrl: uploadUrl, events: events);
  }

  Future<Stream<MealAnalysisPipelineEvent>> clarifyV2({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/clarify',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisClarifyRequest(
        analysisId: analysisId,
        answers: answers,
      ),
    );
  }

  Future<Stream<MealAnalysisPipelineEvent>> submitMealTypeV2({
    required String analysisId,
    required MealType mealType,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/meal-type',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisMealTypeRequest(
        analysisId: analysisId,
        mealType: mealType,
      ),
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

  Future<Stream<MealAnalysisPipelineEvent>> reanalyzeV2({
    required String analysisId,
    required List<MealReanalyzeFeedbackIssue> issues,
    String? otherText,
  }) {
    return _networkClient.streamPost<MealAnalysisPipelineEvent>(
      '/api/v2/food/reanalyze',
      MealAnalysisPipelineEvent.fromJson,
      data: MealAnalysisReanalyzeRequest(
        analysisId: analysisId,
        issues: issues,
        otherText: otherText,
      ),
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
            processError: false,
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
