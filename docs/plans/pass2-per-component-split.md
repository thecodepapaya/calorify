# Pass-2 per-component split — design record

Status: pass-2 split, prompt rewrite, and peripheral plumbing implemented; clarification tiering implemented in its simple form (section 4), with the BULK/EXACT UI split deferred.
Scope: `backend/internal/analysis` pass 2, the stored ingredient shape, `llm_call`, and the analysis-history dashboard.
Related: [Meal-Analysis Latency Optimization](meal-analysis-latency-optimization.md) (Scenario A).

## 1. Baseline (current behavior)

Pass 2 is one LLM call per analysis:

- `decomposeIngredients` marshals the whole `Pass1DTO` and sends it as the user message (`backend/internal/analysis/service.go:246-330`).
- The response is `Pass2DTO{Ingredients []IngredientDTO}`; every ingredient carries `component_name` as the link back to its component (`backend/internal/analysis/schema.go:138-155`).
- `SaveMealIngredient` stores that flat JSON in `meal_analysis.decomposed_ingredient` (`backend/internal/analysis/db.go:69-85`).
- `enrichUsdaMacro` iterates the flat list, builds one embedding per ingredient, searches USDA in parallel, and builds an index-parallel `UsdaEnriched` (`backend/internal/analysis/service.go:331-390`).
- The dashboard parses the flat JSON and joins it to `usda_enriched` by array index (`backend/internal/api/history_artifacts.go:60-100`).
- `llm_call` records one `PASS_2` row per analysis (`backend/migrations/calorify/000001_create_user_profile.sql:133-146`).
- The dashboard LLM card shows per-call averages for `PASS_1` and `PASS_2` (`backend/internal/dashboard/templates/analysis_history.html:979-1010`).
- The client-facing `common.Meal` carries macros, name, quantity, type, health, and metadata; it has no ingredient list (`protos/common/meal.proto:63-75`).

Measured baseline (text-only, local DB, 2026-11-14): P2 is `1.60 s + 7.43 ms` per output token; a 5-component / 14-ingredient meal spends 12.07 s in P2 and generates 1415 output tokens.

## 2. Decisions

Each decision states the current behavior, the chosen change, the exact shape, and the consequence.

### D1. What each per-component call receives

**Current:** the user message is `json.Marshal(pass1)` — the whole DTO, including `tip`, `meal_health`, and every component (`service.go:250-261`).

**Decision:** meal-level context plus exactly one component, wrapped as `component` (singular). The message carries `name`, `quantity`, `meal_type`, and `component`. `tip` and `meal_health` stay pass-1 outputs and are not sent to pass 2.

**Proposed input:**

```json
{
  "name": "Roti, daal and sides",
  "quantity": "6 rotis with sides",
  "meal_type": "DINNER",
  "component": {
    "name": "Daal",
    "canonical_name": "Lentils, cooked",
    "preparation_method": "SIMMERED",
    "portion": {"kind": "BULK", "value": 180, "min_value": 120, "max_value": 250, "origin": "MODEL_INFERRED", "per_unit_grams": null, "per_unit_min_grams": null, "per_unit_max_grams": null}
  }
}
```

**Consequence:** the model cannot emit ingredients for another component. Prompt size drops from ~1216 tokens (5 components) to ~890 tokens per call. The locale/country prefix is still prepended by `buildContextPrefix`.

### D2. `component_name`

**Current:** `IngredientDTO.ComponentName` is a model output field (`schema.go:139`), and the prompt requires every ingredient to derive from one component (`schema.go:33`).

**Decision:** the server sets it; remove it from the pass-2 schema and from `IngredientDTO` entirely. The server fills `EnrichedIngredient.ComponentName` from the component.

**Consequence:** saves ~2-3 output tokens per ingredient and removes a hallucination failure mode. The nested storage shape (D5) makes the field redundant in the JSON.

### D3. Failure semantics

**Current:** any pass-2 error fails the analysis (`service.go:288-297`); the pipeline runs under a 45 s context.

