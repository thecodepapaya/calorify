# Phone test suite

- `unit/` — services, utilities, models, and business logic.
- `widget/` — component and screen behavior.
- `golden/` — visual regression scenarios.
- `helpers/` and `setup/` — reusable fixtures and test configuration.

```bash
cd app
flutter test test/unit test/widget --concurrency=1
flutter test --coverage test/unit test/widget --concurrency=1
python3 ../scripts/check_lcov_coverage.py coverage/lcov.info --minimum 25
flutter test test/golden --concurrency=1
```

Golden baselines are tracked for four representative locales: English, German
(long Latin text), Arabic (RTL), and Traditional Chinese (CJK). Translation
catalog structure and source-copy checks still run across every supported
locale. Generate candidate images with:

```bash
flutter test --update-goldens test/golden --concurrency=1
```

Review every changed image before retaining a baseline. Device/emulator flows live in `integration_test/`.

The 25% line threshold is a reviewed non-regression floor for the broad app
suite, not a claim that every source file is adequately tested. New and changed
business-critical flows should have focused behavioral tests; generated Dart
files are excluded from the coverage calculation.
