# Architecture and Maintainability Audit

Audit and remediation period: 2026-08-21 to 2026-08-22

This document tracks the runtime, security, architectural, and cleanup findings
identified across the Flutter app, Wear OS app, shared packages, and backend.
Items are ordered by risk. A checked item means the remediation has been
implemented and verified. The evidence paths below describe the pre-remediation
code; some of those files were intentionally removed during cleanup.

## Critical

- [x] **Repair Drift upgrade migrations.** `FavoriteMealTable` inherits meal
  columns that older favorite tables never receive, and upgrades from before
  schema v12 can create the current preferences table and then add
  `feedbackSheetShownAt` again. Replace the ad-hoc upgrade path with tested,
  version-aware steps and add representative old-schema migration tests.
  Evidence: `app/lib/core/db/app_database.dart:43`,
  `app/lib/core/db/tables/favorite_meal.dart:5`.

- [x] **Stop exposing Firebase bearer tokens on Wear OS.** The phone sends a
  Firebase token, native watch code logs the whole response, and the watch
  stores it as plaintext JSON. Redact bridge payloads and use Keystore-backed
  secure storage, or proxy authenticated requests through the phone.
  Evidence: `app/lib/core/services/wear_os_service.dart:209`,
  `watch_app/android/app/src/main/kotlin/dev/thecodepapaya/calorify/WearOsChannelHandler.kt:198`,
  `watch_app/lib/core/services/watch_auth_session.dart:162`.

- [x] **Make USDA dataset activation and row versioning correct.** Importing a
  new active version before deactivating the old one violates the single-active
  unique index. Food rows are also only upserted by `fdc_id`, so removed foods
  survive and lookups become a union of releases. Use a lock plus staging/swap
  or version every row and query only the active release.
  Evidence: `backend/migrations/20260416_usda_dataset_versioning.sql:14`,
  `backend/src/services/usdaImport.ts:196`,
  `backend/src/services/usdaLookup.ts:333`.

## High priority

- [x] **Enforce image-object ownership.** The backend converts any supplied URL
  pathname into a bucket-wide bearer URL without validating its origin or the
  authenticated user's object prefix, then persists the credential-bearing
  URL. Persist an owned object key and mint a download URL only when needed.
  Evidence: `backend/src/routes/v2/food.ts:190`,
  `backend/src/services/nutritionEngineV2.ts:1819`.

- [x] **Persist explicit onboarding progress.** Profile completeness becomes
  true at the age step even though tracking, Health Connect, and reminder
  consent follow it. `completeOnboarding()` currently persists nothing. Store
  `currentStep`/`completedAt` and coordinate one onboarding draft.
  Evidence: `app/lib/core/router/guards/onboarding_guard.dart:8`,
  `app/lib/features/onboarding/onboarding_screen.dart:91`,
  `app/lib/core/services/onboarding_service.dart:43`.

- [x] **Make authenticated rate limiting actually user-aware.** The global
  limiter reads `request.userId` during `onRequest`, before authentication sets
  it in `preHandler`, so users behind one IP share a quota. Run the authenticated
  limiter after auth and test the production app factory.
  Evidence: `backend/src/index.ts:214`, `backend/src/routes/v2/food.ts:265`.

- [x] **Extract an explicit meal-analysis workflow.** The backend engine mixes
  prompts, heuristics, persistence, USDA lookup, tracing, and state transitions;
  clarification resume reruns already-persisted expensive stages. The Flutter
  sheet independently implements another workflow and can remain loading when
  a stream closes early. Persist typed stages, resume from the last valid stage,
  and keep UI sheets as renderers.
  Evidence: `backend/src/services/nutritionEngineV2.ts:1891`,
  `backend/src/services/nutritionEngineV2.ts:2394`,
  `app/lib/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart:753`.

- [x] **Make backend lifecycle safe for multiple processes.** Migrations are
  unlocked and record completion separately from executing SQL. USDA bootstrap
  runs in the background while health reports ready, and scheduled-job locks
  are process-local. Use deployment jobs/advisory locks and separate liveness
  from readiness.
  Evidence: `backend/src/services/migrate.ts:39`, `backend/src/index.ts:343`,
  `backend/src/jobs/aiSummaryCron.ts:297`.

- [x] **Use one dependency graph in the phone app.** Riverpod providers wrap
  static singletons while other code bypasses providers; health and onboarding
  services are circularly coupled. Profile writes are local, remote upload is a
  later startup side effect, and the intended sync service is disabled. Make
  providers the composition root and define one repository/outbox lifecycle.
  Evidence: `app/lib/core/providers/home_providers.dart:9`,
  `app/lib/core/services/sync_service.dart:27`.

