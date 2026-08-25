# Meal-analysis reliability and truthful presentation

Status: confirmed staging defects; implementation not started

Last reviewed: 2026-08-25

## Objective

Make text and image meal analysis fail safely and present only values that can
be derived from verified ingredient, portion, and nutrition state. A model may
propose an interpretation, but it must not silently create authoritative
counts, discard explicit foods, choose a different food, convert unresolved
nutrition to zero, or rewrite calculated quantities during presentation.

This is the canonical cross-component plan for decomposition reliability,
clarification, nutrition grounding, result confidence, and presentation. It
supersedes the older backend calorie-estimation reliability plan and the
post-implementation follow-up items from the completed meal-analysis robustness
work. The implemented durable workflow remains documented in the
[meal-analysis state machine](../../backend/docs/meal-analysis-state-machine.md).

## Confirmed staging baseline

The investigation exercised 29 controlled sessions through the deployed
staging engine, live model provider, staging application database, USDA
database, clarification continuation, and presentation generation. HTTP
authentication and transport serialization were not part of this particular
matrix.

- 24 sessions completed.
- One non-food control correctly reached `NO_FOOD_DETECTED`.
- Four food sessions remained in `PENDING_DECOMPOSITION`; `samosa` and
  `egg curry` still failed after additional retries.
- The backend suite passed 412 tests with one skipped test.
- The focused Flutter controller and clarification suites passed 21 tests.
- Those passing suites did not detect the live semantic, grounding, state, or
  presentation failures below.

### Representative input/output evidence

| Input | Observed staging behavior |
| --- | --- |
| `dahi puri` | Bare-input runs alternated between BULK 75 g / 98 kcal, COUNT 4 / 50 g / 110 kcal, terminal decomposition failures, and the reported COUNT 2 / 340 g / 510 kcal result titled `Snacks`. |
| `pani puri` | Invented count 5, 50 g total, 42 kcal, no quantity clarification, and a `1 serving` presentation. |
| `2 dahi puri` | Eventually produced count 2, 50 g, and 75 kcal, but only after repeated attempts. |
| `idli` | Classified as BULK, then changed from 100 g to 50 g through an idli COUNT template without asking quantity. |
| `rotis` | A plural countable food became BULK, changed from 150 g to a single-roti 35 g serving, and was presented as one serving. |
| `some samosas` | Received the generic title `snack`; BULK 150 g became 75 g and plural quantity was never resolved. |
| `paneer tikka` | A paneer-curry template changed 150 g / 398 kcal to 220 g / 584 kcal. |
| `2 medium rotis with 1 cup dal` | Dal was omitted, `medium` was ignored, rotis changed from 200 g to 70 g, per-unit state became inconsistent, and the meal title was used as quantity. |
| `rice and dal` | Resolved ingredients totalled 300 g / 376 kcal; presentation claimed 380 g. |
| `100 g dry oats cooked with water` | Nutrition remained based on 100 g dry oats / 389 kcal; presentation changed the basis to about one cup of cooked oatmeal. |
| `banana shake` | Nutrition resolution failed, but the analysis completed at zero calories and generated health advice. |
| Hindi `एक कटोरी पोहा` | Display identity became English and 150 g prepared poha received dry rice-flake nutrition: 549 kcal. |
| Hindi `दो समोसे` | The final total was 150 g for two, while persisted per-unit grams remained 50 instead of 75. |
| `eggs` | Invented count 1; 50 g returned 257 kcal and 28.8 g carbohydrate, then received a healthy assessment. |
| `100 g egg` | Returned 513 kcal, 57.7 g carbohydrate, and 28.9 g fat with high confidence. |
| `100 g paneer` | Returned 101 kcal because bare paneer resolved to `Palak Paneer`. |
| `1 cup cooked rice` | Reasonable control: 185 g / 239 kcal. |
| `100 g milk` | Reasonable control: 61 kcal. |
| `laptop and mouse` | Correctly rejected as no food. |

The original `dahi puri` failure is a complete example of the current error
amplification chain:

1. Decomposition replaced the specific text title with `Snacks`.
2. The model supplied an unproven count of two.
3. The backend accepted that count as resolved state, so it did not ask how
   many pieces were eaten.
4. First-word template lookup mapped `dahi puri` to `dahi`, then to the BULK
   yogurt template despite the item being COUNT.
5. The regular yogurt option, 170 g, was multiplied by the invented count to
   produce 340 g and 510 kcal.
