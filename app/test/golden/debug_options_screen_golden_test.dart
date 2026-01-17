import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/features/profile/debug_options_screen.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

void main() {
  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  group('DebugOptionsScreen Golden Tests', () {
    testGoldens('Initial view', (WidgetTester tester) async {
      final builder =
          DeviceBuilder()..addScenario(
            name: 'Debug Options',
            widget: const DebugOptionsScreen(),
          );

      await tester.pumpDeviceBuilder(builder, wrapper: goldenWrapper());
      await screenMatchesGolden(tester, 'debug_options_screen');
    });
  });
}
