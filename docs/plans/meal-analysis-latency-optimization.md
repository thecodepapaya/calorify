# Meal-Analysis Latency Optimization Plan

Status: secondary to the [evals plan](meal-analysis-evals.md) since 2026-11-16; variance and accuracy come first. Agreed 2026-11-14.
Owner: Ashutosh (core logic) + agent (mechanical plumbing, on request)
Scope: `backend/internal/analysis/` pipeline latency. No pass-1/pass-2 merge; two-pass decomposition is a quality invariant.

## 0. Where this stands (2026-11-17)

| Item | State |
|---|---|
| Phase 0, `llm_call` measurement | Done, including reasoning tokens, effort, finish reason, response model and service tier |
| Phase 1 readout | Done (section 4) |
| Scenario A, one pass-2 call per component | Done. Five-component meal: pass 2 12.07 s to 6.97 s |
| Reasoning effort `none` on both passes | Done. Same meal end to end: 19.10 s to 11.03 s; simple meals about halved (parantha 10.55 s to 4.75 s). One possible quality regression seen; to be judged with the evals |
| L2 prompt caching | Closed. Prompts are under the 1,024-token cache floor, so `cached_tokens` is always 0 |
| L1 image compression | User-owned, in progress |
| L3 recipe table | Draft, open decisions listed in L3 |
| L4 model split, L5 output trim | Not started; both need the evals first |
| Production re-measure | Not done since the split and the effort change |

Before-and-after records: [pass-2 split evaluation](../../backend/evals/pass2-per-component-split-evaluation.md). The 5 s target applies to cache or recipe hits and is not a hard limit.

## 1. Objective

Reduce end-to-end meal-analysis latency (request accepted -> `PRESENTED` status):

| Metric | Current (prod, 7d avg) | Target |
|---|---|---|
| E2E average | 10.96 s | < 10 s (must), ~ 5 s (preferred) |
| Pass 1 (components) | 5.66 s | - |
| Pass 2 (ingredients) | 4.84 s | - |
| USDA hydration | 0.46 s | no work needed |
| Clarification + final | ~ 0.00 s | no work needed |

The two LLM calls are 96% of wall clock. USDA hydration is already sub-second after the HNSW index fix and per-analysis query parallelization (2026-11-06 review); it is out of scope for this plan except as a measurement row.

### Budget math

- **< 10 s average**: each LLM call needs roughly a 10-15% cut. Achievable with input/prompt trims alone.
- **~ 5 s average**: two serial calls must average ~2.2 s each (leaving ~0.5 s for hydration + DB writes). That is a 55-60% cut per call and almost certainly requires the recipe table (L3), the model split, or both — not just trimming.

## 2. Constraints and standing rules

- **No pass merge.** Two-pass decomposition stays. (User decision, 2026-11-14; backed by the recorded one-call experiment: 28/36 vs 36/36 fixture reliability, see [backend/evals/luna-one-call-meal-analysis-evaluation.md](../../backend/evals/luna-one-call-meal-analysis-evaluation.md).)
- **No live model calls without an explicit request.** The evals make direct provider calls, but each live recording is approved by the user; scoring is offline.
- **Eval harness is absent.** The design is in the [Meal-Analysis Evals plan](meal-analysis-evals.md): four independent evals (`pass1`, `pass2`, `usda`, `e2e`). Historical baselines from the removed harness (2026-11-01): meal eval 20/36 runs passing, 89.1% hard assertions; USDA resolver top-1 89/115. Any output-affecting change (L3, L4, L5, reasoning effort) is judged with that harness.
- **Mentorship split (backend/AGENTS.md).** The user writes core logic: DDL, DTOs, pipeline code, cache design decisions. The agent handles mechanical work when asked: instrumentation plumbing, dashboards, eval-harness tooling, docs.
- **No backward compatibility.** Single pre-production deployment state; direct single-path code, no fallback shims.
- **Single VM, no Redis deployed.** Any "cache" defaults to process-local unless a concrete reason forces otherwise.
- **Migrations run on every boot, unversioned.** `MigrateCalorify` globs `migrations/calorify/*.sql`, sorts the paths lexicographically, and executes each file in order (`internal/database/database.go:42-79`). There is no version table, so every file re-runs on every startup and each must stay idempotent (`CREATE TABLE IF NOT EXISTS`, guarded `ALTER`s). New DDL can be appended to `000001_create_user_profile.sql` or added as a new numbered file; file count is not the constraint, re-execution is. A versioned runner (golang-migrate) is a deliberate non-goal for now.
- **Pipeline timeout**: the whole background pipeline runs under a 30 s context (`service.go` runPipeline), reduced from 45 s because the production USDA database is fully indexed and lookups resolve in about 1.5 s or less.