6. Presentation exposed only `340 grams`, hiding the count and the template
   assumption.

## Prompt and schema boundary

The decomposition prompt is
[`mealAnalysisPrompts.ts`](../../backend/src/services/mealAnalysisPrompts.ts).
The generated-output Zod contract and field descriptions are in
[`mealDecompositionSchema.ts`](../../backend/src/services/mealDecompositionSchema.ts).
`DECOMPOSITION_SCHEMA` is generated from that Zod schema and passed to the
provider as strict JSON Schema by
[`nutritionEngineV2.ts`](../../backend/src/services/nutritionEngineV2.ts).

The prompt already says to emit a COUNT count when supplied and allow null when
count needs clarification. This instruction is useful but not enforceable:

- JSON Schema validates structure, not whether a number appeared in the input.
- Zod `superRefine` relations are not emitted by `zod-to-json-schema`.
- Standard JSON Schema cannot express arithmetic such as
  `total = count * per-unit` across sibling properties.
- Source completeness, food identity, title specificity, and preparation
  correctness are semantic properties rather than shape constraints.

The generated provider schema was inspected during this investigation. It
contained the field descriptions but none of the Zod cross-field messages for
COUNT arithmetic, ordered gram bounds, or FOOD/NO_FOOD consistency.

## Root causes and required changes

### 1. Full validation occurs outside provider failover

#### Cause

`MealAnalysisLlmClient` parses JSON and performs a small structural walk before
recording a provider attempt as successful. That walker checks selected types,
required properties, enums, arrays, and `anyOf`, but not all JSON Schema
keywords. The complete Zod parse happens only after the client has returned.

Consequences:

- a provider can be logged as successful even though the decomposition is not
  valid application input;
- a Zod failure does not advance to the next provider;
- resume repeats decomposition from scratch rather than using the next valid
  provider response; and
- current logs cannot identify the safe field path that caused rejection.

#### Fix

Introduce one typed structured-completion operation:

```ts
runStructuredCompletion<T>({
  operation,
  messages,
  responseSchema,
  parse: (value) => zodSchema.parse(value),
})
```

For every provider attempt:

1. call the provider;
2. parse JSON;
3. run the complete domain parser, including refinements;
4. record success only after parsing succeeds; and
5. continue failover on parsing failure.

Record only bounded error categories and schema paths, never raw prompts or
meal values. Use deterministic model settings where supported and pin the
configured provider model. Determinism reduces variance but never replaces
validation.

### 2. Model estimates do not carry provenance

#### Cause

The model returns one `count` and one `size_specified_by_user` boolean. The
contract cannot distinguish a value explicitly written by the user, observed
in an image, or guessed by the model. Normalization accepts both fields
directly. Deterministic text-size detection is itself gated by the model's
`size_specified_by_user` value.

#### Fix

Make observation source explicit:

```ts
type PortionEvidenceSource =
  | 'USER_EXPLICIT'
  | 'IMAGE_OBSERVED'
  | 'MODEL_ESTIMATE'
  | 'UNKNOWN';

type ProposedPortion = {
  count: number | null;
  countSource: PortionEvidenceSource;
  countEvidence: string | null;
  sizeSource: PortionEvidenceSource;
  sizeEvidence: string | null;
  estimatedCount: number | null;
};
```

For text input, accept a user-explicit count or size only when its evidence is
an exact source substring and a deterministic parser confirms it. A model
estimate may seed a default but must not occupy resolved count. For images,
retain observed versus estimated provenance and clarify uncertain or occluded
counts.

### 3. Explicit source content is not required to survive decomposition

#### Cause

The schema requires only one food item for a FOOD outcome. It does not require
coverage of every explicit food or quantity phrase. The explicit quantity
parser runs after decomposition, can update only existing ingredient rows, and
silently ignores an anchor such as `1 cup dal` when no dal row exists. Its
grammar is primarily English mass and volume syntax.

#### Fix

- Add exact `evidence_text` for every text-derived item.
- Validate that evidence is a real, non-overlapping source span.
- Require every deterministic quantity anchor to resolve to an ingredient.
- Treat an unmatched explicit anchor as invalid decomposition and retry or
  repair it before USDA resolution.
- Parse counts, pieces, slices, size adjectives, bowls/katoris, and localized
  numeric forms for supported locales.
- Add multilingual fixtures for Indic scripts, CJK, RTL, and Latin locales.
- For a single explicit text food, derive the display title from verified item
  terminology. Reject generic titles such as `Meal`, `Breakfast`, `Snack`, or
  `Snacks` when a specific food is available.

