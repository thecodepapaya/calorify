# Performance audit

Date: 2026-08-02

Scope: Fastify/PostgreSQL backend, phone app, Wear OS app, shared Dart packages, build/runtime configuration, and the main AI meal-analysis and sync paths.

This is a static whole-repository audit backed by the existing unit, widget, integration, and calorie-eval tooling. It is not a substitute for production traces, Android frame profiles, database `EXPLAIN (ANALYZE, BUFFERS)`, or a representative load test. Recommendations that need those measurements are deliberately left as follow-up work rather than being changed speculatively.

## Summary

The interactive meal-analysis path is generally structured well: AI calls have timeouts, USDA lookups are cached and parallelized per meal, database writes are bounded by the pipeline, UI histories are lazy/paginated, image assets are small, and watch audio levels are isolated from full-screen rebuilds.

The main scaling risks are outside ordinary single-meal calculation:

1. Phone cold start serially waits for several independent native/network services.
2. The hourly AI-summary job creates one query per user with unbounded `Promise.all` fan-out.
3. USDA refresh holds large CSV-derived maps and a sorted key list in memory, then performs the full import in one transaction.
4. The phone database has no secondary indexes for timestamp, analysis ID, or favorite ordering, while history uses increasingly expensive offset pagination.
5. A failed meal-analysis provider can consume more than the API's 60-second request budget across sequential fallbacks and direct-OpenAI retries.

## Completed low-risk fixes

| Area | Change | Expected effect |
| --- | --- | --- |
| Backend request path | Disabled Fastify's built-in request logs because structured request/response hooks already emit them. | Removes two duplicate log records and their serialization/output work per request. |
| Backend response path | Response payloads are retained only when request/response body logging is enabled. | Reduces live memory for normal production responses and streamed requests. |
| Backend tips | Added a 30-second positive/negative cache for tips-file metadata and parse failures. | Removes blocking filesystem calls from every tips request while preserving server-side updates. |
| Backend uploads | Limited the legacy multipart upload to one 10 MiB file. | Bounds a route that must buffer its input for the legacy AI API. |
| Backend jobs | Prevented overlapping hourly AI-summary cron executions. | Avoids duplicated database/provider work when a run lasts longer than its schedule interval. |
| PostgreSQL | Added concurrent partial indexes for `(user_id, logged_at DESC)` and `(user_id, created_at DESC)`. | Matches meal export/history, AI-summary collection, and latest-session queries without blocking table writes during index creation. |
| Phone database | Disabled the per-operation database logging wrapper in release builds. | Avoids log string/context allocation around every local database read and write. |
| Phone photo flow | Streams object-storage uploads from disk and sets content length instead of loading the whole compressed image into a Dart byte array. | Removes one full-image heap allocation and copy. |
| Phone Health Connect | Removed a duplicate permission platform call before calorie retrieval. | Saves one Android channel round trip on every burned-calorie refresh. |
| Phone notifications | Made Firebase Messaging setup idempotent and coalesced concurrent initialization. | Prevents duplicate listeners, token work, and permission requests when onboarding and background profile sync race. |
| Cat animation | Hoisted static cat image/layout widgets out of per-frame animation builders. | Reduces allocations and widget construction during the easter-egg animation. |
| Watch idle sync | Checks the durable local operation queue before checking phone connectivity. | The 30-second retry timer no longer wakes the Wear channel while there is nothing to send. |
| Watch home | Computes calorie and macro totals in one pass and outside goal-only rebuilds. | Replaces four list traversals with one and avoids recomputation when only the goal changes. |
| Watch voice UI | Caps waveform updates at 20 fps. | Reduces short-lived list allocation and repaint pressure from high-frequency recognizer callbacks. |

## Prioritized follow-up work

### P1 — measure and address next

#### 1. Shorten phone cold start

