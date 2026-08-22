# Local inference for meal analysis

Status: Engineering implementation complete through Phase 4; rollout gated
Last updated: 2026-08-22

## Executive summary

Calorify should add an optional on-device meal-analysis path for supported
Android phones. The first model-backed release should use Gemini Nano through
Android's AICore and ML Kit Prompt API for text-only meal decomposition, retain
the existing backend as a fallback, and continue grounding nutrition against
USDA data rather than asking the model to invent calories or macros.

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

## Implementation status — 22 August 2026

Phases 1–4 are implemented as default-off release candidates. In addition to
the Phase 1–3 hybrid text path, the repository now contains the reviewed USDA
starter-pack pipeline, detached-signature pack verification and rollback,
bounded authoritative row cache, structured cache-fill resolver, exact local
matching, deterministic on-device calculation, immutable meal snapshots,
separate download controls, detailed provenance, and Phase 4 developer
diagnostics. Phase 5 is intentionally deferred.

This is an engineering-complete checkpoint, not a claim that the limited beta
has already shipped. Production release completion still requires the external
gates in this plan: product/terms approval, a supported physical-device matrix,
live holdout and latency evidence, staged distribution, telemetry review, and a
live rollback rehearsal. The implementation and verification records are in
`backend/docs/local-inference-phases-1-3-release-candidate.md` and
`backend/docs/local-inference-phase-4-release-candidate.md`.

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
   finish: automatic cloud fallback, ask before fallback, or never use cloud for
   analysis.
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

## Non-goals for the early releases

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

The Wear OS app continues its existing phone-assisted authenticated backend
path for text analysis. Applying the phone's local policy is deliberately held
until the watch flow has a proposal-review or equivalent confirmation contract;
silently accepting a local proposal would weaken the Phase 3 user-review
boundary. The watch itself does not run Nano, and image analysis remains a
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

The full product target offers three cloud-fallback policies:

- **Automatic**: use the backend when local processing cannot finish. This is
  the recommended reliability setting.
- **Ask each time**: show the failed stage and outbound data before sending it.
- **Never use cloud for analysis**: retain a local draft and offer clarification
  or manual entry.

Phase 3 releases with `Automatic` as the only supported beta behavior and says
so explicitly in the disclosure. Phase 5 exposes the chooser after local USDA
data and recoverable drafts exist, making `Ask each time` and `Never use cloud
for analysis` honest, useful options rather than dead ends.

These policies govern meal-analysis processing. They do not silently alter the
existing account behavior for syncing a meal after the user chooses to log it;
analysis privacy and logged-meal sync must be explained as separate controls.

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
  cloudFallbackPolicy: automatic | ask | neverForAnalysis
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
cloud implementations during the sequential roadmap; shadow comparison is
observational and cannot win the user-visible request.

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
- detached Ed25519 signature covering the manifest metadata and exact pack
  bytes;
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

### Program-level release gates

These are proposed program-level gates. Each sequential phase below also has
its own narrower acceptance criteria and may tighten these thresholds before it
ships:

- At least 99% of completed local text generation attempts produce results that
  pass structural and semantic validation without arbitrary repair.
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

## Sequential release plan

### Execution rule

The phases below are strictly sequential. Work on a later phase must not be
mixed into the implementation of the active phase. A phase is complete only
after its deliverables are released to the named target, its acceptance gates
pass, and its rollback is rehearsed.

Each release adds at most one new kind of authority:

1. establish contracts and evidence;
2. let Nano observe and propose;
3. let an approved local proposal drive cloud-grounded nutrition;
4. let verified local USDA data and deterministic code calculate nutrition;
5. let user policy prohibit or approve network egress;
6. graduate text analysis to an operationally supported feature;
7. let images produce the same proposal contract.

Models never gain authority to write calories or macros. They produce editable
ingredient proposals; authoritative nutrition data and deterministic arithmetic
remain the settlement boundary throughout the roadmap.

### Definition of done for every phase

Every phase must leave the repository and released system in a state that can
remain indefinitely even if no later phase is built. Completion requires:

