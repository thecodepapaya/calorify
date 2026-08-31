# Meal-analysis V3 architecture and roadmap

Status: V3 app/backend cutover implemented; reliability and efficiency work
continues

Last reviewed: 2026-08-31

## Purpose and ownership

Meal analysis turns exactly one text description or image into a localized,
quantified meal. It resolves nutrition-bearing ingredients, calculates point
values and plausible ranges for five macros, asks only material questions, and
keeps uncertainty visible rather than silently choosing an answer.

This is the canonical cross-component document for the implemented workflow,
its design decisions, known tradeoffs, and future roadmap. Narrower contracts
remain authoritative in their own areas:

- [V3 API reference](../../backend/docs/meal-analysis-v3-api.md) for HTTP and
  NDJSON payloads;
- [meal-analysis enum reference](../../backend/docs/meal-analysis-enums.md) for
  closed serialized values;
- [nutrition resolver retrieval](nutrition-resolver-retrieval.md) for USDA
  matching, fallbacks, and deferred embeddings;
- [meal-image uploads](../meal-image-uploads.md) for WebP validation, Oracle
  storage, ownership, and upload limits;
- [meal-analysis CLI](../../backend/docs/meal-analysis-cli.md) for the
  ephemeral developer adapter; and
- [Prometheus metrics](../../backend/docs/meal-analysis-prometheus.md) for
  backend performance instrumentation.

V3 is the only supported app/backend meal-analysis contract. V2 execution,
payload adapters, continuation, and in-flight-session migration are not part of
this design. Converting a V3 result to the app's existing `Meal` model is an
internal presentation and persistence adapter, not V2 transport compatibility.

## Goals and non-goals

The implemented flow is designed to:

- accept one text input or one owned image;
- support multilingual input through structured model interpretation;
- distinguish recognizable components from nutrition-bearing leaves;
- preserve explicit quantities and represent inferred quantities as coherent
  alternative scenarios;
- use deterministic arithmetic and validation for nutrition totals;
- ground ingredients in local USDA data where possible and label the bounded
  model-nutrition fallback where not;
- ask at most one material nutrition question per component and at most three
  nutrition questions overall, plus an optional meal-type question;
- pause once for one atomic answer bundle;
- stream useful but non-sensitive progress; and
- persist enough state to replay the latest outcome after a backend restart.

The current flow deliberately does not support:

- image-plus-caption interpretation;
- more than one nutrition clarification round;
- micronutrients beyond calories, protein, carbohydrates, fat, and fiber;
- barcode or nutrition-label OCR;
- exact restaurant, branded-product, or proprietary-recipe integrations;
- user-calibrated bowls, cups, plates, or utensils;
- on-device interpretation or local nutrition settlement;
- dynamic agent/tool loops or LangGraph orchestration; or
- V2 clients, payloads, or sessions.

## End-to-end lifecycle

```text
Text entry -------------------------------> create analysis UUID + context
Camera/gallery -> WebP -> upload -> imageId -> create analysis UUID + context
                                                    |
                                                    v
STARTED -> UNDERSTAND -> MATCH -> CHECK -> NEEDS_INPUT? -> FINISH -> COMPLETE
                                           |              ^
                                           +-- answers ----+
                                                    |
                                                    v
                                      rich result sheet -> local meal log
                                                    |
                                                    v
                                      durable confirm-log outbox sync
```

Each streamed HTTP request begins with `STARTED`, may emit `PROGRESS`, and ends
with one terminal event. `NEEDS_INPUT` is terminal for that HTTP request, but
not for the analysis: the answer request opens a new stream for the same
analysis ID. `COMPLETE`, `NO_FOOD`, `UNRESOLVED`, and `ERROR` end the current
user-visible attempt.

### Public routes and admission control