## 3. Phase 0 - Per-call measurement (agreed design)

Goal: know, per call, where the seconds go (prompt tokens vs cached tokens vs completion tokens, and wall duration). Nothing downstream can be decided honestly without this.

### 3.1 `llm_call` table (generic, LLM calls only)

Settled decisions:

- Generic table; any future LLM call site (summaries, clarification LLM work) writes here too.
- LLM calls only. Ollama embed and USDA search timings stay where they are (OTel spans, `*_at` columns); hydration is known-cheap.
- `analysis_id` FK to `meal_analysis`.
- Per-call timestamp column included, even though stage `*_at` timestamps overlap. Recording twice is accepted.
- Blocking insert right after each call (agreed: ~1 ms, not worth async complexity; also avoids context-lifetime questions).

Column spec (the user writes the DDL; this is the agreed shape):

| Column | Purpose |
|---|---|
| `id` | PK |
| `analysis_id` | FK -> `meal_analysis(id)` |
| `stage` | e.g. `PASS_1`, `PASS_2` (extendable enum) |
| `model` | model string actually used |
| `prompt_tokens` | from `res.Usage.PromptTokens` |
| `cached_tokens` | from `res.Usage.PromptTokensDetails.CachedTokens` |
| `completion_tokens` | from `res.Usage.CompletionTokens` |
| `duration_ms` | wall time measured around the call |
| `created_at` | per-call timestamp |
| `error` | NULL on success; error text on failure |
| `component_id` | Pass-2 component index; NULL for pass 1 (added 2026-11-15) |
| `reasoning_tokens` | from `res.Usage.CompletionTokensDetails.ReasoningTokens` (added 2026-11-17) |
| `reasoning_effort` | the effort value sent on the request (added 2026-11-17) |
| `finish_reason` | first choice's finish reason, e.g. `stop` or `length` (added 2026-11-17) |
| `response_model` | model id the provider reports having served (added 2026-11-17) |
| `service_tier` | processing tier the provider reports (added 2026-11-17) |

### 3.2 Instrumentation at call sites

- `decomposeComponents` and `decomposeIngredients` capture `res.Usage.*` and a wall-clock duration, then insert the row before returning.
- The usage block is always present on a completed call; failed calls still record `error` + duration.
- TTFT (time-to-first-token) is not measurable without streaming. Optional later refinement: enable streaming purely to split TTFT from decode. Not in scope for Phase 0.

### 3.3 Dashboard surfacing

- `internal/dashboard` analysis-history view gains per-call tokens + duration in the session detail (mechanical work, agent-owned). Implemented 2026-11-14: the summary panel shows per-stage averages from `llm_call`, and each analysis drawer lists its calls (stage, model, duration, prompt/cached/completion tokens, error).
- The existing avg-step-profile panel (source of the 10.96 s numbers) continues as the top-level KPI.

### 3.4 Phase 0 acceptance

- Table created via startup migration on next deploy; `go vet` / `go test` / `go build` clean.
- After ~1 day of prod traffic, each completed analysis has its `llm_call` rows (one for pass 1 and, since the per-component split, one per component for pass 2) and the dashboard shows them.
- Prompts/DDL live in one place; no duplicate tracking beyond the agreed timestamp overlap.

## 4. Phase 1 - Data readout and decision tree

Read the accumulated `llm_call` rows and branch:

| Observation | Likely cause | Lever |
|---|---|---|
| Pass 2 `completion_tokens` high (thousands) | decode time dominates pass 2 | L5 output trim, L3 recipe table (skip decode entirely on hits) |
| `cached_tokens` = 0 on either call | static system prompt not hitting OpenAI prompt cache (too short, or prefix varies) | L2 prompt-caching fix |
| Pass 1 duration >> pass 2 despite similar tokens | image prefill cost | L1 image compression (already in progress) |
| Both calls have low tokens but multi-second duration | reasoning/model latency floor | L4 model split (pass 2 first) |
| High `prompt_tokens` on pass 2 | pass-1 JSON serialized wholesale as input | trim pass-2 input to fields pass 2 actually uses |

Estimating decode share without TTFT: `completion_tokens / duration` gives effective tokens/sec; comparing that rate against the model's known decode speed tells us how much of the call is fixed overhead (TTFT + reasoning) vs decode.

### 4.1 Readout, 2026-11-14 (local DB, text-only)

Data: 3 analyses with `llm_call` rows and 16 presented analyses with stage timestamps. Every local analysis is text-only (`image_base64` empty), so nothing here measures image prefill.

| Meal | Comps / ings | P1 prompt / completion | P1 ms | P2 prompt / completion | P2 ms | Hydration | E2E |
|---|---|---|---|---|---|---|---|
| 1 guava | 1 / 1 | 985 / 201 | 3961 | 878 / 177 | 2792 | 2.76 s | 9.53 s |
| 4 roti parantha | 1 / 3 | 987 / 365 | 5799 | 893 / 502 | 5487 | 3.36 s | 14.66 s |
| 6 roti, daal, rice, sabzi, raita | 5 / 14 | 998 / 839 | 9471 | 1216 / 1415 | 12071 | 3.26 s | 24.82 s |

Verification queries:

```sql
-- per-call tokens and durations
SELECT lc.stage, lc.prompt_tokens, lc.cached_tokens, lc.completion_tokens, lc.duration_ms
FROM llm_call lc JOIN meal_analysis ma ON ma.id = lc.analysis_id;

-- decode rate and fixed floor per stage
WITH d AS (SELECT stage, completion_tokens::float8 ot, duration_ms::float8 ms FROM llm_call)
SELECT stage, regr_slope(ms, ot) AS ms_per_token,
       1000 / regr_slope(ms, ot) AS tokens_per_sec,
       regr_intercept(ms, ot) AS fixed_ms, corr(ms, ot) AS r
FROM d GROUP BY stage;

-- cross-check on all presented analyses
WITH d AS (
  SELECT jsonb_array_length(coalesce(decomposed_ingredient->'ingredients','[]'::jsonb))::float8 ings,
         extract(epoch FROM (decomposed_ingredient_at - decomposed_component_at))::float8 p2
  FROM meal_analysis WHERE status = 'PRESENTED')
SELECT corr(ings, p2), regr_slope(p2, ings), regr_intercept(p2, ings) FROM d;
```

Results:

| Stage | ms per output token | implied decode | fixed floor | r (n=3) |
|---|---|---|---|---|
| PASS_1 | 8.44 | ~118 tok/s | 2.46 s | 0.997 |
| PASS_2 | 7.43 | ~135 tok/s | 1.60 s | 1.000 |

Cross-check over 16 presented analyses: P2 ≈ 3.57 s + 0.54 s/ingredient (r = 0.93); P1 ≈ 4.38 s + 0.81 s/component (r = 0.77). The 3-point token fit is descriptive, not statistical; the 16-point ingredient fit corroborates the shape.

Findings:

- **Duration is a linear function of completion tokens, not prompt tokens.** Prompt tokens are flat (985-998 on P1, 878-1216 on P2) while duration moves 2.4x and 4.3x.
- **The cost mix flips with meal size.** Fixed floor share of LLM time: 60% (guava), 36% (parantha), 19% (large). Decode share: 40% / 64% / 81%.
- **Hydration is a local constant.** 2.76-3.36 s here; 16-analysis average 4.14 s, sd 2.85. That is 13-29% of e2e and far above the 0.46 s prod figure. Explained 2026-11-17: the local USDA database is only partly embedded and indexed (138,560 of 455,458 branded rows), while production is fully indexed. Hydration stays out of scope.
- **`cached_tokens` = 0 on all six calls.** The prompt is ~1k tokens, below the cache floor. Prompt caching cannot help.
- **P1 is the more expensive call per unit of structure.** 168 completion tokens per component vs 101 per ingredient, and a 0.86 s higher fixed floor. The output is verbose: every portion carries three `per_unit_*: null` fields (`backend/internal/analysis/schema.go:44-53`), and canonical names are long strings.
- **Possible reasoning tokens in P1.** P1's JSON is 1775 chars for 839 completion tokens (2.1 chars/token) while P2's is 4297 chars for 1415 tokens (3.0 chars/token). If the visible P1 JSON is ~500-590 tokens, roughly 250-350 completion tokens are not visible output, i.e. reasoning. Settled 2026-11-17: `llm_call` now records `reasoning_tokens`, and both passes run at reasoning effort `none`.

### 4.2 Scenario calculations, 2026-11-14

Both scenarios use the fitted model `duration = fixed + completion_tokens x ms_per_token`, with P1 = 2.46 s + 8.44 ms/token and P2 = 1.60 s + 7.43 ms/token. Savings are deltas from the measured durations.

#### Scenario A - split pass 2 into one parallel call per component

Implemented 2026-11-15. Measured: 12.07 s to 6.97 s against the 5.35 s predicted below; the slowest call produced 701 output tokens, more than the 505 estimated.

Formula: `wall = fixed + max_i(tokens_i) x 7.43 ms`, where `tokens_i` is the output for component i. The fixed floor is paid once in wall time because the calls overlap, but n times in provider compute.

Large meal (5 components, 14 ingredients, 1415 output tokens, 101 tokens/ingredient):

| Component | Ingredients | Est. output tokens |
|---|---|---|
| Daal | 5 | 505 |
| Aloo sabzi | 5 | 505 |
| Raita | 2 | 202 |
| Roti | 1 | 101 |
| Rice | 1 | 101 |

Per-call wall time = 1.60 s + tokens x 7.43 ms:

| Component | Wall time |
|---|---|
| Daal | 1.60 + 505 x 7.43 ms = 5.35 s |
| Aloo sabzi | 1.60 + 505 x 7.43 ms = 5.35 s |
| Raita | 1.60 + 202 x 7.43 ms = 3.10 s |
| Roti | 1.60 + 101 x 7.43 ms = 2.35 s |
| Rice | 1.60 + 101 x 7.43 ms = 2.35 s |

- Current P2: 1.60 + 1415 x 7.43 ms = 12.11 s (measured 12.07 s).
- Split P2: max of the five calls = 5.35 s.
- Saved: 6.72 s. E2E: 24.82 -> 18.10 s (-27%).
- One-component meals (guava, parantha): n = 1, no change.
- Cost: prompt tokens go from 1216 to ~5 x 890 = 4450 (3.7x), because each call re-sends the system prompt and schema.
- Assumptions: true parallelism, no provider rate limiting, output tokens proportional to ingredient count, fixed floor unchanged.

#### Scenario B - compress schema field names and enum values

Rename map: `name->n`, `portion->p`, `kind->k`, `value->v`, `origin->o`, `max_value->mx`, `min_value->mn`, `per_unit_grams->pug`, `per_unit_max_grams->pumg`, `per_unit_min_grams->pung`, `canonical_name->cn`, `preparation_method->pm`, `component_name->cmp`, `ingredient_type->it`, `MODEL_INFERRED->MI`, `USER_STATED->US`, `EXACT->EX`, `BULK->BK`, `PINCH->PN`, `BASE->B`.

Applying the map to the persisted JSON:

| Meal | P1 chars before -> after | P1 saved | P2 chars before -> after | P2 saved |
|---|---|---|---|---|
| guava | 495 -> 312 | 37.0% | 323 -> 188 | 41.8% |
| parantha | 581 -> 387 | 33.4% | 948 -> 556 | 41.4% |
| large | 1775 -> 1111 | 37.4% | 4297 -> 2507 | 41.7% |

