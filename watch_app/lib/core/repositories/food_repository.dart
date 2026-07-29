import 'package:calorify_watch/core/network/watch_network_client.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart';

/// Watch-side food repository.  Only text detection is needed on the watch
/// (no image capture / upload).
class WatchFoodRepository {
  const WatchFoodRepository();

  Future<MealDetectionResponse> detectText({
    required String textDescription,
  }) async {
    final description = textDescription.trim();

    // Prefer the phone: it already has the active user session and typically
    // has a more reliable network connection than the watch. If it is absent
    // or does not answer, retain the watch's authenticated backend path.
    try {
      final phoneResponse = await WearOsChannel.sendMessage(
        path: '/analysis/detect-text',
        data: {'textDescription': description},
      );
      final payload = phoneResponse?['response'];
      if (phoneResponse?['success'] == true && payload is Map) {
        return MealDetectionResponse()
          ..mergeFromProto3Json(Map<String, dynamic>.from(payload));
      }
    } catch (error) {
      if (kDebugMode) {
        debugPrint('Phone-assisted meal analysis failed: $error');
      }
    }

    final request = TextMealDetectionRequest(textDescription: description);
    return WatchNetworkClient.instance
        .apiCall<TextMealDetectionRequest, MealDetectionResponse>(
          '/api/v1/food/detect-text',
          MealDetectionResponse.new,
          request: request,
        );
  }
}
