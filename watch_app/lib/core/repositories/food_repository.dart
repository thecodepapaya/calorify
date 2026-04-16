import 'package:calorify_watch/core/network/watch_network_client.dart';
import 'package:models/models.dart';

/// Watch-side food repository.  Only text detection is needed on the watch
/// (no image capture / upload).
class WatchFoodRepository {
  const WatchFoodRepository();

  Future<MealDetectionResponse> detectText({
    required String textDescription,
  }) {
    final request = TextMealDetectionRequest(
      textDescription: textDescription,
    );
    return WatchNetworkClient.instance.apiCall<TextMealDetectionRequest,
        MealDetectionResponse>(
      '/api/v1/food/detect-text',
      MealDetectionResponse.new,
      request: request,
    );
  }
}
