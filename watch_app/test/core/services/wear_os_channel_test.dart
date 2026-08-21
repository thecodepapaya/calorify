import 'package:calorify_watch/core/services/legacy_wear_protocol.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const platform = MethodChannel('dev.thecodepapaya.calorify/wear_os');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  tearDown(() {
    messenger.setMockMethodCallHandler(platform, null);
  });

  test('an unmarked legacy response caches an old-phone fallback', () async {
    var typedCalls = 0;
    var legacyCalls = 0;
    messenger.setMockMethodCallHandler(platform, (call) async {
      switch (call.method) {
        case 'initialize':
          return true;
        case 'sendProtocolMessage':
          typedCalls++;
          throw PlatformException(code: 'PROTOCOL_NO_RESPONSE');
        case 'sendMessage':
          legacyCalls++;
          return <Object?, Object?>{'success': true, 'goal': 2100};
        default:
          throw MissingPluginException(call.method);
      }
    });

    expect(await WearOsChannel.initialize(), isTrue);
    final first = await _calorieGoalRequest();
    final second = await _calorieGoalRequest();

    expect(first.response?.calorieGoal.goal, 2100);
    expect(second.response?.calorieGoal.goal, 2100);
    expect(typedCalls, 1);
    expect(legacyCalls, 2);
  });

  test('a marked legacy response keeps probing the typed phone', () async {
    var typedCalls = 0;
    var legacyCalls = 0;
    messenger.setMockMethodCallHandler(platform, (call) async {
      switch (call.method) {
        case 'initialize':
          return true;
        case 'sendProtocolMessage':
          typedCalls++;
          if (typedCalls == 1) {
            throw PlatformException(code: 'PROTOCOL_NO_RESPONSE');
          }
          final request = WearProtocolCodec.decode(call.arguments as Uint8List);
          return WearProtocolCodec.encode(
            WearProtocolCodec.successResponse(
              request: request,
              payload: WearResponse(
                calorieGoal: CalorieGoalResponse(goal: 2200),
              ),
            ),
          );
        case 'sendMessage':
          legacyCalls++;
          return <Object?, Object?>{
            'success': true,
            'goal': 2100,
            LegacyWearProtocol.protocolVersionKey: wearProtocolVersion,
          };
        default:
          throw MissingPluginException(call.method);
      }
    });

    expect(await WearOsChannel.initialize(), isTrue);
    final first = await _calorieGoalRequest();
    final second = await _calorieGoalRequest();

    expect(first.response?.calorieGoal.goal, 2100);
    expect(second.response?.calorieGoal.goal, 2200);
    expect(typedCalls, 2);
    expect(legacyCalls, 1);
  });

  test(
    'confirmed v2 detect timeout does not replay analysis over legacy',
    () async {
      final typedOperations = <WearOperation>[];
      final legacyPaths = <String>[];
      messenger.setMockMethodCallHandler(platform, (call) async {
        switch (call.method) {
          case 'initialize':
            return true;
          case 'sendProtocolMessage':
            final request = WearProtocolCodec.decode(
              call.arguments as Uint8List,
            );
            typedOperations.add(request.operation);
            if (request.operation ==
                WearOperation.WEAR_OPERATION_CALORIE_GOAL) {
              return WearProtocolCodec.encode(
                WearProtocolCodec.successResponse(
                  request: request,
                  payload: WearResponse(
                    calorieGoal: CalorieGoalResponse(goal: 2200),
                  ),
                ),
              );
            }
            await Future<void>.delayed(const Duration(milliseconds: 10));
            throw PlatformException(code: 'PROTOCOL_NO_RESPONSE');
          case 'sendMessage':
            final arguments = Map<Object?, Object?>.from(call.arguments as Map);
            legacyPaths.add(arguments['path']! as String);
            return <Object?, Object?>{'success': false};
          default:
            throw MissingPluginException(call.method);
        }
      });

      expect(await WearOsChannel.initialize(), isTrue);
      final result = await _detectTextRequest();

      expect(result.isSuccess, isFalse);
      expect(result.shouldRetry, isTrue);
      expect(result.legacyFallbackEligible, isTrue);
      expect(result.deliveryUncertain, isTrue);
      expect(typedOperations, [
        WearOperation.WEAR_OPERATION_CALORIE_GOAL,
        WearOperation.WEAR_OPERATION_DETECT_TEXT,
      ]);
      expect(legacyPaths, isEmpty);
    },
  );

  test('old phone capability probe sends one legacy analysis', () async {
    var typedCalls = 0;
    final legacyPaths = <String>[];
    final detection = MealDetectionResponse(
      result: MealDetectionResult(
        mealIdentified: true,
        meal: Meal(name: 'Poha'),
      ),
    );
    messenger.setMockMethodCallHandler(platform, (call) async {
      switch (call.method) {
        case 'initialize':
          return true;
        case 'sendProtocolMessage':
          typedCalls++;
          throw PlatformException(code: 'PROTOCOL_NO_RESPONSE');
        case 'sendMessage':
          final arguments = Map<Object?, Object?>.from(call.arguments as Map);
          final path = arguments['path']! as String;
          legacyPaths.add(path);
          if (path == '/calorie_goal') {
            return <Object?, Object?>{'success': true, 'goal': 2100};
          }
          return <Object?, Object?>{
            'success': true,
            'response': detection.toProto3Json(),
          };
        default:
          throw MissingPluginException(call.method);
      }
    });

    expect(await WearOsChannel.initialize(), isTrue);
    final result = await _detectTextRequest();

    expect(result.response?.detectText.response.result.mealIdentified, isTrue);
    expect(typedCalls, 1);
    expect(legacyPaths, ['/calorie_goal', '/analysis/detect-text']);
  });

  test('mismatched typed response remains retryable and unconfirmed', () async {
    messenger.setMockMethodCallHandler(platform, (call) async {
      if (call.method != 'sendProtocolMessage') {
        throw MissingPluginException(call.method);
      }
      final request = WearProtocolCodec.decode(call.arguments as Uint8List);
      return WearProtocolCodec.encode(
        WearEnvelope(
          version: wearProtocolVersion,
          requestId: 'wrong-request-id',
          operation: request.operation,
          response: WearResponse(calorieGoal: CalorieGoalResponse(goal: 2200)),
        ),
      );
    });

    final result = await WearOsChannel.sendProtocolRequest(
      operation: WearOperation.WEAR_OPERATION_CALORIE_GOAL,
      request: WearRequest(calorieGoal: CalorieGoalRequest()),
    );

    expect(result.isProtocolResponse, isFalse);
    expect(result.shouldRetry, isTrue);
    expect(result.legacyFallbackEligible, isTrue);
    expect(result.deliveryUncertain, isTrue);
  });
}

Future<WatchTransportResult> _calorieGoalRequest() {
  return WearOsChannel.sendRequest(
    operation: WearOperation.WEAR_OPERATION_CALORIE_GOAL,
    request: WearRequest(calorieGoal: CalorieGoalRequest()),
  );
}

Future<WatchTransportResult> _detectTextRequest() {
  return WearOsChannel.sendRequest(
    operation: WearOperation.WEAR_OPERATION_DETECT_TEXT,
    request: WearRequest(
      detectText: DetectTextRequest(textDescription: 'A bowl of poha'),
    ),
  );
}