- all phase-scoped code, generated contracts, migrations, tests, and
  documentation merged together;
- the declared release target deployed and smoke-tested;
- backward compatibility with the previous supported app/backend generation;
- all new behavior controlled by a default-safe flag or policy;
- metrics sufficient to evaluate the phase without logging raw meal text or
  images;
- acceptance gates recorded against a named build and device/model cohort;
- a rollback rehearsal proving that the previous released path resumes without
  duplicate meals, lost drafts, or changed historical nutrition;
- known limitations and deliberately deferred scope recorded in this document;
- a written go/no-go decision before the next phase begins.

Repository implementation readiness and production release completion are
tracked separately. A checked engineering phase below means its code,
contracts, migrations, default-safe controls, tests, and operator notes are
ready for the declared release process. It is not marked `released` in a phase
completion record until the deployment, physical-device evidence, metrics, and
rollback requirements above are also complete.

Use this completion record at the end of each phase:

```text
Phase:
Status: released | stopped
App/backend release identifiers:
Eligible device/model cohorts:
Acceptance report:
Rollback rehearsal:
Known limitations:
Go/no-go decision for next phase:
```

### Release preconditions — resolve before enabling the candidate

These are blocking release decisions, not another implementation phase. The
default-off code may be reviewed internally, but no Phase 3 cohort should be
enabled until they are resolved:

- confirm that Calorify's audience and intended use comply with the current ML
  Kit GenAI terms, including the published age/audience restriction;
- define the Phase 3 product promise as faster optional text interpretation
  with clearly disclosed automatic cloud fallback;
- select the initial supported-device test matrix and obtain physical devices;
- approve the rule that local models can propose ingredients and portions but
  cannot provide authoritative nutrient values;
- name owners for product copy, evaluation sign-off, Android integration,
  backend contracts, and rollout decisions;
- decide where phase completion reports and device benchmark results are kept.

If any precondition cannot be resolved, keep the backend capability disabled
and do not distribute an enabled candidate.

### Roadmap at a glance

| Phase | Release | New authority | Release target | Durable outcome |
| --- | --- | --- | --- | --- |
| 1 | Workflow foundation | Evidence only | Production, behavior off | Typed proposals, provenance, replay-safe routing, baseline |
| 2 | Local text candidate | Observe and propose | Internal testing track | Supported phones emit validated ingredient proposals |
| 3 | Hybrid text beta | Local interpretation | Limited production beta | Opt-in Nano text analysis with cloud nutrition grounding |
| 4 | Local nutrition beta | Local grounding and calculation | Limited production beta | Covered text meals complete fully on-device |
| 5 | Private and offline modes | User-controlled egress | Limited production beta | Ask/Never-for-analysis and durable offline drafts |
| 6 | Text general availability | Operational support | Eligible production cohorts | Stable, supported on-device text analysis |
| 7 | Local image beta | Image proposals | Separate limited beta | Images feed the proven text/nutrition pipeline |

Progress tracker:

- [x] Phase 1 — Workflow foundation (engineering complete; production release
  record pending)
- [x] Phase 2 — Local text candidate (internal candidate complete; supported
  physical-device benchmark pending)
- [x] Phase 3 — Hybrid text beta (default-off release candidate complete;
  limited rollout and live acceptance metrics pending)
- [x] Phase 4 — Local nutrition beta (default-off release candidate complete;
  production pack publication and cohort acceptance pending)
- [ ] Phase 5 — Private and offline modes (explicitly deferred)
- [ ] Phase 6 — Text general availability
- [ ] Phase 7 — Local image beta

Work is intentionally stopped after Phase 4. Local nutrition is implemented
behind default-off capability and preference gates. Phase 5 egress modes and
durable offline drafts are not included in this checkpoint.

## Phase 1 — Workflow foundation

### Release outcome

The existing cloud meal-analysis experience behaves the same, but every result
travels through a versioned proposal, routing, provenance, and attempt model that
later local executors can reuse. This phase improves current observability,
replay safety, and duplicate prevention even if local inference never ships.

