import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_json_protocol.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const platform = MethodChannel('dev.thecodepapaya.calorify/wear_os');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  tearDown(() {
    messenger.setMockMethodCallHandler(platform, null);
  });

  test('sends the pre-existing JSON path and payload', () async {
    MethodCall? received;
    messenger.setMockMethodCallHandler(platform, (call) async {
      received = call;
      return <Object?, Object?>{'success': true};
    });

    final result = await WearOsChannel.sendRequest(
      path: WatchPaths.mealDelete,
      data: {'meal_id': 42},
    );

    expect(result.isSuccess, isTrue);
    expect(received?.method, 'sendMessage');
    expect(received?.arguments, {
      'path': '/meal/delete',
      'data': {'meal_id': 42},
    });
  });

  test('decodes a correlated JSON dashboard response', () async {
    messenger.setMockMethodCallHandler(platform, (_) async {
      return <Object?, Object?>{'success': true, 'goal': 2100};
    });

    final result = await WearOsChannel.sendRequest(
      path: WatchPaths.calorieGoal,
    );

    expect(result.data?['goal'], 2100);
    expect(result.isPeerResponse, isTrue);
  });

  test('platform failures remain local and retryable', () async {
    messenger.setMockMethodCallHandler(
      platform,
      (_) => Future<Object?>.error(
        PlatformException(code: 'SEND_ERROR', message: 'secret detail'),
      ),
    );

    final result = await WearOsChannel.sendRequest(path: WatchPaths.mealLog);

    expect(result.errorCode, WatchTransportErrorCode.platform);
    expect(result.shouldRetry, isTrue);
    expect(result.isPeerResponse, isFalse);
    expect(result.errorMessage, isNot(contains('secret detail')));
  });

  test(
    'analysis transport failures retain uncertain-delivery provenance',
    () async {
      messenger.setMockMethodCallHandler(platform, (_) async {
        return <Object?, Object?>{
          'success': false,
          'error': 'Response timed out',
          'errorCode': 'timeout',
          WearJsonProtocol.transportErrorKey: true,
        };
      });

      final result = await WearOsChannel.sendRequest(
        path: WatchPaths.detectText,
        data: {'textDescription': 'A bowl of poha'},
      );

      expect(result.errorCode, WatchTransportErrorCode.timeout);
      expect(result.deliveryUncertain, isTrue);
      expect(result.isValidatedPeerRejection, isFalse);
    },
  );
}