`main.dart` waits for Firebase before the first Flutter frame. The splash flow then awaits language, Crashlytics, Auth, App Check, Health Connect, Analytics, notifications, and Wear OS initialization sequentially.

Change boundary:

- keep database/language and any navigation prerequisites on the critical path;
- establish the required App Check/Auth order explicitly;
- initialize independent health, notification, analytics, and watch services concurrently or after the home frame;
- retain the existing per-step Measure spans and compare p50/p95 cold launch before and after.

Do not parallelize all plugins blindly: Android plugin initialization and the watch's early auth request need device testing.

#### 2. Bound or eliminate AI-summary query fan-out

The hourly job resolves all eligible users, then calls `collectMealDataForUser` for every user in one `Promise.all`. That produces unbounded pending work even though the PostgreSQL pool is capped at 20 connections. Pending batches are then polled serially.

Preferred design:

- fetch all eligible users' three-day meals in one ordered query and group them in-process; or
- use an explicit concurrency limiter sized below the DB pool;
- poll provider batches with small bounded concurrency;
- cap users/JSONL bytes per submitted batch and expose queue depth, run duration, and skipped-overlap metrics.

#### 3. Rework USDA refresh as a worker-style streaming import

The importer currently materializes the full food CSV, a macro map, an entries array, and a sorted key array. It also holds the upsert transaction across all batches. Startup bootstrap can run alongside the API and compete for memory, CPU, connections, and I/O.

Preferred design:

- stream CSVs into versioned staging tables with PostgreSQL `COPY`;
- join/normalize in SQL and atomically activate a completed version;
- calculate checksums while streaming rather than sorting all IDs;
- run refresh outside the API process with memory/CPU limits and progress metrics;
- keep the previous dataset active until validation succeeds.

#### 4. Add phone SQLite indexes and keyset history pagination

Frequently used phone queries filter/order by meal timestamp, look up `analysisId`, and order favorites by `lastUsedAt`/`createdAt`, but the Drift tables declare no matching secondary indexes. History uses `LIMIT ... OFFSET`, whose cost grows with the number of logged meals.

Add a measured schema migration for:

- meal timestamp plus ID ordering;
- unique or partial `analysisId` lookup where compatible with legacy null rows;
- favorite last-used/created ordering;
- sync queue retry scheduling if phone sync is re-enabled.

Then replace offsets with a `(timestamp, id)` cursor. Validate migration time and query plans on a synthetic multi-year meal database before release.

#### 5. Give provider failover one end-to-end latency budget

Meal analysis tries two OpenRouter models with 25-second timeouts, followed by direct OpenAI with a 30-second timeout and retries. In a broad provider incident this can exceed Fastify's 60-second request timeout and leave the client with a generic stream failure.

Implement a request deadline propagated through every attempt. Allocate only the remaining budget, use separate circuit breakers/provider-health state, and skip attempts that cannot complete inside the remaining time. Keep schema-invalid-output failover, but distinguish it from quota, rate limit, and transport failures in metrics. Use the existing calorie CLI/eval trace to set the budget from p95 data.

#### 6. Separate schema migration from API startup

Every API process runs migrations before listening, without a database advisory lock. Multiple replicas can duplicate migration checks or race non-idempotent DDL, and a long migration directly extends downtime/readiness.

Move migrations to a single deployment job, or acquire an advisory lock with a bounded wait. Keep concurrent production index builds in one-statement migration files.

### P2 — worthwhile after baselines exist

#### 7. Reuse derived dashboard data

Several phone home widgets independently traverse the same meal list to calculate calories, macro totals, and chart buckets. Today the list is small, so this is not a release blocker. A reusable immutable `DailyNutritionTotals`/seven-day aggregate provider would centralize the calculation and let Riverpod rebuild only consumers whose selected values changed.

#### 8. Consolidate watch dashboard synchronization

