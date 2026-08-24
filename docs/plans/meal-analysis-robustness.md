# Meal-analysis robustness

Status: Design recorded; implementation not started

Last reviewed: 2026-08-25

## Purpose

Make cloud text and image meal analysis handle non-food input, background
objects, invalid structured output, local development, and legacy stage rows
without redesigning the existing pipeline.

The current durable workflow remains documented in the
[meal-analysis state machine](../../backend/docs/meal-analysis-state-machine.md).
This plan is the canonical decision record for the robustness changes described
below. The state-machine document continues to describe production behavior
until implementation lands.

## Scope and change guardrails

This work is intentionally bounded:

- Extend the existing meal-analysis engine, session state, generated pipeline
  contract, and Flutter controller rather than replacing them.
- Reuse the existing engine entry points, validation contracts, and pipeline
  event types from the HTTP routes and local CLI.
- Keep one canonical schema per boundary: Zod for backend-only decomposition and
  durable snapshot validation, and protobuf for backend-to-client events. Use
  explicit mapping tests instead of introducing a universal schema generator.
- Add no new service, queue, general workflow framework, provider abstraction,
  or nutrition database.
- Add no table solely for non-food results, USDA matches, CLI runs, or user
  profile context.
- Do not broaden this work into clarification idempotency, uncertainty
  versioning, error-taxonomy redesign, or nutrition-fallback policy.
- Stop and discuss before adding a new architectural layer, major dependency,
  database table, or refactor not required by this document.

Backward compatibility with old in-progress analysis snapshots is not a
requirement. Completed meal records must remain untouched.

## Current problems

The current decomposition contract and durable snapshot decoder disagree. The
LLM schema allows values such as an empty ingredient array or out-of-range
confidence, while later resume parsing rejects them. Those failures are then
reported as an analysis that cannot continue from its current state.

Image decomposition also has no explicit food/non-food classification. A
background electronic device can therefore become an ingredient and proceed to
USDA matching or nutrition fallback. The pipeline has no successful terminal
outcome for a request in which no food is present.

The current TypeScript calorie evaluator is not an accurate full-flow local
tool. It is text-only, does not perform real resume recovery, buffers the event
stream, uses handwritten permissive event types, and does not currently provide
the authentication required by the HTTP routes. It cannot test image input or
non-food outcomes.

The current implementation is in
[`nutritionEngineV2.ts`](../../backend/src/services/nutritionEngineV2.ts), the
LLM schemas are in
[`mealAnalysisPrompts.ts`](../../backend/src/services/mealAnalysisPrompts.ts),
and the existing evaluator is
[`calorie-estimation-eval.ts`](../../backend/src/scripts/calorie-estimation-eval.ts).

## Confirmed decisions

1. Add a successful terminal `NO_FOOD_DETECTED` state.
2. Emit a typed `NO_FOOD` pipeline event after the terminal payload is durable.
3. Generate the short visual meal name during the first image decomposition
   call and persist it.
4. Classify every detected candidate with `is_food`, an explanation, and a
   confidence value. The explanation must precede the confidence field in the
   structured-output order.
5. Do not maintain a closed list of non-food or exclusion categories. The
   explanation is bounded free text and is never used for control flow.
6. Give the LLM an ordered USDA lookup proposal consisting of a canonical name
   and aliases. Actual database match identifiers and descriptions are not part
   of the persisted contract.
7. Capture the user's local date and time when the analysis session is created
   and provide it to decomposition as context for meal-type inference.
8. Keep the current meal-level `tip` semantics. The tip is generated during
   presentation from the grounded meal and is not an ingredient note.
9. Supply normalized user profile context to presentation so it can subtly
   influence the tip, without exposing or explicitly referring to that context.
10. Remove the second image/vision presentation pass. Presentation receives
    persisted meal data, not the original image.
11. Fix legacy null stages with an automatic application migration. No manual
    production SQL run or compatibility rollout is required.
12. Replace or clean inaccurate CLI behavior and documentation. Add one
    text-only full-flow local CLI that calls the same application functions used
    by the actual endpoints.