| Route | Role | Response |
| --- | --- | --- |
| `POST /api/v3/food/image-upload` | Validate/store one owned WebP | JSON `imageId` |
| `POST /api/v3/food/analyze-text` | Start/reuse text analysis | NDJSON stream |
| `POST /api/v3/food/analyze-image` | Start/reuse owned-image analysis | NDJSON stream |
| `POST /api/v3/food/answer` | Submit the complete pending bundle | NDJSON stream |
| `POST /api/v3/food/resume` | Replay latest result or restart admitted work | NDJSON stream |
| `POST /api/v3/food/feedback` | Store up/down feedback on `COMPLETE` | JSON success |
| `POST /api/v3/food/confirm-log` | Store logged snapshot or deletion on `COMPLETE` | JSON success |

Text is trimmed, non-empty, and at most 10,000 characters. The answer body is
strict, carries revision `1`, and contains one to four unique answers. Revision
`1` is currently the only implemented bundle version; it is a schema/version
guard, not a multi-revision compare-and-set state machine.

Authentication, malformed input, ownership failure, missing sessions,
same-ID/different-input conflicts, and rate limits fail with ordinary HTTP
status codes before a stream opens. Once `STARTED` has been written, runtime
failures are terminal NDJSON `ERROR` events on HTTP `200`.

Analysis, answer, and resume calls share layered admission limits: 20 requests
per minute through the route limiter, 30 per authenticated user and 300 per IP
per hour, and 100 per user and 1,000 per IP per day. Image upload has a separate
process-local fixed window of 10 per user and 60 per IP per minute. The hourly,
daily, and image counters are process-local and independent across replicas;
the minute limiter follows the configured Fastify rate-limit store.

### 1. App entry and immutable request context

Text entry, camera, and gallery all use `showMealAnalysisV3Flow`. Wear OS text
requests call the same V3 repository contract through the phone, but questions
are not rendered on the watch.

The phone creates one UUID for the whole analysis and captures:

- the current BCP 47 locale;
- an uppercase ISO country code, falling back to the platform locale and then
  `US`;
- the local IANA time-zone identifier, falling back to `UTC`; and
- the UTC capture timestamp.

Image requests also carry `CAMERA_NOW` or `GALLERY`. Locale controls
presentation language, country is a weak regional prior, and time is eligible
for meal-type defaulting only for a fresh immediate-camera capture. These
values are captured once and reused for the initial and answer streams.

For an image, the app first performs one WebP compression pass and a local
1 MiB check. The authenticated backend validates and uploads the bytes, then
returns an opaque user-owned `imageId`. The app never receives the Oracle write
credential or a read URL. See [meal-image uploads](../meal-image-uploads.md).

### 2. Session admission and identity

The backend authenticates every route and scopes every lookup and mutation by
Firebase user ID plus analysis ID. A new request is saved before analysis
starts. Its digest covers the full submitted body. Reusing the same analysis ID
with different input returns `409`; reusing it with the same input reuses the
session.

The application database is authoritative durable storage. A bounded in-memory
map caches up to 5,000 recent sessions per backend process; eviction only costs
a database read. The session stores input, digest, latest result, nutrition and
meal-type answers, feedback, and confirmed log snapshot/deletion state.

This is durable outcome persistence, not a leased stage-checkpoint engine. It
does not persist interpreted components, USDA candidates, or calculated
scenarios as independently restartable stages.

### 3. Input normalization and two-pass interpretation

The shared pipeline validates one normalized `TEXT` or `IMAGE` input. Image
analysis downloads the owned WebP through the backend-only read URL with a
15-second timeout.

Interpretation uses two bounded structured model calls:

1. The component pass detects food, proposes meal name/type, splits recognizable
   components, and returns portion ranges and one preparation code. It does not
   return ingredients or nutrition.
2. The ingredient pass must correspond exactly to those components. It returns
   quantified leaves, zero to three lookup aliases, retrieval intent
   (`GENERIC_INGREDIENT`, `BRANDED_PRODUCT`, or `AMBIGUOUS`), optional branded
   product query, and up to four compact variations per component.

