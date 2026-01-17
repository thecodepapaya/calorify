import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/log/log_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockDatabaseInterface);

    when(() => mockDatabaseInterface.watchLastUsedFavoriteMeals()).thenAnswer((_) => Stream.value([]));
  });

  group('LogScreen Widget', () {
    testWidgets('renders all major components', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(const LogScreen()));
      await tester.pumpAndSettle();

      expect(find.byType(LogScreen), findsOneWidget);
      expect(find.textContaining('Quick Add'), findsWidgets); // From DescribeMeal
      expect(find.textContaining('Favorite Meals'), findsWidgets); // From FavoriteMeals
      expect(find.textContaining('Snap'), findsWidgets); // From MealSnap
    });
  });
}