13. Use short localized `raw_name` values as client-visible ingredient names.
    USDA lookup proposals remain backend-only.
14. Remove row-level USDA match metadata from persisted analysis snapshots,
    generated client results, meal-analysis logs, and audit payloads. USDA
    database and local nutrition-cache identifiers remain internal.
15. Remove the hardcoded USDA semantic alias map and its alias-specific match
    path. Use the LLM's ordered canonical-name and alias proposals with the
    existing exact/fuzzy matcher instead.
16. Prompt positively to inventory the primary meal and relevant candidates;
    do not enumerate example ingredient categories or use negative scene-listing
    instructions.
17. Reuse the existing unidentified-meal configuration in the configurable meal
    tip sheet for no-food results. Do not introduce a separate no-food screen or
    sheet layout.

## Target state-machine change

The normal food path remains unchanged. Decomposition gains one terminal branch:

```mermaid
stateDiagram-v2
    PENDING_DECOMPOSITION --> DECOMPOSING: claim lease
    DECOMPOSING --> DECOMPOSED: FOOD / persist decomposition
    DECOMPOSING --> NO_FOOD_DETECTED: NO_FOOD / persist terminal payload
    NO_FOOD_DETECTED --> [*]
```

`NO_FOOD_DETECTED` is successful and terminal, not an error. Its durable payload
should use the existing result storage as a discriminated result variant rather
than introducing another table. Once persisted:

- emit `NO_FOOD` with the analysis ID, outcome explanation, and confidence;
- replay the same event from `/resume`;
- skip USDA resolution, clarification, meal-type selection, presentation, and
  meal logging;
- never emit a food `RESULT` for the same analysis.

The generated pipeline contract must add the event and payload. The Flutter
controller must represent it as a terminal no-food state rather than a backend
failure.

## Decomposition input

Date and locale context are captured once when the session is created. Resume
must reuse the persisted values rather than recomputing the current time.

```ts
type DecompositionInputContext = {
  source: 'TEXT' | 'IMAGE';

  // ISO-8601 local date and time including its UTC offset.
  analysis_local_datetime: string;
  time_zone: string; // IANA timezone, for example Asia/Kolkata.
  locale: string;
  country_code: string | null;
};
```

The time of day is supporting evidence for `inferred_meal_type`. Explicit user
text and strong food evidence take precedence over the clock.

### Inventory direction

Use neutral, positive prompt language:

> Inventory the primary meal shown or described. Identify the relevant
> candidate items, decide whether each item belongs to the food being analyzed,
> and estimate portions only for items classified as food.

Do not provide an illustrative list of ingredient categories. Such a list can
be misread as exhaustive and cause omitted meal components. The prompt also
does not ask the model to inventory the entire scene.

## Decomposition structured output

The property order is deliberate. Explanations appear before their associated
confidence values so the model produces the concise evidence first and scores
it second.

```ts
type DecompositionOutput = {
  schema_version: 2;

  outcome: 'FOOD' | 'NO_FOOD';
  outcome_reason: string;
  outcome_confidence: number;

  // Localized, preferably 2-6 words, and no more than 60 characters.
  // This is the visual meal name for image analysis.
  meal_name: string | null;

  items: Array<FoodItem | NonFoodItem>;

  inferred_meal_type:
    | 'BREAKFAST'
    | 'LUNCH'
    | 'DINNER'
    | 'SNACK'
    | 'UNKNOWN';
  meal_type_reason: string;
  meal_type_confident: boolean;
};

type FoodItem = {
  // Short, localized, and suitable for direct display to the user.
  raw_name: string;

  is_food: true;
  is_food_reason: string;
  is_food_confidence: number;

  usda_lookup: {
    proposed_canonical_name: string;
    aliases: string[];
  };

  portion: {
    kind: 'COUNT' | 'BULK' | 'PINCH';

    grams_estimated: number;
    min_grams: number;
    max_grams: number;

    count: number | null;
    per_unit_grams: number | null;
    per_unit_min_grams: number | null;
    per_unit_max_grams: number | null;

    size_specified_by_user: boolean;
  };
};

type NonFoodItem = {
  raw_name: string;

  is_food: false;
  is_food_reason: string;
  is_food_confidence: number;

  usda_lookup: null;
  portion: null;
};
```

