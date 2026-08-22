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
  });
}