**Decision:** any component failure fails the analysis. The failed call is recorded in `llm_call` with its component.

**Consequence:** identical failure behavior to today; no partial ingredient lists. The error path names the component in both the returned error string and the `llm_call.error` text, so the log and the dashboard are actionable.

### D4. Duplicate component names and indices

**Current:** `component_name` is the linking key; two components with the same name would collide. `EnrichedIngredient` has `component_name` but no index (`protos/server/meal.proto:12-23`).

**Decision:** attach 0-based `component_index` and `ingredient_index` server-side on `EnrichedIngredient`. The stored JSON does not carry indices, and the dashboard does not display them.

**Consequence:** unambiguous identity for USDA, the dashboard, and `llm_call` attribution, with no extra output tokens. The indices are assigned from the component order in pass 1 and the ingredient order within each response.

### D5. Stored ingredient and USDA hydration shape

**Current:** `Pass2DTO` and `server.UsdaEnriched` are flat lists; `SaveMealIngredient` and `SaveUsdaEnriched` store them as flat JSON arrays.

**Decision:** nested storage for both stages. 
- Each Pass 2 LLM call returns `{"ingredients": [...]}` and the server nests it under its component in `Pass2DTO`.
- USDA macro enrichment (`server.UsdaEnriched`) also stores components nested: `components: [{name: "...", ingredients: [...]}]`.

**Proposed stored JSON (`decomposed_ingredient`):**

```json
{
  "components": [
    {
      "name": "Daal",
      "ingredients": [
        {"name": "Cooked lentils", "canonical_name": "Lentils, cooked", "ingredient_type": "BASE", "portion": {...}},
        {"name": "Onion", "canonical_name": "Onions, raw", "ingredient_type": "BASE", "portion": {...}}
      ]
    },
    {
      "name": "Roti",
      "ingredients": [
        {"name": "Wholemeal wheat flour", "canonical_name": "Wheat flour, whole-grain", "ingredient_type": "BASE", "portion": {...}}
      ]
    }
  ]
}
```

**Proposed stored protojson (`usda_enriched`):**

```json
{
  "components": [
    {
      "name": "Daal",
      "ingredients": [
        {"name": "Cooked lentils", "fdc_id": 172420, "macros": {...}, ...},
        {"name": "Onion", "fdc_id": 170000, "macros": {...}, ...}
      ]
    },
    {
      "name": "Roti",
      "ingredients": [
        {"name": "Wholemeal wheat flour", "fdc_id": 168893, "macros": {...}, ...}
      ]
    }
  ],
  "total_macros": {...}
}
```

**Consequence:** completely eliminates the risk of positional/index-parallel drift between separate flat lists. The component hierarchy is self-contained in both stages. The dashboard displays components and their hydrated ingredients directly without performing an index-based join across two separate flat lists. `generateClarification` flattens ingredients internally to rank top-variance items across the whole meal. The client-facing `common.Meal` remains unaffected.

**Decided:** the component object in `decomposed_ingredient` stores only `name`. The canonical name and preparation method already live in `decomposed_component`. In `usda_enriched`, `EnrichedComponent` groups the hydrated ingredients under the same component name.

### D6. Concurrency

**Current:** pass 2 is one call; `enrichUsdaMacro` uses `errgroup.SetLimit(10)` (`service.go:348-350`).

**Decision:** no cap on the per-component calls.

**Consequence:** maximum parallelism. A pathological 20-component meal could burst the provider's rate limit and slow the whole analysis.

**Note:** revisit with a cap only if the provider starts rate-limiting.

### D7. `llm_call` attribution

**Current:** `llm_call` has `stage`, `model`, tokens, `duration_ms`, `error`; no component (`migrations/calorify/000001_create_user_profile.sql:133-146`).

**Decision:** add a nullable `component` text column, no index. `PASS_1` and future `SUMMARY` rows leave it NULL.

**Consequence:** the dashboard can attribute each `PASS_2` row to a component. The insert plumbing in `saveLlmCallRecord` changes.