Token savings are estimated two ways: a conservative 30% cut on both stages, and the per-meal char-proportional cut from the table above. Latency saved = `tokens_saved x ms_per_token`.

Computation detail, 30% case:

- guava: P1 201 x 0.30 = 60.3 tokens x 8.44 ms = 0.51 s; P2 177 x 0.30 = 53.1 x 7.43 ms = 0.39 s; total 0.90 s.
- parantha: P1 365 x 0.30 = 109.5 x 8.44 ms = 0.92 s; P2 502 x 0.30 = 150.6 x 7.43 ms = 1.12 s; total 2.04 s.
- large: P1 839 x 0.30 = 251.7 x 8.44 ms = 2.12 s; P2 1415 x 0.30 = 424.5 x 7.43 ms = 3.15 s; total 5.28 s.

Computation detail, char-proportional case:

- guava: P1 201 x 0.370 = 74.4 x 8.44 ms = 0.63 s; P2 177 x 0.418 = 74.0 x 7.43 ms = 0.55 s; total 1.18 s.
- parantha: P1 365 x 0.334 = 121.9 x 8.44 ms = 1.03 s; P2 502 x 0.414 = 207.8 x 7.43 ms = 1.54 s; total 2.57 s.
- large: P1 839 x 0.374 = 313.8 x 8.44 ms = 2.65 s; P2 1415 x 0.417 = 590.1 x 7.43 ms = 4.38 s; total 7.03 s.

| Meal | Saved at 30% | E2E after | Saved at char-proportional | E2E after |
|---|---|---|---|---|
| guava | 0.90 s | 8.63 s (-9.5%) | 1.18 s | 8.35 s (-12.4%) |
| parantha | 2.04 s | 12.62 s (-13.9%) | 2.57 s | 12.09 s (-17.5%) |
| large | 5.28 s | 19.54 s (-21.3%) | 7.03 s | 17.79 s (-28.3%) |

Input savings are small: the schema is sent once per call, and field names are ~100-150 of the ~985-1216 prompt tokens. The descriptions, not the names, are the bulk of the input; compressing names alone is a cost saving, not a latency lever.

#### Combined

| Meal | Baseline E2E | A only | B only (30% / char) | A + B (30% / char) |
|---|---|---|---|---|
| guava | 9.53 s | 9.53 s | 8.63 / 8.35 s | 8.63 / 8.35 s |
| parantha | 14.66 s | 14.66 s | 12.62 / 12.09 s | 12.62 / 12.09 s |
| large | 24.82 s | 18.10 s | 19.54 / 17.79 s | 14.81 / 13.85 s |

Combined arithmetic for the large meal: 30% case = 24.82 - 5.28 (compression) - 4.73 (split after compression) = 14.81 s; char case = 24.82 - 7.03 - 3.94 = 13.85 s. The split saving shrinks after compression because there are fewer tokens to remove: `p2_tokens_after x (1 - 5/14) x 7.43 ms`.

Caveats: n=3 token samples, local network, text-only. The decode rate and fixed floor are model/provider properties and should transfer; the hydration figure may not. Scenario A assumes the provider runs the calls concurrently; rate limiting would reduce the gain. Scenario B assumes token savings scale with character savings; short keys may tokenize less efficiently than the estimate.

### 4.3 Conclusion, 2026-11-14

Attack in this order:

1. **Cut P1 output tokens.** It gates P2, costs the most per component (168 tokens/component), and every 100 tokens is ~0.84 s. The schema forces three null `per_unit_*` fields per portion and long canonical names.
2. **Cut P2 output tokens for complex meals.** ~0.74 s per 100 tokens; a 25% trim on the 14-ingredient meal saves ~4.4 s.
3. **Measure and attack the fixed floor** (1.6-2.5 s per call). It is half the cost of simple meals. Split TTFT from reasoning with streaming or a trivial-prompt probe before choosing between a faster model and lower reasoning effort.
4. **Verify hydration.** If local ~3 s is real, it is the third-largest cost; if prod is genuinely 0.46 s, ignore it.

