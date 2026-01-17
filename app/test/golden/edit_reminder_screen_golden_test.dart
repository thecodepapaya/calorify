import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/features/profile/edit_reminder_screen.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

void main() {
  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  group('EditReminderScreen Golden Tests', () {
    testGoldens('Initial view', (WidgetTester tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          name: 'Edit Reminder',
          widget: const EditReminderScreen(),
        );

      await tester.pumpDeviceBuilder(builder, wrapper: goldenWrapper());
      await screenMatchesGolden(tester, 'edit_reminder_screen');
    });
  });
}
