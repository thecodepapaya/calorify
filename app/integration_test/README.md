# Calorify Integration Tests

This directory contains integration tests for the Calorify app. These tests validate complete user flows by running the app on a real device or emulator and interacting with it as a user would.

## 🚀 Running Integration Tests

Integration tests require a running Android emulator, iOS simulator, or a physical device.

### Run All Integration Tests
To run all tests in this directory:
```bash
flutter test integration_test/
```

### Run a Specific Flow
You can run individual test files to verify specific features:

**Onboarding Flow:**
```bash
flutter test integration_test/onboarding_flow_test.dart
```

**Meal Logging Flow:**
```bash
flutter test integration_test/meal_logging_flow_test.dart
```

**Navigation Flow:**
```bash
flutter test integration_test/navigation_flow_test.dart
```

---

## 🛠 Setup & Requirements

1.  **Device**: Ensure a device is connected (`flutter devices`).
2.  **Environment**: Tests are configured to use mocks for external services (Firebase, Health Connect) to ensure reliability and speed, but they run within the full Flutter widget tree.
3.  **Timing**: Integration tests can take longer than unit/widget tests as they involve app startup and navigation animations. We use `tester.pumpAndSettle()` to handle these transitions.

## 🧪 Current Test Coverage

-   **Onboarding**: Validates the multi-step profile creation and goal setting.
-   **Meal Logging**: Verifies the AI analysis and database persistence of new meals.
-   **Navigation**: Ensures tab switching and screen transitions work correctly.
