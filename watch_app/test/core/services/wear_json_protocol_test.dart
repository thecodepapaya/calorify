import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_json_protocol.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('error compatibility uses exact values, not substrings', () {
    final network = WearJsonProtocol.decodeResponse(WatchPaths.mealLog, {
      'success': false,
      'error': 'Network unavailable',
    });
    final rejection = WearJsonProtocol.decodeResponse(WatchPaths.mealLog, {
      'success': false,
      'error': 'Network field is invalid',
    });

    expect(network.errorCode, WatchTransportErrorCode.network);
    expect(network.shouldRetry, isTrue);
    expect(rejection.errorCode, WatchTransportErrorCode.rejected);
    expect(rejection.shouldRetry, isFalse);
  });

  test('local native failures are not validated peer rejections', () {
    final result = WearJsonProtocol.decodeResponse(WatchPaths.mealLog, {
      'success': false,
      'errorCode': 'invalid_payload',
      WearJsonProtocol.transportErrorKey: true,
    });

    expect(result.shouldRetry, isFalse);
    expect(result.isValidatedPeerRejection, isFalse);
  });

  test('phone rejections can permanently reject a mutation', () {
    final result = WearJsonProtocol.decodeResponse(WatchPaths.mealLog, {
      'success': false,
      'errorCode': 'invalid_payload',
    });

    expect(result.isValidatedPeerRejection, isTrue);
  });

  test('malformed analysis responses preserve uncertain delivery', () {
    final result = WearJsonProtocol.decodeResponse(WatchPaths.detectText, {
      'unexpected': true,
    });

    expect(result.errorCode, WatchTransportErrorCode.malformedResponse);
    expect(result.deliveryUncertain, isTrue);
    expect(result.isPeerResponse, isFalse);
  });
}
