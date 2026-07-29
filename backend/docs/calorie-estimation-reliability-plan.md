# Calorie estimation reliability plan

## Objective

Improve calorie and macro accuracy across cuisines while keeping the normal text-analysis path fast. The engine should rely on structured parsing, trustworthy food data, bounded recipe knowledge, and confidence-aware fallbacks—not an ever-growing list of string aliases.

Current live baseline (2026-07-29, staging): 12/12 completed, 10/12 passed (83.3%), 0.6% mean range error, and 12.0 s p95 end-to-end latency. Because the LLM is stochastic and the set is small, this is a starting measurement rather than a release-grade accuracy claim.

## Success criteria

- At least 90% pass rate over a broader, reviewed end-to-end dataset, measured across three runs per case.
- At least 98% completion and no severe food-identity failures.
- Mean range error at or below 5%; report median and p90 absolute percentage error as well.
- No regression greater than 10% in p50 or p95 latency from the measured baseline.
- The usual path uses one decomposition LLM call. Extra LLM work is reserved for genuinely unresolved ingredients.
- Explicit quantities supplied by the user are preserved exactly unless unit conversion requires a documented density assumption.

## Design principles

1. The LLM identifies foods and decomposes dishes; it is not the primary nutrition database.
2. Deterministic code owns units, quantities, candidate ranking, validation, and macro arithmetic.
3. Preparation state and food identity are separate signals. A shared word such as “cooked” cannot establish identity.
4. Curated knowledge should describe reusable food concepts and recipes, not spelling variants.
5. Low-confidence results should be visible and recoverable rather than silently precise.
6. Every accuracy change must be evaluated for latency and cuisine-specific regressions.

## Phase 1 — Build a trustworthy measurement loop

### Dataset

- Expand the current 12 cases to a reviewed, stratified set covering:
  - explicit grams, counts, cups, spoons, and ambiguous portions;
  - raw/cooked/dry state changes;
  - single foods, multi-item meals, and composite dishes;
  - Indian, East/Southeast Asian, Middle Eastern, African, European, and American foods;
  - multilingual and colloquial inputs;
  - high-calorie fats and low-calorie produce, where small matching errors are especially visible.
- Store provenance for expected ranges: USDA reference row, recipe calculation, or reviewed label.
- Separate a development set from a holdout set so fixes cannot overfit the visible cases.

### Metrics

- Run each live case three times and report stability as well as average accuracy.
- Record per-ingredient identity, grams, calories, match type, match score, confidence margin, provider/model, and stage latency.
- Add severe-error metrics: wrong food identity, raw/cooked inversion, omitted defining component, duplicated ingredient, and explicit-quantity violation.
- Maintain deterministic unit tests for matching and portion logic alongside live LLM evals.

Deliverable: a reproducible baseline report and CI-safe deterministic suite. Live provider evals remain scheduled/manual to avoid flaky pull requests.

## Phase 2 — Replace generic row selection with a food-quality layer

### Import-time validation

- Normalize energy units during import and repair existing affected rows with a migration.
- Calculate data-quality flags for zero energy, impossible macros, kcal/Atwater disagreement, missing nutrients, and generic branded descriptions.
- Create indexed fields for food identity tokens, preparation state, data source quality, and branded/reference status.

### Candidate retrieval and ranking

- Retrieve a small candidate set in one database query using exact names, token overlap, and trigram similarity.
- Rank candidates deterministically using:
  - required identity-token coverage;
  - preparation-state agreement;
  - reference-data quality;
  - non-zero, internally consistent nutrients;
  - penalties for brands, mixes, dips, sauces, or prepared dishes when the request is a plain ingredient.
- Use both an absolute confidence threshold and the margin over the second-best candidate. A close tie is ambiguous even if the top score is high.
- Add a small `food_concepts` table for genuine semantic equivalence (for example, regional names pointing to one concept). This replaces most aliases and remains reviewable and data-driven.

Deliverable: a matcher benchmark with top-1/top-3 accuracy and explicit rejection behavior. No LLM call is added to successful matches.

## Phase 3 — Make quantities deterministic before decomposition

- Parse explicit quantities from text before the LLM call: grams, kilograms, millilitres, cups, teaspoons, tablespoons, slices, pieces, and counts.
- Pass parsed quantity anchors into decomposition and reconcile the response afterward. The LLM may associate an anchor with a food but may not change its numeric value.
- Centralize unit conversions and density assumptions. Volume-to-weight conversion must identify the food-specific density or expose uncertainty.
- Validate count × per-unit grams, sensible gram bands, duplicate rows, cooking-fat bounds, and total meal plausibility.
- Use portion templates only when the user omitted size. Never replace a narrow inferred range with a larger generic default.

Deliverable: property-based and table-driven tests proving explicit quantities survive the full pipeline.

## Phase 4 — Model composite dishes with bounded recipes

- Introduce a compact `dish_templates` representation containing defining components, optional components, typical gram ranges, and regional variants.
- Use templates only for recognized named dishes with adequate confidence; otherwise keep the LLM decomposition.
- Templates validate rather than blindly replace decomposition: add a missing defining component, reject duplicated wrapper/base rows, and constrain implausible proportions.
- Start with high-volume and high-error dishes discovered by telemetry. Do not attempt a universal cuisine catalog.
- Version templates and test each one against a calculated reference recipe.

Deliverable: reusable recipe/component logic for the most consequential composite-dish errors, without thousands of aliases.

## Phase 5 — Harden fallbacks and uncertainty

- Keep LLM macro estimation as the last fallback, not a peer to USDA.
- Validate fallback macros with Atwater energy, food-category bounds, and maximum calorie-density rules.
- Cache reviewed fallback results by normalized food concept and model version; do not repeatedly estimate the same unknown food.
- When identity or portion uncertainty materially affects calories, ask one targeted clarification. Low-impact uncertainty should not interrupt the user.
- Include a machine-readable confidence reason in the result: identity ambiguity, portion ambiguity, fallback nutrition, or incomplete decomposition.

Deliverable: no silent zero-calorie ingredients and no unchecked LLM macro values.

## Phase 6 — Protect speed

- Preserve parallel USDA lookup and request-local deduplication.
- Add a bounded in-process LRU cache for normalized food-concept matches; invalidate it on USDA dataset version changes.
- Measure decomposition, matching, fallback, persistence, clarification, and presentation separately.
- Avoid a fallback LLM call when a high-quality top-three candidate can be resolved deterministically.
- Evaluate moving non-numeric presentation enrichment off the critical calorie-result path, or deriving it from the decomposition response, after measuring its current share of latency.
- Set latency budgets per stage and fail performance benchmarks on material regressions.

Deliverable: accuracy improvements within the 10% latency budget, with cache hit rate and fallback rate dashboards.

## Rollout order

1. Expand evals and record a repeated baseline.
2. Add import-time data-quality flags and deterministic candidate ranking.
3. Add explicit quantity anchoring and portion invariants.
4. Add bounded composite-dish templates based on measured failures.
5. Add fallback validation, caching, and targeted uncertainty.
6. Run shadow comparisons in staging, then deploy behind configuration flags.

Each phase should ship independently with tests, eval results, latency comparison, and a rollback switch. Accuracy thresholds may be tightened only after the holdout set improves; expected ranges must not be edited merely to make a regression pass.

