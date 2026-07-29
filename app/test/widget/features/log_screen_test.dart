import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/log/log_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:i18n/i18n.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    AuthService.setMockInstance(
      AuthService.test(
        auth: MockFirebaseAuth(),
        googleSignIn: MockGoogleSignIn(),
      ),
    );
    mockDatabaseInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockDatabaseInterface);

    when(() => mockDatabaseInterface.watchLastUsedFavoriteMeals()).thenAnswer((_) => Stream.value([]));
  });

  group('LogScreen Widget', () {
    testWidgets('renders all major components', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(const LogScreen()));
      await tester.pumpAndSettle();

      expect(find.byType(LogScreen), findsOneWidget);
      expect(find.text(t.meal.addMeal), findsOneWidget);
      expect(find.text(t.home.favoriteMeals.title), findsOneWidget);
      expect(find.text(t.home.mealSnap.openCamera), findsWidgets);
    });
  });
}