The model-facing origin is intentionally only `user_text` or
`model_inferred`. Deterministic adaptation expands this output into richer
internal provenance and scenarios. Unknown fields, invalid enums, broken
ranges, duplicated identities, cross-pass mismatch, and semantic
inconsistencies are rejected; food-specific regex repair is not a fallback.

The model interprets identity, recipe structure, and plausible quantities, but
never supplies the authoritative final total. This keeps probabilistic
interpretation outside deterministic arithmetic.

### 4. Components, leaves, and scenarios

```text
Meal
  -> Component[]
       -> coherent RecipeScenario[]
            -> ACTIVE_NUTRITION ingredient leaves
            -> verified-zero YIELD_ONLY leaves
            -> one effective portion and one finished yield
```

A component is user-recognizable food such as roti, dal, or banana shake. A
leaf is a nutrition-bearing identity such as flour, lentils, milk, sugar, or
retained oil. Atomic foods use the same model with one active leaf. Dish-level
macros are never added on top of ingredient macros.

The deterministic adapter expands portion ranges and variations into at most
12 scenarios per component. A scenario keeps ingredient amounts, yield,
portion, preparation, and assumptions correlated. One scenario supplies the
point; extrema over coherent scenarios form component ranges. Meal ranges sum
component minima/maxima instead of creating a meal-wide Cartesian product.

```text
leaf macros = nutrition-basis grams * reference macros per 100 g / 100

finished-mass scale = consumed finished grams / finished yield grams
unit-count scale    = consumed count / finished yield units
```

Exactly one portion scale applies. Water may be `YIELD_ONLY` only with a
verified zero profile. Added/retained fat is always active; preparation labels
never add calories by themselves.

### 5. Nutrition resolution

Every leaf in every retained scenario is resolved before calculation. The full
ordered policy is maintained in the
[resolver plan](nutrition-resolver-retrieval.md). The implemented path is:

1. active, materialized local USDA dataset;
2. bounded generic or branded lexical retrieval with trigram/substring and,
   when enabled, English full-text search;
3. deterministic identity, preparation, basis, nutrient, plausibility,
   ambiguity, and tie-breaking gates;
4. exact USDA `NFS` fallback for eligible unspecified generic foods;
5. resolver-owned fallback profiles such as generic spices; and
6. a validated per-100-g model estimate only for leaves still unresolved.

The model estimate has explicit provenance, a synthetic record ID, and
`llm-nutrition-estimate-v1` dataset version; it is never relabelled as USDA.
Provider/validation failure preserves unresolved state. If any required leaf
remains unresolved, the pipeline returns `UNRESOLVED_NUTRITION`, never a
partial meal.

Calories, protein, carbohydrates, and fat must be present and plausible.
Missing fiber becomes zero by current product policy. This stabilizes the
five-macro contract on older snapshots, but can understate fiber where a source
omission is indistinguishable from true zero. Presence-aware imports reduce
that ambiguity; the policy remains a known accuracy tradeoff.

### 6. Calculation and question planning

The backend calculates coherent scenarios, then ranks uncertainty dimensions
not explicitly supplied by the user. Impact is reduction in weighted normalized
width over all five macros. Calories have the largest weight, but other macros
can make a question material.

Question policy is deterministic and versioned as `material-impact-v1`:

- minimum impact score `0.1`;
- no more than three nutrition questions;
- no more than one nutrition question per component;
- stable tie-breaking by impact, component order, dimension, and question ID;
- server-issued option IDs;
- numeric unit, inclusive bounds, step, and integer rule; and
- `USE_ESTIMATE` only when permitted, deliberately leaving that dimension
  unchanged.

Meal type is separate and may add a fourth question. Precedence is user
clarification, explicit text, fresh camera context, then model inference at
confidence `>= 0.8`. Camera context is valid only within 15 minutes of request
receipt and no more than two minutes into the future. Gallery timestamps never
default meal type. Otherwise the user chooses breakfast, lunch, dinner, or
snack.

### 7. Clarification and answers