### D8. Dashboard LLM card

**Current:** the card shows per-call averages for `PASS_1` and `PASS_2` (`analysis_history.html:979-1010`). With n calls per analysis, those averages become per-call rather than per-analysis.

**Decision:** show per-analysis values with a small line graph of P2 wall time.

- Tokens are per-analysis sums: `SUM(prompt_tokens)`, `SUM(cached_tokens)`, `SUM(completion_tokens)` for the stage.
- Duration is the stage wall time, not the sum of the calls: `decomposed_ingredient_at - decomposed_component_at` for P2 and `decomposed_component_at - created_at` for P1.
- The graph plots P2 wall time per analysis: one point per analysis on `1D`, a daily average on `7D`/`30D`.
- Total call time (the sum of the parallel calls) is not shown. It is neither latency nor cost: wall time is the wait, tokens are the bill. The only thing the sum adds is a parallelism diagnostic, and the per-call fixed floor inflates it, so `sum / wall` is not a clean concurrency factor.
- The card covers presented analyses only, so the token averages, wall time, and series share one population. Failed calls remain in `llm_call` and in the per-analysis drawer.

**Consequence:** the card answers "how much did P2 cost per meal over time" instead of "what does one call cost". The existing step profile still shows the per-analysis average split.

### D9. Cost

**Current:** the P2 prompt is 1216 tokens for a 5-component meal.

**Decision:** accept n× prompt tokens.

**Consequence:** a 5-component meal sends ~5 × 890 = 4450 prompt tokens instead of 1216 (3.7x). Output tokens are unchanged. Input tokens are the cheaper side of the bill.

**Note:** revisit only if cost becomes a concern.

### D10. Prompt rewrite

**Current:** `pass2Prompt` (`schema.go:29-36`) opens with "Decompose meal components into elemental base foods..." and rule 2 says "Every ingredient MUST derive from exactly one of the provided components."

**Decision:** rewrite for the single-component case. Drop the cross-component linking rule; keep the fat and portion rules.

**Proposed prompt:**

```text
Decompose the provided meal component into elemental base foods or branded items for USDA database matching.

RULES:
1. Context: Use Geographic Country code for regional cuisine context to infer cooking mediums and ingredient proportions (e.g. olive oil vs butter vs ghee).
2. Canonical Names: Format 'canonical_name' as a single USDA Food Central inverted-taxonomy search term: [Food], [Cut/Form], [Cooking State] (e.g. "Chicken, breast, meat only, cooked, roasted"; "Rice, white, cooked"). Fields marked [lc] are localized. When the User Locale is non-English, write them in that locale's language.
3. Cooking Fats: Allocate cooking fats/oils only when preparation_method implies them (e.g. 5-15g oil for SAUTEED/STIR_FRIED; none for BOILED, STEAMED, or RAW).
4. Portions: Split the component portion across ingredients with realistic min/max bounds in grams.
```

**Consequence:** the prompt matches the input. The model is no longer asked to link across components, which it cannot do.

**Implemented:** the prompt now opens with "Decompose the provided meal component..." and the cross-component linking rule is removed. The wording above is the current `pass2Prompt`.

### D11. Validation

**Current:** `cmd/meal_eval` does not exist; the user's rule is no live model calls without explicit approval.

**Decision:** fake-client unit tests for orchestration, plus one live run on the three known meals.

**Consequence:** orchestration (n calls, merge order, failure handling, index assignment) is proven offline. Output quality is proven by the live run. The live run costs money and waits for an explicit go-ahead.

**Decided:** the live run happens after the core lands, on the three known meals, with an explicit go-ahead at that point.

### D12. Ownership

**Current:** `backend/AGENTS.md` — the user writes core app logic; agents do mechanical tooling.

**Decision:** user writes core; agent writes plumbing.

**Consequence:** see section 3.

## 3. Implementation plan

### 3.1 Data model

**Go types** (`backend/internal/analysis/schema.go`):

