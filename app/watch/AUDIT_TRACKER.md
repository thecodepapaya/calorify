# Wear OS audit tracker

Audit date: 2026-08-23

This file tracks the findings from the initial Wear OS audit. Functional/native
transport work is intentionally separated from the approved UI/UX polish so
major communication architecture changes can be discussed first.

## UI/UX — approved

- [x] Keep an AMOLED-first dark theme with a true-black canvas and near-black
  elevated surfaces.
- [x] Replace 7–10sp ad-hoc typography with reusable watch type tokens and a
  readable 10sp minimum for supporting copy.
- [x] Make first-run home and list loading states fit a 192dp display.
- [x] Rename the misleading History entry to Today's meals until multi-day
  history exists.
- [x] Give voice logging and meal results the same reusable page header/back
  behavior as other secondary screens.
- [x] Replace undersized raw gesture targets with the 44dp watch controls.
- [x] Remove the custom scale/fade carousel in favor of predictable lists.
- [x] Route watch copy and semantics through the shared i18n package.
- [x] Route watch icons through shared `AppIcons`.
- [x] Expand tests to cover full screens, loading states, AMOLED surfaces,
  typography, and 192dp layouts.

## Communication and voice reliability — pending architecture approval

- [ ] Give phone dev/staging and watch builds matching application IDs and
  signing identities.
- [ ] Replace the activity-bound phone listener with a receiver architecture
  that can handle requests when the phone UI is not running.
- [ ] Discover the Calorify peer through `CapabilityClient` or an equivalent
  handshake instead of treating any paired node as the phone app.
- [ ] Add paired-device tests for request/response correlation, background
  delivery, timeouts, and reconnects.
- [ ] Add a bounded speech-initialization timeout and an actionable
  permanently-denied microphone state.
- [ ] Preserve transport error types through voice analysis so disconnection,
  authentication, and analysis failures produce distinct recovery guidance.
- [ ] Validate speech recognition on physical watches and supported Wear OS
  emulator images.

## Verification baseline

- [x] Watch `flutter analyze` passed before implementation.
- [x] 47 watch unit/widget tests passed before implementation.
- [x] 5 phone Wear-service tests passed before implementation.
- [x] Watch, i18n, widgets, and specs analyzers pass after implementation.
- [x] 50 watch unit/widget tests pass after implementation.
- [ ] Locale-specific watch translations generated. The official translation
  workflow was run, but OpenRouter rejected all locale requests with HTTP 402
  (in-flight credit exhausted). Generated locale APIs currently inherit the
  validated English watch fallback; no locale JSON was hand-edited.
- [ ] Native Android build verified; blocked locally by the missing Java
  runtime.
