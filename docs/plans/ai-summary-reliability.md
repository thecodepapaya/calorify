# AI-summary simplification and reliability

Status: Assessment complete; product direction pending

Last reviewed: 2026-08-25

## Objective

Make the home nutrition summary complete, current, explainable, private by
default, and reliable when meal history is sparse. Prefer a deterministic local
snapshot over model-generated prose unless model generation demonstrates a
clear product benefit that justifies its additional data, operations, and
failure modes.

This is the canonical tracking plan for the AI-summary assessment and any
follow-up work. It does not change production behavior by itself.

## Current behavior

The current feature is a backend-generated summary of remotely synchronized
meal-analysis results:

1. Completed cloud meal analyses are mirrored into `meal_analysis_session`.
2. An hourly cron finds users whose local time is near 03:00 and collects a
   rolling 72-hour meal window.
3. Eligible user inputs are submitted to an OpenAI Batch request using
   `gpt-5-mini`.
4. The model returns short JSON prose. The backend separately calculates meal
   count, top foods, a macro-balance score, and a calorie trend.
5. The completed summary and statistics snapshot are stored. The API returns
   the latest stored row, and the Flutter home card displays it.

The main implementation is split across the
[cron job](../../backend/src/jobs/aiSummaryCron.ts),
[provider and persistence service](../../backend/src/services/aiSummaryService.ts),
[statistics calculator](../../backend/src/services/aiSummaryStats.ts),
[food route](../../backend/src/routes/v1/food.ts), and
[Flutter card](../../app/lib/features/home/widgets/ai_summary_card.dart).
The [backend README](../../backend/README.md) documents the manual run and
inspection commands.

The batch implementation already has useful operational foundations: a durable
batch record, an advisory job lock, request metadata checks, idempotent summary
saves, local-time scheduling, safe error metadata, and an immutable statistics
snapshot. Preserve these principles if any server workflow remains.

## Data currently ingested

| Data | Sent to the model | Used by backend statistics | Notes |
| --- | --- | --- | --- |
| Meal timestamp | Local calendar date | Trend-window assignment | Time of day is discarded in model input. |
| Meal type | Yes | No | Supplied as a short code. |
| Meal name | First 40 characters | Full value for top foods | Free text can contain prompt-like content. |
| Calories | Yes | Yes | Used in a per-meal trend, not a daily-intake trend. |
| Protein, carbs, and fat | No | Yes | Used only by the fixed macro score. |
| Fiber | No | No | Selected from storage but not used. |
| Locale and timezone | Prompt language and local date | Scheduling/window logic | Locale handling is not a validated supported-language contract. |
| Internal user ID | No | Internal batching and storage | Model requests use generated request IDs. |

The summary does **not** ingest locally created manual meals, favorite-based
meals, deterministic local analysis results, on-device inference results,
quantity, user profile, nutrition targets, weight goal, or health-platform
data. The gap exists because the backend source is the remote analysis-session
flow rather than the app's complete local meal log.

## Assessment findings

### P0: product and trust contract

- [ ] **Choose the feature direction.** Adopt the deterministic local Nutrition
  Snapshot described below, or record the specific benefit that requires model
  prose and accept the server path's additional controls.
- [ ] **Correct meal coverage.** The current card can omit manual, favorite,
  deterministic, and on-device meals while presenting itself as a summary of
  the user's recent meals.
- [ ] **Align disclosure and consent.** Model generation happens automatically,
  while user-facing privacy text and local-analysis messaging do not clearly
  describe the provider upload and retention path. Review
  [web privacy copy](../../web/privacy.html) and in-app copy before retaining
  model generation.
- [ ] **Define deletion and retention.** Existing summaries, provider batch
  files, and batch metadata have no feature-specific expiry or verified
  deletion workflow.

### P1: correctness and reliability

- [ ] **Represent freshness honestly.** `generatedAt` reflects when a delayed
  batch result is saved, not when its source data ended. Add `dataAsOf`, window
  bounds, and an expiry policy if a stored server result remains.
- [ ] **Require enough evidence.** Empty, one-meal, and partial-period histories
  must not produce confident trend or balance language.
- [ ] **Replace the calorie trend definition.** It currently compares average
  calories per meal in the latest 24 hours with the prior 48 hours. This changes
  with meal frequency and reports `STEADY` when either comparison period is
  absent. Prefer local-day total calories with minimum day coverage.
- [ ] **Remove or redefine the macro-balance score.** Its fixed 50/20/30 target
  is opaque, not personalized, and can award a perfect score from one meal.
  Prefer explicit observed macro percentages; compare with user targets only
  when those targets exist and the comparison is clearly labeled.
- [ ] **Normalize or omit top foods.** Current name aggregation is case-sensitive
  and reflects logged labels rather than nutritionally meaningful food groups.
- [ ] **Distinguish states.** The client must separately represent loading,
  insufficient data, stale data, generation pending, generation failed, and a
  valid snapshot. A provider failure must not look like an empty history.
- [ ] **Recover missed schedules.** The near-03:00 eligibility window has no
  durable per-user catch-up marker when a run is missed.
- [ ] **Make server generation explicitly configurable.** Validate provider
  configuration only when the feature is enabled, rather than requiring an API
  key through eager construction on unrelated backend paths.

### P1: model boundary, if retained

- [ ] Treat meal names as untrusted data and separate them structurally from
  instructions.
- [ ] Use strict structured output and validate length, language, prohibited
  claims, grounding, and schema before persistence.