### Release target

Production backend and normal phone/watch releases. All local-inference flags
remain absent from user settings and disabled by default.

### Authority added

None. The existing backend remains the only interpreter, USDA resolver,
calculator, and persistence authority.

### In scope

- Define `IngredientProposalV1` for ingredient identity, preparation, quantity,
  unit/count, portion range, confidence, and field provenance. Nutrient values
  are forbidden from this contract.
- Define typed interpretation, nutrition, calculation, and fallback origins.
- Add an analysis-attempt identity and monotonic executor handoff to the existing
  persisted workflow.
- Put the current backend path behind a `MealAnalysisExecutor`/router boundary
  while routing 100% of requests to the cloud executor.
- Persist a bounded analysis receipt containing contract versions, stage
  origins, USDA dataset version, calculation version, attempts, and fallback
  reason. Do not persist raw prompts in the receipt.
- Add an additive remote capability policy with all local capabilities off.
- Expand and freeze the text holdout set; record the repeated backend quality
  and latency baseline used by later phases.
- Preserve two-generation compatibility: the backend accepts the current and
  previous supported envelopes, while older clients ignore additive fields.

### Deliverables

1. Versioned protobuf/domain contracts and regenerated Dart, TypeScript, and
   Kotlin bindings.
2. Cloud-only router and executor implementation.
3. Persisted analysis receipt and attempt/handoff semantics.
4. Provenance mapping for every existing result ingredient.
5. Default-off remote capability policy and emergency routing switch.
6. Expanded deterministic tests, holdout corpus, and committed baseline report.
7. Migration and compatibility tests for current and previous client contracts.

### Acceptance gates

- With local flags off, existing API responses, clarification behavior, and
  calculated nutrition are unchanged except for additive provenance fields.
- The same backend fixtures produce numerically identical macros and calorie
  bands before and after the router boundary.
- Retries, stream interruption, clarification resume, and late attempts cannot
  create duplicate logged meals or replace an accepted snapshot.
- Every successful analysis contains a complete receipt and ingredient
  provenance; no routine receipt contains raw meal text or image URLs.
- Current and previous supported app builds can complete an analysis against the
  updated backend.
- The expanded baseline has a named dataset version and repeated quality and
  p50/p95 latency results.
- Disabling the new router path restores direct cloud execution without a data
  migration or historical meal changes.

### Rollout

Deploy additive backend contracts first, then phone and watch clients. Keep all
local capability flags off for the entire phase. Observe one normal release
cycle before declaring the phase complete.

### Rollback

Route all analyses directly to the existing cloud executor and ignore additive
receipt fields. Keep additive database/protobuf fields in place so rollback
does not require destructive migrations.

### Explicitly deferred

- ML Kit/AICore dependencies and capability detection;
- local model calls or shadow inference;
- local-analysis settings and disclosure;
- local USDA storage or calculation;
- offline drafts and network-egress controls;
- image inference.

### Phase completion artifact

A production release plus a baseline report proving behavioral parity,
two-generation compatibility, complete provenance, and successful cloud-only
rollback.

## Phase 2 — Local text candidate

### Release outcome

An installable internal build can run Gemini Nano on supported phones and emit a
strictly validated `IngredientProposalV1`. Local output is observational: it may
be inspected and compared, but it cannot change user-visible nutrition or saved
meals.

### Release target

Internal Play testing track and developer/debug tooling. Production code may
contain the adapter behind an unreachable default-off capability, but ordinary
users see no new setting or behavior.

### Authority added

Nano can observe text and propose a typed ingredient manifest. It cannot select
USDA rows, calculate nutrition, modify the authoritative cloud response, or save
a meal.

### In scope

- Add the Kotlin ML Kit Prompt API adapter and a narrow Flutter bridge.
- Implement permanent support checks, readiness, warm-up, model information,
  foreground lifecycle, timeout, cancellation, and stable Calorify error codes.
- Create the concise text decomposition prompt and structured-output mapping.
- Validate local output against `IngredientProposalV1` and the existing portion
  invariants.
