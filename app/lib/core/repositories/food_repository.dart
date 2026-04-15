import 'dart:io';

import 'package:calorify/core/models/ai_summary_result.dart';
import 'package:calorify/core/models/meal_analysis_v2.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';
import 'package:utils/utils.dart';

class V2ImageAnalysisHandle {
  const V2ImageAnalysisHandle({
    required this.uploadedImageUrl,
    required this.events,
  });

  final String uploadedImageUrl;
  final Stream<V2MealAnalysisEvent> events;
}

class FoodRepository {
  Future<MealDetectionResponse> analyzeImage({required File imageFile}) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        imageFile.path,
        filename: imageFile.path.split('/').last,
      ),
    });

    final response = await NetworkClient.instance.client
        .post<Map<String, dynamic>>(
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
    return NetworkClient.instance
        .apiCall<ImageMealDetectionRequest, MealDetectionResponse>(
          '/api/v1/food/detect-image',
          MealDetectionResponse.new,
          request: request,
        );
  }

  Future<MealDetectionResponse> detectText({required String textDescription}) {
    final request = TextMealDetectionRequest(textDescription: textDescription);
    return NetworkClient.instance
        .apiCall<TextMealDetectionRequest, MealDetectionResponse>(
          '/api/v1/food/detect-text',
          MealDetectionResponse.new,
          request: request,
        );
  }

  Future<Stream<V2MealAnalysisEvent>> analyzeTextV2({
    required String textDescription,
  }) {
    return NetworkClient.instance.streamPost<V2MealAnalysisEvent>(
      '/api/v2/food/analyze-text',
      V2MealAnalysisEvent.fromJson,
      data: {'textDescription': textDescription},
    );
  }

  Future<V2ImageAnalysisHandle> analyzeImageV2({required File imageFile}) async {
    final uploadUrl = await _uploadImage(imageFile);
    final events = await NetworkClient.instance.streamPost<V2MealAnalysisEvent>(
      '/api/v2/food/analyze-image',
      V2MealAnalysisEvent.fromJson,
      data: {'imageUrl': uploadUrl},
    );
    return V2ImageAnalysisHandle(uploadedImageUrl: uploadUrl, events: events);
  }

  Future<Stream<V2MealAnalysisEvent>> clarifyV2({
    required String analysisId,
    required List<V2MealClarificationAnswer> answers,
  }) {
    return NetworkClient.instance.streamPost<V2MealAnalysisEvent>(
      '/api/v2/food/clarify',
      V2MealAnalysisEvent.fromJson,
      data: {
        'analysisId': analysisId,
        'answers': answers.map((answer) => answer.toJson()).toList(),
      },
    );
  }

  Future<Stream<V2MealAnalysisEvent>> submitMealTypeV2({
    required String analysisId,
    required MealType mealType,
  }) {
    return NetworkClient.instance.streamPost<V2MealAnalysisEvent>(
      '/api/v2/food/meal-type',
      V2MealAnalysisEvent.fromJson,
      data: {
        'analysisId': analysisId,
        'mealType': switch (mealType) {
          MealType.BREAKFAST => 'BREAKFAST',
          MealType.LUNCH => 'LUNCH',
          MealType.DINNER => 'DINNER',
          MealType.SNACK => 'SNACK',
          _ => 'UNKNOWN',
        },
      },
    );
  }

  Future<void> submitPositiveFeedbackV2({required String analysisId}) async {
    await NetworkClient.instance.client.post(
      '/api/v2/food/feedback',
      data: {'analysisId': analysisId, 'signal': 'up'},
    );
  }

  Future<void> confirmMealLogV2({
    required String analysisId,
    required Meal meal,
    required DateTime loggedAt,
  }) async {
    await NetworkClient.instance.client.post(
      '/api/v2/food/confirm-log',
      data: {
        'analysisId': analysisId,
        'loggedAt': loggedAt.toUtc().toIso8601String(),
        'mealName': meal.name,
        'calories': meal.macros.calories,
        'protein': meal.macros.protein,
        'carbs': meal.macros.carbs,
        'fat': meal.macros.fat,
        'fiber': meal.macros.fiber,
        'mealType': switch (meal.type) {
          MealType.BREAKFAST => 'BREAKFAST',
          MealType.LUNCH => 'LUNCH',
          MealType.DINNER => 'DINNER',
          MealType.SNACK => 'SNACK',
          _ => 'UNKNOWN',
        },
        'quantity': meal.quantity,
      },
    );
  }

  Future<Stream<V2MealAnalysisEvent>> reanalyzeV2({
    required String analysisId,
    required List<V2MealFeedbackIssue> issues,
    String? otherText,
  }) {
    return NetworkClient.instance.streamPost<V2MealAnalysisEvent>(
      '/api/v2/food/reanalyze',
      V2MealAnalysisEvent.fromJson,
      data: {
        'analysisId': analysisId,
        'issues': issues.map((issue) => issue.apiValue).toList(),
        if (otherText != null && otherText.isNotEmpty) 'otherText': otherText,
      },
    );
  }

  Future<String> _uploadImage(File imageFile) async {
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
    final fileBytes = await imageFile.readAsBytes();

    await NetworkClient.instance.client.put(
      uploadUrl,
      data: fileBytes,
      options: Options(headers: {'Content-Type': contentType}),
    );

    return uploadUrl;
  }

  Future<AiSummaryResult?> getAiSummary() async {
    final response = await NetworkClient.instance.client
        .get<Map<String, dynamic>>('/api/v1/food/ai-summary');
    final data = response.data;
    if (data == null || data['summary'] == null) return null;
    return AiSummaryResult(
      summary: data['summary'] as String,
      generatedAt: DateTime.parse(data['generatedAt'] as String),
    );
  }
}