```go
type Pass2CallDTO struct {
	Ingredients []IngredientDTO `json:"ingredients"`
}

type Pass2ComponentDTO struct {
	Name        string          `json:"name"`
	Ingredients []IngredientDTO `json:"ingredients"`
}

type Pass2DTO struct {
	Components []Pass2ComponentDTO `json:"components"`
}

type IngredientDTO struct {
	Name           string     `json:"name"`
	CanonicalName  string     `json:"canonical_name"`
	IngredientType string     `json:"ingredient_type"`
	Portion        PortionDTO `json:"portion"`
}

type Pass2CallInput struct {
	Name      string       `json:"name"`
	Quantity  string       `json:"quantity"`
	MealType  string       `json:"meal_type"`
	Component ComponentDTO `json:"component"`
}
```

- `ComponentName` is removed from `IngredientDTO`.
- `ParsePass2` parses the nested shape; `ParsePass2Call` parses one per-component response.
- `pass2CallSchema = GenerateSchema[Pass2CallDTO]()` is the per-call response schema; `pass2Schema` is no longer used.

**Proto** (`protos/server/meal.proto`):

```proto
message EnrichedComponent {
  string                      name        = 1;
  repeated EnrichedIngredient ingredients = 2;
}

message EnrichedIngredient {
  // existing fields 1-10
  int32 component_index  = 11;
  int32 ingredient_index = 12;
}

message UsdaEnriched {
  repeated EnrichedComponent  components   = 1;
  common.Macros               total_macros = 2;
}
```

**Proto** (`protos/api/analysis_history.proto`):

```proto
message AnalysisHistoryItem {
  // existing fields 1-18
  repeated server.EnrichedComponent components = 19; // nested hydrated components & ingredients
  // existing fields 20-21
}

message LlmCallRecord {
  // existing fields 1-10
  optional string component = 11;
}

message LlmCallSummary {
  string stage                 = 1;
  int32  analysis_count        = 2; // was call_count
  double avg_duration_ms       = 3; // stage wall time
  double avg_prompt_tokens     = 4; // per-analysis sum
  double avg_cached_tokens     = 5;
  double avg_completion_tokens = 6;
}

message LlmCallPoint {
  google.protobuf.Timestamp at           = 1;
  double                    duration_sec = 2;
}

message AnalysisHistorySummary {
  // existing fields 1-9
  repeated LlmCallPoint p2_wall_time_series = 10;
}
```

**DDL** (`backend/migrations/calorify/000001_create_user_profile.sql`):

```sql
ALTER TABLE llm_call ADD COLUMN IF NOT EXISTS component TEXT;
```

### 3.2 Orchestration (`decomposeIngredients`)

1. Build one `Pass2CallInput` per component, in pass-1 order.
2. `errgroup.WithContext(ctx)` with no `SetLimit`.
3. For each component index `i`:
   - Marshal the input; prepend `buildContextPrefix(req)`.
   - Call the LLM with `pass2Prompt`, the per-call schema, `ReasoningEffortLow`, `llm_model`.
   - Measure the wall duration around the call.
   - On error: record `llm_call` with `component = component.Name`, `error`, `duration`; return the error (fail-fast).
   - On success: record `llm_call` with tokens, duration, component.
   - Parse `Pass2CallDTO`; on parse error, return the error.
   - Store the result at `results[i]`.
4. `g.Wait()`; on error, return it.
5. Merge into `Pass2DTO{Components: [{Name: pass1.Components[i].Name, Ingredients: results[i].Ingredients}]}`.
6. `SaveMealIngredient(ctx, id, pass2)`.
7. Span attributes: `components.count`, `ingredients.count`.

Notes:

- `decomposed_ingredient_at` is set by `SaveMealIngredient` after all calls complete.
- The status becomes `INGREDIENT_DECOMPOSED` after the merge.
- The 45 s pipeline context bounds all calls; errgroup cancels the rest on the first error.
- An empty ingredient list for a component is allowed and stored as an empty array.
- A pass-1 response with zero components fails the analysis.
- An EXACT ingredient portion without `per_unit_grams` fails the analysis with a validation error.