- Add an internal comparison view or report that aligns local proposals with the
  authoritative backend decomposition.
- Run shadow comparisons only for internal/explicit canary accounts whose
  normal disclosed path already uses the backend.
- Record quality, warm/cold latency, quota, background, and failure metrics by
  coarse device/model cohort without a persistent device fingerprint.

### Deliverables

1. Android local-text adapter and Flutter platform interface.
2. Capability/readiness state model with stable error mapping.
3. Nano prompt, structured schema, normalizer, and validator.
4. Internal diagnostics/comparison surface.
5. Device/model benchmark harness and matrix.
6. Shadow comparison report against the Phase 1 holdout baseline.
7. Go/no-go recommendation for a user-facing text beta.

### Acceptance gates

- Unsupported devices and supported devices without a ready model retain the
  Phase 1 cloud behavior without crashes or startup regressions.
- Local proposals contain no nutrient values and cannot reach persistence or
  alter the authoritative result.
- At least 99% of completed local generation attempts produce outputs that pass
  structural and semantic validation without arbitrary repair.
- Explicit quantities and preparation states meet the Phase 1 non-regression
  thresholds on the holdout set.
- No material increase in severe ingredient-identity errors over the backend
  baseline for any proposed eligible cohort.
- Warm text inference reaches approximately 2 seconds p50 and 5 seconds p95 for
  each cohort proposed for Phase 3; cold latency is reported separately.
- Busy, quota, background, cancellation, model-update, and malformed-output
  paths produce deterministic reason codes and bounded behavior.
- The internal build can disable the adapter and immediately return to the Phase
  1 cloud-only path.

### Rollout

Start with developer devices, then the internal testing track. Add one device or
model cohort at a time. Local output remains non-authoritative throughout this
phase.

### Rollback

Disable the internal capability flag. Because no local result can be accepted or
persisted, rollback has no meal-data migration.

### Explicitly deferred

- public setting, acknowledgement, or marketing copy;
- using local output as the accepted interpretation;
- local USDA data and macro calculation;
- Ask/Never-for-analysis cloud-fallback policies;
- Wear OS activation;
- image prompts.

### Phase completion artifact

An internal release and cohort-specific feasibility report. A no-go result is a
valid completion: the program stops while Phase 1 remains useful in production.

## Phase 3 — Hybrid text beta

### Release outcome

Eligible users can opt into on-device text interpretation. Nano produces the
editable ingredient proposal; after validation and user review, the existing
backend remains responsible for USDA grounding, deterministic calculation,
clarification continuation, presentation, and persistence.

This release delivers faster local interpretation without claiming fully
offline or never-cloud behavior.

### Release target

Limited production beta for approved device/model cohorts. The feature is off by
default.

### Authority added

A validated and user-approved local proposal may replace cloud decomposition.
Nutrition values and saved meal totals remain authoritative only after backend
settlement.

### In scope

- Add the capability-gated settings row and current status.
- Add the one-time versioned disclosure and acknowledgement.
- State clearly that this phase uses automatic cloud fallback and still sends
  the structured ingredient proposal to Calorify for nutrition grounding.
- Route eligible text requests through local interpretation and strict
  validation.
- Present inferred ingredients and portions through an editable confirmation or
  existing correction surface before logging.
- Use the Phase 1 attempt/handoff state machine for timeout and fallback.
- Show compact interpretation provenance in the result screen.
- Add remote cohort rollout and a modality-specific kill switch.
- Keep phone-assisted Wear OS text requests on their existing authenticated
  backend path until a watch-compatible proposal review/settlement handoff is
  available; the watch itself does not run Nano.

### Deliverables

1. Default-off on-device text setting and capability status.
2. Disclosure/acknowledgement UI and policy-version persistence.
3. Production text router using local interpretation plus cloud settlement.
4. Editable proposal review/correction experience.
5. Automatic whole-meal fallback with typed reason codes.
6. Interpretation provenance in contracts and result UI.
7. Cohort controls, dashboards, support diagnostics, and kill-switch runbook.