### Schema constraints

- `outcome_reason`, `is_food_reason`, and `meal_type_reason` are concise evidence
  summaries, not open-ended internal reasoning.
- Reasons are between 1 and 240 characters.
- All confidence values are finite numbers from 0 through 1.
- `items` contains at most 20 entries.
- `raw_name` is between 1 and 120 characters.
- A food outcome contains at least one `FoodItem`.
- A no-food outcome contains no `FoodItem`, has `meal_name: null`, infers
  `UNKNOWN`, and sets `meal_type_confident: false`.
- `proposed_canonical_name` and every alias are atomic English food lookup terms
  that preserve nutritionally relevant preparation state.
- A lookup proposal has at most five unique aliases. The aliases do not repeat
  the proposed canonical name.
- `grams_estimated` is greater than zero and at most 5,000 grams.
- `min_grams` and `max_grams` are between zero and 5,000 grams, with
  `min_grams <= grams_estimated <= max_grams`.
- `COUNT` requires a positive count no greater than 20 and positive per-unit
  values. `BULK` and `PINCH` use null count and per-unit values.
- Non-food items always have null USDA lookup and portion data.
- Unknown fields are rejected.

These rules must be enforced by one canonical runtime schema. The provider JSON
Schema and TypeScript type are derived from it, and persisted decomposition is
decoded with it. Provider-only validation is insufficient.

The backend-only schema should use the repository's existing Zod validation
approach and a contained JSON-Schema conversion step. The generated pipeline
protobuf remains the cross-language wire source of truth. Do not attempt to make
one new IDL generate provider JSON Schema, runtime refinements, database
snapshots, TypeScript, and Dart; protobuf cannot express the required runtime
constraints, while Zod/JSON Schema does not supply protobuf field compatibility.
Contract tests cover the explicit mapping between these two boundaries.

The `is_food` boolean, rather than a new hardcoded threshold over
`is_food_confidence`, controls whether an item enters nutrition resolution. The
confidence remains available for quality evaluation and future decisions.

## USDA lookup and persistence

The LLM proposes search language; the database remains authoritative for
nutrition values.

- Try `proposed_canonical_name` first, then the ordered aliases.
- Normalize and deduplicate lookup terms before querying.
- Run the existing exact/fuzzy matcher for each ordered term and stop at the
  first result accepted by its existing thresholds.
- Keep each term atomic; do not place comma-separated or `or`-joined alternatives
  in one string.
- Remove the hardcoded `ALIASES` map, `resolveAlias`, alias-only match type, and
  alias-specific tests from `usdaLookup.ts`.
- Do not replace the removed map with an alias JSON file or database table.
- For local proposal settlement, try its existing `canonical_hint` combined with
  preparation, then `canonical_hint`. Local matching receives no new alias
  contract as part of this work.
- Retain dish and portion templates. They constrain decomposition and quantity;
  they are not the USDA semantic alias system being removed.
- Do not persist or expose the selected FDC ID, USDA matched description, match
  score, candidate rows, or similar row-level match metadata.
- Do not add those values to analysis logs or audit payloads. Aggregate matching
  metrics remain acceptable.
- Persist the LLM-proposed lookup terms as part of decomposition and the
  calculated ingredient macros needed for durable resume and result replay.
- USDA database and local nutrition-pack internals are outside this persistence
  decision; this plan concerns cloud meal-analysis sessions and client results.

The resolved ingredient sent to the client uses `raw_name` directly:

```ts
type ClientResolvedIngredient = {
  row_id: string;
  raw_name: string;
  grams: number;
  macros: PipelineMacros;
  portion_kind: 'COUNT' | 'BULK' | 'PINCH';
  count: number | null;
  per_unit_grams: number | null;
};
```

