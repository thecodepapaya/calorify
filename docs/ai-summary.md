# Daily AI summaries

This document describes the implemented daily nutrition-summary workflow. The
phone supplies a bounded snapshot of final locally saved meals, the backend
computes deterministic statistics, and OpenRouter generates only the prose.
The feature does not synchronize the general meal database.

## Product behavior

- Catch-up runs without blocking normal app startup and runs again when the app
  resumes.
- There is no background worker, fixed generation time, or missed-day backfill.
- At most one completed summary is generated for an authenticated user and
  local calendar date.
- The input window is the seven completed local days ending at the start of the
  summary date. Today's partial meals are excluded.
- Generation requires at least two meals yesterday or at least three meals in
  the last four completed days.
- Manual meals, edited meals, remote/local analyses, and consumed favorites are
  equivalent after they have been saved to the normal local meal table.
- Favorite templates that were not consumed are excluded.
- Edits after a summary completes appear only through the next day's
  overlapping window.
- The app does not generate when more than 100 meals are present in the window;
  it never truncates silently.

The hidden/restored summary card reads only the current-date local cache row.
If its resolved locale differs from the active app locale, the prose is hidden
until a later summary date can be generated in the new locale. An unspecified
trend has no trend chip.

## End-to-end flow

```text
app startup/resume
  -> read seven completed local days
  -> enforce meal-count and sparse-data limits
  -> build AiSummarySnapshot with optional profile context
  -> POST /api/v1/food/ai-summary/generate
  -> claim one user/date row in ai_summaries
  -> calculate statistics deterministically
  -> ask OpenRouter for bounded localized prose
  -> persist request, statistics, prose, and diagnostics
  -> cache the response locally by summary date
```

The app boundary is defined by
[`AiSummaryGenerator`](../app/lib/core/ai_summary/ai_summary_models.dart).
[`BackendAiSummaryGenerator`](../app/lib/core/ai_summary/backend_ai_summary_generator.dart)
owns Firebase authentication and HTTP serialization. The foreground and
single-flight behavior is in
[`AiSummaryCoordinator`](../app/lib/core/ai_summary/ai_summary_coordinator.dart).
A future on-device generator may implement the same interface without changing
snapshot collection, cache storage, or UI consumption.

## Snapshot contract

The request contains:

- `summaryLocalDate`, IANA timezone, and active app locale;
- final saved meal timestamp, name, meal type, calories, protein,
  carbohydrates, fat, and fiber; and
- optional weight goal, activity level, and daily calorie goal.

It deliberately excludes local row IDs, analysis IDs, favorite IDs, images,
quantities, health-score labels, raw profile measurements, and Health Connect
data. Meal timestamps must be inside `[summary date - 7 days, summary date)` in
the supplied timezone. The server repeats all date, size, nutrient, locale, and
sparse-data checks.

The authoritative backend schema is in
[`aiSummaryService.ts`](../backend/src/services/aiSummaryService.ts). The app
request types are in
[`ai_summary_models.dart`](../app/lib/core/ai_summary/ai_summary_models.dart).

## API and concurrency

`POST /api/v1/food/ai-summary/generate` requires Firebase authentication and
never accepts a user ID from the request body. The supplied summary date must
be the current calendar date in the supplied timezone.

`ai_summaries` is both history and the durable retry/concurrency record:

- a completed user/date row is replayed without another provider call;
- a processing row younger than two minutes returns `202` with `Retry-After`;
- an older processing row may be reclaimed;
- a failed row cools down for 15 minutes; and
- no user/date receives more than three provider attempts.

Claims increment the attempt number immediately before provider work.
Completion and failure updates are fenced by that attempt number so a stale
worker cannot overwrite a newer claim. Validation, missing authentication,
sparse data, and an already-active claim do not consume an attempt.

The phone honors `Retry-After`, keeps only an in-memory 15-minute transient
failure gate, and performs one rebuild when date, timezone, or locale changes
during snapshot construction.

## Provider and deterministic fields

Remote prose uses only `OPENROUTER_AI_SUMMARY_MODEL`. The configured model must
support strict structured output. Requests require parameter support and deny
provider data collection through the configured OpenRouter controls. There is
no direct OpenAI or free-router fallback for summaries.

OpenRouter returns only a bounded non-empty `summary`. The backend owns:

- generation timestamp;
- meal count;
- top three normalized food names;
- macro-balance score; and
- calorie trend.

Trend compares average logged calories in the latest three completed days with
the preceding three completed days. Each period requires meals on at least two
distinct days. A change of at least ten percent is up or down; otherwise it is
steady. Insufficient coverage produces `UNSPECIFIED`.

The resolved locale is stored with the row and returned through
`Content-Language`. Unsupported locale tags resolve to English. Meal names are
untrusted prompt data and cannot select the output language or provide model
instructions.

## Persistence and diagnostics

The backend retains the exact validated request that produced the completed
summary, requested and resolved locale, deterministic statistics, provider and
model, bounded failure metadata, timestamps, and generated response. Legacy
completed rows may have no local date or request snapshot and do not
participate in daily idempotency.

The app's `local_ai_summaries` Drift table is keyed by summary local date and
stores the typed response plus resolved locale. It is removed by the normal
local clear-all transaction. The request snapshot is not persisted locally.

Use the user-scoped diagnostic command documented in
[`backend/README.md`](../backend/README.md) to inspect retained summary state.
General logs and metrics contain no meal snapshot, meal names, profile values,
or user ID. HTTP body capture is disabled because the request contains health
data.

## Deployment and retirement of the legacy batch flow

The hourly cron, OpenAI Batch submission/polling, batch table, summary CLI,
analysis-session input, and legacy GET path were removed. Before deploying the
migration that drops the old batch table, operators must stop legacy
submissions and confirm every previously submitted batch is terminal.

Model configuration and the coordinated cleanup procedure are maintained in
the [backend deployment runbook](../backend/DEPLOYMENT.md). The backend route
and operational overview are also summarized in
[`backend/README.md`](../backend/README.md).