### Acceptance gates

- Only Phase 2-approved cohorts can enable the setting.
- Enabling, temporary unavailability, and fallback never rewrite the saved user
  preference without user action.
- A local proposal cannot directly write nutrient values or bypass the
  authoritative backend calculator/save path.
- Local success and every fallback reason produce one final result and at most
  one logged meal under retry, cancellation, app restart, and late completion.
- Holdout quality and user-correction rates meet the program-level gates for
  every enabled cohort.
- At least 90% of eligible warmed text submissions complete local interpretation
  before fallback after setup failures are excluded.
- Result provenance identifies local or cloud interpretation for 100% of beta
  analyses.
- Analytics contain no raw meal text; disclosure copy accurately describes all
  transmitted data.
- A live kill-switch rehearsal returns enabled users to the Phase 1 cloud path
  without data loss or an app release.

### Rollout

Release to internal accounts, then staged percentages of eligible opt-in users.
Hold each cohort until quality, latency, fallback, crash, and correction metrics
are reviewed. Do not enable a new device/model cohort merely because the API is
present.

### Rollback

Disable local text interpretation by cohort. Preserve the user's preference and
route submissions through the Phase 1 cloud executor. Hide new enablement for
disabled cohorts while keeping already logged provenance readable.

### Explicitly deferred

- downloaded USDA data, overlay cache, and local macro calculation;
- Ask and Never fallback modes;
- guarantees that meal data never leaves the phone;
- durable partial/offline drafts;
- image inference;
- Wear OS activation of the phone's local proposal policy;
- default-on behavior.

### Phase completion artifact

A limited production beta with an opt-in funnel, stable cloud rollback, and an
acceptance report for each enabled cohort.

## Phase 4 — Local nutrition beta

### Release outcome

Users can optionally download offline nutrition data. When every approved
ingredient resolves to compatible local USDA data, the phone grounds the meal
and calculates calories and macros deterministically without a backend round
trip. Missing records use the Phase 3 automatic backend path and populate a
bounded authoritative cache.

### Release target

Limited production beta layered onto Phase 3 cohorts. The offline nutrition
download is a separate, default-off sub-toggle.

### Authority added

Verified local USDA rows may become the nutrition authority, and deterministic
phone code may become the calculation authority. Nano still has proposal-only
authority.

### In scope

- Build a reviewed, versioned USDA starter pack with a detached-signature-
  verified manifest and atomic activation/rollback. A separate content hash is
  intentionally not part of the Phase 4 contract.
- Add a bounded Drift/SQLite overlay cache for authoritative backend-fetched
  USDA records.
- Add a local nutrition repository over starter pack, overlay cache, and remote
  miss resolution.
- Return FDC ID, nutrients per 100 grams, units, dataset version, and cache
  metadata from the backend resolver.
- Port or share deterministic scaling, aggregation, rounding, confidence, and
  clarification invariants.
- Persist immutable nutrient snapshots so pack/cache updates never alter old
  meals.
- Add download size/version/update/clear controls and detailed nutrition and
  calculation provenance.
- Use deterministic local presentation where necessary; do not add a second
  Nano call in this phase.

### Deliverables

1. Reproducible starter-pack build pipeline, reviewed manifest, and download.
2. Atomic pack installer with signature, compatibility, and rollback checks.
3. Versioned overlay-cache schema, size limit, eviction, and erase semantics.
4. Backend cache-fill/resolution contract.
5. Local USDA matcher/repository and deterministic calculator.
6. Cross-platform golden tests proving calculator parity.
7. Offline nutrition settings and per-ingredient provenance UI.

### Acceptance gates

- For identical ingredient IDs, nutrient rows, portions, and calculation
  versions, local and backend totals agree within documented rounding rules.
- The starter pack covers the approved target proportion of the Phase 1 common
  food/eval distribution; the target is recorded before pack selection to avoid
  tuning the denominator after implementation.
- Corrupt, partial, interrupted, incompatible, and superseded packs are never
  activated.
