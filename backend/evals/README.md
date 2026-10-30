# Evals & Benchmarks

Evaluation test cases and benchmark harnesses for meal analysis decomposition and USDA nutrient resolution in `backend`.

## Test Cases

- `meal-analysis.cases.json`: Ground truth dataset of 12 diverse international meal cases across 11 country contexts (composite dishes, street food, portions, native scripts). Includes hard assertions on component recognition, preserved quantities, and plausibility bounds for portions.
- `usda-resolver.cases.json`: Ingredient retrieval evaluation cases covering diverse cuisines, preparation forms, and matching scenarios.

## Planned Go Harnesses

1. **USDA Retrieval Benchmark / Eval Harness (`cmd/usda_eval`)**:
   - Benchmarks vector search (`embeddinggemma-2` + pgvector cosine similarity) against `usda-resolver.cases.json`.
   - Measures top-1 and top-5 hit rate, recall, and cosine distance distributions.

2. **Meal Analysis LLM Pass Eval Harness (`cmd/meal_eval`)**:
   - Benchmarks Pass 1 (Component decomposition) and Pass 2 (Ingredient decomposition) against `meal-analysis.cases.json`.
   - Validates JSON schemas, component recognition, portion range plausibility (`estimateMin` - `estimateMax`), and execution latency.

