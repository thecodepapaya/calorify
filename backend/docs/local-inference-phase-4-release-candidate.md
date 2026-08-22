# Local inference Phase 4 release candidate

Date: 2026-08-22

Status: Engineering complete, default off, production rollout gated

## Outcome

Phase 4 adds optional local USDA grounding and deterministic nutrition
calculation to the Phase 3 Gemini Nano text pipeline. A covered meal can now
complete without a nutrition backend round trip. If any ingredient is not
covered, the app preserves the proposal and analysis identity, falls back to
the existing cloud settlement path, and may cache only authoritative USDA rows
returned by the structured resolver.

Phase 5 is not included. There are no Ask/Never egress modes, no strict private
mode, and no durable offline partial-meal drafts in this release candidate.

## Delivered architecture

- A reproducible, reviewed 32-concept USDA starter-pack selection and build
  command with a recorded 0.80 coverage target and dataset version.
- An Ed25519 detached signature covering deterministic manifest metadata and
  the exact pack bytes. Phase 4 intentionally has no separate content-hash
  field or hash-verification step.
- Atomic, versioned app installation with read-back verification, previous
  known-good rollback, superseded-pack rejection, and generation pruning.
- A Drift cache bounded to 2,000 rows and 20 MB with least-recently-used
  eviction, dataset compatibility, explicit clearing, and USDA-only writes.
- A strict structured backend resolver for one to twenty unique lookups, with
  explicit unresolved IDs and no promotion of fuzzy query text to cache
  authority.
- Exact reviewed-alias matching over deterministic constants, the downloaded
  pack, and compatible cached rows; ambiguous or missing matches fall back.
- A deterministic local calculator with shared backend/app golden vectors for
  scaling, aggregation, rounding, confidence, and variance.
- Immutable nutrition snapshots on saved meals so pack updates and cache
  clearing cannot rewrite history.
- A separate default-off nutrition-data setting, install-before-enable flow,
  version/size/cache status, update and clear actions, and per-ingredient
  provenance in the meal breakdown.
- Developer tools for pack verification, known and missing lookups, structured
  remote cache fill, calculator output, invalid-signature failure, and cache
  clearing.

## Safety boundaries

- Gemini Nano can propose ingredients and portions but cannot author nutrition
  facts.
- Only USDA rows from the reviewed pack or structured backend resolver may
  enter the authoritative local stores.
- Local completion requires every ingredient to resolve against a compatible
  dataset. Missing, ambiguous, stale, or incompatible data triggers the Phase 3
  whole-meal fallback rather than a silent zero or model estimate.
- Pack download and local nutrition are independently gated by backend policy,
  trusted app key configuration, runtime capability, and a saved user opt-in.
- Backend rollout defaults off and fails closed when object-storage manifest
  configuration is absent or invalid.

## Verification record

The committed suites cover pack signing and installation, corrupt-signature
rejection, rollback and supersession, cache limits and migration, exact and
ambiguous matching, structured resolver behavior, dataset mismatch, calculator
parity, local clarification, fallback identity, snapshot retention, settings,
provenance, and developer diagnostics. Final command results are recorded in
the implementation handoff for this commit.

## Production gates

Engineering completion does not enable a production cohort. Release owners
must still:

1. Generate and protect the production Ed25519 private key, configure the
   corresponding app public key/key ID, and document rotation ownership.
2. Build the signed reviewed pack from the intended USDA source, inspect the
   coverage report, and upload the pack plus manifest to existing Oracle object
   storage.
3. Configure the backend manifest object and rollout flag for an internal
   cohort; keep the global and Phase 3 rollback controls available.
4. Validate download, update, interrupted-install recovery, local completion,
   remote miss fallback, and clear behavior on supported physical Gemini Nano
   devices. Emulator results do not establish AICore eligibility or quota
   behavior.
5. Review pack coverage, cache hit/eviction rate, fallback rate, local/backend
   parity, latency, storage, crash, and meal-completion metrics before widening
   rollout.
6. Replace accepted English fallback copy for the new Phase 4 strings when
   translated copy is available; this does not require application code
   changes.

## Rollback

Disable the local-nutrition backend capability to stop new enablement and route
grounding/calculation through Phase 3 cloud settlement. Installed packs and
cache rows remain dormant until a compatible re-enable or explicit user clear.
Previously logged meals retain their immutable nutrition snapshots.