### 4. Missing information is filtered through calorie uncertainty

#### Cause

Clarification first requires meal-level variance above 15%, then requires each
ingredient to exceed an absolute spread of at least 50 kcal or 5% of the meal.
The ingredient calorie gate executes before missing count is checked. A highly
uncertain low-calorie countable food therefore completes without a quantity
question.

#### Fix

Separate clarification reasons:

- Mandatory: missing count, unresolved explicit anchor, conflicting portion
  kind, or ambiguous preparation state.
- Optional: portion variation that materially affects final calories.

Mandatory clarification bypasses calorie thresholds. Optional questions use a
bounded clarification budget and meal-level impact ordering.

### 5. Portion templates are not identity- or kind-safe

#### Cause

`lookupTemplate` permits unrestricted first-word fallback and does not compare
the template's stored `kind` with the resolved ingredient kind. A simple gram
sanity check cannot detect that yogurt is the wrong semantic template for dahi
puri or paneer curry is wrong for paneer tikka.

#### Fix

- Change lookup to require an expected portion kind.
- Match exact curated dish identities or reviewed aliases only.
- Remove unrestricted first-word fallback.
- Remove the bare `paneer -> paneer_curry` alias.
- On kind conflict, ask or repair the kind rather than applying the template.
- Use the existing per-unit/total band as the fallback when no exact template
  exists.
- Add dedicated dish templates only after their serving assumptions are
  reviewed and covered by calculated references. Version every template and
  test its defining components and proportions against a calculated recipe.

### 6. Clarification mutates only part of portion state

#### Cause

A size answer recalculates total grams and macros but leaves count and per-unit
fields unchanged. The stored row can therefore violate
`grams = count * perUnitGrams`. Clarification also collapses the calorie band,
which can incorrectly upgrade overall confidence even though food identity or
nutrition grounding remains weak.

#### Fix

- Centralize portion construction and mutation in one validated domain helper.
- For every mutation, derive total, count, per-unit, bounds, and macros from one
  authoritative representation.
- Assert arithmetic invariants before persistence and before result emission.
- Track confidence dimensions independently: decomposition, quantity,
  nutrition match, fallback quality, and portion range.
- A clarification may improve only the dimension it answered.

### 7. USDA ranking allows food-identity loss

#### Cause

Identity and data-source quality are combined in one additive score. A fuzzy
candidate containing all requested tokens plus extra defining food tokens can
beat an exact identity. This made `Palak Paneer` outrank bare `paneer`.

Exact normalized names are also selected with `LIMIT 1` using source type,
non-zero energy, and FDC ID. Duplicate branded `egg` rows with radically
different nutrition are not compared. Internally self-consistent macros are
treated as adequate quality even when they are wrong for the requested food.

Finally, a high fuzzy score can be accepted with a zero confidence margin;
ambiguity rejection currently applies only below a score threshold.

#### Fix

Rank in hard tiers:

1. exact token identity;
2. reviewed food-concept alias;
3. fuzzy identity with no conflicting or additional defining tokens.

Preparation and data-source quality break ties only inside an identity tier.
Fetch multiple exact rows, group nutritionally equivalent candidates, and
reject a group when duplicate rows have material nutrient dispersion. Require
a confidence margin for fuzzy matches regardless of the absolute score.
Prefer reviewed reference-food concepts for common staples. Return an explicit
`AMBIGUOUS` result instead of choosing an arbitrary branded row.

At import time, calculate food-name-independent quality flags for zero energy,
impossible macro mass, kcal/Atwater disagreement, missing nutrients, and
generic branded descriptions. Keep indexed identity tokens, preparation state,
source type, and branded/reference classification so retrieval remains bounded.
A small reviewed `food_concepts` mapping may represent genuine semantic or
regional equivalence; it must not become another spelling-alias list.

### 8. Preparation state and dish identity are lossy

#### Cause

The model can reduce a prepared named dish to a raw constituent, for example
poha to rice flakes, and omit its preparation state. Current refinement is a
small set of English regular expressions and food-specific exceptions.
ASCII-only normalization also loses localized display tokens.

#### Fix

- Preserve named prepared dishes as food identities when nutrition is for the
  consumed dish.
- Require preparation-state compatibility during matching.
- Treat missing material preparation state as ambiguity, not as raw/dry.
- Use Unicode-aware normalization for display/evidence matching.
- Keep localized display identity separate from English retrieval identity.
- Expand reviewed dish concepts from measured failures rather than adding
  spelling aliases indefinitely.

