# Phone integration tests

These tests exercise complete phone-app flows on an Android emulator or physical device.

```bash
cd app
flutter devices
flutter test integration_test/
```

Current flows cover onboarding and navigation. Run an individual file while iterating:

```bash
flutter test integration_test/onboarding_flow_test.dart
flutter test integration_test/navigation_flow_test.dart
```

External services are replaced where the test harness supports it, but these tests still use the full Flutter application lifecycle. Wear OS transport requires a paired-device test and is not covered here.
