# Local inference phases 1–3 release candidate

Date: 2026-08-22

Status: Engineering complete, default off, not yet released

Scope boundary: Phase 3 only; Phase 4–7 work is excluded

## Outcome

Calorify now has a release-candidate path for optional on-device text meal
interpretation on eligible Android phones. Gemini Nano may propose ingredient
identity and portions, but it cannot provide authoritative calories or macros.
After strict validation and user review, the backend still owns USDA grounding,
deterministic calculation, clarification, presentation, and persistence.

The existing text cloud path remains the default. Image analysis is unchanged.
There is no local USDA pack, nutrition cache, local macro calculation, private
fallback mode, offline draft, or local image inference in this candidate.

## Implemented phases

### Phase 1 — workflow foundation

- Added versioned proposal, attempt, fallback, receipt, and provenance protobuf
  contracts and regenerated Dart, TypeScript, and Kotlin bindings.
- Kept nutrient fields out of `IngredientProposalV1` and made the backend reject
  unknown or nutrition-like proposal fields.
- Added replay-safe attempt/handoff metadata and preserved the original
  execution receipt across retries.
- Added complete interpretation, nutrition, calculation, and per-field
  provenance to settled results.
- Added an authenticated, additive capability policy with all local behavior
  disabled by default.

### Phase 2 — local text candidate

- Added the Android ML Kit Prompt API adapter, typed structured-output schema,
  Flutter method-channel interface, readiness/download/warm-up support,
  foreground restriction, timeout, cancellation, and stable failure mapping.
- Added strict client-side structural and semantic validation, including exact
  request/response identity and a recursive ban on nutrition output.
- Added developer tools for capability checks, model setup, warm-up, a valid
  bridge sample, local/cloud comparison, and every supported simulated failure.
- Integrated `genai-prompt:1.0.0-beta4`, `genai-schema:1.0.0-alpha1`, and the
  matching KSP schema compiler.

### Phase 3 — hybrid text beta

- Added a capability- and rollout-gated setting that defaults off, remains
  disabled with a reason on unsupported devices, and preserves the user's
  preference during temporary failures.
- Added a versioned acknowledgement sheet covering quality, battery, setup, and
  automatic cloud fallback tradeoffs.
- Added routing from eligible text input to Nano, strict proposal review/edit,
  backend proposal settlement, and automatic whole-meal cloud fallback.
- Added a result disclosure that distinguishes local/cloud/user interpretation,
  remote nutrition grounding, server calculation, and actual fallback use.
- Added a backend modality kill switch. All Phase 4+ policy capabilities remain
  false.
- Kept Wear OS text analysis on its current authenticated backend path. A watch
  does not yet have the proposal-review handoff required to safely accept the
  phone's local proposal.

## Runtime path and trust boundary

```text
Text input
  -> saved preference (default off)
  -> backend rollout policy + device capability
       -> ineligible/failure: existing cloud text executor
       -> eligible: Gemini Nano structured IngredientProposalV1
            -> strict validator
            -> user review/edit
            -> POST /api/v2/food/analyze-proposal
            -> server USDA grounding + deterministic calculation
            -> normal clarification/result/logging flow
```

Neither the local model nor the reviewed proposal can write calories, macros,
USDA identifiers, or a logged meal directly. The backend rejects malformed
handoffs and remains the nutrition and persistence authority.

## Safe defaults and rollback

Backend defaults:

```text
LOCAL_INFERENCE_POLICY_VERSION=local-inference-disabled-v1
LOCAL_INFERENCE_TEXT_ENABLED=false
```

The user setting also defaults off. To roll back, set
`LOCAL_INFERENCE_TEXT_ENABLED=false` and refresh/restart the backend instances.
Enabled preferences remain stored, but every request follows the cloud path and
new enablement is unavailable. No destructive data migration is required, and
historical provenance remains readable.

For an initial beta, distribute only to approved devices/accounts through the
internal or limited app track, then enable the global text policy. The current
backend switch is intentionally simple and global; cohort selection belongs to
the limited distribution/device eligibility process until real cohort evidence
justifies a more elaborate control plane.

## Developer one-off checks

In a debug build, open **Settings → Debug Options**, search for `local
inference`, then open **Gemini Nano one-off tests**.

Available checks:

- refresh capability and model status;
- request model download and warm-up;
- run a real local text proposal;
- validate a known-good sample across the Flutter/Kotlin bridge;
- compare local and cloud decomposition timing/output;
- simulate unsupported, model-not-ready, busy, quota, background, thermal,
  model-update, timeout, cancellation, and malformed-output failures.

The simulated entries work on an emulator even though an emulator cannot host
Gemini Nano.

## Verification record

Completed on 2026-08-22:

- Backend: 453/453 tests passed; TypeScript type-check passed.
- Flutter: 213/213 unit and widget tests passed; `flutter analyze` reported no
  issues.
- Relevant visual tests: Settings and Debug Options goldens passed, including
  the updated Settings layouts for English, Arabic, German, and Traditional
  Chinese phone/iPhone viewports.
- Android: dev debug APK assembled and production release Kotlin compiled; the
  combined Gradle run completed 855 tasks successfully.
- Contracts: protobuf generation completed for Dart, TypeScript, and Kotlin.
- Localization: 531 English keys audited across 34 generated locales.
- Emulator (`sdk_gphone16k_arm64`, API 37): APK installed and cold-launched;
  Settings showed the disabled unsupported state; capability detection returned
  unavailable; the known-good debug proposal crossed and validated through the
  platform bridge; real local invocation returned `unsupported_device`; and the
  malformed simulation returned `invalid_output` with the matching fallback.

The repository-wide golden directory is not fully green because unrelated
checked-in baselines are stale. One confirmed example is the Profile golden:
its test fixture supplies a populated profile while the baseline expects “No
profile data found.” The Phase 1–3 screens pass their focused goldens, and no
unrelated baseline was updated as part of this work.

## Required attention before beta release

1. Confirm that Calorify's audience and use comply with the current ML Kit GenAI
   terms, and approve the user disclosure.
2. Test supported physical Gemini Nano devices. Record cold/warm p50/p95,
   readiness/download behavior, quota, thermal, cancellation, and background
   results for each proposed cohort.
3. Run the committed text holdout repeatedly against local and cloud executors;
   record structural validity, identity severity, portion quality, correction
   rate, completion, and fallback rate.
4. Deploy backend/app candidates with the flag off, verify two-generation
   compatibility, then rehearse the live kill switch before enabling users.
5. Add the operational dashboard/query and support ownership for receipt-based
   completion, origin, fallback, correction, latency, and crash metrics without
   raw meal text.
6. Publish through an internal track before a limited opt-in production cohort.
7. Resolve the unrelated golden baseline debt separately.

Phase 4 must remain paused until these Phase 3 release gates and formal
completion records are accepted.