`NEEDS_INPUT` contains one revisioned bundle. The Flutter sheet renders its
questions sequentially for readability but submits the entire answer set once.
Continue stays disabled until the current answer is valid. Numeric input is
checked locally; the backend revalidates IDs, options, bounds, steps,
uniqueness, and completeness.

There is no preselected or silently submitted default. Dismissing the sheet
submits nothing. Every question needs exactly one answer. Answers filter or
transform scenarios and select a point scenario; nutrition is recalculated
from leaves, never by patching a calorie delta. No second nutrition-question
round runs.

The CLI accepts answers within one in-memory pipeline call and retains prior
interpretation/resolution. The current HTTP adapter invokes the pipeline again
from stored input and answers, repeating interpretation and nutrition
resolution. This reuses all validators and keeps persisted state small, but
costs latency/provider calls and can yield a different model interpretation.
Eliminating this recomputation is priority checkpointing work.

### 8. Progress and rich loading UI

Progress comes only from completed stages; it is not a timer and exposes no
prompts, model responses, resolver candidates, database details, or errors.

| Stage | Phase | Value |
| --- | --- | ---: |
| input normalized | `UNDERSTAND` | 0.08 |
| interpreted | `MATCH` | 0.30 |
| validated | `MATCH` | 0.42 |
| nutrition resolved | `CHECK` | 0.62 |
| calculated | `CHECK` | 0.72 |
| questions planned | `CHECK` | 0.80 |
| answers applied | `CHECK` | 0.82 |
| recalculated | `CHECK` | 0.86 |
| meal type resolved | `FINISH` | 0.90 |
| presentation built | `FINISH` | 0.96 |
| integrity checked | `FINISH` | 0.99 |

Interpretation may add a bounded meal name and display names. Presentation may
replace the meal name. Later events may omit copy, so clients retain the latest
non-empty copy fields.

Because the answer request reruns early stages, its server stream starts at
`0.08`. The app owns one controller for the full analysis and accepts only
non-decreasing numeric/phase progress across streams while still merging newer
copy. The loading sheet therefore reopens at the prior checkpoint (normally
`0.80`) and advances from `0.82` instead of visually filling twice. This is UI
continuity, not evidence that backend work was checkpointed.

The last public progress value is `0.99`; receipt of `COMPLETE` closes the
loading sheet instead of emitting a cosmetic `1.00` progress event.

The non-dismissible sheet shows the photo or truncated text, linear progress,
four localized phases, animated macro icons, interpreted names, and a rotating
tip. It closes on success or failure. Flow disposal releases its controller.

### 9. Presentation and integrity

Presentation runs only after answers, calculation, and meal type resolve. The
provider can generate localized name/tip but cannot change nutrition. Serving
text comes deterministically from validated natural measures or `measured
portion`. Names reject amounts, weights, calories, serving wording, and size
adjectives. Serving text rejects raw weight/volume units and calories.

Presentation failure is non-fatal: deterministic component name, serving text,
and empty tip are returned. Valid nutrition is not discarded for optional
prose.

Before `COMPLETE`, the gate verifies presentation did not mutate calculation,
point scenarios exist, values are finite, and every point lies inside its
range. Arithmetic is checked at full precision. Public calories round to whole
kilocalories; other macros round to 0.1 g; bounds round outward.

The result includes name, serving text, tip, meal type/origin, all five points
and ranges, component results, selected assumptions, ingredient reference
locators, and version receipt. Ranges are plausible scenario envelopes, not
statistical confidence intervals.

### 10. Result, logging, feedback, and deletion

The app validates the V3 result, then adapts points into its canonical `Meal`
model for history and health sync. The rich sheet keeps the V3 object to show
serving text and calorie interval. All five points enter the meal; all five
ranges remain available though the sheet currently highlights only calories.

Saving is local-first. The app writes the meal and analysis ID transactionally,
using the ID for idempotency, and creates a durable `confirm-log` outbox row.
It attempts sync immediately and retries later. Edits increment the outbox
version; deletion queues a delete confirmation. Health Connect uses a separate
outbox and does not determine whether the meal was saved.

