# Stage 3: USDA Nutrient Resolution Plan (Local Vector Search)

## 1. Problem Statement & Historical Context

In the previous Node.js backend (`backend/src/services/meal-analysis-v3/nutrition.ts`), the USDA resolver achieved a hit rate of only **61.9% – 72.5%** on the validation corpus (`docs/plans/usda-ingredient-hit-rate.md`). 

### Core Failure Modes of Pure Lexical Search (pg_trgm & FTS)
1. **Inverted Clinical Taxonomy:** USDA descriptions use formal, comma-separated bureaucratic phrasing (e.g., `"Chicken, broilers or fryers, breast, meat only, cooked, roasted"`, `"Butter oil, anhydrous"`, `"Lentils, mature seeds, cooked, boiled, without salt"`). Natural language queries from users or LLMs (`"grilled chicken breast"`, `"ghee"`, `"dal"`) fail exact or token containment.
2. **Boolean AND Failure in FTS:** PostgreSQL `plainto_tsquery('english', ...)` requires all lexemes to match. One missing descriptor causes zero candidate rows.
3. **Trigram Score Dilution:** Long USDA strings with qualifiers (`"meat only, boneless, skinless"`) degrade trigram similarity below thresholds ($< 0.40$).
4. **Offline Batch Normalization Issues:** Attempting to normalize 13k–20k rows upfront via an LLM 4-slot schema is cost-prohibitive, slow, and brittle.

---

## 2. Target Architecture

```mermaid
flowchart TD
    subgraph Offline ["Phase 1: One-Time Offline Ingestion (Local Machine)"]
        A["13,000+ USDA Rows (Foundation, SR Legacy, Survey)"] --> B["EmbeddingGemma 2 (768-dim)"]
        B --> C["Postgres usda_foods.embedding (pgvector HNSW)"]
        C --> D["pg_dump -> Import to Oracle VM"]
    end

    subgraph Runtime ["Phase 2: Runtime Meal Analysis Pipeline (backend_go)"]
        E["Pass 2 Output: []MealIngredient"] --> F["Batch Embed Query Phrases via Local Embedding Server"]
        F --> G["pgvector Cosine Search (1 - embedding <=> query) in s.UsdaDB"]
        G --> H["Preparation Filter & Quality Weighting"]
        H --> I["Portion Scaling (Bulk, Exact, Pinch) -> Macros"]
        I --> J["Save usda_enriched in DB (Status: USDA_MACRO_HYDRATED)"]
    end
```

---

## 3. Environment & Resource Constraints

* **Host Machine:** Oracle Cloud Free Tier VM.
* **Compute:** 2 vCPUs (pure CPU, no GPU).
* **Memory:** 12 GB RAM (~8 GB headroom available).
* **Concurrency Profile:** Low volume / single-user bursts.

### Performance & Compute Strategy
1. **Never run 13k ingestion on the 2 vCPU VM:** 
   - Embedding 13k rows on 2 vCPUs would peg the CPU at 100% for 45–60 minutes, risking CPU throttling.
   - Run the ingestion CLI once on a development machine with multi-core/Metal, export via `pg_dump`, and import into the VM.
2. **Runtime Query Budget on 2 vCPUs:**
   - Single ingredient embedding: ~40–70 ms on CPU (quantized).
   - Batch of 4 ingredients: ~90–150 ms total.
   - Asynchronous pipeline (`go s.runPipeline`): API returns `202 Accepted` immediately; CPU burst in the background is non-blocking to the HTTP client.
3. **RAM Allocation:**
   - EmbeddingGemma 2 (quantized Q4/Q8): ~500 MB – 1.0 GB RAM.
   - Well within the 8 GB headroom.

---

## 4. Search & Resolution Logic

### Asymmetric Embedding Task Prefixes
EmbeddingGemma models use task-specific prefixes to align queries with documents in the 768-dimensional space:
* **Index-time (Documents):** `"title: none | content: " + description`
* **Query-time (Queries):** `"task: search result | query: " + ingredient_name`