### 3.3 Hydration & Enrichment (`enrichUsdaMacro`)

In the nested approach, both `decomposed_ingredient` and `usda_enriched` preserve component hierarchy:

`enrichUsdaMacro`:
- Maps over `pass2.Components`.
- Gathers ingredient queries for Ollama embeddings and runs concurrent USDA pgvector searches.
- Assembles hydrated results into `server.EnrichedComponent{Name: comp.Name, Ingredients: [...]}` with `component_index` and `ingredient_index`.
- Stores `server.UsdaEnriched{Components: enrichedComponents, TotalMacros: aggregateMacro(enrichedComponents)}`.
- `generateClarification`: flattens `enriched.Components` internally to rank top-variance ingredients for clarification questions.

`history_artifacts.go`:
- Unmarshals `usda_enriched` directly into nested components (`EnrichedComponent`).
- Eliminates positional index-parallel array joins between separate lists.

### 3.4 `llm_call` plumbing

`saveLlmCallRecord` inserts the new column:

```sql
INSERT INTO llm_call (
  analysis_id, stage, model, component, prompt_tokens, cached_tokens, completion_tokens, duration_ms, error
) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
```

- `PASS_1` rows leave `component` nil (NULL).
- `PASS_2` rows pass the component name.

### 3.5 Dashboard

**Query** (`backend/internal/api/db.go`):

Per-analysis token sums:

```sql
WITH per_analysis AS (
  SELECT lc.analysis_id, lc.stage,
         SUM(lc.prompt_tokens) AS prompt_tokens,
         SUM(lc.cached_tokens) AS cached_tokens,
         SUM(lc.completion_tokens) AS completion_tokens
  FROM llm_call lc
  JOIN meal_analysis ma ON ma.id = lc.analysis_id
  WHERE ma.created_at >= NOW() - INTERVAL '%s'
  GROUP BY lc.analysis_id, lc.stage
)
SELECT stage, COUNT(*), AVG(prompt_tokens), AVG(cached_tokens), AVG(completion_tokens)
FROM per_analysis GROUP BY stage ORDER BY stage;
```

Stage wall time:

```sql
SELECT
  AVG(EXTRACT(EPOCH FROM (decomposed_component_at - created_at))) AS p1_wall,
  AVG(EXTRACT(EPOCH FROM (decomposed_ingredient_at - decomposed_component_at))) AS p2_wall
FROM meal_analysis
WHERE status = 'PRESENTED' AND created_at >= NOW() - INTERVAL '%s'
  AND decomposed_component_at IS NOT NULL AND decomposed_ingredient_at IS NOT NULL;
```

Series:

- `1D`: one point per analysis.
- `7D`/`30D`: `date_trunc('day', created_at)` average.

```sql
SELECT date_trunc('day', created_at) AS bucket,
       AVG(EXTRACT(EPOCH FROM (decomposed_ingredient_at - decomposed_component_at))) AS duration_sec
FROM meal_analysis
WHERE status = 'PRESENTED' AND created_at >= NOW() - INTERVAL '%s'
  AND decomposed_component_at IS NOT NULL AND decomposed_ingredient_at IS NOT NULL
GROUP BY 1 ORDER BY 1;
```

**Template** (`analysis_history.html`):

- Card rows: Duration (wall time), Prompt tokens, Cached tokens, Completion tokens, per stage.
- Small SVG under the card: `viewBox="0 0 120 32"`, a polyline of the series, min/max labels.
- Template func `sparkline(points, width, height)` returns the polyline points.
- The drawer's LLM calls section shows the component name.

### 3.6 Tests

Fake-client tests (`backend/internal/analysis/decompose_test.go`):