Feedback is sent directly against a completed V3 analysis. Feedback and log
confirmation update only a completed session owned by the authenticated user.

Wear OS receives completed text analysis through the phone. `NEEDS_INPUT`
currently returns `requires_phone` plus analysis ID; it does not yet reopen the
exact bundle automatically on the phone.

### 11. Resume and retry

`POST /resume` loads the owned session. If a latest result exists, it streams
that exact pending/terminal event. If only admitted input exists, it reruns the
pipeline.

The Flutter repository implements resume, but the main flow does not persist
unfinished IDs across navigation/process death or automatically honor recovery
actions. Today retry normally starts a new analysis. Full client resume is a
backend capability awaiting product wiring, not a complete end-user flow.

## Outcomes and errors

| Outcome | Meaning | App behavior |
| --- | --- | --- |
| `COMPLETE` | Valid calculated/presented meal | Rich result sheet |
| `NEEDS_INPUT` | Atomic question bundle pending | Sequential question sheet |
| `NO_FOOD` | No food identified | Localized edit-input failure |
| `UNRESOLVED` | Nutrition not safely resolved | Localized unresolved failure |
| `ERROR` | Provider, validation, resolution-stage, or other failure | Localized retryable failure |

Internal exception text never crosses the stream. Cause-chain classification is:

- provider failure -> `PROVIDER_UNAVAILABLE`;
- invalid model output or interpretation validation -> `INVALID_MODEL_OUTPUT`;
- nutrition-resolution stage failure -> `NUTRITION_DATA_UNAVAILABLE`; and
- other exceptions -> `ANALYSIS_UNAVAILABLE`.

Those four are retryable with `RETRY`; unusable input is non-retryable with
`EDIT_INPUT`. The app maps codes to localized copy. Logs retain analysis ID,
public category, and a redacted internal error kind.

The taxonomy protects internals but is coarse: database failure during
resolution and missing active USDA data share one category. Add safe
subcategories only when they enable different user recovery or alerting.

## Design decisions and tradeoffs

| Decision | Benefit | Cost / accepted risk |
| --- | --- | --- |
| V3-only cutover | One contract, no divergent paths | Old builds/sessions cannot analyze |
| Two model passes | Smaller schemas and separated reasoning | Two calls and cross-pass validation |
| Scenario arithmetic | Auditable ranges, no model totals | Capped possibilities, not probabilities |
| Ingredient-first totals | No dish-level double counting | Proprietary recipes rely on inference |
| USDA then labelled model fallback | Trusted common foods, explicit provenance | Dataset quality is critical; uncommon foods may be estimates |
| One atomic question bundle | Bounded interruption and validation | No adaptive second question |
| Stage-derived progress | Honest completed-work checkpoints | Coarse and may pause on external calls |
| Client-monotonic progress | Continuous clarification UX | Hides repeated work without removing cost |
| Result-level persistence | Simple replay and schema | Answers recompute early stages |
| Optional model presentation | Natural localized copy | Extra call; fallback is plainer |
| Local save plus outbox | Offline-safe eventual confirmation | Server log state can temporarily lag |
| Missing fiber is zero | Stable five-macro contract | Can under-report fiber |
| Explicit pipeline, no graph | Predictable and testable | Dynamic branching needs a new decision |

## Security and privacy

- Every route is authenticated; session, image, feedback, and log ownership is
  scoped by user ID.
- The app receives neither Oracle credentials nor image read URLs.
- Public progress/errors exclude meal text, images, provider payloads,
  candidates, database details, and exception text.
- Request logging redacts meal-analysis/profile bodies as personal health data.
- Analysis IDs correlate app, stream, database, and redacted logs.
- Model calls process submitted meal content; new providers or embeddings need
  privacy, retention, regional, and cost review.

## Observability and verification

The core records ordered completed/skipped observations for normalization,
interpretation, validation, resolution, calculation, question planning, answer
application, recalculation, meal type, presentation, integrity, and terminal
outcome. HTTP reduces them to public progress; the CLI exposes development
observations.