- [ ] Define a supported-locale allowlist and a deterministic fallback.
- [ ] Upload aggregated, minimized facts rather than row-level meal text where
  possible.
- [ ] Add provider timeout, failure, and malformed-output metrics without
  logging meal text or identifiers.
- [ ] Build a small multilingual evaluation set covering sparse logs, extreme
  values, repeated meals, adversarial names, and incomplete comparison windows.

## Recommended target: local Nutrition Snapshot

Compute the card from the existing on-device meal stream, using all meal entry
paths and no provider request. Keep the contract small and factual:

```text
NutritionSnapshot
  windowStartLocalDate
  windowEndLocalDate
  dataAsOf
  loggedMealCount
  loggedDayCount
  averageLoggedCaloriesPerDay
  observedProteinPercent
  observedCarbPercent
  observedFatPercent
  calorieTrend: UP | DOWN | STEADY | INSUFFICIENT_DATA
  topLoggedFoods: optional normalized list
```

Recommended defaults, subject to product confirmation:

- Use seven local calendar days, not a rolling 72-hour server window.
- Include cloud, local-inference, manual, edited, and favorite-based meals.
- Show meal and logged-day coverage so absence is not interpreted as intake.
- Require at least three logged days in both comparison windows before showing
  a trend. Otherwise return `INSUFFICIENT_DATA`.
- Generate any explanatory sentence from localized templates and measured
  fields. Do not infer health outcomes or goals from incomplete logs.
- Show observed macro percentages instead of a synthetic score.
- Normalize food labels case-insensitively and trim whitespace, or omit the
  ranking if names cannot be made trustworthy.
- Recompute when the local meal stream changes. Do not persist a snapshot unless
  profiling proves recomputation too expensive.
- Rename the card from “AI Summary” to “Nutrition Snapshot” so its label matches
  its behavior. Update the canonical English source in
  [the shared i18n package](../../shared_packages/i18n/lib/i18n/en.i18n.json)
  and regenerate translations through the repository translation workflow.

## Implementation phases

### Phase 0: decide and specify

- [ ] Confirm local deterministic or retained model direction.
- [ ] Confirm the window, minimum day/meal coverage, comparison definition, and
  whether top foods remain.
- [ ] Record the user-visible data-source and freshness language.
- [ ] Define analytics that measure usefulness without collecting meal content.

Exit criterion: one approved snapshot contract and explicit insufficient-data
rules.

### Phase 1: build the deterministic snapshot

- [ ] Add a pure calculator over the app's canonical local meal model.
- [ ] Use timezone-aware local calendar boundaries and stable decimal handling.
- [ ] Add localized factual templates and rename the card.
- [ ] Render distinct loading, insufficient-data, and valid states.
- [ ] Keep the existing server response behind a temporary migration boundary;
  do not combine local and server values in one snapshot.

Exit criterion: the home card is derived entirely from the complete local meal
stream and works offline.

### Phase 2: verify and roll out

- [ ] Unit-test zero meals, one meal, missing comparison periods, timezone and
  daylight-saving boundaries, edited/deleted meals, zero or missing macros,
  extreme values, label normalization, and deterministic output.
- [ ] Integration-test every meal-entry path and clear-all-data behavior.
- [ ] Test all card states and locale fallback behavior.
- [ ] Compare old and new results internally using synthetic fixtures; never
  upload new meal data solely for comparison.
- [ ] Roll out with a reversible client flag or release boundary and monitor
  render errors, insufficient-data frequency, and computation latency.

Exit criterion: tests pass, observed metrics meet agreed thresholds, and the
old response is no longer needed by supported clients.

### Phase 3: retire or harden the server path

If the local snapshot is selected:

- [ ] Stop new cron submissions before removing reads.
- [ ] Remove the home API dependency and unused provider/configuration paths.
- [ ] Define a recoverable migration and retention period for existing summary
  and batch rows; do not drop data in the first cleanup change.
- [ ] Remove obsolete operational commands, tests, generated contracts, copy,
  and disclosure only after supported clients have migrated.

If model generation is retained instead, complete every P0/P1 server and model
boundary item above, add `dataAsOf` and explicit state to the API, implement
catch-up and retention, and ship a deterministic fallback before expanding the
feature.

Exit criterion: there is one supported summary path, one data contract, and no
orphaned scheduler, API, storage, or localization surface.

## Acceptance criteria

- Every locally visible meal in the selected window contributes exactly once.
- Sparse or one-sided histories return `INSUFFICIENT_DATA`, never a fabricated
  steady trend.
- The card shows its source window and data freshness accurately.
- Identical meal inputs, locale, and timezone produce identical output.
- Manual edits, deletions, and clear-all-data are reflected without waiting for
  a remote batch.
- No opaque score is presented as personalized guidance.
- The local direction sends no summary data to an AI provider.
- If the model direction is retained, consent/disclosure, minimization,
  retention, fallback, evaluation, and observability requirements are verified
  before release.

## Out of scope

- Medical or diagnostic advice.
- New nutrition-target policy or adaptive target recommendations.
- Cross-device synchronization of meals that are currently local-only.
- A general-purpose workflow, provider, or analytics framework.

## Open decisions

- [ ] Is seven local calendar days the right window?
- [ ] Is three logged days per trend period sufficient, or should the threshold
  also require a minimum meal count?
- [ ] Should top logged foods be normalized and retained, or removed?
- [ ] Should existing server summaries expire immediately when the new client
  ships, or remain readable through a bounded compatibility period?
