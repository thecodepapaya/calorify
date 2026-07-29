# Calorify for Wear OS

The watch app is a compact companion to the Calorify phone app. Its UI uses the shared Calorify color, typography, and component language while adapting navigation, touch targets, density, and feedback to a round watch display.

## Features

- Voice-first meal descriptions with partial transcription, retry guidance, and explicit confirmation.
- Authenticated nutrition analysis using the phone session when available and the backend fallback path when needed.
- Daily calories, goals, recent meals, favorites, and history.
- Offline meal and deletion queues that retry when the paired phone reconnects.
- Wear OS Data Layer synchronization with visible connection and sync states.

## Setup

```bash
cd watch_app
flutter pub get
flutter analyze
flutter test
flutter run
```

Configure Firebase with `flutterfire configure` for your own project. The phone and watch Android applications must use compatible application identities and signing certificates for the Wear OS Data Layer.

Microphone permission is required for voice logging. Use a paired phone/watch emulator set or physical devices when testing synchronization; ordinary widget tests do not exercise Google Play Services transport.

## Sync design

The native Android layer transports messages between devices. Flutter services expose typed operations for dashboard refresh, meal logging/deletion, favorites, user profile, calorie goal, and authentication-session exchange. Cached state keeps the watch usable while disconnected, and pending mutations are replayed after reconnection.

The phone-side implementation lives in `app/lib/core/services/wear_os_service.dart`; watch transport and queue logic live under `watch_app/lib/core/services/`.

## Release

`.github/workflows/release-watch-app.yml` builds and uploads the watch bundle. Android signing files and Play credentials are reconstructed from GitHub Actions secrets during the job and must never be committed.
