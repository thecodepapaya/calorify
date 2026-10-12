# Calorify for Wear OS

The Wear OS companion app for Calorify. Designed for round watch displays with AMOLED-friendly dark styling, readable typography, and 44dp touch targets.

## Features

- **Voice meal logging**: Partial transcription, speech confirmation, and phone-proxied analysis.
- **Glanceable stats**: Daily calories, goal progress, macro overview, and recent meals.
- **Offline resilient**: Local SQLite cache and queued mutations (logs/deletions) that replay upon reconnect.
- **Wear OS Data Layer**: Correlated JSON messaging with connection and sync state indicators.

## Setup & Running

```bash
cd app/watch
flutter pub get
flutter analyze
flutter test
flutter run
```

> **Note**: The watch does not run Firebase or backend sessions; it proxies requests through the paired phone. Phone and watch builds must share compatible application IDs and signing certificates.

Microphone permission is required for voice logging. Use a paired phone/watch emulator set or physical devices to verify Google Play Services Data Layer communication.

## Architecture

- **Watch Services** (`lib/core/services/`): Local SQLite cache, mutation outbox queue, speech recognition, and Data Layer transport.
- **Phone Bridge** (`app/calorify/lib/core/services/wear_os_service.dart`): Responds to watch requests, serves dashboard snapshots, and executes meal mutations.

## Reliability Roadmap

- Replace activity-bound phone listener with a background receiver service.
- Explicit peer verification via `CapabilityClient` handshake.
- Fine-grained transport error recovery (distinguishing disconnects, auth, and analysis errors).
- Automated paired-device integration tests for reconnect and replay queues.