Do not spend effort on prompt trimming or prompt caching. A smaller pass-2 model is plausible but needs an eval before it is a decision. Scenario A is the strongest lever for multi-component meals; Scenario B is the only one that helps single-component meals.

Outcome: Scenario A was implemented, and item 3 was addressed by setting reasoning effort to `none` (section 0). Items 1 and 2 (output-token trims, Scenario B) are open.


## 5. Phase 2 - Levers

Ordered by expected impact-to-risk ratio, pending Phase 1 data. Each lever states its validation path; none ships without prod re-measurement against the KPI.

### L1. Image compression and size cap (user-owned, in progress)

- User compresses and caps the image size before it reaches the backend. Vision prefill cost scales with image tokens; 500 KiB webp is far more than the model needs.
- Expected effect: cuts a chunk of pass 1's 5.66 s; magnitude visible in Phase 0 data (pass-1 duration vs pass-2 as the before/after control).
- Validation: KPI re-measure; pass-2 row as control.

### L2. Prompt-caching fix (closed)

Closed 2026-11-14: both prompts are under the cache floor, so there is nothing to fix. Kept for the record.

- If `cached_tokens` is 0: find why (system prompt under the ~1024-token cache threshold, or dynamic content ahead of the static prefix) and fix ordering so the static prompt + schema hit the cache.
- Expected effect: reduces TTFT on pass 2 (its system prompt + schema are static consts). Pass 1's image content will never cache; only its static prefix can.
- Validation: `cached_tokens > 0` on pass 2 rows; duration delta.

### L3. Pass-2 recipe table

Status: draft for discussion (2026-11-17). Replaces the earlier "pass-2 recipe cache" idea: a fixed table of known recipes, not a cache of past pass-2 outputs.

Intent: when a pass-1 component matches a known recipe, take its ingredients from the table and skip that component's pass-2 call. This saves the call's cost on every hit. It saves wall time only when every component of the meal hits, because pass-2 calls run in parallel and the slowest one sets the time.

#### Decided (user, 2026-11-17)

- A new table in the USDA database, similar in shape to `usda_foods`.
- Each row has a description and its ingredients with portions.
- Lookup is by embedding similarity on the component name, the same way ingredients are matched today.
- A component with no match goes through pass 2 as it does now.
- Handling of incorrect matches is deferred, but must be settled before this ships (case M1).

#### Source data

The USDA Survey file already holds what the table needs, and ingestion drops it today:

- 5,431 dishes with a recipe: ingredient lines with gram weights (`inputFoods`).
- Portions per dish: unit weights such as "1 egg = 55 g", and a default serving when no quantity is given (5,363 dishes).
- 9,647 alternative names.
- Nutrients for the finished dish, per 100 g. These rows are already in `usda_foods`.

#### How the earlier cache questions map

| Earlier question | Answer under a fixed table |
|---|---|
| Key | Embedding search on the component's canonical name |
| Hit rate | Measure offline by looking up stored pass-1 components in the table |
| Storage | Table in the USDA database |
| Staleness of cached pass-2 output | Gone: recipes are fixed data, not model output |
| Invalidation | Tied to the USDA dataset version |

#### Missed cases

Matching:

| Id | Case | Why it matters |
|---|---|---|
| M1 | Every search returns a nearest row | Without an accept rule nothing ever falls through to pass 2. Measured: right and wrong top matches score alike (0.78 to 0.86), so a similarity cutoff alone cannot separate them |
| M2 | Near-duplicate variants | The Survey has separate omelets "made with butter", "made with oil" and "NS as to fat". Which one wins can flip between runs, which adds variance. A default variant is needed |
| M3 | Description lacks the common name | "Dal, yellow lentils, cooked" matched "Yellow string beans" on description alone; with the alternative name "daal" embedded it matched "Dal". One vector per name avoids diluting good matches |
| M4 | Dish not in the table | Raita and most sabzi dishes have no Survey entry, so their nearest row is always wrong. This is M1 again, and it is the common case for Indian meals |
| M5 | Preparation conflict | Pass 1 may say `DEEP_FRIED` while the matched recipe is boiled. The recipe carries its own preparation |
| M6 | Branded or restaurant components | "Shin Ramyun 114 g" or a Chipotle bowl must not match a generic recipe |
| M7 | User-stated changes | "omelette with cheese", "no peanuts", "extra ghee". Pass 2 honours these today; a fixed recipe ignores them |