It does not include canonical name, match type, FDC ID, USDA dataset version,
matched nutrients per 100 grams, or matched description. The same generated
client result shape applies to cloud and local results; the local nutrition pack
may continue using FDC IDs internally for cache identity and refreshes.

## Presentation without a second image pass

The initial image decomposition owns the visual meal name. Presentation must not
download or resend the image and must not replace the persisted meal name.

The existing `PRESENTING` state remains. It performs a text-only presentation
call using:

- persisted short meal name;
- final meal type;
- resolved ingredient names, portions, and calculated macros;
- total macros and calorie band;
- clarification/correction context;
- locale and country context; and
- normalized user profile context.

No USDA identifiers or selected database descriptions are included.

### User profile context

Use existing profile fields from
[`user.proto`](../../protos/user/user.proto). Derive and normalize the provider
input as follows:

```ts
type PresentationUserContext = {
  age_years: number | null;
  gender: 'MALE' | 'FEMALE' | 'OTHER' | null;

  current_weight_kg: number | null;
  target_weight_kg: number | null;
  bmi: number | null;

  weight_goal:
    | 'LOSE_WEIGHT'
    | 'MAINTAIN_WEIGHT'
    | 'GAIN_WEIGHT'
    | null;

  activity_level:
    | 'SEDENTARY'
    | 'LIGHTLY_ACTIVE'
    | 'MODERATELY_ACTIVE'
    | 'VERY_ACTIVE'
    | 'EXTREMELY_ACTIVE'
    | null;

  daily_calorie_goal_kcal: number | null;
};
```

- Derive age from date of birth; never send the birth date.
- Normalize current and target weight to kilograms.
- Calculate BMI server-side from normalized height and weight; do not send
  height when BMI is available for this purpose.
- Leave absent or invalid values null. Do not infer them.
- Present this as an ordinary user-context block. Do not tell the model to make
  the tip about BMI, weight, age, gender, or goals.
- Use the general guard: "Do not mention the personal context or explain
  personalization."
- Keep the tip practical, concise, specific to the analyzed food, and
  non-diagnostic.
- Do not add profile context to result data, analysis snapshots, traces, logs,
  or audit payloads.

### Presentation structured output

`tip` retains the current release meaning: one short helpful observation about
the analyzed food, informed by grounded ingredients and macros. It is not an
ingredient note.

```ts
type PresentationOutput = {
  quantity: string;
  tip: string;

  health: {
    health_score_reason: string;
    health_score: 'HEALTHY' | 'NEUTRAL' | 'UNHEALTHY';
  } | null;
};
```

The reason precedes the health score. Presentation no longer returns meal name
or meal type because both are already durable and authoritative.

## Client behavior

Add a generated `NO_FOOD` pipeline step and payload. The Flutter controller
creates a terminal no-food state containing the analysis ID, reason, and
confidence.

The existing configurable meal tip sheet already renders its unidentified-meal
branch when `MealDetectionResult.meal_identified` is false. Route the terminal
no-food state into that branch with a localized generic tip and the existing
image metadata. Do not show the model's raw `outcome_reason`, and do not add a
new screen, sheet layout, nutrition controls, log controls, or retry control.
A replayed `NO_FOOD` event renders through the same branch.

## Automatic stage migration

Add one normal SQL migration under `backend/migrations/`. Application startup
already applies these migrations under the repository migration lock.

The migration will:

1. add `NO_FOOD_DETECTED` to the stage constraint;
2. backfill every `stage IS NULL` row from its existing durable payload;
3. use `PENDING_DECOMPOSITION` for a row with no later durable payload;
4. set `PENDING_DECOMPOSITION` as the column default; and
5. make `stage` non-null.

The SQL inference order must mirror the current stage inference logic: completed
result, meal-type question, clarification/ready state, resolved ingredients,
decomposition, then pending. Add a real PostgreSQL contract test for null-stage
automatic claims and the final non-null constraint.

