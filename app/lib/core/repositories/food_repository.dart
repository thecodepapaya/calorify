import 'dart:io';

import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/auth_service.dart';
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

    // Folder = Firebase UID or "anonymous" when unauthenticated (upload never denied)
    final folder =
        AuthService.instance.currentUser?.uid ?? 'anonymous';

    // Filename = <iso_timestamp>_<uuid>.<ext>
    const uuid = Uuid();
    final isoTimestamp =
        DateTime.now().toUtc().toIso8601String();
    final fileName = '${isoTimestamp}_${uuid.v4()}.$fileExtension';

    // Object key: folder/filename (URL-encode segments for colons etc. in ISO timestamp)
    final objectKey =
        '${Uri.encodeComponent(folder)}/${Uri.encodeComponent(fileName)}';
    final uploadUrl =
        '${ImageConfig.oracleBucketUploadUrl}$objectKey';

    // Get MIME type from config
    final contentType = ImageConfig.getMimeType(fileExtension);

    // Upload image to Oracle bucket
    final fileBytes = await imageFile.readAsBytes();

    // Upload to Oracle Object Storage using PUT request
    await NetworkClient.instance.client.put(
      uploadUrl,
      data: fileBytes,
      options: Options(headers: {'Content-Type': contentType}),
    );

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
}