Quantities:

| Id | Case | Why it matters |
|---|---|---|
| Q1 | Which unit weight wins | Pass 1 guessed 70 g and 100 g per omelette on identical input. The recipe says 55 g per egg and 110 g by default. Taking the recipe's weight removes that variance; taking pass 1's keeps it |
| Q2 | Unit names do not line up | Pass 1 says "2 omelettes"; the recipe's units are "1 egg" and "1 cup". Matching a stated unit to a recipe portion is free-text matching |
| Q3 | Raw recipe weight is not dish weight | Recipe lines are raw inputs. 816 dishes record a moisture change, so ingredient grams do not sum to the cooked weight pass 1 estimates |
| Q4 | Source of the totals | The finished dish has its own per-100 g nutrients. Using those avoids Q3; summing scaled ingredients does not |
| Q5 | Ranges | Pass 2 gives min and max per ingredient, and clarifications depend on them. A recipe gives single values, so ranges must come from the pass-1 portion range |

Recipe content:

| Id | Case | Why it matters |
|---|---|---|
| C1 | Nested recipes | 23% of ingredient lines point to another Survey dish. Expand them, or treat them as single ingredients |
| C2 | Ingredient links | Lines reference ingredients by `ndbNumber`, which ingestion drops. The import must resolve each to an `fdc_id` so hits also skip the USDA search |
| C3 | Unresolvable lines | 217 lines are fortification entries such as "Vitamin D as ingredient" |
| C4 | Single-ingredient "recipes" | 1,602 dishes have one ingredient. Roti's only ingredient is commercial roti, with no flour and water split |
| C5 | Generic ingredients | "Oil or table fat, NFS", "Milk, NFS" |
| C6 | Long or tiny lines | Biryani has 18 ingredients; salt is 0.3 g. The ingredient list shown to users gets long |
| C7 | US approximations | The chicken biryani recipe has baked potatoes, basil and jalapeño. Pass 2 uses the request's country; a recipe does not. A hit can lower accuracy while lowering variance |

Output contract:

| Id | Case | Why it matters |
|---|---|---|
| O1 | Localised ingredient names | Pass 2 writes display names in the user's language. Recipe ingredients have only USDA English names such as "Eggs, Grade A, Large, egg whole" |
| O2 | Stored shapes | `decomposed_ingredient` and `usda_enriched` must keep their nested shape so the dashboard and clients keep working |
| O3 | Portion fields on ingredients | Each ingredient carries `kind`, `value` and `origin`. A recipe ingredient needs values for these; `origin` has no value meaning "from a recipe" |
| O4 | Observability | No `llm_call` row exists for a hit, so per-analysis averages change meaning. Each component needs a marker for recipe or model, and hits and misses need counting |

Operations:

| Id | Case | Why it matters |
|---|---|---|
| P1 | Extra embedding call | Component names must be embedded before pass 2. A meal with hits and misses makes two embedding calls |
| P2 | Mixed meals | One miss still costs a full pass-2 wait |
| P3 | Re-ingestion | The table must be rebuilt with the USDA data and recorded against the dataset version |

#### Open decisions, in the order they block work

1. M1: what accepts or rejects a match. Deferred by the user; blocks shipping, not building.
2. Q1 and Q4: on a hit, do unit weights and totals come from the recipe or from pass 1?
3. M3: one embedding per recipe, or one per name?
4. M2: the default variant when the user does not state the fat or method.
5. M7, M5, M6: which signals force a fall-through to pass 2.
6. O1: how ingredient names are shown in other languages.
7. C1, C4: how deep to expand, and whether single-ingredient dishes count as recipes.

