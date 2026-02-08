import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/features/splash/splash_screen.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auto_route/auto_route.dart';
import '../helpers/golden_test_helpers.dart';
import '../helpers/test_helpers.dart';
import '../setup/all_tests.dart';

void main() {
  late MockStackRouter mockRouter;

  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  setUp(() {
    mockRouter = MockStackRouter();
    stubStackRouter(mockRouter);
    when(() => mockRouter.replace(any())).thenAnswer((_) async => null);
  });

  group('SplashScreen Golden Tests', () {
    testGoldens('renders correctly', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        await tester.pumpWidgetBuilder(
          StackRouterScope(
            controller: mockRouter,
            stateHash: 0,
            child: const SplashScreen(),
          ),
          wrapper: goldenWrapper(router: mockRouter, locale: locale),
        );

        await screenMatchesGolden(tester, 'splash_screen_${locale.name}');
      }
    });
  });
}
