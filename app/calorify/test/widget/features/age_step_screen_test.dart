import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/onboarding/steps/age_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class _MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  setUpAll(setupAllTests);

  late _MockDatabaseInterface database;

  setUp(() {
    database = _MockDatabaseInterface();
    DatabaseService.setMockInterface(database);
    when(() => database.getHealthData()).thenAnswer((_) async => null);
  });

  testWidgets('requires an explicit birthday selection before continuing', (
    tester,
  ) async {
    await tester.pumpWidget(
      wrapWithProviders(AgeStepScreen(onContinue: () {})),
    );
    await tester.pump();

    expect(find.text('MM/DD/YYYY'), findsOneWidget);
    expect(find.textContaining('years'), findsNothing);
    expect(
      tester.widget<FilledButton>(find.byType(FilledButton)).onPressed,
      isNull,
    );
  });
}
