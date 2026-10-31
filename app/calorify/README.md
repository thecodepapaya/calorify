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
- `test/` — unit and widget suites.

## Testing

```bash
flutter test test/unit test/widget --concurrency=1
```