### 9. Unresolved nutrition is explicitly converted to zero

#### Cause

Unmatched ingredients start with zero macros. If the nutrition fallback fails
or produces no accepted entry, the code deliberately keeps those zero values
and continues. Zero therefore means both verified water and unknown food.

#### Fix

- Reserve zero nutrition for verified zero-calorie identities.
- Add an explicit `UNRESOLVED` nutrition state.
- Do not complete a meal containing an unresolved calorie-contributing item.
- Offer an editable unresolved-food response or a retryable resolution error.
- Suppress health classification and advice while any food is unresolved or
  ambiguously matched.
- Keep LLM nutrition estimation as a bounded last resort and validate its food
  identity, preparation state, Atwater consistency, and category limits.
- Cache only reviewed fallback nutrition by normalized food concept, preparation
  state, dataset/model version, and validation version. An unreviewed model
  estimate must not become an authoritative cache row.

### 10. Presentation generates authoritative fields

#### Cause

The presentation model returns a free-form `quantity` string. Its input summary
contains grams and macros but omits count, per-unit values, preparation basis,
and confidence provenance. The response is shape-checked but not reconciled
with the resolved ingredients. The result copies the string directly.

#### Fix

Remove quantity from the presentation model. Format it deterministically from
resolved state, for example:

- `6 dahi puris · 150 g total`;
- `Rice 200 g + dal 100 g`;
- `100 g dry oats`.

The presentation model may generate optional prose only. Parse that prose with
the same typed structured-completion boundary. Health text must be deterministic
or suppressed when identity, preparation, quantity, or nutrition confidence is
insufficient.

### 11. Flutter discards clarification context and misrepresents skipping

#### Cause

The wire contract includes `ingredientName`, but the question sheet builds a
generic question solely from `portionKind`. “Skip” removes the selection, then
answer construction replaces it with the default. Count and size arrive in
separate backend rounds, while the widget test constructs both in one sheet.
Stable option IDs such as `medium` and local `estimated` are not exhaustively
localized. `6plus` is silently interpreted as seven.

#### Fix

- Render ingredient-specific localized questions.
- Replace “Skip” with an honest `Use estimate` action, or introduce an explicit
  `ACCEPT_ESTIMATE` answer; never silently submit a default.
- Keep one visual sheet open across dependent server rounds, or introduce one
  compound count-and-size clarification contract.
- Make option IDs an exhaustive shared contract with parity fixtures.
- For six or more pieces, request a numeric value instead of assuming seven.
- Align the local and backend clarification engines on the same semantics and
  presentation contract.

### 12. Result confidence measures only a subset of correctness

#### Cause

Calorie confidence is driven mainly by the post-clarification portion band and
whether an LLM fallback remained at zero. It does not fully include
decomposition completeness, title specificity, quantity provenance, USDA
identity margin, preparation agreement, or fallback quality. A wrong template
answer can collapse the band and produce high confidence.

#### Fix

Calculate a structured confidence report:

```ts
type AnalysisConfidence = {
  decomposition: 'HIGH' | 'MEDIUM' | 'LOW';
  quantity: 'HIGH' | 'MEDIUM' | 'LOW';
  nutritionIdentity: 'HIGH' | 'MEDIUM' | 'LOW' | 'UNRESOLVED';
  preparation: 'HIGH' | 'MEDIUM' | 'LOW' | 'UNRESOLVED';
  portion: 'HIGH' | 'MEDIUM' | 'LOW';
  reasons: string[];
};
```

The public aggregate is the weakest material dimension, not merely the final
calorie-band width.

## Target flow

```text
input
  -> deterministic text anchors and locale context
  -> model proposal with evidence and provenance
  -> full semantic parser inside provider failover
  -> source coverage and portion-invariant validation
  -> identity-tiered, preparation-aware nutrition resolution
  -> mandatory clarification, then optional impact-based clarification
  -> final integrity gate
  -> deterministic meal title/quantity and optional safe prose
  -> durable result
```

The final integrity gate must prove:

1. every explicit food and quantity anchor is represented;
2. count, per-unit grams, total grams, and bounds agree;
3. every calorie-contributing item has resolved nutrition;
4. matched nutrition preserves food identity and preparation state;
5. displayed quantity is derived from the persisted portion state;
6. confidence reasons reflect every degraded boundary; and
7. health/tip output is absent when its grounded inputs are unsafe.

## Implementation sequence

