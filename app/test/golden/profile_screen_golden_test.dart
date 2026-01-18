import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/profile/profile_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
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

    when(() => mockDatabaseInterface.getUserProfile()).thenAnswer(
      (_) async => UserProfile(
        height: 175,
        weight: 70,
        gender: Gender.MALE,
        activityLevel: ActivityLevel.MODERATELY_ACTIVE,
        weightGoal: WeightGoal.MAINTAIN_WEIGHT,
      ),
    );
  });

  group('ProfileScreen Golden Tests', () {
    testGoldens('Profile view', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const ProfileScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'profile_screen_${device.name}');
      }
    });
  });
}
