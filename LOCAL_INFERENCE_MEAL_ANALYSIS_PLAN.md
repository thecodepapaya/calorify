# Local inference for meal analysis

Status: Proposed direction
Last updated: 2026-08-22

## Executive summary

Calorify should add an optional on-device meal-analysis path for supported
Android phones. The first release should use Gemini Nano through Android's
AICore and ML Kit Prompt API for text-only meal decomposition, retain the
existing backend as a fallback, and continue grounding nutrition against USDA
data rather than asking the model to invent calories or macros.

The long-term experience is a hybrid pipeline that can complete increasingly
more work on the phone:

1. Interpret meal text or a photograph locally.
2. Resolve detected ingredients against a small downloaded USDA dataset and a
   bounded local cache.
3. Fetch only missing USDA records when network fallback is allowed.
4. Calculate calories and macros deterministically on-device.
5. Tell the user, without overwhelming the primary interface, which stages ran
   locally and which required the backend.

Local inference is not intended to replace the backend immediately. Device
coverage, model quality, runtime quotas, thermal conditions, model updates, and
missing nutrition records all make a dependable fallback necessary. The plan
therefore treats local execution as a capability chosen by a router, not as a
separate meal-analysis implementation.

## Product vision

The motivating vision is:

- Add an optional setting for local meal analysis. It is off by default,
  available only when the device has the required capabilities, and visibly
  disabled with a reason when the device can never support it.
- Before enabling it, show a bottom sheet explaining in plain language how it
  works, the expected privacy, latency, battery, and quality tradeoffs, and the
  possibility of failure. Require an explicit acknowledgement.
- Offer a subordinate option to download and maintain a small local subset of
  USDA nutrition data. If a required record is not local and the backend is
  allowed, fetch the authoritative record and add it to a bounded local cache.
- Show whether meal interpretation and nutrition data came from the device or
  backend in the calorie-breakdown experience.

This is a good direction. It gives users control, makes the behavior legible,
and allows Calorify to learn from a small opt-in cohort before expanding device
coverage. Four refinements are important:

1. A saved user preference and current runtime availability are different
   states. A temporary quota, model download, thermal limit, or busy response
   must not silently turn the preference off.
2. Local interpretation, local nutrition grounding, and local deterministic
   calculation are separate capabilities and should have separate provenance.
3. Enabling local analysis must also establish what happens when it cannot
   finish: automatic cloud fallback, ask before fallback, or never use cloud.
4. Provenance should be stored per stage and per ingredient, while the normal
   UI presents a concise summary with expandable detail.

## Desired outcomes

- Reduce perceived and measured latency for short text meal descriptions on
  supported devices.
- Allow text meal detection to continue when connectivity is absent or poor.
- Keep meal text and photographs on the device whenever the selected fallback
  policy permits.
- Reduce variable backend inference cost without weakening nutrition quality.
- Preserve the current safety boundary: models estimate food identity and
  portions; USDA data and deterministic code own nutrition values and arithmetic.
- Make mixed local/cloud execution understandable and auditable.
- Retain one logical meal-analysis workflow across phone, backend, and watch.

## Non-goals for the initial release

- Supporting every Android phone.
- Running Gemini Nano directly on Wear OS.
- Removing the backend meal-analysis path.
- Shipping image analysis at the same time as text analysis.
- Treating an LLM-generated nutrition estimate as equivalent to a USDA row.
- Building a universal offline copy of FoodData Central.
- Personalizing the nutrition dataset from inferred cuisine or eating history.
- Recomputing historical meals whenever the model or USDA dataset changes.
- Claiming medical-grade calorie or macro accuracy.

## Current Calorify pipeline

The current backend flow provides the right conceptual boundary for local
inference:

1. A model decomposes text or an image into atomic ingredients and estimates
   portions and ranges.
