import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/app_version.dart';
import 'package:calorify/features/profile/settings_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

class MockOnboardingService extends Mock implements OnboardingService {}

void main() {
  // late MockOnboardingService mockOnboardingService;

  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();

    PackageInfo.setMockInitialValues(
      appName: 'Calorify',
      packageName: 'com.example.calorify',
      version: '1.0.0',
      buildNumber: '1',
      buildSignature: 'buildSignature',
    );
    // Avoid calling Shorebird in tests (unavailable in test environment).
    getAppVersionInfoTestOverride = Future.value(const AppVersionInfo(
      version: '1.0.0',
      buildNumber: '1',
      patchNumber: null,
    ));
  });

  setUp(() {
    // mockOnboardingService = MockOnboardingService();
    // Assuming OnboardingService.instance is how it's accessed
    // We need a way to mock the singleton or the method it calls.
    // Looking at settings_screen.dart: final profile = await OnboardingService.instance.getProfileData();
    // I already have setupAllTests which might handle singletons if I update it.
  });

  group('SettingsScreen Golden Tests', () {
    testGoldens('Initial view', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            const SettingsScreen(),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'settings_screen_initial_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