- A pack update can atomically return to the previous known-good generation.
- No LLM-generated macro estimate can enter the USDA starter pack or overlay
  cache as an authoritative row.
- Cache misses, stale records, and ambiguous matches fall back without assigning
  silent zero calories.
- Pack/cache updates and cache clearing do not change existing logged meals.
- Local calculation, remote miss, and mixed-source results have complete
  per-ingredient provenance.
- Disabling local nutrition routes all grounding and calculation to Phase 3
  without deleting user meals.

### Rollout

First ship pack download and validation to internal testers, then enable local
calculation for the same cohort. Expand only after cache hit rate, parity,
storage, corruption, and fallback metrics pass review.

### Rollback

Disable the local resolver/calculator and return to Phase 3 cloud settlement.
Leave downloaded packs/cache dormant until a later compatible release or an
explicit user clear; historical meal snapshots remain readable.

### Explicitly deferred

- Ask/Never-for-analysis egress policies and a strict no-analysis-network
  guarantee;
- completion of meals whose required USDA rows are absent while offline;
- background inference;
- adaptive cuisine packs or personalized nutrition datasets;
- image interpretation.

### Phase completion artifact

A production beta in which covered text meals complete end-to-end on-device,
with measured pack coverage, cache behavior, calculator parity, and atomic data
rollback.

## Phase 5 — Private and offline modes

### Release outcome

Users can choose `Automatic`, `Ask each time`, or `Never use cloud for analysis`.
Meals that cannot finish locally become durable drafts with explicit unresolved
ingredients and can resume idempotently after approval, reconnection, manual
editing, or new local data.

### Release target

Limited production beta on Phase 4 cohorts after separate privacy and failure-
recovery review.

### Authority added

User policy becomes an enforceable analysis-egress boundary. No analysis
executor may send unlogged meal input merely because local processing failed.
The policy does not redefine the separately disclosed behavior for syncing a
meal after the user explicitly logs it.

### In scope

- Add the three fallback policies and explain them in the enablement sheet.
- Centralize all analysis-related outbound requests behind an egress policy
  gate.
- In `Ask`, show the failed stage, purpose, and meaningful outbound payload
  before a one-meal approval.
- In `Never use cloud for analysis`, prohibit meal text, image, ingredient, and
  unresolved-context uploads to analysis services while preserving manual/local
  recovery.
- Persist drafts at raw-input, proposal, nutrition-resolution, and calculation
  checkpoints with one analysis ID.
- Add restart, reconnect, data-pack update, manual edit, and approved-fallback
  resume paths.
- Add draft management, deletion, expiry/retention, export/erase, and cache
  privacy behavior.
- Show unresolved nutrition explicitly and never log a silent partial total as a
  complete meal.

### Deliverables

1. Fallback-policy settings and revised versioned acknowledgement.
2. Auditable outbound-request/egress gate.
3. Durable draft schema and checkpoint state machine.
4. Ask-mode approval UI and Never-for-analysis recovery UI.
5. Idempotent replay/resume worker and conflict handling.
6. Draft/cache export, erase, logout, and retention behavior.
7. Network-isolation, restart, late-result, and replay test suites.

### Acceptance gates

- Traffic-capture tests prove that `Never use cloud for analysis` sends no
  unlogged meal content or derived context to analysis services during analysis,
  retries, telemetry, or failure recovery.
- If the user later logs the meal, any existing account sync is distinguishable
  from analysis traffic and follows its separately documented controls.
- `Ask` sends only the disclosed payload for the approved meal and stage; denial
  preserves the draft.
- Automatic mode retains Phase 4 behavior and performance.
- Killing the app at every persisted checkpoint yields one recoverable draft and
  never duplicates a logged meal after resume.
- Missing/stale nutrition remains unresolved rather than becoming zero or an
  unchecked estimate.
- A model, app, USDA pack, or policy update between draft creation and resume is
  handled by explicit compatibility/restart rules.
- Clearing drafts/cache and account erase follow documented semantics without
  corrupting logged snapshots.