2. Ingredient hints are normalized and matched against the active USDA snapshot.
3. Calories and macros are calculated deterministically from the matched rows.
4. High-impact portion uncertainty produces clarification questions.
5. A presentation step produces the final localized meal summary.
6. Typed pipeline events are streamed to the app and persisted as an analysis
   session and final meal snapshot.

The local path should reuse these contracts and invariants. It should not create
a second definition of ingredient identity, portion semantics, uncertainty, or
macro arithmetic.

The Wear OS app should continue its existing phone-first behavior. A watch text
request can ask the paired phone to execute the same router; the watch retains
its authenticated backend path only as a fallback. Image analysis remains a
phone feature.

## Terminology

The UI and data model should avoid using `local` as one ambiguous label.

- **Interpretation**: turning text or an image into a meal name, ingredients,
  preparation states, counts, and gram ranges.
- **Nutrition grounding**: selecting an authoritative food record and its
  nutrients per 100 grams.
- **Calculation**: scaling authoritative nutrient values by resolved portions
  and combining ingredient totals.
- **Presentation**: creating localized names, quantity text, tips, and health
  descriptions that do not alter calculated values.
- **Fallback**: moving a failed or unavailable local stage to the backend under
  the user's selected policy.
- **Local draft**: a partially resolved result retained when cloud use is not
  allowed.

## Proposed user experience

### Settings

Add a section such as:

```text
On-device meal analysis (Beta)                         [Off]
Analyze supported meals on this phone.

Cloud fallback                                      Automatic
Use Calorify's servers if this phone cannot finish.

Offline nutrition data                                [Off]
Download USDA nutrition data for common foods.
```

The states should behave as follows:

- Permanently unsupported device: local-analysis toggle is disabled and a
  short reason is shown.
- Supported but model not ready: preference remains selectable; status explains
  that setup or model download is incomplete.
- Enabled but temporarily unavailable: preference stays on and the current meal
  follows the fallback policy.
- Remote rollout disabled for the device/model cohort: show that the beta is
  temporarily unavailable instead of changing the saved preference.
- Offline nutrition data is shown only after local analysis is enabled, or is
  clearly presented as an independent download if it later has value for other
  features.

The local-analysis preference should initially default to off. The default can
be reconsidered only after broad device and quality evidence exists.

### Enablement disclosure

Enabling local analysis opens a bottom sheet. A concise lead could be:

> Supported meals are analyzed on this phone. If your phone cannot finish,
> Calorify follows your cloud-fallback setting.

The sheet should explain:

- local analysis can differ from cloud analysis and can still be wrong;
- speed varies by phone and whether the model is already warm;
- inference can use additional battery and may pause under device pressure;
- local APIs can be unavailable because of model setup, quotas, foreground
  restrictions, or system updates;
- downloading offline nutrition data uses storage and requires periodic updates;
- the exact conditions under which meal text or a photo can leave the device;
- calorie estimates remain informational and are not medical advice.

The user acknowledges the disclosure and selects one cloud-fallback policy:

- **Automatic**: use the backend when local processing cannot finish. This is
  the recommended reliability setting.
- **Ask each time**: show the failed stage and outbound data before sending it.
- **Never**: retain a local draft and offer clarification or manual entry.

The acknowledgement should be requested again only when the material policy or
data handling changes, not on every app update.

### Meal result provenance

Do not reduce provenance to one `Local` badge. A result can contain a locally
interpreted ingredient grounded by a remotely fetched USDA row and calculated
on-device.

The normal result screen should use a compact summary:

```text
Analysis: On device
Nutrition: 5 on device · 2 fetched securely
Calculation: On device
```

An expandable `How this was calculated` section can show per-ingredient details:

```text
Cooked white rice
Detected on device · USDA data downloaded on 21 Aug 2026

Paneer
Detected on device · USDA data fetched from Calorify
```

Avoid using source labels as quality labels. `On device` describes execution;
it does not mean more accurate. `Fetched` describes transport; it does not mean
the value was generated by an LLM.