No manual migration command, compatibility parser, or two-release rollout is
required. Existing incomplete snapshots may require a restart after deployment;
completed meal records remain intact.

## Local text CLI

Create one interactive TypeScript CLI for local development. The first version
supports text only.

The CLI must reuse the existing exported meal-analysis operations used by the
HTTP routes rather than duplicating endpoint paths, request shapes, pipeline
event interfaces, or state transitions. It should remain a thin adapter, not a
new application layer or local server framework.

Minimum behavior:

- accept text from an argument or interactive prompt;
- create or accept a client-stable analysis UUID;
- use the real local database and configured providers;
- print the actual generated pipeline events;
- prompt for clarification answers and meal type;
- call the shared resume operation for retryable interruptions;
- replay completed and no-food outcomes;
- support a supplied local user ID so ownership and optional profile context are
  exercised; and
- provide a machine-readable JSON mode for scripts.

The CLI does not initially support image upload, a mock provider framework, a
new HTTP client abstraction, or network-stream fault injection.

Clean the existing evaluation surface as part of the same work:

- stop describing `calories:eval` as a complete resumable pipeline until it is
  one;
- retain the useful dataset and pure scoring functions;
- make batch evaluation call the same shared text-flow driver where practical;
- remove handwritten permissive pipeline-event casts; and
- remove a package command or script if it remains nonfunctional and duplicates
  the new CLI rather than maintaining two competing tools.

## Explicitly unchanged or deferred

The following reviewed issues are not part of this implementation:

- Duplicate `/clarify` behavior after a successfully persisted forward
  transition remains unchanged.
- Persisted uncertainty and clarification options remain coupled to current
  deployed algorithms; no algorithm version is added.
- Public error messages, error taxonomy, retry metadata, and cleanup behavior
  are not redesigned in this work.
- USDA and fallback nutrition misses may continue using the current zero-macro
  behavior.
- Image input support for the new CLI is deferred.

The existing
[calorie-estimation reliability plan](../../backend/docs/calorie-estimation-reliability-plan.md)
continues to own broader calorie accuracy, matching quality, fallback, and
latency work.

## Bounded implementation sequence

Implementation should proceed as small, reviewable changes:

1. Add the canonical decomposition runtime schema and generated types/schema.
2. Extend generated pipeline contracts with the no-food event and result
   variant.
3. Add the terminal state and automatic migration.
4. Route no-food decomposition before USDA resolution and filter non-food
   candidates from the food path.
5. Remove image input from presentation, preserve the first-pass meal name, and
   add transient profile context.
6. Add the Flutter terminal state and minimal no-food UI.
7. Add the thin local text CLI and clean the old evaluation surface.
8. Update the canonical state-machine and evaluator documentation to match the
   implemented behavior.

If any step requires a new table, service, generalized state-machine framework,
large cross-repository refactor, or change to the explicitly deferred behavior,
pause and discuss it before proceeding.

## Acceptance coverage

At minimum, implementation needs tests for:

- schema-valid food and no-food decomposition;
- reason-before-confidence property ordering in the provider schema;
- bounds, required fields, unknown fields, gram ordering, and food/non-food
  discriminated variants;
- text containing no food reaching `NO_FOOD_DETECTED`;
- an image containing food plus background objects resolving only food items;
- a non-food image skipping USDA, presentation, clarification, and logging;
- durable no-food replay from `/resume`;
- short first-pass meal names and no image in presentation messages;
- profile normalization, null handling, BMI/age derivation, and absence from
  logs/results;
- no persisted or client-visible FDC ID, selected USDA description, or match
  score;
- ordered LLM lookup terms using exact/fuzzy matching with no curated USDA alias
  map or alias match type;
- local proposal lookup after removal of the curated alias path;
- null-stage migration and PostgreSQL automatic claims;
- client terminal no-food rendering through the existing unidentified-meal tip
  sheet configuration; and
- CLI start, clarification, meal type, resume, completed replay, no-food replay,
  and JSON output using shared pipeline types.

No implementation should begin until this document is reviewed as the agreed
scope.