- Disabling the phase never converts `Never use cloud for analysis` users to
  automatic cloud analysis.

### Rollout

Start with internal privacy tests, then release `Ask`, followed by `Never use
cloud for analysis`, to a small eligible cohort. Expand only after egress audits
and draft-recovery metrics pass review.

### Rollback

Disable new draft creation and Ask/Never-for-analysis enablement while
preserving existing policy choices and drafts. `Never use cloud for analysis`
users degrade to manual/local-only analysis, not cloud fallback. Automatic users
can return to Phase 4 behavior.

### Explicitly deferred

- image inference and image-specific payload approval;
- background AICore execution;
- automatic commitment of unresolved meals;
- cross-user or server-synchronized private cache inventories;
- default-on local analysis.

### Phase completion artifact

A privacy-reviewed release with independently verified network isolation,
recoverable drafts, and tested policy-preserving rollback.

## Phase 6 — Text general availability

### Release outcome

On-device text analysis graduates from beta for approved device/model cohorts.
It remains optional and off by default, but has production support, alerts,
runbooks, compatibility policy, and measured service objectives.

### Release target

All production users in explicitly approved text cohorts.

### Authority added

No new data authority. This phase converts the Phase 3–5 feature set into an
operationally supported product.

### In scope

- Complete cohort qualification and publish the support matrix.
- Define local success, fallback, quality, latency, crash, quota, cache, draft,
  and egress service-level indicators.
- Add alerts and operational dashboards with coarse, privacy-preserving cohorts.
- Add model/AICore update monitoring and a recurring sentinel/holdout process.
- Rehearse text kill switch, local nutrition rollback, pack rollback, and draft
  preservation.
- Finish user help, support diagnostics, privacy copy, and incident runbooks.
- Remove internal-only bypasses and document long-term contract compatibility.
- Review whether beta labels can be removed; do not change the default setting
  without a separate product decision and evidence.

### Deliverables

1. Published supported-device/model matrix and cohort policy.
2. Production SLI dashboards, alerts, and ownership rotation.
3. Model/data drift evaluation schedule and reports.
4. Kill-switch, pack rollback, privacy incident, and support runbooks.
5. Finalized user documentation and diagnostics export.
6. Text GA release notes and completed operational readiness review.

### Acceptance gates

- Every GA cohort meets the program quality and latency gates through the
  required soak period defined before rollout.
- Fallback, crash/ANR, quota, correction, draft-abandonment, and cache-error
  rates remain within approved budgets.
- One complete model/config update cycle or equivalent rehearsal demonstrates
  detection of a regression and cohort disablement.
- On-call can identify an affected cohort and return it to cloud-only behavior
  using documented controls.
- Support diagnostics contain enough version/provenance information to
  investigate failures without raw meal content.
- All terms, privacy, security, accessibility, localization, and support reviews
  are signed off.

### Rollout

Promote one proven beta cohort at a time. Beta cohorts that do not meet GA gates
remain beta or return to cloud-only behavior without blocking qualified cohorts.

### Rollback

Return affected cohorts to the Phase 1 cloud path or Phase 3 hybrid path while
preserving preferences, packs, drafts, and provenance. Rollback scope is by
modality and cohort, not a global app downgrade.

### Explicitly deferred

- local image interpretation;
- default-on local analysis;
- personalized meal templates or adaptive cuisine packs;
- a second Nano call for presentation enrichment.

### Phase completion artifact

A signed operational-readiness review and a stable production text feature for
the published support matrix.

## Phase 7 — Local image beta

### Release outcome

Supported phones can turn a meal photo into the same editable
`IngredientProposalV1` used by text. Users confirm or correct the proposal before
the already released nutrition, calculation, fallback, draft, and persistence
pipeline proceeds.

### Release target

Separate limited production beta controlled independently from text GA.

### Authority added

The image model can propose ingredient identity and portions. It cannot select
authoritative nutrient rows, directly calculate macros, or bypass confirmation.

### In scope