### Offline and denied-fallback behavior

When local interpretation succeeds but nutrition records are missing:

- show the resolved ingredients and cached totals that are available;
- mark unresolved ingredients explicitly instead of silently assigning zero;
- offer to connect and finish later, answer a clarification, or enter nutrition
  manually;
- persist the draft with the original analysis identifier;
- complete it idempotently when network use is later approved.

## Settings and runtime state model

The implementation should represent these independently:

```text
User policy
  localInferencePreference: disabled | enabled
  cloudFallbackPolicy: automatic | ask | never
  offlineNutritionPreference: disabled | enabled
  acknowledgedPolicyVersion: string?

Current capability
  unsupported
  supportedNotReady
  ready
  temporarilyBusy
  quotaLimited
  backgroundBlocked
  thermallyLimited
  modelUpdating
  rolloutDisabled
```

The app derives effective behavior from both groups. Runtime failures must not
rewrite the user's policy. This distinction also prevents confusing settings
flapping as AICore availability changes.

## Target architecture

### Components

#### Android local-inference adapter

A Kotlin adapter should own all interaction with ML Kit/AICore:

- capability and status checks;
- model identification exposed by the SDK;
- warm-up;
- text and, later, image requests;
- structured-output conversion;
- timeout and cancellation;
- classification of SDK errors into stable Calorify fallback reasons;
- latency measurements that exclude Flutter rendering time.

Flutter should call the adapter through a narrow platform channel or plugin API.
No generated Android SDK types should leak into the Dart domain layer.

#### Meal-analysis router

One Dart-level router chooses the execution path for each meal while preserving
one analysis identifier and one stream of pipeline events. Its decision inputs
include:

- user policy;
- current device capability;
- text or image modality;
- rollout eligibility;
- model/runtime status;
- deadline budget;
- connectivity;
- whether required USDA records exist locally.

The router should be explicit and deterministic. It should not race local and
cloud implementations in the first release.

#### Shared validation and normalization

Nano output must pass the same semantic constraints as backend decomposition:

- required fields and allowed enums;
- finite, non-negative numbers;
- `min <= estimate <= max`;
- count and per-unit consistency;
- explicit quantity preservation;
- preparation-state normalization;
- duplicate and implausible ingredient checks;
- bounded ingredient and output sizes.

Invalid local output is a fallback condition, not an invitation to guess or
silently repair arbitrary data.

#### Local nutrition repository

The repository presents one lookup interface over:

1. a read-only downloaded starter pack;
2. a mutable cache of backend-fetched USDA rows;
3. an optional remote resolver when the selected policy permits it.

The calculation engine consumes the resulting normalized nutrient rows without
needing to know where they were stored.

#### Backend fallback and cache-fill API

The backend remains responsible for:

- whole-meal interpretation fallback;
- authoritative USDA matching when local data is missing or ambiguous;
- returning cacheable USDA records with explicit dataset metadata;
- persistence, sync, observability, and provider failover;
- remotely disabling unhealthy local cohorts;
- comparing canary local results against the established evaluation baseline.

### End-to-end text flow

```text
User submits text
  -> create one analysis ID
  -> read user policy and runtime capability
  -> try Nano decomposition when eligible
  -> validate and normalize structured output
  -> look up each ingredient in local USDA repository
  -> fetch only missing USDA records when permitted
  -> calculate macros deterministically
  -> generate clarification from portion variance
  -> persist immutable result and provenance
  -> sync through the normal repository/outbox lifecycle
```

Fallback behavior depends on the failed stage:

- Nano unavailable, quota-limited, timed out, or structurally invalid: perform
  whole-meal backend interpretation if allowed.
- Interpretation succeeded but a USDA row is missing: request nutrition
  resolution for that ingredient while retaining sufficient meal context.
