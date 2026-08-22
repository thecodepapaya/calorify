import 'dart:async';

import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_json_protocol.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:models/models.dart';

/// Sends watch text analysis to the phone, which owns the V2 backend session.
typedef WatchPhoneTextDetector =
    Future<WatchTransportResult> Function(String description);

class WatchFoodRepository {
  const WatchFoodRepository({WatchPhoneTextDetector? phoneDetector})
    : _phoneDetector = phoneDetector;

  final WatchPhoneTextDetector? _phoneDetector;

  Future<MealDetectionResponse> detectText({
    required String textDescription,
  }) async {
    final description = textDescription.trim();

    final phoneResponse = await (_phoneDetector ?? _detectTextViaPhone)(
      description,
    );
    if (phoneResponse.isSuccess) {
      final response = phoneResponse.data!['response'];
      if (response is Map) {
        return MealDetectionResponse()
          ..mergeFromProto3Json(Map<String, dynamic>.from(response));
      }
    }

    if (phoneResponse.deliveryUncertain) {
      throw TimeoutException(
        phoneResponse.errorMessage ?? 'Phone meal analysis timed out',
      );
    }

    throw StateError(
      phoneResponse.errorMessage ?? 'Phone meal analysis failed',
    );
  }

  static Future<WatchTransportResult> _detectTextViaPhone(String description) {
    return WearOsChannel.sendRequest(
      path: WatchPaths.detectText,
      data: {'textDescription': description},
    );
  }
}
