import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/features/log/log_screen.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockDatabaseInterface);
    when(() => mockDatabaseInterface.watchLastUsedFavoriteMeals()).thenAnswer((_) => Stream.value([]));
  });

  group('LogScreen Golden Tests', () {
    testGoldens('Initial view', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            const LogScreen(),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'log_screen_initial_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