- A local USDA record is stale or incompatible: fetch a compatible record or
  mark the ingredient unresolved.
- App leaves the foreground during inference: cancel or suspend safely; do not
  upload solely because the app was backgrounded.
- User disallows cloud use: save a local draft and expose recovery actions.

### Presentation-stage scope

The current backend has a presentation-enrichment stage in addition to meal
decomposition. Running a second local model call would increase latency and
consume more of AICore's unpublished per-app quota.

For the first local release:

- take meal name and meal type from the validated decomposition;
- derive quantity text deterministically where possible;
- omit or use deterministic copy for optional tips and health summaries when
  the meal has not contacted the backend;
- run backend presentation only when a cloud request is already required.

Feature parity can be revisited after measuring whether a second Nano call fits
the latency, quality, battery, and quota budgets.

## USDA starter pack and cache

### What should be stored

Store authoritative nutrient facts rather than portion-specific meal results:

- FDC identifier;
- normalized description and aliases required by the local matcher;
- data type and preparation state;
- calories, protein, carbohydrates, fat, and fiber per 100 grams;
- units and conversion metadata;
- USDA dataset/release version;
- schema version and retrieval timestamp;
- integrity hash or equivalent corruption check;
- source and freshness state.

Do not cache an LLM macro fallback as a USDA record. If the backend has no USDA
match and returns an estimate, preserve it as `estimated fallback` provenance
for that meal only unless a separate reviewed-fallback system is introduced.

### Storage layers

Use simple, observable storage before designing a specialized binary format:

- **Starter pack**: read-only, versioned, downloadable, and replaceable as one
  unit. Begin with commonly matched high-quality foods from the existing eval
  and production distributions, reviewed for cuisine coverage.
- **Overlay cache**: bounded Drift/SQLite table populated from backend USDA
  responses. Apply LRU or size-based eviction and retain dataset compatibility.
- **Meal snapshot**: immutable copy of the exact nutrient values and provenance
  used when the user logged the meal.

Old meals must not change when either cache layer updates. Re-analysis should be
an explicit new analysis linked to the original.

### Cache keys and invalidation

The authoritative key should include at least `fdc_id` and USDA dataset version.
Canonical search terms and aliases can point to that record but must not become
the nutritional authority themselves.

Invalidate or revalidate entries when:

- the active USDA release changes;
- the cache schema changes;
- required nutrients or units are missing;
- integrity validation fails;
- backend metadata marks a record withdrawn or superseded.

The settings UI should show downloaded size, dataset version, update date, and
a clear-data action. Cache clearing must not remove already logged meal
snapshots.

### Privacy implications

USDA rows are public data, but a user-specific overlay can reveal which foods
the user has analyzed. Keep it inside application-private storage, do not upload
cache inventory as raw eating history, include it in relevant erase/logout
semantics, and document whether clearing local analysis data also clears the
overlay.

## Provenance and contracts

The current pipeline has a free-form ingredient `source` string. Local inference
should move toward typed provenance rather than adding more string conventions.

Conceptually, retain:

```text
Analysis provenance
  interpretationOrigin
  interpretationModel
  interpretationModelVersion
  interpretationDeviceClass
  localAttempted
  fallbackReason

Ingredient provenance
  nutritionOrigin
  fdcId
  usdaDatasetVersion
  matchType
  cachedAt
  confidence

Calculation provenance
  calculationOrigin
  calculationSchemaVersion
```

Candidate origins include:

```text
InterpretationOrigin
  LOCAL_NANO
  CLOUD_MODEL

NutritionOrigin
  BUNDLED_USDA
  CACHED_USDA
  REMOTE_USDA
  DETERMINISTIC_CONSTANT
  LLM_FALLBACK
  UNRESOLVED

CalculationOrigin
  LOCAL_DETERMINISTIC
  SERVER_DETERMINISTIC
```