- Add image-specific capability checks and cohort policy.
- Define image compression, dimensions, memory, latency, and thermal budgets.
- Add local image-to-proposal prompting and strict validation.
- Require proposal review before nutrition settlement.
- Apply Automatic/Ask/Never-for-analysis policy to image fallback, including
  explicit image upload consent in `Ask`.
- Preserve current object ownership, credential scrubbing, transient-file
  deletion, and cancellation guarantees.
- Add image-specific provenance, quality evaluation, and support diagnostics.

### Deliverables

1. Local image adapter producing `IngredientProposalV1`.
2. Image preprocessing and lifecycle implementation.
3. Confirmation/correction flow shared with text proposals.
4. Image-specific fallback and consent behavior.
5. Diverse image holdout set and cohort benchmark report.
6. Memory, thermal, battery, latency, privacy, and credential tests.
7. Independent image rollout and kill-switch controls.

### Acceptance gates

- Image proposals meet separately approved ingredient-identity, omission,
  portion, and severe-error thresholds on the diverse holdout set.
- Every image-derived proposal is reviewed or explicitly accepted before it can
  reach nutrition settlement.
- Enabled cohorts meet declared p50/p95 latency, memory, battery, and thermal
  budgets under repeated use.
- `Never use cloud for analysis` performs no image upload; `Ask` uploads only
  after explicit one-meal approval; Automatic follows the disclosed policy.
- Cancellation, app backgrounding, and fallback leave no unintended temporary
  image or credential-bearing URL behind.
- Disabling image inference returns only image requests to the released cloud or
  manual/text path; text local analysis remains unaffected.

### Rollout

Use a new internal image feasibility cohort, then staged opt-in beta cohorts.
Text GA status does not automatically qualify a device for image inference.

### Rollback

Disable the image-local capability by cohort. Preserve text settings and route
image entry through the user's existing cloud-fallback policy or manual/text
recovery.

### Explicitly deferred

- image GA or default-on image analysis;
- automatic meal logging without proposal confirmation;
- direct image-to-macro generation;
- local image inference on Wear OS;
- reusable personalized meal recognition.

### Phase completion artifact

A separately controlled image beta with an image-specific acceptance report,
privacy verification, and rollback rehearsal. Image GA requires a new plan based
on Phase 7 evidence rather than being assumed by this roadmap.

## Work deferred beyond the sequential roadmap

- image general availability;
- default-on local analysis;
- user-confirmed reusable meal templates;
- adaptive or cuisine-personalized USDA packs;
- local presentation enrichment with an additional model call;
- direct local inference on Wear OS;
- dynamic server-controlled placement of arbitrary pipeline stages.

These items require separate evidence and planning after the seven phases. They
must not be pulled opportunistically into an active phase.

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

1. After Phase 3 establishes speed as the first promise, how should privacy and
   offline capability be ordered in Phase 5 messaging?
2. When Phase 5 exposes the fallback chooser, should existing Phase 3 users stay
   on `Automatic`, and what should be preselected for newly enabled users?
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

## Current stopping point

The repository is stopped at the Phase 4 default-off release candidate. Before
enabling a limited beta, complete the remaining release gates in this order:

1. Complete the Ed25519 signing-key ceremony, build the reviewed pack, and
   publish the pack and manifest to the existing Oracle object storage.
2. Configure the matching trusted public key in the app candidate and enable
   the backend manifest/resolver capability only for the intended cohort.
3. Run the committed holdout plus cold/warm latency and pack lifecycle checks
   on each supported physical Gemini Nano device/model cohort.
4. Repeat backend compatibility, cache-fill, data rollback, and global text
   kill-switch checks against the deployed candidate.
5. Publish through internal testing, then a deliberately limited eligible
   cohort; review pack coverage, cache hit rate, fallback, parity, latency,
   storage, crash, and completion metrics.
6. Record release IDs, evidence, and a go/no-go decision for Phases 1–4.

Do not begin Phase 5 as part of this checkpoint. In particular, do not add
Ask/Never egress policies, durable offline drafts, image inference, or broader
privacy guarantees beyond the implemented Phase 4 local-completion path.
