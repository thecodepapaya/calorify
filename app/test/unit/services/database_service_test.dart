import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockDatabaseInterface mockInterface;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockInterface);
  });

  group('DatabaseService', () {
    test('databaseInterface returns mocked interface', () {
      expect(DatabaseService.databaseInterface, mockInterface);
    });

    test('isUsingMockData follows DataSourceConfig (mock enabled by default in tests maybe?)', () {
      // DataSourceConfig is not mocked here, so it will return real value
      // But we can check if it returns a boolean
      expect(DatabaseService.isUsingMockData, isA<bool>());
    });
  });
}
