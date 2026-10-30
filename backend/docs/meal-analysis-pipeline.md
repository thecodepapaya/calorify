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
         │  (Hydrates calories, macros, micro-nutrients per portion)
         ▼
[ Stage 5: Final Response Persistence ]      ── PostgreSQL (meal_analysis)
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
- Embeds queries via Ollama using `embeddinggemma-2` (768 dimensions).
- Performs nearest neighbor search on PostgreSQL `usda_foods` using pgvector cosine distance (`1 - (embedding <=> query_vec)`).
- When a similarity match exceeds the confidence threshold, extracts exact macros per 100g (energy, protein, fat, carbohydrates, fiber).
- For ungrounded or low-confidence matches, flags for LLM model-inferred fallback.

### 4. Async Execution & Event Lifecycle
- Analysis jobs run in background goroutines initiated by `POST /users/meals/analysis`.
- State updates are written atomically to the `meal_analysis` table (`PENDING` -> `PROCESSING` -> `COMPLETED` or `FAILED`).
- Tracing is instrumented across all stages using OpenTelemetry spans (`internal/telemetry/`).

