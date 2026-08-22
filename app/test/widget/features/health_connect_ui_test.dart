import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/services/health_connect_sync_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/onboarding/health_connect_screen.dart';
import 'package:calorify/features/profile/health_connect_permissions_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockHealthService extends Mock implements HealthService {}

class MockHealthConnectSyncService extends Mock
    implements HealthConnectSyncService {}

void main() {
  late MockHealthService healthService;
  late MockHealthConnectSyncService syncService;
  var sdkStatus = HealthConnectSdkStatus.sdkAvailable;
  var canReadCalories = false;
  var canWriteNutrition = false;

  setUpAll(setupAllTests);

  setUp(() {
    healthService = MockHealthService();
    syncService = MockHealthConnectSyncService();
    sdkStatus = HealthConnectSdkStatus.sdkAvailable;
    canReadCalories = false;
    canWriteNutrition = false;

    when(() => healthService.status).thenAnswer((_) => sdkStatus);
    when(
      () => healthService.initializationState,
    ).thenReturn(HealthServiceInitializationState.ready);
    when(() => healthService.lastError).thenReturn(null);
    when(
      () => healthService.canReadTotalCalories,
    ).thenAnswer((_) => canReadCalories);
    when(
      () => healthService.canWriteNutrition,
    ).thenAnswer((_) => canWriteNutrition);
    when(
      () => healthService.hasAnyHealthPermission,
    ).thenAnswer((_) => canReadCalories || canWriteNutrition);
    when(
      () => healthService.hasAllHealthPermissions,
    ).thenAnswer((_) => canReadCalories && canWriteNutrition);
    when(
      () => healthService.refreshAuthorizationStatus(),
    ).thenAnswer((_) async => canReadCalories || canWriteNutrition);
    when(
      () => syncService.syncPending(),
    ).thenAnswer((_) async => const HealthConnectSyncResult.none());
    when(() => syncService.reconcileAuthorization()).thenAnswer((_) async {});
  });

  Widget wrap(Widget child) => wrapWithProviders(
    child,
    withFlushbar: true,
    overrides: [
      healthServiceProvider.overrideWithValue(healthService),
      healthConnectSyncServiceProvider.overrideWithValue(syncService),
    ],
  );

  testWidgets('settings distinguishes an install or update requirement', (
    tester,
  ) async {
    sdkStatus = HealthConnectSdkStatus.sdkUnavailableProviderUpdateRequired;

    await tester.pumpWidget(wrap(const HealthConnectPermissionsScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Health Connect needs attention'), findsOneWidget);
    expect(find.text('Install or update'), findsOneWidget);
    expect(find.text('Read Total Calories Burned'), findsNothing);
  });

  testWidgets('settings presents each granted capability independently', (
    tester,
  ) async {
    canReadCalories = true;

    await tester.pumpWidget(wrap(const HealthConnectPermissionsScreen()));
    await tester.pumpAndSettle();

    expect(
      find.text('Some Health Connect features are enabled.'),
      findsOneWidget,
    );
    expect(find.text('Read Total Calories Burned'), findsOneWidget);
    expect(find.text('Write Nutrition Data'), findsOneWidget);
    expect(find.text('Read Nutrition Data'), findsNothing);
    expect(find.text('Request Permissions'), findsOneWidget);
    expect(find.text('Open Health Connect Settings'), findsOneWidget);
    expect(find.text('Disconnect Health Connect'), findsOneWidget);
  });

  testWidgets('onboarding exposes partial access and manage access', (
    tester,
  ) async {
    canWriteNutrition = true;

    await tester.pumpWidget(wrap(HealthConnectScreen(onContinue: () {})));
    await tester.pumpAndSettle();

    expect(
      find.text('Some Health Connect features are enabled.'),
      findsOneWidget,
    );
    expect(find.text('Manage access'), findsOneWidget);
    expect(find.text('Setup Health Connect'), findsOneWidget);
    verify(() => syncService.syncPending()).called(1);
  });

  testWidgets('settings revokes access only after confirmation', (
    tester,
  ) async {
    canReadCalories = true;
    when(() => syncService.disconnect()).thenAnswer((_) async => true);

    await tester.pumpWidget(wrap(const HealthConnectPermissionsScreen()));
    await tester.pumpAndSettle();
    final disconnect = find.text('Disconnect Health Connect');
    await tester.ensureVisible(disconnect);
    await tester.pumpAndSettle();
    await tester.tap(disconnect);
    await tester.pumpAndSettle();

    verifyNever(() => syncService.disconnect());
    await tester.tap(find.text('Disconnect'));
    await tester.pumpAndSettle();

    verify(() => syncService.disconnect()).called(1);
    expect(find.text('Disconnect Health Connect'), findsNothing);
  });

  testWidgets('settings deletes known synced meals only after confirmation', (
    tester,
  ) async {
    canReadCalories = true;
    canWriteNutrition = true;
    when(() => syncService.deleteSyncedMeals()).thenAnswer((_) async => 2);

    await tester.pumpWidget(wrap(const HealthConnectPermissionsScreen()));
    await tester.pumpAndSettle();
    final deleteSyncedMeals = find.text(
      'Delete Calorify meals from Health Connect',
    );
    await tester.ensureVisible(deleteSyncedMeals);
    await tester.pumpAndSettle();
    await tester.tap(deleteSyncedMeals);
    await tester.pumpAndSettle();

    verifyNever(() => syncService.deleteSyncedMeals());
    await tester.tap(find.text('Delete synced meals'));
    await tester.pump();

    verify(() => syncService.deleteSyncedMeals()).called(1);
  });

  testWidgets(
    'onboarding reports unsupported devices without permission copy',
    (tester) async {
      sdkStatus = HealthConnectSdkStatus.sdkUnavailable;

      await tester.pumpWidget(wrap(HealthConnectScreen(onContinue: () {})));
      await tester.pumpAndSettle();

      expect(
        find.text('Health Connect is not supported on this device.'),
        findsOneWidget,
      );
      expect(find.text('Retry'), findsOneWidget);
      expect(find.textContaining('Permission denied'), findsNothing);
    },
  );
}