The watch fetches meals and calorie goal as separate phone messages and persists related cache updates separately. Add a versioned `/dashboard` snapshot response containing meals, goal, server time, and revision. This reduces Data Layer round trips and makes cache updates atomic. Preserve the current individual endpoints for compatibility during rollout.

#### 9. Profile the watch carousel effect on hardware

Visible carousel items rebuild transform/opacity wrappers for every scroll offset. The list is lazy and static children are already reused, but fractional `Opacity` can create compositing work on low-power watches. Use Flutter's raster/UI frame charts on at least one low-end round device. If raster p95 misses the frame budget, remove opacity first, add repaint boundaries around complex cards, or limit the effect to the nearest visible items.

#### 10. Stream large exports and batch-result processing

Meal export loads every historical row and builds one CSV string. AI batch result processing downloads and splits the full JSONL output, then saves results one row at a time. Use a PostgreSQL cursor/streamed reply for export and line-by-line JSONL parsing with batched inserts for summaries. This matters once histories or batch populations become large.

#### 11. Reduce observability overhead deliberately

Production Measure configuration samples all error-free sessions, journeys, and launches. Backend structured logs repeat some fields in nested and flat forms and enumerate headers on both request and response. First measure telemetry CPU, network, and log volume; then select a production sampling rate and simplify the log schema only after updating Grafana/Loki consumers.

#### 12. Add database/pool performance metrics

HTTP and AI metrics exist, but PostgreSQL query duration, pool wait time, active/idle connections, migration duration, and cron workload size are not exposed. Instrument named query classes rather than raw SQL, add pool saturation gauges, and alert on wait time and slow-query percentiles. Validate proposed indexes using production-like `EXPLAIN (ANALYZE, BUFFERS)` rather than index count alone.

#### 13. Build a production-only backend image

The current Docker image installs build tools and dev dependencies and is also reused for staging hot reload. Create separate multi-stage targets: a development target for staging and a runtime target containing compiled output, production dependencies, migrations, and required data only. This primarily improves image transfer, deploy/restart time, storage, and attack surface rather than request latency.

#### 14. Retire the legacy multipart image route

Current V2 clients upload compressed images directly to object storage, while `/api/v1/food/analyze-image` still buffers multipart input. After confirming old-client usage, deprecate and remove the route and multipart plugin. Until then, retain the new size/file-count limits and add a metric for rejected 413 responses.

### P3 — monitor; optimize only with evidence

- Watch `DataCache` copies and sorts meals after mutations. Lists are intentionally small; ordered insertion is only useful if profiles show it.
- Tips reload can lag file changes by up to 30 seconds due to the new metadata cache. This is an intentional request-path tradeoff.
- The bounded USDA and LLM fallback caches are process-local. A distributed cache would add complexity and network latency; keep them local unless hit-rate or multi-instance measurements justify a change.
- The home dashboard eagerly builds a small fixed set of cards inside a `SingleChildScrollView`. Converting it to slivers is unlikely to matter until the number or complexity of cards grows.

## Measurement plan

Before implementing P1/P2 changes, capture reproducible baselines:

1. Backend: p50/p95/p99 HTTP and AI step latency, event-loop lag, RSS/heap, PostgreSQL pool wait, query plans, and log bytes/request under text/image analysis load.
2. Calorie engine: run `npm run calories:eval -- --verbose --output <report>` against staging and retain per-step/provider attempt timing; do not judge total latency from model time alone.
3. Phone: profile cold/warm start and home scroll in Flutter profile mode on a low/mid-range Android device with a populated multi-year database.
4. Watch: record voice-start latency, audio callback frequency, UI/raster frame times, Data Layer calls, and battery impact on a physical low-end Wear OS device.
5. Imports/jobs: record USDA refresh peak RSS/transaction duration and AI-summary user count/query count/batch bytes.

Use the same dataset/device and at least 20 runs for before/after comparisons. Promote a refactor only when it improves the targeted percentile without reducing calorie-eval accuracy, sync reliability, or crash-free sessions.
