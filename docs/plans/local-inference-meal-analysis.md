# Local inference for meal analysis

Status: Phase 4 engineering-complete release candidate; default off and not released  
Last reviewed: 2026-08-22

## Decision summary

Calorify will add optional on-device text meal interpretation on supported
Android phones. Gemini Nano may identify foods and estimate portions, but it
must not provide calories, macros, USDA identifiers, or a logged meal directly.
The backend remains authoritative for nutrition grounding, deterministic
calculation, clarification, presentation, and persistence.

The experience is one meal-analysis workflow with a capability-gated router:

```text
text input → capability/rollout check → Nano proposal (when eligible)
           → strict validation → user review → backend settlement
           → USDA grounding → deterministic calculation → normal result flow
```

The existing cloud path remains the default and the whole-meal cloud fallback
is required for the current beta. Wear OS continues to use its authenticated
phone-assisted backend path. Image analysis is unchanged.

## Product contract

- Local analysis is opt-in and defaults off.
- A saved preference is separate from temporary runtime availability. Quotas,
  model setup, thermal limits, and background restrictions must not silently
  change the preference.
- The current beta supports automatic cloud fallback only. “Ask” and “Never”
  require the durable offline-draft and recovery work deferred to Phase 5.
- The enablement disclosure explains quality, battery, latency, setup, fallback,
  and what data may leave the device.
- Results show separate provenance for interpretation, nutrition grounding,
  calculation, presentation, and fallback; one ambiguous “Local” badge is not
  sufficient.
- Analysis privacy and syncing a user-approved meal are separate controls.

## Trust boundaries and invariants

1. The model proposes food identity, preparation state, counts, and portion
   ranges only.
2. Client validation rejects malformed, nutrition-bearing, or identity-mismatched
   proposals before handoff.
3. The backend resolves ingredients against the active USDA snapshot.
4. Deterministic code calculates calories and macros from per-100-g nutrient
   values and resolved portions.
5. User review/edit remains required before a local proposal is settled.
6. One analysis ID, attempt token, and monotonic state machine make retries and
   local/cloud races replay-safe.
7. Settled meals store immutable nutrient snapshots and typed provenance, so
   later model or USDA changes do not rewrite history.

## Phase status

| Phase | Scope | Status |
| --- | --- | --- |
| 1 | Versioned workflow, provenance, capability policy | Complete |
| 2 | Nano text adapter, validation, diagnostics | Complete |
| 3 | Hybrid text beta, review, automatic fallback | Complete; default off |
| 4 | USDA starter pack, cache fill, local calculation, diagnostics | Engineering complete; release gated |
| 5 | Private/fully offline modes and durable drafts | Deferred |
| 6 | Text general availability | Deferred |
| 7 | Local image beta | Deferred |

Implementation evidence is recorded in the [phases 1–3 release candidate](../../backend/docs/local-inference-phases-1-3-release-candidate.md)
and [Phase 4 release candidate](../../backend/docs/local-inference-phase-4-release-candidate.md).

## Phase 4 scope

The local nutrition path may use a replaceable USDA starter pack, an
app-private bounded authoritative-row cache, and structured cache fill for
missing rows when cloud fallback is allowed. Cache entries include FDC ID,
food/preparation identity, nutrients, dataset version, schema version,
retrieval time, and source provenance. Only authoritative USDA rows enter the
nutrition cache; model estimates never become cache records.

The local calculator and matching rules must reuse shared contracts and preserve
raw/cooked/dry state. A missing, stale, or incompatible row is unresolved—not
zero—and follows the configured recovery path. Historical meal snapshots remain
immutable across pack updates.

## Release gates

Before a limited beta, complete the following in order:

1. Publish the reviewed pack to the canonical object key.
2. Configure the pack object and enable only the intended capability/cohort.
3. Run holdout accuracy, cold/warm latency, pack lifecycle, compatibility, and
   rollback checks on every supported physical device/model cohort.
4. Verify backend compatibility, cache fill, data rollback, and the global kill
   switch against the deployed candidate.
5. Use internal testing, then a deliberately limited eligible cohort; review
   quality, fallback, parity, latency, storage, crashes, and completion.
6. Record release IDs, evidence, and a go/no-go decision.

The backend rollout switch must fail closed. Disabling it sends all requests
through the cloud path while preserving stored preferences and historical
provenance.

## Deferred decisions

Do not begin Phase 5 as part of this checkpoint. Still open are the starter-pack
coverage and storage budget, the offline presentation experience, age/terms
compatibility for the GenAI API, retention limits for telemetry, and whether
user-confirmed meals should become reusable local templates. Default-on local
analysis, local Wear OS inference, adaptive packs, and local image GA require
new evidence and separate approval.