The shared model client emits provider request counts and durations through the
existing AI metrics. A meal-analysis step histogram and mobile started,
completed, and failed event names exist, but V3 does not currently emit stage
timings or those mobile lifecycle events. The stage observer currently feeds
HTTP progress and CLI diagnostics. Instrumentation wiring is therefore roadmap
work, not deployed dashboard evidence. Raw meal text must not enter routine
logs or metrics.

Contract/core changes require, as applicable:

- backend type checking, lint, tests, and route contracts;
- resolver fixtures and USDA migration/readiness checks;
- shared model parsing and range-invariant tests;
- Flutter analysis and flow/loading/question/result widget tests;
- text, image, clarification, resume, retry, and outbox end-to-end tests;
- translation regeneration/audit for copy; and
- documentation reference checks plus `git diff --check`.

Release evidence should track completion/unresolved rates, provider/fallback
rates, question frequency/abandonment, interval coverage/width, repeated-run
stability, stage p50/p95 latency, cost, resume success, and outbox lag.

## Roadmap and considered features

### Priority reliability and efficiency

1. **Persist calculation checkpoints.** Store validated interpretation,
   references, scenarios, questions, and versions so answers avoid repeated
   model/USDA work. Fence stale workers from newer answers/terminal state.
2. **Wire full client resume.** Persist unfinished IDs locally, honor recovery
   actions, reopen identical bundles after process death, and distinguish
   retry (new work) from resume (same work).
3. **Complete phone/watch handoff.** Deep-link `requires_phone` to the exact
   bundle and return the eventual terminal result to the watch.
4. **Calibrate uncertainty/safety.** Expand multilingual, image, household
   measure, hidden-fat, restaurant, and non-food fixtures; measure interval
   coverage and sharpness before changing floors.
5. **Improve safe recovery.** Add distinct public codes only for distinct app
   actions, plus operational alerts for storage, provider, invalid output,
   missing dataset, and transient database failures.
6. **Define retention.** Add session/image expiry, orphan reconciliation,
   feedback/log retention, and read-PAR rotation behavior.

### Accuracy features considered

- **Semantic USDA recall:** embeddings may retrieve candidates but never prove
  identity/preparation. Preconditions are in the [resolver plan](nutrition-resolver-retrieval.md).
- **Barcode and label OCR:** use packaged facts with source/provenance and a
  correction UI; keep recipe inference as fallback.
- **Restaurant/brand integrations:** improve proprietary foods without
  presenting inferred recipes as verified.
- **Calibrated measures:** version and sync a user's bowl, plate, glass, or
  common serving sizes with clear applicability.
- **Image plus caption:** define precedence/contradiction handling so text does
  not silently override image evidence.
- **Micronutrients:** add only after source coverage, missing-value, interval,
  storage, and UI policy exists per nutrient.
- **Corrections/personalization:** require consent, provenance, expiration,
  reset, and bias evaluation; never silently change another meal.
- **Multiple question rounds:** add only if evidence outweighs abandonment and
  state-machine complexity.
- **On-device assistance:** may reduce latency but must not fork authoritative
  server calculation.

### Presentation and product features considered

- display ranges for protein, carbohydrates, fat, and fiber;
- expose component ranges/provenance in “how this was estimated” details;
- edit through a new analysis revision rather than mutating a receipt;
- explicit reanalysis with a parent analysis locator;
- progress accessibility announcements and reduced motion; and
- clear retry/resume/edit actions derived from terminal recovery action.

These are considered directions, not current behavior or commitments. Create a
separate decision record when one changes privacy, persistence, calculation,
provider, or public API contracts.

## Maintenance contract

Update this document whenever stage order, question budget, answer semantics,
calculation/ranges, progress mapping, session behavior, result presentation,
log sync, or roadmap decisions change. Do not create a second general
meal-analysis plan. Update narrower API, resolver, upload, CLI, metrics, and
enum references only for their owned contracts, and keep both indexes synced.