- [x] **Replace the watch string/Map protocol and split sync responsibilities.**
  Endpoint strings and dynamic maps are duplicated on both devices, correlated
  responses are also emitted as unsolicited events, one freshness timestamp is
  shared by unrelated resources, and errors are inconsistently swallowed. Use
  a versioned generated envelope, per-resource snapshots, typed results, and a
  database-backed repository.
  Evidence: `watch_app/lib/core/services/sync_service.dart:183`,
  `app/lib/core/services/wear_os_service.dart:65`,
  `watch_app/android/app/src/main/kotlin/dev/thecodepapaya/calorify/WearOsChannelHandler.kt:209`.

- [x] **Enforce generated-contract hygiene.** Backend Zod, Fastify, protobuf,
  and hand-written JSON schemas duplicate contracts; the schema validator never
  reads protobuf definitions. Proto changes do not trigger CI and generation
  installs global tools or mutates dependencies. Choose one contract source,
  pin generators, regenerate in CI, and fail on diffs.
  Evidence: `backend/src/utils/validate-schemas.ts:1`,
  `scripts/generate_protos.sh:71`, `.github/workflows/test-apps.yml:5`.

- [x] **Reserve protobuf enum zero values for unspecified data.** Several enums
  assign real meanings such as healthy, male, metric, or low priority to wire
  value zero, so absent/old values are indistinguishable from deliberate user
  choices. Add explicit `*_UNSPECIFIED` values and migrate compatibility code.
  Evidence: `protos/meal/meal.proto:13`, `protos/user/user.proto:5`,
  `protos/calorify/app_banner.proto:16`.

## Medium priority and simplification

- [x] **Collapse database forwarding layers.** `AppDatabase` already implements
  `DatabaseInterface`, but `RealDatabaseAdapter` and `DatabaseLogger` repeat the
  same broad API. Prefer small meal/profile/preferences repositories and
  database-level instrumentation.
  Evidence: `app/lib/core/db/app_database.dart:33`,
  `app/lib/core/db/real_database_adapter.dart:7`,
  `app/lib/core/db/database_logger.dart:8`.

- [x] **Use one typed mapper per database entity.** Meal and favorite mappers
  duplicate Drift conversion paths and disagree about null metadata.
  Evidence: `app/lib/core/db/mappers/meal_info_mapper.dart:73`,
  `app/lib/core/db/mappers/favorite_meal_mapper.dart:40`.

- [x] **Let SQLite allocate meal IDs.** New meals derive a primary key from a
  timestamp modulo the integer range and then upsert, which can overwrite an
  existing row. Evidence: `app/lib/features/edit_meal/edit_meal_screen.dart:432`.

- [x] **Remove or finish the abandoned phone sync stack.** It contains a
  disabled service, commented adapter, sync table, generated protocol, and a
  request to a backend route that does not exist. Preserve the active phone-watch
  sync path separately.
  Evidence: `app/lib/core/services/sync_service.dart:27`,
  `app/lib/core/db/syncing_database_adapter.dart:1`.

- [x] **Remove production-dead backend implementations and dependencies.** The
  legacy nutrition engine and Gemini analysis provider are test-only, while
  their configuration, tests, and dependencies remain.
  Evidence: `backend/src/services/nutritionEngine.ts:1`,
  `backend/src/services/geminiFoodAnalysis.ts:1`.

- [x] **Remove unused shared widgets and compatibility layers.** Several
  exported chart/card widgets have no consumers, button primitives overlap,
  and app-local re-export shims preserve an unfinished package migration.
  Evidence: `shared_packages/widgets/lib/widgets.dart:5`,
  `app/lib/shared_widgets/primary_button.dart:7`,
  `app/lib/shared_widgets/app_filled_button.dart:5`.

- [x] **Make shared-package dependencies acyclic.** `models` depends on `utils`
  while `utils` depends on `models`; `models` also declares an unused health
  plugin. Make model contracts a dependency-free foundation.
  Evidence: `shared_packages/models/pubspec.yaml:10`,
  `shared_packages/utils/pubspec.yaml:12`.

- [x] **Separate network errors from presentation.** `NetworkClient` displays a
  global flushbar and rethrows, while callers display another error. Return
  typed errors and let one presentation boundary decide how to render them.
  Evidence: `app/lib/core/network/network_client.dart:144`,
  `app/lib/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart:853`.

