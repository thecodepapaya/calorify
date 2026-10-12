# Meal-Analysis Model & Resolver Evals

Evaluates meal-decomposition LLM passes and USDA ingredient retrieval accuracy without mixing them with application state or HTTP transports.

## 1. LLM Pass Decomposition Eval

Directly tests the two meal-decomposition LLM passes against 12 diverse international cases across 11 country contexts (composite dishes, street food, portions, native scripts).

### Files
- `meal-analysis.cases.json` — evaluation test cases and semantic boundary assertions.
- `../src/evals/mealAnalysisEval.ts` — single-run scoring engine.
- `../src/scripts/meal-analysis-eval.ts` — CLI runner and reporter.
- `../tests/evals/mealAnalysisEval.test.ts` — mock test suite for the evaluator.

### Running

```bash
# Run default 3 repeats per case
npm run meal-analysis:eval -- --model openai/gpt-5.6-luna

# Common options:
#   --model <name>          OpenRouter model identifier
#   --repeats <count>       Repetitions per case (default: 3)
#   --delay-ms <ms>         Inter-call pause to avoid rate limits (default: 5000)
#   --case <id>             Run a single specific case ID
#   --output-directory <dir> Store JSON result artifacts in custom directory
```

*Requires `OPENROUTER_API_KEY`.*

### Scoring & Assertions
- **Hard Assertions**: Strict JSON schemas, semantic component recognition, preserved user-stated quantities, valid range ordering, and allowed ingredient provenance (`user_stated` vs `model_inferred`).
- **Plausibility Windows**: Inferred portions must fall within predefined `estimateMin` and `estimateMax` bounds.
- **Reporting**: Reports assertion-level pass rates and overall score. Artifacts (JSON outputs and summary) are stored in the artifact directory.

## 2. USDA Resolver Eval

Evaluates ingredient matching accuracy against the local PostgreSQL USDA mirror without calling any LLM.

### Running

```bash
# Start local USDA database
docker compose -f docker-compose.yml -f docker-compose.local.yml --profile staging up -d --wait db-usda

# Run retrieval evaluation
npm run usda:resolver-eval
```

Measures the resolve rate over unique ingredient leaves across cuisines, preparation forms, and fuzzy matching stages against `usda-resolver.cases.json`.