Every persisted final result should be reconstructable from its ingredient
snapshots and versions. Telemetry may aggregate provenance, but the client
should avoid uploading a persistent hardware identifier solely for cohorting.

## Idempotency and workflow ownership

Local and backend work can finish at different times, be retried, or resume after
clarification. The router must use one monotonic workflow:

- allocate one analysis ID before choosing an executor;
- attach an attempt ID to each local or cloud execution;
- permit only one accepted decomposition snapshot;
- make local-to-backend handoff explicit;
- ignore late results from superseded attempts;
- use the existing persisted pipeline stages for continuation;
- log a meal exactly once;
- preserve parent analysis IDs for explicit re-analysis.

This is more important than minimizing an individual request. Without it, a
timeout followed by a late local result can produce duplicate meals or disagree
with the result already shown to the user.

## Rollout eligibility and kill switch

API presence alone is not enough to enable the feature. Eligibility should
combine:

- app version;
- Android and AICore compatibility;
- Prompt API support for the requested modality;
- model readiness;
- model family/version where exposed;
- successful local canary or known-good cohort;
- remote rollout configuration;
- user preference.

A short-lived cached remote policy should support percentage rollout and an
emergency kill switch by modality and coarse device/model cohort. It should not
require a network round trip before every offline analysis. The app must retain
a safe built-in default if policy refresh is unavailable.

Text and image eligibility must be controlled independently. Text is the first
production candidate; image analysis has higher quality, latency, memory, and
thermal variance.

## Failure modes

| Condition | Automatic policy | Ask policy | Never policy |
| --- | --- | --- | --- |
| Device unsupported | Use backend | Ask to use backend | Manual/backend-disabled path |
| Model not ready | Use backend and explain status | Ask | Save draft/manual entry |
| AICore busy or short-term quota | Bounded retry, then backend | Ask after retry | Save draft |
| Battery-use quota exceeded | Backend | Ask | Save draft until quota recovers |
| App backgrounded | Cancel/pause and resume in foreground | Same | Same |
| Local output invalid | Whole-meal backend fallback | Ask with payload summary | Manual correction |
| Local USDA miss | Fetch missing record | Ask for nutrition lookup | Mark ingredient unresolved |
| Dataset incompatible | Refresh/fetch compatible record | Ask | Mark stale/unresolved |
| Backend unavailable | Persist local draft | Persist local draft | Persist local draft |
| Image local failure | Backend image analysis | Ask before image upload | Manual/text recovery |

Retries must be bounded and use SDK-recommended backoff. A fallback should not
silently change the user's policy or lose their original input.

## External platform constraints

As of August 2026, the design must account for the following documented Android
constraints. They can change and should be rechecked during implementation:

- Prompt API support is limited to listed device/model cohorts rather than all
  Android devices.
- Prompt API and structured-output APIs have evolving beta/alpha stability.
- AICore applies short-term and long-duration per-app quotas without publishing
  fixed request counts. Apps must handle `BUSY` and battery-use quota errors.
- GenAI inference is allowed only while the app is the top foreground app.
- First inference can be substantially slower; warm-up is available.
- Different Gemini Nano versions can produce different output for one prompt.
- ML Kit's published GenAI terms currently include an age/audience restriction
  that requires product and legal review for Calorify.

References:

