# Calorify Phone App

The primary Flutter mobile application for Android. Features AI-assisted meal logging via text or photo, offline-first storage with Drift/SQLite, Health Connect integration, and synchronization with the Wear OS companion.

## Setup & Running

```bash
cd app/calorify
flutter pub get
flutter run
```

## Structure

- `lib/core/` — core services (database, Wear OS bridge, authentication, Health Connect), repositories, and state management.
- `lib/features/` — UI screens and workflows (dashboard, food capture and analysis, meal history, profile, and settings).
- `test/` — unit, widget, and golden visual regression suites.
- `integration_test/` — full device/emulator end-to-end flows.

## Testing

### Unit and Widget Tests

Run tests and enforce the 25% non-regression coverage floor:

```bash
flutter test test/unit test/widget --concurrency=1
flutter test --coverage test/unit test/widget --concurrency=1
python3 ../../scripts/check_lcov_coverage.py coverage/lcov.info --minimum 25
```

### Golden Tests

Golden baselines are tracked for English, German (long Latin text), Arabic (RTL), and Traditional Chinese (CJK):

```bash
flutter test test/golden --concurrency=1
flutter test --update-goldens test/golden --concurrency=1
```

Review changed images before committing baseline updates.

### Integration Tests

Exercise complete application flows (onboarding, navigation) on a connected device or emulator:

```bash
flutter devices
flutter test integration_test/
# Or run an individual flow:
flutter test integration_test/onboarding_flow_test.dart
```
