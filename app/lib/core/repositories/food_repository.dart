import 'dart:io';

import 'package:calorify/core/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';
import 'package:utils/utils.dart';

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
    // Validate file extension
    final fileExtension = imageFile.path.split('.').last.toLowerCase();
    if (!ImageConfig.isAllowedImageExtension(fileExtension)) {
      throw ArgumentError(
        'Image format not supported. Allowed formats: ${ImageConfig.allowedImageExtensions.join(", ")}',
      );
    }

    // Generate unique filename
    const uuid = Uuid();
    final fileName = '${uuid.v4()}.$fileExtension';

    // Get MIME type from config
    final contentType = ImageConfig.getMimeType(fileExtension);

    // Upload image to Oracle bucket
    final fileBytes = await imageFile.readAsBytes();
    final uploadUrl = '${ImageConfig.oracleBucketUploadUrl}$fileName';

    // Upload to Oracle Object Storage using PUT request
    await NetworkClient.instance.client.put(
      uploadUrl,
      data: fileBytes,
      options: Options(headers: {'Content-Type': contentType}),
    );

    // Send only the filename - server will reconstruct download URL
    final request = ImageMealDetectionRequest(imageUrl: fileName);
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
