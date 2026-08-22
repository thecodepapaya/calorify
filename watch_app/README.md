# Calorify for Wear OS

The watch app is a compact companion to the Calorify phone app. Its UI uses the shared Calorify color, typography, and component language while adapting navigation, touch targets, density, and feedback to a round watch display.

## Features

- Voice-first meal descriptions with partial transcription, retry guidance, and explicit confirmation.
- Nutrition analysis proxied through the paired phone.
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

The watch does not store a backend authentication session or initialize Firebase. The phone and watch Android applications must still use compatible application identities and signing certificates for the Wear OS Data Layer.

Microphone permission is required for voice logging. Use a paired phone/watch emulator set or physical devices when testing synchronization; ordinary widget tests do not exercise Google Play Services transport.

## Sync design

The native Android layer transports correlated JSON requests between devices. Flutter services handle dashboard refresh, meal logging/deletion, favorites, user profile, and calorie goals. Cached state keeps the watch usable while disconnected, and pending mutations are replayed after reconnection.

The phone-side implementation lives in `app/lib/core/services/wear_os_service.dart`; watch transport and queue logic live under `watch_app/lib/core/services/`.
