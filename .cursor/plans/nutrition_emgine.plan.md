---
name: ""
overview: ""
todos: []
isProject: false
---

# Calorify Nutrition Engine – Implementation Plan

## Objective

Build a scalable, deterministic nutrition inference engine with:

- LLM used ONLY for parsing and decomposition
- USDA Foundation Foods as base macro database
- Postgres + pgvector for canonical food matching
- Deterministic macro calculation
- Quantified uncertainty modeling
- Rule-based variation generation
- Controlled alias expansion
- Minimal LLM calls per request

LLM must NEVER generate macro values as source of truth.

---

# System Overview

User Input  
→ LLM Parsing (Decomposition + Uncertainty Flags)  
→ Canonicalization (Embedding + Alias + Threshold Match)  
→ Uncertainty Engine (Variance Calculation)  
→ Optional User Clarification  
→ Deterministic Macro Computation  
→ Rule-Based Variation Engine  
→ Final Response

---

# Phase 1 – Database Setup

## 1. Infrastructure

- Postgres 15+
- pgvector extension enabled

Enable pgvector:

```
CREATE EXTENSION IF NOT EXISTS vector;

```

---

## 2. Tables

### foods

Base foods only. No composite dishes.

```
CREATE TABLE foods (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    canonical_name TEXT NOT NULL,
    description TEXT,

    kcal_per_100g NUMERIC(6,2) NOT NULL,
    protein_per_100g NUMERIC(6,2) NOT NULL,
    carbs_per_100g NUMERIC(6,2) NOT NULL,
    fat_per_100g NUMERIC(6,2) NOT NULL,
    fiber_per_100g NUMERIC(6,2),

    default_unit TEXT DEFAULT 'gram',
    default_weight_grams NUMERIC(6,2),

    source TEXT NOT NULL,
    source_id TEXT,

    embedding VECTOR(768),

    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

```

Vector index:

```
CREATE INDEX foods_embedding_idx
ON foods
USING ivfflat (embedding vector_cosine_ops)
WITH (lists = 100);

```

After bulk import:

```
ANALYZE foods;

```

---

### food_aliases

```
CREATE TABLE food_aliases (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    food_id UUID REFERENCES foods(id) ON DELETE CASCADE,
    alias TEXT NOT NULL,
    embedding VECTOR(768),
    created_at TIMESTAMP DEFAULT NOW()
);

```

Optional index:

```
CREATE INDEX food_alias_embedding_idx
ON food_aliases
USING ivfflat (embedding vector_cosine_ops)
WITH (lists = 100);

```

---

### meal_cache

```
CREATE TABLE meal_cache (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    normalized_text TEXT UNIQUE NOT NULL,
    parsed_output JSONB NOT NULL,
    embedding VECTOR(768),
    created_at TIMESTAMP DEFAULT NOW()
);

```

---

### user_preferences

```
CREATE TABLE user_preferences (
    user_id UUID PRIMARY KEY,
    oil_bias TEXT DEFAULT 'normal',
    milk_preference TEXT DEFAULT 'full_fat',
    portion_bias TEXT DEFAULT 'medium',
    updated_at TIMESTAMP DEFAULT NOW()
);

```

---

## 3. USDA Import

- Use Foundation Foods dataset
- Import only atomic ingredients
- Store macros per 100g
- Generate embeddings for canonical_name
- Avoid composite dishes

---

# Phase 2 – Alias Strategy

Do NOT generate aliases dynamically using LLM.

Alias strategy:

1. Deterministic normalization:
  - lowercase
  - remove punctuation
  - remove stopwords
  - singularize
  - normalize units
2. Curated regional alias dictionary (manually defined):
  - roti → chapati
  - phulka → chapati
  - aloo → potato
  - bhindi → okra
3. Embedding similarity:
  - Embed normalized input
  - Search foods table
  - Accept match if cosine similarity > threshold (e.g. 0.85)
4. Controlled promotion:
  - Log frequent unmatched terms
  - Promote manually in batch
  - Never auto-create aliases at runtime

---

# Phase 3 – LLM Parsing Layer

LLM must return structured JSON:

```
{
  "ingredients": [
    {
      "raw_name": "",
      "components": [
        {
          "name": "",
          "grams_estimated": 0,
          "uncertainty": {}
        }
      ]
    }
  ],
  "confidence": 0.0
}

```

Rules:

- Never generate macro values
- Only estimate grams
- Include uncertainty metadata when applicable

---

# Phase 4 – Uncertainty Engine

Supported uncertainty types:

## Range

```
{
  "type": "range",
  "min_grams": 5,
  "max_grams": 25
}

```

## Variant

```
{
  "type": "variant",
  "options": [
    { "label": "skim", "food_id": "uuid" },
    { "label": "full_fat", "food_id": "uuid" }
  ]
}

```

## Boolean

```
{
  "type": "boolean",
  "impact_grams_if_true": 10,
  "impact_food_id": "uuid"
}

```

---

## Variance Calculation

For each uncertain component:

- Compute min_kcal
- Compute max_kcal
- Aggregate meal variance

```
variance_percent = (max_total - min_total) / avg_total

```

If variance_percent > 0.15:  
→ Prompt user clarification  
Else:  
→ Use default estimate

---

# Phase 5 – Deterministic Macro Computation

Formula:

```
macro = (grams / 100) * macro_per_100g

```

Aggregate all macros.

LLM is not involved.

---

# Phase 6 – Variation Engine (Rule-Based)

Generate:

- Low oil version
- Reduced portion version
- High protein option
- Sensitivity band (min/max kcal)

Rules must be deterministic.  
No LLM calls.

---

# Phase 7 – Caching Layer

Before LLM call:

1. Normalize input
2. Check meal_cache
3. If found → reuse parsed_output
4. Else → call LLM and store result

---

# Performance Targets

- Single LLM call per uncached request
- p95 latency < 800ms
- DB lookup < 20ms
- Macro compute < 5ms

---

# Safety Constraints

- Never store LLM-generated macros
- Never overwrite curated macro data
- Always maintain source tagging
- Separate unknown foods from verified foods
- No automatic alias generation

---

# Scaling Strategy

10k meals/day:

- Single Postgres instance sufficient

100k meals/day:

- Add Redis cache
- Tune pgvector index
- Monitor query latency

1M meals/day:

- Read replicas
- Consider partitioning
- Managed vector DB only if necessary

---

# End State

System properties:

- Deterministic macro engine
- Minimal LLM dependence
- Quantified uncertainty
- Controlled data growth
- Scalable
- Cost-efficient

---

If you'd like, I can now:

- Provide the exact production LLM prompt for decomposition
- Write the backend API contract (request/response schema)
- Or design a full folder structure for implementation

This is now clean and Markdown-safe.

