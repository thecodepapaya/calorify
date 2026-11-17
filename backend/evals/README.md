# Evals & Benchmarks

Evaluation test cases and benchmark harnesses for meal analysis decomposition and USDA nutrient resolution in `backend`.

## Test Cases

- `meal-analysis.cases.json`: Ground truth dataset of 12 diverse international meal cases across 11 country contexts (composite dishes, street food, portions, native scripts). Includes hard assertions on component recognition, preserved quantities, and plausibility bounds for portions.
- `usda-resolver.cases.json`: Ingredient retrieval evaluation cases covering diverse cuisines, preparation forms, and matching scenarios.

## Historical Evaluation Records

- [Luna one-call vs. two-pass evaluation](luna-one-call-meal-analysis-evaluation.md): Completed 2026-09-02 (TS-backend era). One combined call passed 28/36 fixture runs vs. 36/36 for two calls, saving ~1.6 s and $0.000099 per run. Decision: keep the two-pass flow. This is the recorded evidence behind the no-merge constraint in the latency optimization plan.
- [Pass-2 per-component split, before and after](pass2-per-component-split-evaluation.md): Completed 2026-11-17. For a five-component meal, pass-2 wall time fell from 12.07 s to 6.97 s; single-component meals were unchanged; pass-2 output tokens rose by a third. Records what changed, why, and the outputs of three meals before and after.
- Lexical USDA resolver baselines (pre-vector, TS backend, 2026-09-08): pg_trgm/FTS retrieval resolved 70/113 meal-corpus leaves (61.9%) and 29/40 val-set leaves (72.5%, raised to 33/40 = 82.5% after qualifier-term expansion); dominant miss class was `IDENTITY_MISMATCH` against USDA's inverted clinical descriptions (e.g. `"Chicken, broilers or fryers, breast, meat only, cooked, roasted"`). These failure modes (inverted taxonomy, Boolean-AND FTS misses, trigram score dilution) motivated the switch to dense vector search (`embeddinggemma-2` + pgvector HNSW), which is why lexical layers are not worth re-tuning.

## Planned Harness

No harness exists yet. The design (case-file changes, recorders, offline scorer, metrics, cost and phases) is in the [Meal-Analysis Evals plan](../../docs/plans/meal-analysis-evals.md). The case files here still use the v3 vocabulary (`COUNT`, `AMOUNT`) and have no USDA gold labels; the plan covers both.