- [x] **Centralize unit conversion.** Edit Profile converts current weight but
  not target weight before saving a new unit, unlike Settings. Perform atomic
  profile conversion in domain code.
  Evidence: `app/lib/features/profile/edit_profile_screen.dart:548`,
  `app/lib/features/profile/settings_screen.dart:559`.

- [x] **Request notification permission only from explicit UI.** Startup asks
  for notification permission before the onboarding consent screen and the
  onboarding screen asks again through a second API. Separate listener setup
  from permission requests.
  Evidence: `app/lib/core/services/app_initialization.dart:184`,
  `app/lib/features/onboarding/reminder_notifications_screen.dart:351`.

- [x] **Use a reactive development database.** Default mock watch streams emit
  only once and mutations do not notify them, unlike the production contract.
  Prefer an in-memory Drift database for development/tests.
  Evidence: `app/lib/core/db/mock_data/data_source_config.dart:5`,
  `app/lib/core/db/mock_database_adapter.dart:187`.

- [x] **Match LLM fallback results by stable identity.** Fallback macros are
  assigned both by returned name and array position, so provider reordering can
  attach nutrition to the wrong ingredient.
  Evidence: `backend/src/services/nutritionEngineV2.ts:1429`.

- [x] **Fix watch persistence semantics.** The same protobuf model is flattened
  in multiple ways, metadata fields are dropped, and absent health state is
  rehydrated as neutral. Store versioned protobuf bytes/JSON plus only necessary
  indexed columns.
  Evidence: `watch_app/lib/core/db/watch_database.dart:158`,
  `shared_packages/models/lib/src/proto_extensions.dart:70`.

- [x] **Simplify repository automation.** Git-root helpers change directory in
  a command-substitution subshell, translation scripts duplicate polling loops,
  and release-note translation has overlapping implementations.
  Evidence: `scripts/common.sh:203`, `scripts/generate_translations.sh:243`,
  `scripts/create_changelog.sh:243`.

## Verification gaps

- [x] Export and test the real backend app factory instead of recreating its
  plugin graph in integration tests. Evidence:
  `backend/src/routes/integration.test.ts:128`.
- [x] Add Drift upgrade tests for representative deployed schema versions.
- [x] Test the watch queue/retry/state machine through injected transport,
  database, clock, and authentication dependencies.
- [x] Add direct tests and analysis jobs for every shared package.

## Remediation summary

### Backend

- USDA releases now import into a private staging snapshot, activate under a
  database lock, remove stale rows, and participate in readiness checks.
- Migrations are locked, checksummed, and transactional. Liveness and readiness
  are distinct, recurring jobs use database advisory locks, and startup/shutdown
  cleanly release cron, HTTP, and database resources.
- V2 meal analysis now has typed durable stages and snapshots, compare-and-set
  transitions, fenced leases, durable clarification input, and resumable initial
  decomposition. Client-generated analysis IDs make initial requests idempotent
  across disconnects and retries.
- Image analysis accepts only authenticated-user-owned objects. The database
  stores object keys rather than signed URLs; migrations scrub old credential
  URLs and database constraints prevent them from returning. HTTP logs are now
  metadata-only, omit bodies and client IPs, and retain only allow-listed
  operational headers.
- The real application factory is covered by integration tests, authenticated
  throttling runs after identity is known, full profile replacement uses PUT,
  and the production meal-analysis surface is V2-only. The unused V1 text,
  image-URL, and multipart analysis routes and service have been removed.
- Legacy nutrition/Gemini implementations and their unused dependencies were
  removed. Fallback ingredient results now match stable IDs and validate
  provider reorderings.

### Flutter phone app

- Drift schema version 22 has version-aware upgrade steps and migration tests.
  Favorite identity no longer collides with logged-meal identity, local inserts
  use database allocation, and snapshot mappers preserve explicit null clears.
- Riverpod is the composition root. Static service cycles and forwarding
  database adapters were removed, and profile updates use one durable
  repository/outbox flow with full-replacement semantics.
- Onboarding progress is durable. Notification listeners register at startup
  without requesting permission; permission is requested only by explicit UI.
- Meal analysis is controlled by a tested state machine while sheets render
  state. It resumes incomplete streams, keeps the same initial idempotency key,
  bounds retryable failures, and cancels in-flight HTTP work when dismissed.