- [ML Kit GenAI API overview](https://developers.google.com/ml-kit/genai)
- [Prompt API getting started](https://developers.google.com/ml-kit/genai/prompt/android/get-started)
- [Structured output](https://developers.google.com/ml-kit/genai/prompt/android/structured-output)
- [Prompt design](https://developers.google.com/ml-kit/genai/prompt/android/prompt-design)
- [ML Kit GenAI API additional terms](https://developers.google.com/ml-kit/genai-terms)

## Security, privacy, and compliance

Before implementation:

1. Confirm that Calorify's intended and likely audience is compatible with the
   current ML Kit GenAI terms. An acknowledgement sheet is not a substitute for
   satisfying platform terms.
2. Define exactly which payload is sent for every fallback stage. Text, images,
   ingredient names, USDA IDs, and telemetry have different sensitivity.
3. Ensure `Ask` mode previews the meaningful outbound payload and purpose.
4. Do not log raw meal text, images, model prompts, or cache inventory in routine
   analytics.
5. Retain current image ownership and credential-scrubbing guarantees when an
   image fallback occurs.
6. Keep local model output subject to the same validation and safety checks as
   cloud output.
7. Include local cache and provenance data in export/erase semantics where
   appropriate.

## Evaluation strategy

### Establish the baseline

Use the existing calorie reliability suite and expand it before comparing local
and cloud execution. The test set should include:

- explicit grams, counts, cups, spoons, and ambiguous portions;
- simple foods and composite dishes;
- Indian and other globally diverse cuisines;
- colloquial, multilingual, and code-mixed text;
- raw/cooked/dry distinctions;
- commonly omitted oils, sauces, and garnishes;
- adversarial and non-food input;
- meals that require clarification;
- inputs close to structured-output limits.

Maintain a development set and a holdout set. Run stochastic cases repeatedly
and report stability rather than one lucky result.

### Shadow mode

For internal testers and explicitly enrolled canaries whose normal path already
uses the backend:

1. Run local decomposition without showing it to the user.
2. Run the established backend result as authority.
3. Compare ingredient identity, preparation state, count, gram ranges, inferred
   meal type, clarification behavior, and final grounded calories.
4. Record only structured comparison metrics and coarse device/model cohort.
5. Quarantine a cohort when severe invariants regress.

Do not shadow-upload a meal for a user who selected a no-cloud policy.

### Metrics

Quality:

- structured-output validity;
- ingredient precision/recall and severe identity errors;
- explicit-quantity preservation;
- raw/cooked inversion rate;
- omitted defining components;
- gram-range and final calorie error against reviewed references;
- clarification rate and usefulness;
- user correction and abandonment rate.

Performance and reliability:

- capability coverage by device/model cohort;
- warm and cold time to first result;
- total local decomposition latency at p50, p90, and p95;
- local completion and fallback rates;
- fallback reason distribution;
- AICore busy and battery-quota rates;
- cancellation/background transition behavior;
- crash-free and ANR-free sessions;
- thermal and battery impact during repeated submissions.

Nutrition data:

- starter-pack and overlay-cache hit rates;
- missing and stale record rates;
- bytes fetched per meal;
- cache size and eviction rate;
- disagreement between local and backend matching for the same FDC concept.

### Initial release gates

These are proposed starting gates and should be ratified after the prototype:

- At least 99% of accepted local text results pass structural and semantic
  validation without repair.
- No material increase in severe food-identity or preparation-state errors over
  the current backend baseline on the holdout set.
- Explicit user quantities survive local decomposition at the same rate as the
  backend path.
- Warm text decomposition reaches approximately 2 seconds p50 and 5 seconds p95
  on each enabled cohort; cold performance is reported separately.
- At least 90% of eligible text submissions complete locally before fallback in
  beta cohorts after transient setup failures are excluded.
- Every final result contains complete stage and ingredient provenance.
- Cache updates never mutate previously logged meal snapshots.
- The kill switch and each fallback policy are covered by deterministic tests.

Quality gates take precedence over latency or cost savings.

## Delivery plan

### Phase 0 — Product, terms, and contracts

- Confirm the primary promise: speed, privacy, offline availability, or a clear
  order among them.
- Review the ML Kit age/audience restriction and other current terms.
- Define typed capability, provenance, cache, and fallback contracts.
- Define local beta disclosure and cloud-fallback copy.
- Expand the evaluation corpus and capture a repeated backend baseline.
- Decide how local-only results handle optional presentation tips and health
  summaries.

Deliverable: approved product policy, contracts, eval baseline, and release
gates.

### Phase 1 — Android text prototype

- Add the Kotlin ML Kit adapter and narrow Flutter bridge.
- Implement capability checks, model readiness, warm-up, cancellation, and
  stable error mapping.
- Map structured Nano output into the existing decomposition contract.
- Run existing semantic validation and deterministic portion normalization.
- Build the router behind a developer-only flag.
- Keep USDA grounding, calculation, presentation, and persistence on the
  existing backend path.

Deliverable: text decomposition on supported test phones with measured warm and
cold latency.

### Phase 2 — Shadow quality evaluation

- Enable internal/canary cohort policy.
- Compare local decomposition with backend output while cloud remains authority.
- Build dashboards by app, OS, AICore, and exposed model version.
- Add sentinel meal checks for material runtime/model changes.
- Set per-cohort latency and quality eligibility.

Deliverable: evidence that selected device/model cohorts meet the release gates.

### Phase 3 — Opt-in text beta

- Add the default-off setting and capability status.
- Add disclosure, acknowledgement policy version, and fallback selection.
- Use local text interpretation with backend USDA resolution.
- Add one idempotent local-to-cloud state machine.
- Add provenance to result contracts and a compact result-screen summary.
- Add remote cohort rollout and emergency disable controls.
- Keep Wear OS delegating text requests to the phone router.

Deliverable: a reliable opt-in beta that saves the model round trip when local
execution succeeds but retains cloud nutrition grounding.

### Phase 4 — Local nutrition data

- Build and review the first downloadable USDA starter pack.
- Add the versioned overlay-cache schema and eviction policy.
- Return cacheable USDA rows and active dataset metadata from the backend.
- Port or share deterministic macro calculation and uncertainty invariants.
- Add offline drafts, stale-state handling, and missing-record recovery.
- Add cache controls and detailed nutrition provenance.

Deliverable: fully local text meal analysis for meals covered by local USDA data.

### Phase 5 — Image feasibility and beta

- Benchmark image Prompt API quality independently from text.
- Define compression/downsampling and memory budgets.
- Preserve current image ownership and credential handling for cloud fallback.
- Add image-specific consent when fallback policy is `Ask`.
- Roll out image cohorts separately with stricter battery, latency, and identity
  gates.

Deliverable: image beta only for cohorts where it is materially useful and safe.

### Phase 6 — Expansion

- Expand supported cohorts from measured evidence.
- Consider reusable user-confirmed meal templates with explicit reset controls.
- Evaluate whether presentation enrichment fits in one local call, a second call,
  or deterministic UI logic.
- Revisit the default-off choice only after reliability and terms permit it.
- Keep the backend fallback indefinitely unless platform availability becomes
  sufficiently universal.

## Engineering workstreams

### Android

- ML Kit adapter and dependency configuration.
- Capability and readiness reporting.
- Warm-up, foreground lifecycle, cancellation, and error mapping.
- Native performance instrumentation.

### Flutter app

- Settings persistence and capability presentation.
- Disclosure and fallback-selection sheet.
- Meal-analysis router and state machine.
- Local validator and calculation integration.
- Cache management and provenance UI.
- Offline drafts and recovery flows.

### Shared contracts

- Typed execution origins and fallback reasons.
- Model and USDA dataset version metadata.
- Immutable nutrition snapshots.
- Backward compatibility with clients that do not understand local provenance.

### Backend

- Partial USDA resolution/cache-fill endpoint or extension of existing routes.
- Active dataset metadata in responses.
- Idempotent handoff using the client analysis ID.
- Cohort rollout/kill-switch configuration.
- Shadow comparison and cohort observability.

### Data and evaluation

- Reviewed starter-pack selection.
- Broader text and image evaluation sets.
- Device/model cohort test matrix.
- Cache versioning and migration tests.

## Testing matrix

At minimum, test:

- unsupported, supported-not-ready, and ready devices;
- each fallback policy;
- warm, cold, busy, quota-limited, backgrounded, and cancelled inference;
- malformed and semantically invalid structured output;
- local USDA hit, overlay hit, stale hit, miss, and dataset migration;
- offline success, partial draft, reconnect, and delayed completion;
- late local response after backend fallback;
- clarification followed by resume;
- app restart during each persisted stage;
- model and policy update between analysis and resume;
- phone-assisted watch request with phone available, busy, and absent;
- old clients receiving results with new provenance fields;
- cache clear, logout, export, and erase behavior.

## Risks and mitigations

| Risk | Mitigation |
| --- | --- |
| Nano quality differs by device/model | Cohort-based evals, shadow mode, strict validation, remote disable |
| Unpublished quotas interrupt heavy users | One focused call, bounded retry, cache results, backend fallback |
| First request is slow | Warm on entry to meal flow, report warm/cold metrics |
| Local and cloud results race or duplicate | One analysis ID, monotonic state machine, superseded attempt tokens |
| Local mode creates a false privacy promise | Explicit fallback policy and per-stage provenance |
| USDA cache becomes stale | Dataset-version keys, freshness states, immutable meal snapshots |
| Overlay cache reveals eating history | App-private storage, bounded telemetry, clear/erase semantics |
| Missing local food silently becomes zero calories | Unresolved state, remote lookup, clarification/manual recovery |
| Two model calls consume latency and quota | Keep presentation deterministic or optional initially |
| Image inference overheats or stalls | Separate rollout and stricter cohort budgets |
| Platform terms conflict with Calorify's audience | Product/legal review before SDK integration |
| Feature becomes an unmaintainable second pipeline | Reuse contracts, validation, state machine, and deterministic engine |

## Decisions proposed by this plan

- Local analysis is optional and off by default.
- Text ships before image.
- The watch delegates local inference to the phone.
- Backend fallback remains a supported path.
- The user explicitly chooses automatic, ask, or never fallback.
- Runtime availability never rewrites the saved user preference.
- USDA and deterministic calculation remain authoritative for nutrition.
- Only authoritative USDA records populate the nutrition cache.
- Historical meals store immutable nutrient snapshots.
- Provenance is typed and per stage/ingredient.
- A remote cohort policy and kill switch protect rollout.
- Specialized binary USDA packs and adaptive cuisine packs are deferred until
  simpler storage is demonstrably inadequate.

## Open questions

1. Is the primary customer promise speed, privacy, offline use, or a specific
   hierarchy of those three?
2. Should `Automatic` or `Ask each time` be the preselected fallback choice when
   a user enables local analysis?
3. Is Calorify's intended and likely audience compatible with the current ML Kit
   GenAI age restriction?
4. How much feature parity is required for tips and health summaries in a fully
   offline result?
5. What storage budget should the starter pack and overlay cache use?
6. Which foods and cuisines define the first starter pack, and what coverage
   evidence is required?
7. Should a missing USDA record send the complete meal context, a reduced
   structured context, or require whole-meal fallback?
8. How long may a cached rollout policy remain valid while offline?
9. Should user-confirmed meals become reusable local templates in a later phase?
10. What telemetry can be retained without collecting raw meal content or a
    persistent device fingerprint?

## Recommended first implementation slice

The smallest slice that answers the major unknowns is:

1. Add a developer-only Kotlin Prompt API adapter for text.
2. Reuse the existing decomposition schema and validation rules.
3. Run on a small supported-device matrix and record warm/cold latency.
4. Compare Nano decomposition against the reviewed backend eval corpus.
5. Keep all USDA matching and meal persistence on the backend.
6. Do not build settings, image inference, or the USDA cache until this slice
   demonstrates acceptable quality and device behavior.

This slice determines whether local inference is worth productizing without
committing Calorify to the more expensive cache, provenance UI, and offline
workflow work prematurely.
