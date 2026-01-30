import 'dart:io';

import 'package:calorify/core/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';

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

  Future<MealDetectionResponse> detectImage({required String imageUrl}) {
    final request = ImageMealDetectionRequest(imageUrl: imageUrl);
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
}
