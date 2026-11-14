# Meal-Analysis Pipeline Architecture

The meal analysis engine in `backend` transforms user food input (text or images) into granular ingredient breakdowns grounded in verified USDA nutritional references.

## Pipeline Overview

The pipeline operates in asynchronous stages managed by native Go concurrency (`internal/analysis/service.go`), replacing external graph orchestration engines.

```text
User Input (Text / Image)
         │
         ▼
[ Stage 1: Pass 1 Component Decomposition ]  ── OpenAI Structured Outputs
         │  (Identifies dish components, food names, meal type)
         ▼
[ Stage 2: Pass 2 Ingredient Decomposition ] ── OpenAI Structured Outputs
         │  (Extracts ingredients, portion amounts, preparation forms)
         ▼
[ Stage 3: USDA Vector & Semantic Retrieval ] ── Ollama (embeddinggemma-2) + pgvector
         │  (Dense cosine similarity search over usda_foods)
         ▼
[ Stage 4: Nutrient Aggregation & Scaling ]   ── Deterministic Arithmetic
         │  (Hydrates calories, macros per portion)
         ▼
[ Stage 5: Clarification Generation ]         ── Variance-based quantity questions
         │  (No LLM call; filters ingredients with >80 kcal range)
         ▼
[ Stage 6: Final Response Persistence ]        ── PostgreSQL (meal_analysis)
```

## Stages & Detailed Flow

### 1. Pass 1: Component Decomposition
- Extracts top-level meal components (e.g., "grilled chicken salad" -> ["Grilled chicken breast", "Mixed greens with vinaigrette"]).
- Determines high-level meal candidates (`BREAKFAST`, `LUNCH`, `DINNER`, `SNACK`).
- Preserves explicit user quantities and constraints.

### 2. Pass 2: Ingredient Decomposition
- Breaks each component down into atomic ingredients with preparation states (`RAW`, `BOILED`, `FRIED`, etc.).
- Estimates gram weights or counts based on standard portions when not explicitly provided by the user.
- Emits canonical identities and lookup queries for USDA matching.

### 3. USDA Nutrient Grounding (pgvector)
- Ingredient queries are embedded in one batch call to Ollama (`embeddinggemma-2`, 768 dimensions). Query text uses the asymmetric task prefix `"task: search result | query: " + canonical_name`; the index-time prefix `"title: none | content: " + description` is applied by `cmd/usda -embed*` (`cmd/usda/main.go`).
- `searchUsda` (`internal/analysis/db.go`) runs two index-servable per-type top-1 CTEs per ingredient (base foods and branded foods, HNSW cosine order) merged by priority — base foods preferred for `BASE` ingredients, branded preferred for `BRANDED`.
- There is no similarity threshold and no fallback: the single best candidate is taken unconditionally, and an ingredient with no candidate row aborts the whole analysis (`service.go` `enrichUsdaMacro`).
- Per-ingredient searches run in parallel, bounded per analysis (`errgroup.SetLimit(10)`).
- Exact macros per 100g (energy, protein, fat, carbs, fiber) are scaled to each ingredient's gram range.

### 4. Clarification Generation
- Pure Go, no LLM call: sorts enriched ingredients by calorie range (max - min), keeps those with a range wider than 80 kcal, and emits at most 2 locale-aware quantity questions with small/medium/large macro deltas (`utils.go` `buildQuantityClarification`).

### 5. Async Execution & Event Lifecycle
- Analysis jobs run in background goroutines initiated by `POST /users/meals/analysis`; the whole pipeline runs under a 45 s timeout.
- Status progression in `meal_analysis.status`: `INITIATED` -> `COMPONENT_DECOMPOSED` -> `INGREDIENT_DECOMPOSED` -> `USDA_MACRO_HYDRATED` -> `CLARIFICATION_GENERATED` -> `PRESENTED`, or `FAILED` (with `failure_reason`) on any stage error or panic.
- Clients poll `GET /users/meals/analysis/{analysis_id}` for stage progress and the final result.
- Tracing is instrumented across all stages using OpenTelemetry spans (`internal/telemetry/`).

## Open Questions (carried from the Stage 3 USDA resolution plan, 2026-11)

1. **Preparation-state trap**: dense embeddings score `"raw white rice"` and `"cooked white rice"` above 0.9 cosine similarity, but their per-100g calories differ ~2.8x. The current search does not filter candidates by preparation state even though pass 2 emits one. Options: filter candidates against pass-2 `PreparationMethod`, or append the preparation to the query text.
2. **No similarity floor**: the top-1 candidate is accepted regardless of similarity. A low-confidence match yields silently wrong macros instead of a flagged miss.
3. **No unresolvable-ingredient fallback**: a nil candidate aborts the entire analysis. A `MODEL_INFERRED`-style fallback (or per-ingredient degradation flag) is undecided.

These are tracked as open work items in `TODO.md` section 3 ("LLM Nutrition Fallback", "Preparation State Filtering", "Ingredient Match & Portion Accuracy").