### Database Design (`usda_foods`)
* **Vector Column:** `embedding vector(768)`
* **Index:** `HNSW` using `vector_cosine_ops`:
  ```sql
  CREATE INDEX usda_foods_embedding_hnsw_idx 
  ON usda_foods USING hnsw (embedding vector_cosine_ops)
  WITH (m = 16, ef_construction = 64);
  ```

### Cosine Scoring & Candidate Ranking
```sql
SELECT 
    fdc_id, 
    description, 
    data_type,
    kcal_per_100g, 
    protein_per_100g, 
    carbs_per_100g, 
    fat_per_100g, 
    fiber_per_100g,
    1 - (embedding <=> $1) AS cosine_similarity
FROM usda_foods
WHERE 1 - (embedding <=> $1) > 0.60
ORDER BY ( (1 - (embedding <=> $1)) * 0.75 + quality_score * 0.25 ) DESC
LIMIT 5;
```

---

## 5. Critical Edge Cases & Questions

### 1. The "Preparation State" Trap (Raw vs. Cooked)
* **Problem:** Dense embeddings measure semantic topic proximity. `"raw white rice"` and `"cooked white rice"` have a high cosine similarity ($> 0.90$), but 100g raw rice has ~360 kcal while 100g cooked rice has ~130 kcal (a ~2.8× error).
* **Question / Decision:** How should we filter candidates by preparation state?
  - *Option A:* Pass 2 outputs `PreparationMethod` (e.g. `RAW`, `BOILED`, `ROASTED`). Candidate selection filters out records whose USDA description explicitly contains conflicting states (e.g. reject `"raw"` if query asks for `"cooked"`).
  - *Option B:* Append preparation state to the query string: `"search_query: cooked chicken breast"`.

### 2. Low-Confidence Matches & Fallback
* **Problem:** If vector similarity for all top 5 candidates is low ($< 0.60$), accepting a false positive gives bad nutrition data.
* **Question / Decision:** What is the threshold for a valid match?
  - If similarity $< 0.60$, do we trigger a bounded model estimate fallback (`MODEL_INFERRED`) or flag the ingredient as unverified?

### 3. Serving Runtime for EmbeddingGemma 2
* **Question / Decision:** How will the Go server communicate with EmbeddingGemma 2 on the VM?
  - *Option A (Ollama):* Run Ollama pinned in RAM (`OLLAMA_KEEP_ALIVE=-1`), query `http://localhost:11434/v1/embeddings` using the existing OpenAI Go client.
  - *Option B (Hugging Face TEI CPU):* Docker container running `text-embeddings-inference:cpu-1.5` at `http://localhost:8081/v1`.

---

## 6. Implementation Roadmap

- [ ] **Step 1: Database Migration**
  - Add `CREATE EXTENSION IF NOT EXISTS vector;`
  - Add `embedding vector(768)` to `usda_foods`.
  - Add HNSW index definition.
- [ ] **Step 2: Ingestion CLI (`backend_go/cmd/usda`)**
  - Implement a batch ingestion flag `-embed` in `cmd/usda/main.go`.
  - Query rows with `embedding IS NULL`.
  - Batch in chunks of 64 into the embedding API.
  - Update rows in `usda_foods`.
- [ ] **Step 3: Database Search Helper (`internal/analysis/db.go`)**
  - Implement `SearchUsdaVector(ctx context.Context, embedding []float32) (*UsdaFoodItem, error)`.
  - Add helper to persist enriched results: `SaveUsdaEnriched`.
- [ ] **Step 4: Pipeline Hydration (`internal/analysis/service.go`)**
  - Batch-embed `pass2.Ingredients`.
  - Query candidates for each ingredient.
  - Calculate portion-scaled nutrients.
  - Sum meal-level macros and save with status `'USDA_MACRO_HYDRATED'`.

