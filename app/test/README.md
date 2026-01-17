# Calorify Testing Suite

This directory contains the comprehensive testing suite for the Calorify app. The tests are categorized into Unit, Widget, and Golden tests. Integration tests are located in the top-level `integration_test/` directory.

## 🚀 Running Tests

### Run Everything (Except Integration Tests)
To run all unit, widget, and golden tests in the `test/` directory:
```bash
flutter test
```

### 1. Unit Tests
Located in `test/unit/`. These test business logic, services, and utilities in isolation.
```bash
flutter test test/unit/
```

### 2. Widget Tests
Located in `test/widget/`. These test individual UI components and screens.
```bash
flutter test test/widget/
```

### 3. Golden Tests
Located in `test/golden/`. These are visual regression tests that compare the UI against reference images.

**Run Golden Tests:**
```bash
flutter test test/golden/
```

**Generate or Update Goldens:**
If you change the UI intentionally, run this to update the reference images:
```bash
flutter test --update-goldens test/golden/
```

### 4. Integration Tests
Located in `integration_test/`. These test full user flows and require a running emulator or physical device.
```bash
flutter test integration_test/
```

---

## 🛠 Test Structure

- `test/unit/`: Logic, Services, Utilities, Models.
- `test/widget/`: Component and Screen rendering/interaction.
- `test/golden/`: Visual UI consistency across devices.
- `test/helpers/`: Mock factories and test utilities.
- `test/setup/`: Global test configuration.

## 🧪 Best Practices used in this project

1.  **Mocks**: We use `mocktail` for null-safe mocking.
2.  **Goldens**: We use `golden_toolkit` for multi-device visual testing.
3.  **Dependency Injection**: Services have been updated with `visibleForTesting` constructors to allow easy mock injection.
4.  **Linter Clean**: All tests should pass `flutter analyze`.