- The OpenAI client accepts a custom base URL; use `httptest.Server` to return canned responses per component.
- Cases:
  1. 3 components → 3 calls, merged in component order.
  2. One call fails → the analysis fails; the other calls are cancelled; the failed `llm_call` row has the component.
  3. Parse error on one response → fail.
  4. Empty ingredient list for one component → merged with an empty array.
  5. Indices: `component_index` and `ingredient_index` assigned correctly.

Dashboard test: the card renders per-analysis values and the SVG polyline.

DB test: `llm_call.component` round-trips; the nested `decomposed_ingredient` parses.

### 3.7 Live run

- After the core lands, run the three known meals (guava, parantha, large) through the local backend.
- Compare: ingredient count and names per component, P2 wall time, P2 output tokens.
- Acceptance: same or better ingredient quality; P2 wall time drops toward the max-component estimate (5.35 s for the large meal).
- Requires an explicit go-ahead; costs money.

### 3.8 File-by-file work split

**User (core):**

- `backend/internal/analysis/schema.go` — nested DTOs, `ParsePass2`, `ParsePass2Call`, `Pass2CallInput`, prompt.
- `backend/internal/analysis/service.go` — orchestration, `enrichUsdaMacro` flatten + indices, `FlattenIngredients`.
- `backend/internal/analysis/db.go` — `SaveMealIngredient` nested storage.
- `backend/migrations/calorify/000001_create_user_profile.sql` — `llm_call.component`.
- `protos/server/meal.proto` — `EnrichedIngredient` indices.

**Agent (plumbing):**

