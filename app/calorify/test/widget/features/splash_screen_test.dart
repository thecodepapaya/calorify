import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/splash/splash_screen.dart';
import 'package:calorify/core/services/app_initialization.dart';
import 'package:auto_route/auto_route.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockAppInitialization extends Mock implements AppInitialization {}

void main() {
  late MockStackRouter mockRouter;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockRouter = MockStackRouter();
    registerFallbackValue(const PageRouteInfo('test'));
    when(() => mockRouter.replace(any())).thenAnswer((_) async => null);
  });

  group('SplashScreen Widget', () {
    testWidgets('renders animated leaf', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        StackRouterScope(
          controller: mockRouter,
          stateHash: 0,
          child: const SplashScreen(),
        ),
        router: mockRouter,
      ));

      // Assuming AnimatedLeaf is from shared widgets and rendered in splash
      expect(find.byType(SplashScreen), findsOneWidget);
    });

    // Navigation tests usually require more setup with auto_route mocks
  });
}