- Unit conversion and profile metrics moved into domain code, the abandoned
  phone sync stack was removed, development data is reactive Drift, network
  code no longer presents UI, and overlapping button widgets were consolidated.

### Wear OS and shared contracts

- Watch credentials use Android Keystore-backed storage and legacy plaintext is
  scrubbed. Bridge and application logs no longer print credentials or personal
  notification content.
- Phone/watch messages use a generated, versioned protobuf envelope with
  correlation IDs and typed errors. Sync transport, queue, retry, clock, auth,
  and controller responsibilities are injectable and directly tested.
- Watch snapshots persist versioned protobuf payloads with independent
  per-resource freshness instead of flattening or fabricating absent values.
- Shared package dependencies are acyclic, unused compatibility widgets/helpers
  were removed, and enum-bearing fields use proto3 presence so an absent value
  remains distinguishable without breaking existing wire numbers.

### Delivery and repository automation

- Protobuf generation uses pinned compiler/plugin versions, stages output
  atomically, generates Dart/TypeScript/Kotlin from one source, and is checked
  for drift in CI. Translation and release scripts now propagate failures and
  replace output atomically.
- Backend, contract, app, watch, and every shared package have direct CI checks.
  Gradle wrappers are current and reproducible.
- The backend container is multi-stage, production-dependency-only, non-root,
  excludes credentials from its context, and has no request-body logging mode.

## Additional issues found and fixed during remediation

- [x] Retired V1 meal analysis and detection; phone and watch analysis now use
  the V2 pipeline.
- [x] Profile POST behavior silently mixed patch and replacement semantics.
- [x] Firebase message listeners were not registered unless permission was
  requested during startup.
- [x] Favorite rows could reuse logged-meal primary keys and overwrite each
  other during migration.
- [x] The Docker build context admitted local credentials and the runtime image
  ran as root with development/compiler dependencies.
- [x] Backend pull requests lacked mandatory test, type, lint, and coverage
  checks.
- [x] Android wrapper versions, checksums, executable modes, and configured JDK
  versions had drifted between phone and watch builds.
- [x] Translation, release-note, and protobuf scripts could leave partially
  generated output after a failed command.
- [x] Early meal-analysis stages were not durable or reachable through resume.
- [x] Historical signed image URLs remained stored after runtime ownership was
  fixed.
- [x] Notification and bridge logs exposed titles, bodies, tokens, or complete
  payloads.
- [x] Concurrent USDA bootstrap processes shared a staging directory.
- [x] Phone stream setup could not be cancelled and continuation retries could
  accidentally create unrelated analysis IDs.
- [x] Request logging could expose nested/serialized credential URLs, personal
  health bodies, fingerprinting headers, and client IPs; body logging was
  removed rather than relying on increasingly complex redaction.
- [x] Busy analysis stages used unfenced leases and clarification input could be
  lost between persistence and execution.
- [x] Backend signals did not stop scheduled work before closing HTTP/database
  resources, and startup failure cleanup could mask the original error.
- [x] Initial LLM decomposition had no durable pre-call row or stable client
  idempotency key, allowing duplicate expensive work after a disconnect.
- [x] The durable-stage migration constraint omitted the newly introduced
  decomposition stages on upgraded databases.
- [x] Authentication, analytics, AI-summary, and native Wear bridge logs
  duplicated raw user or device identifiers even after payload redaction.
- [x] Firebase's repackaged protobuf well-known types collided with the
  generated protobuf-javalite classes in the phone Android build.
- [x] Provider, Firebase, and database exception messages could cross API,
  trace, persistence, cron, or log boundaries. These boundaries now emit only
  stable client messages and allow-listed operational error categories.
- [x] AI-summary batch requests disclosed stable Firebase user IDs to the model
  provider as `custom_id`; batches now use opaque, batch-local request IDs and
  keep the identity mapping only in PostgreSQL.
- [x] Meal-analysis telemetry included ingredient names, clarification answer
  identifiers, and unmatched hints. Traces and logs now retain counts, stages,
  sources, and bounded outcome categories only.
- [x] Client-controlled correlation IDs and malformed locale headers could
  bypass the HTTP metadata policy and enter logs. Request IDs are now generated
  server-side and locales are strictly bounded before use.
- [x] Runtime diagnostics logged configurable USDA URLs and trusted arbitrary
  HTTP headers. URLs are described by source kind only and header logging uses
  a minimal allow-list.
- [x] Observability configuration used a floating Promtail tag and deprecated
  Fastify route metadata. Promtail is pinned and request metrics/logs use the
  current route-template API.
