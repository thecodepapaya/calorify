# Phone test suite

- `unit/` — services, utilities, models, and business logic.
- `widget/` — component and screen behavior.
- `golden/` — visual regression scenarios.
- `helpers/` and `setup/` — reusable fixtures and test configuration.

```bash
cd app
flutter test test/unit test/widget --concurrency=1
flutter test test/golden --concurrency=1
```

Golden baselines are intentionally ignored until a reviewed baseline set is approved. Generate candidate images with:

```bash
flutter test --update-goldens test/golden --concurrency=1
```

Review every changed image before retaining a baseline. Device/emulator flows live in `integration_test/`.