### Phase 0 — Containment

- Fail closed on unresolved non-water nutrition.
- Suppress health and tip generation for unresolved or ambiguous results.
- Derive quantity deterministically.
- Require template kind compatibility and remove first-word fallback.
- Make missing count mandatory before calorie thresholds.

These changes prevent the worst confident outputs while the contracts are
being redesigned.

### Phase 1 — Provider and provenance contract

- Move full Zod parsing inside provider attempts.
- Add source evidence and count/size provenance.
- Add safe schema-path diagnostics.
- Add deterministic text validation for explicit quantities and sizes.

### Phase 2 — Portion and clarification domain

- Centralize portion mutation and invariants.
- Add compound/dependent clarification handling.
- Repair ingredient-specific UI copy and estimate semantics.
- Align local and cloud option contracts.

### Phase 3 — Nutrition identity and preparation

- Introduce hard identity tiers and extra-token rejection.
- Detect duplicate-name nutrient dispersion.
- Require ambiguity margins and preparation compatibility.
- Add reviewed food concepts and prepared-dish mappings from measured failures.

### Phase 4 — Completeness, confidence, and presentation

- Enforce explicit source coverage.
- Add multidimensional confidence.
- Move title and quantity to deterministic formatting.
- Restrict presentation to optional safe prose.

### Phase 5 — Evaluation and rollout

- Run repeated staging evaluations behind a rollout switch.
- Compare identity, preparation, quantity, completion, presentation integrity,
  and latency against the current baseline.
- Shadow new resolver decisions before enabling them for users.
- Retain a rollback path for each independently shipped phase.
- Preserve parallel USDA lookup and request-local deduplication. If a bounded
  process cache is added, key it by normalized food concept and preparation and
  invalidate it whenever the active USDA dataset version changes.
- Measure decomposition, retrieval, matching, fallback, persistence,
  clarification, and presentation separately and assign a latency budget to
  each stage.

## Required verification

### Deterministic tests

- Full provider failover on relational Zod failures.
- Exact source-evidence validation and explicit component preservation.
- Text counts, sizes, mass, volume, and localized bowl/count expressions.
- Template identity and kind compatibility.
- `grams = count * perUnitGrams` after every clarification path.
- No unresolved non-water ingredient can produce `COMPLETED`.
- USDA duplicate-name dispersion and high-score low-margin rejection.
- `paneer` cannot match `palak paneer`; common egg cannot select an arbitrary
  branded product.
- Prepared poha cannot use dry rice-flake nutrition.
- Quantity formatting exactly reflects persisted ingredients.
- Health/tip suppression on unsafe grounding.
- Flutter renders `ingredientName`, true estimate behavior, every option ID,
  and real multi-round flow.
- Backend and local engines pass shared clarification fixtures.

### Live evaluation set

Expand the staging matrix into a reviewed, versioned set covering:

- explicit grams, counts, cups, spoons, pieces, bowls, and ambiguous portions;
- raw, cooked, dry, fried, and mixed preparation states;
- single foods, multi-item meals, and named composite dishes;
- Indian, East/Southeast Asian, Middle Eastern, African, European, and American
  foods;
- multilingual and colloquial inputs;
- high-calorie fats and low-calorie countable foods; and
- non-food controls.

Run every live case at least three times and retain aggregate metrics, not raw
health-data payloads in general logs.

### Release criteria

- At least 98% completion for valid food inputs.
- At least 90% reviewed calorie-range pass rate on the expanded holdout set.
- Zero severe food-identity, preparation inversion, explicit-quantity, omitted
  component, unresolved-as-zero, or presentation-contradiction failures.
- Repeated-run output remains within the reviewed portion/calorie range.
- No more than 10% regression in p50 or p95 end-to-end latency.
- The ordinary successful path uses one decomposition call; extra model work is
  reserved for invalid or unresolved proposals.

## Documentation updates required during implementation

- Update the
  [meal-analysis state machine](../../backend/docs/meal-analysis-state-machine.md)
  when provider parsing, unresolved states, clarification transitions, or
  result integrity rules change.
- Update the
  [meal-analysis CLI guide](../../backend/docs/meal-analysis-cli.md) with new
  failure and clarification behavior.
- Update the
  [Prometheus reference](../../backend/docs/meal-analysis-prometheus.md) with
  semantic validation, ambiguity, unresolved-nutrition, and integrity-gate
  metrics.
- Update this plan's status as phases land; remove it after all release gates
  are met and the permanent references describe the final workflow.