- [x] Opaque AI batch metadata broke two consumers that still treated JSON keys
  as Firebase user IDs, disabling duplicate-submission suppression and per-user
  diagnostics. Both consumers now resolve the stored `userId` value while
  retaining compatibility with legacy rows.
- [x] A new watch interpreted a locally synthesized typed timeout as proof that
  an old phone supported the generated protocol, so rolling-upgrade fallback
  never ran. Native transport provenance and a bounded peer capability marker
  now distinguish old phones from transient failures on current phones.
- [x] Phone meal idempotency used a select-then-insert race without a database
  constraint. Schema version 22 normalizes deployed keys, adds a nullable unique
  analysis-ID index, and uses an atomic conflict-safe insert.
- [x] Editing an analyzed meal omitted persistence-only analysis identity, so
  an upsert cleared its idempotency key and a late retry could insert a second
  meal. Editable snapshots now preserve the stored key unless a caller
  explicitly supplies a replacement.
- [x] Concurrent full-profile PUTs could complete in reverse order and leave
  the server with an older snapshot. Profile uploads are serialized and drain
  any durable revision created while an earlier request is in flight.
- [x] The first schema-22 cleanup deleted later rows with duplicate analysis
  IDs, including meals referenced by favorites and meals containing user edits.
  The migration now preserves every row and clears only duplicate idempotency
  keys before creating the unique index.
- [x] Malformed, stale, or mismatched watch responses were treated as permanent
  peer rejections, allowing immediate and durable meal mutations to be dropped.
  Only a fully validated semantic rejection can now remove user work; local
  transport and correlation failures remain queued and retryable.
- [x] Watch protocol fallback replayed slow text analysis through typed,
  legacy, and direct-backend paths. A cheap capability probe, operation-aware
  deadline, and explicit uncertain-delivery state now ensure one analysis route
  is dispatched and prevent fallback after an ambiguous response.

## Pre-remediation baseline

At audit time:

- Backend type-check and lint passed.
- All 439 backend tests passed.
- Phone and watch `flutter analyze` passed.
- The worktree was clean after the read-only audit.

## Final verification

Completed on 2026-08-22 against the remediated tree:

- Backend: TypeScript type-check and ESLint passed. The coverage run passed all
  451 tests with 87.22% statements, 76.58% branches, 90.51% functions, and
  87.22% lines.
- Phone app: `flutter analyze --no-pub` passed and all 189 unit/widget tests
  passed. The Android `assembleDevDebug` build completed with JDK 21, and the
  Wear bridge's 10 focused Dart tests passed.
- Watch app: `flutter analyze --no-pub` passed, all 57 tests passed, and the
  Android `assembleDebug` build completed with JDK 21.
- Shared packages: analysis passed for all six packages and the watch app; all
  17 shared-package tests passed.
- Contracts and automation: pinned protobuf regeneration completed; generated
  Dart, TypeScript, and Kotlin outputs were verified. Translation auditing
  passed for 497 keys across 34 locales. Shell syntax and workflow YAML checks
  passed.
- Delivery checks: both Compose configurations validated without reading local
  environment files, and `git diff --check` passed.

## Required operational and approval follow-ups

These cannot be completed safely by a repository-only change and are not
counted as open code remediations.

- [ ] **Rotate the OpenAI and OpenRouter API keys immediately.** Review tooling
  inadvertently read actual-looking provider credentials from the ignored
  `backend/staging.env` and `backend/production.env` files. Do not reuse those
  values. The files remain ignored by Git and excluded from Docker build
  contexts.
- [ ] **Revoke/rotate the legacy Oracle Object Storage PAR.** Also expire or
  restrict backups, WAL archives, replicas, and historical logs that can still
  contain the old signed image URLs; a live-table migration cannot revoke or
  erase copied credentials.
- [ ] **Verify production secret-file permissions.** The production container
  now runs as the non-root `node` user, so the bind-mounted Firebase service
  account must be readable by that UID without becoming broadly readable on
  the host.
- [ ] **Run the container and migration rehearsal in deployment infrastructure.**
  Compose configuration is valid and CI now builds the image, but this machine
  has neither a Docker daemon nor PostgreSQL tools. Rehearse all migrations on
  a recent staging snapshot before production deployment.
- [ ] **Review and approve golden-image changes.** Functional unit/widget tests
  are green, but visual baselines should be reapproved by design rather than
  automatically overwritten during an architectural cleanup.
