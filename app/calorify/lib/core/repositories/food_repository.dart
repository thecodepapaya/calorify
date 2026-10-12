import 'dart:io';

import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class V3ImageUpload {
  const V3ImageUpload({required this.imageId});

  final String imageId;
}

class FoodRepository {
  FoodRepository({NetworkClient? networkClient})
    : _networkClient = networkClient ?? NetworkClient.instance;

  final NetworkClient _networkClient;

  Future<Stream<MealAnalysisV3Event>> analyzeTextV3({
    required String analysisId,
    required String text,
    required MealAnalysisV3RequestContext context,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisV3Event>(
      '/api/v3/food/analyze-text',
      MealAnalysisV3Event.fromJson,
      data: {
        'analysisId': analysisId,
        'text': text,
        'context': context.toJson(),
      },
      cancellation: cancellation,
    );
  }

  Future<Stream<MealAnalysisV3Event>> analyzeImageV3({
    required String analysisId,
    required String imageId,
    required String imageOrigin,
    required MealAnalysisV3RequestContext context,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisV3Event>(
      '/api/v3/food/analyze-image',
      MealAnalysisV3Event.fromJson,
      data: {
        'analysisId': analysisId,
        'imageId': imageId,
        'imageOrigin': imageOrigin,
        'context': context.toJson(),
      },
      cancellation: cancellation,
    );
  }

  Future<Stream<MealAnalysisV3Event>> answerV3({
    required String analysisId,
    required MealAnalysisV3AnswerBundle bundle,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisV3Event>(
      '/api/v3/food/answer',
      MealAnalysisV3Event.fromJson,
      data: bundle.toJson(analysisId),
      cancellation: cancellation,
    );
  }

  Future<Stream<MealAnalysisV3Event>> resumeV3({
    required String analysisId,
    NetworkRequestCancellation? cancellation,
  }) {
    return _networkClient.streamPost<MealAnalysisV3Event>(
      '/api/v3/food/resume',
      MealAnalysisV3Event.fromJson,
      data: {'analysisId': analysisId},
      cancellation: cancellation,
    );
  }

  Future<V3ImageUpload> uploadMealImageV3(File imageFile) async {
    final imageBytes = await imageFile.readAsBytes();
    validateMealImageUploadSize(imageBytes);
    final response = await _networkClient.client.post<Map<String, dynamic>>(
      '/api/v3/food/image-upload',
      data: imageBytes,
      options: Options(
        contentType: 'image/webp',
        headers: {Headers.contentLengthHeader: imageBytes.length},
      ),
    );
    final imageId = response.data?['imageId'];
    if (imageId is! String || imageId.isEmpty) {
      throw const FormatException('Image upload response is missing imageId');
    }
    return V3ImageUpload(imageId: imageId);
  }

  Future<void> submitFeedbackV3({
    required String analysisId,
    required bool positive,
  }) async {
    await _networkClient.client.post<Map<String, dynamic>>(
      '/api/v3/food/feedback',
      data: {'analysisId': analysisId, 'signal': positive ? 'UP' : 'DOWN'},
    );
  }

  Future<void> confirmMealLogV3({
    required String analysisId,
    required Meal meal,
    required DateTime loggedAt,
  }) async {
    await _networkClient.client.post<Map<String, dynamic>>(
      '/api/v3/food/confirm-log',
      data: {
        'analysisId': analysisId,
        'loggedAt': loggedAt.toUtc().toIso8601String(),
        'meal': meal.toProto3Json(),
      },
    );
  }

  Future<void> deleteMealLogV3({required String analysisId}) async {
    await _networkClient.client.post<Map<String, dynamic>>(
      '/api/v3/food/confirm-log',
      data: {'analysisId': analysisId, 'deleted': true},
    );
  }

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
          .map((value) => value.trim())
          .where((value) => value.isNotEmpty)
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