- `backend/internal/analysis/db.go` — `saveLlmCallRecord` component column (coordinate with the user's DDL).
- `backend/internal/api/db.go` — per-analysis summary and series queries.
- `backend/internal/api/history_artifacts.go` — nested parse + flatten.
- `backend/internal/dashboard/dashboard.go` — sparkline helper.
- `backend/internal/dashboard/templates/analysis_history.html` — card, graph, component in the drawer.
- `backend/internal/dashboard/dashboard_test.go` — render test.
- `backend/internal/api/analysis_test.go` — DB test.
- `protos/api/analysis_history.proto` — summary, point, component fields.
- Regenerate Go and Dart protos.
- Docs.

## 4. Clarification redesign

The nested component structure makes component-level quantity questions possible. The current flow only asks about ingredients.

### 4.1 Current flow

`generateClarification` (`backend/internal/analysis/service.go:429-456`) sorts the enriched ingredients by calorie variance (`max - min`), keeps those above 80 kcal, and builds up to two ingredient quantity questions. Each question is "Quantity of {ingredient} in {component}?" with Small/Medium/Large options carrying macro deltas (`backend/internal/analysis/utils.go:258-298`). Both names are the localized display names, never the canonical ones.

### 4.2 Proposed types

| Type | Trigger | UI |
|---|---|---|
| `COMPONENT_QUANTITY_BULK` | component portion `BULK`, `MODEL_INFERRED`, calorie variance over threshold | grams: slider or numeric input with min/value/max |
| `COMPONENT_QUANTITY_EXACT` | component portion `EXACT`, `MODEL_INFERRED`, calorie variance over threshold | count, optionally per-unit grams; may need multiple inputs or free-form |
| `QUANTITY` (existing) | ingredient calorie variance over threshold, component not already clarified | Small/Medium/Large |

BULK and EXACT stay separate in the target design because the UI differs, not because the trigger differs. The implemented version uses the existing `QUANTITY` type for both; the BULK/EXACT split is deferred until the client work.

### 4.3 Trigger: calorie variance

The trigger is calorie variance for all three types. Portion variance is not comparable across kinds: 2 pieces of roti, 130 g of daal, and 20 g of cucumber cannot share one threshold.

Example from the large meal:

| Component | Kind | Portion range | Portion variance | Est. calorie range | Calorie variance |
|---|---|---|---|---|---|
| Roti | EXACT | 4-6 pieces (240-300 g) | 2 pieces / 60 g | 816-1020 kcal | 204 kcal |
| Rice | BULK | 100-250 g | 150 g | 130-325 kcal | 195 kcal |
| Daal | BULK | 120-250 g | 130 g | 139-290 kcal | 151 kcal |
| Raita | BULK | 60-180 g | 120 g | 36-108 kcal | 72 kcal |
| Cucumber | BULK | 10-30 g | 20 g | 1.5-4.5 kcal | 3 kcal |

Portion variance ranks Rice above Roti even though Roti is the largest calorie uncertainty, and it needs two thresholds (pieces for EXACT, grams for BULK). Calorie variance ranks Roti first and filters Raita and Cucumber with one 80 kcal threshold.

How: `component.Macros.Calorie.MaxValue - MinValue`. `component.Macros` is the sum of the ingredient macros, so the component variance is the sum of its ingredient variances. No new computation.

### 4.4 Tiered algorithm

```text
tier 1: components with MODEL_INFERRED portion, kind != PINCH, calorie variance > component threshold
        sorted by calorie variance desc, take up to 2
tier 2: ingredients in components not clarified in tier 1,
        calorie variance > 80 kcal, sorted desc, take up to 1
```

- Component first: the portion is the root cause.
- Ingredient fallback: only for components whose portion is known but whose split or USDA match is uncertain.
- Dedupe: skip ingredients whose component was clarified.
- Implemented: 2 questions total, component-first, 80 kcal for both thresholds.
- Use a running `Clarification.Id` across both tiers; do not sort `enriched.Components` in place.

### 4.5 Clarification payload

The client needs the bounds and unit to render the input, and the answer endpoint needs the component id to rescale.

```proto
enum Type {
  QUANTITY                 = 0;
  INGREDIENT_PRESENCE      = 1;
  INGREDIENT_ALTERNATIVE   = 2;
  PREPARATION_METHOD       = 3;
  COMPONENT_QUANTITY_BULK  = 4;
  COMPONENT_QUANTITY_EXACT = 5;
}

message Clarification {
  int32           id           = 1;
  string          question     = 2;
  repeated Option options      = 3;
  Type            type         = 4;
  optional int32  component_id = 5;
  optional double min_value    = 6;
  optional double value        = 7;
  optional double max_value    = 8;
  optional string unit         = 9; // "g" or "piece"
}
```

- `component_id` is the index into `enriched.Components` (and `pass1.Components`).
- The existing ingredient clarifications should also carry `component_id` + `ingredient_id` instead of relying on the list index.
- For EXACT, if the UI needs count plus per-unit grams, add `per_unit_grams`/`per_unit_min_grams`/`per_unit_max_grams`.

### 4.6 Answer flow dependency

A component answer must rescale the component portion and its ingredients. The answers endpoint is still open; until it lands, the component clarification is a question with no effect, same as today's ingredient clarifications.

### 4.7 Open decisions

1. Component threshold: implemented at 80 kcal for both tiers. Revisit if the component tier asks too often.
2. Total limit: implemented at 2 total, component-first.
3. EXACT payload: deferred; the implemented version uses the existing `QUANTITY` type and Small/Medium/Large options for both kinds.
4. Ingredient payload: deferred; ingredient clarifications still use the list index as `Clarification.Id`.

## 5. Invariants to preserve

- `usda_enriched` is nested by component matching `Pass2DTO.Components`.
- The client-facing `common.Meal` has no ingredient list and must not change.
- The 45 s pipeline timeout and fail-fast behavior stay.
- Each completed analysis has one `PASS_1` row and n `PASS_2` rows in `llm_call`.

## 6. Risks

- **Provider rate limiting.** No concurrency cap; a large meal could queue or fail.
- **Quality regression.** The prompt rewrite is the only output-affecting change; the live run is the only quality check.
- **Old rows.** The existing `decomposed_ingredient` and `usda_enriched` rows are flat. With no backward compatibility, the dashboard parser will assume the nested shape and those legacy test rows will render empty or need to be cleared.
- **Cost.** n× prompt tokens.

## 7. Open questions

1. Exact pass-2 prompt wording (deferred to you).
2. Clarification decisions: see 4.7.
