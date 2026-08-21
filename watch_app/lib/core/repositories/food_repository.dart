import 'dart:async';

import 'package:calorify_watch/core/network/watch_network_client.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart';

/// Watch-side food repository.  Only text detection is needed on the watch
/// (no image capture / upload).
typedef WatchPhoneTextDetector =
    Future<WatchTransportResult> Function(String description);
typedef WatchBackendTextDetector =
    Future<MealDetectionResponse> Function(String description);

class WatchFoodRepository {
  const WatchFoodRepository({
    WatchPhoneTextDetector? phoneDetector,
    WatchBackendTextDetector? backendDetector,
  }) : _phoneDetector = phoneDetector,
       _backendDetector = backendDetector;

  final WatchPhoneTextDetector? _phoneDetector;
  final WatchBackendTextDetector? _backendDetector;

  Future<MealDetectionResponse> detectText({
    required String textDescription,
  }) async {
    final description = textDescription.trim();

    // Prefer the phone: it already has the active user session and typically
    // has a more reliable network connection than the watch. Fall back to the
    // watch backend only when the phone request was not ambiguously dispatched.
    WatchTransportResult? phoneResponse;
    try {
      phoneResponse = await (_phoneDetector ?? _detectTextViaPhone)(
        description,
      );
      if (phoneResponse.isSuccess &&
          phoneResponse.response!.hasDetectText() &&
          phoneResponse.response!.detectText.hasResponse()) {
        return phoneResponse.response!.detectText.response;
      }
    } catch (error) {
      if (kDebugMode) {
        debugPrint(
          'Phone-assisted meal analysis failed: type=${error.runtimeType}',
        );
      }
    }

    if (phoneResponse?.deliveryUncertain ?? false) {
      // A confirmed-v2 request reached the transport but no correlated response
      // arrived. It may still be running on the phone, so starting the same AI
      // analysis directly would duplicate expensive work.
      throw TimeoutException(
        phoneResponse?.errorMessage ?? 'Phone meal analysis timed out',
      );
    }

    return (_backendDetector ?? _detectTextViaBackend)(description);
  }

  static Future<WatchTransportResult> _detectTextViaPhone(String description) {
    return WearOsChannel.sendRequest(
      operation: WearOperation.WEAR_OPERATION_DETECT_TEXT,
      request: WearRequest(
        detectText: DetectTextRequest(textDescription: description),
      ),
    );
  }

  static Future<MealDetectionResponse> _detectTextViaBackend(
    String description,
  ) {
    final request = TextMealDetectionRequest(textDescription: description);
    return WatchNetworkClient.instance
        .apiCall<TextMealDetectionRequest, MealDetectionResponse>(
          '/api/v1/food/detect-text',
          MealDetectionResponse.new,
          request: request,
        );
  }
}
