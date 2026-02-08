import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/auth/login_screen.dart';
import 'package:calorify/core/services/auth_service.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

class MockAuthService extends Mock implements AuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  setUp(() {
    mockAuthService = MockAuthService();
    AuthService.setMockInstance(mockAuthService);
  });

  group('LoginScreen Golden Tests', () {
    testGoldens('renders correctly', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            const LoginScreen(),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'login_screen_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