Expected effect: pass-2 cost times (1 - hit rate). The hit rate is unknown until stored pass-1 components are looked up in the table.

Validation: an offline lookup of stored pass-1 components for hit rate; then the [evals plan](meal-analysis-evals.md), where the `pass2` eval's frozen components give a like-for-like comparison of recipe hits against pass-2 output, and `e2e` gives the effect on totals.

### L4. Pass-2 model split (prerequisite: eval harness rebuild)

- Thesis: pass 1 is the accuracy-critical vision+reasoning call; pass 2 is schema-constrained JSON extraction. A smaller/faster model may hold pass-2 quality while cutting its 4.84 s substantially.
- The user's current position: cheaper models degrade accuracy. That claim is untested for pass 2 specifically; the eval harness exists to test exactly this.
- **Prerequisite: the `pass2` eval** from the [evals plan](meal-analysis-evals.md). It runs pass 2 on frozen pass-1 components, so two models are compared on identical input, with the model set by a flag. Live recordings need the user's approval.
- Decision gate: only switch if the eval shows no meaningful regression. If it regresses, the lever is closed and we say so.

### L5. Output-token trim (data-driven)

- If Phase 1 shows pass-2 decode volume dominating: shrink generated content without dropping client-needed fields — e.g. shorter enum/string vocabulary, tighter max-length rules in the schema descriptions, fewer prose fields. Schema redesign is user-owned; schema conventions live in the struct-tag descriptions (see `backend/docs/` conventions: semantics in schema descriptions, direction in prompts).
- Expected effect: decode time scales roughly linearly with completion tokens; halving tokens roughly halves decode.

### Deferred (explicit non-goals for now)

- Streaming pass 2 into USDA hydration (overlaps only the 0.46 s hydration; complexity not justified).
- Redis or any new cache infrastructure.
- Versioned migration runner (see constraints).
- Global USDA concurrency limiter (per-analysis bound exists; revisit under burst-load evidence).

## 6. Sequencing

| Milestone | Contents | Done when |
|---|---|---|
| M0 | `llm_call` DDL + `SaveLlmCall` + call-site capture (user) ; dashboard columns (agent) | Deployed; prod rows accumulating. Dashboard panel and per-analysis call list wired 2026-11-14. |
| M1 | L1 image compression lands (user) | Prod KPI shows pass-1 drop |
| M2 | Readout: run the decision tree on accumulated rows | Levers picked with evidence |
| M3 | Chosen levers (subset of L3-L5) implemented and judged with the evals | No regression against the eval baseline; hit-rate counters if L3 |
| M4 | Prod re-measure | 7d avg e2e < 10 s; assess distance to 5 s and whether remaining levers are worth it |

M1 can proceed in parallel with M0 since it needs no instrumentation to start, only to verify.

## 7. Verification loop (applies to every lever)

1. Validate with the evals or by inspecting stored stage outputs. Live recordings only on the user's request.
2. Focused checks: `go vet ./...`, `go test ./...`, `go build ./...` (GOCACHE redirected to /tmp).
3. Deploy; watch the KPI panel and `llm_call` rows for at least a day of traffic.
4. Confirm untouched behavior: pass-1/pass-2 stage persistence and the polling endpoint statuses must remain intact; any output-shape change must be checked against both storage shapes (encoding/json stage columns and protojson final response).

## 8. Risk register

| Risk | Mitigation |
|---|---|
| Recipe table returns a wrong or ill-fitting recipe (wrong dish, wrong variant, ignored user changes) | Accept rule decided before shipping L3 (case M1); eval comparison against pass 2 on the same frozen components |
| Smaller pass-2 model degrades extraction quality | Eval harness gate before any switch; lever closed on regression |
| Prompt-cache fix breaks structured outputs | Schema/prompt untouched; only message ordering changes; schema test suite |
| Measurement table grows unbounded | One row per model call (1 plus the component count per analysis); revisit only if storage is ever observed as a problem |
| 30 s pipeline timeout masks real duration on failures | `error` + duration still recorded on failed calls; timeout untouched by this plan |
