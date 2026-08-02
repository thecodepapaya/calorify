# Calorie estimation tools and evals

Use the diagnostic CLI for a single deeply observable engine run and the eval runner for repeatable API regression suites. Both tools exercise the complete resumable pipeline rather than stopping after meal decomposition.

## Inspect one estimation

From `backend/`:

```bash
npm run calories:estimate -- --text "2 rotis with dal" --meal-type LUNCH
npm run calories:estimate -- "100 g dry oats with 250 ml milk" --json
npm run calories:estimate -- --image-url https://example.com/meal.jpg --meal-type DINNER
```

The default human report includes:

- every streamed pipeline event and continuation phase;
- decomposed portions and uncertainty bands;
- resolved USDA or LLM-fallback ingredients and their calories;
- automatic clarification and meal-type decisions;
- actual provider/model attempts, failures, failovers, and latency;
- database, USDA, LLM, and pipeline trace steps;
- final macros, calorie band, confidence, and confidence reasons.

Use `--no-auto-continue` to stop when the app would ask a question. Image query parameters are redacted from reports so pre-authenticated URLs are not copied into terminal output. The command still sends the original URL to the engine.

This command needs the normal backend `DATABASE_URL` and at least one configured meal-analysis provider. It loads the same ignored local environment files as the API and never prints API keys.

## Run the regression suite

The versioned dataset in `calorie-estimation.cases.json` is split into development and holdout cases. Each expected range includes provenance.

```bash
# Fast development check
npm run calories:eval

# Inspect selected failures in detail
npm run calories:eval -- --case indian-roti-dal-curd,dry-oats-100g --verbose

# Release stability check with a durable artifact
npm run calories:eval -- --split all --repeats 3 --output calorie-eval-report.json

# Machine-readable stdout for CI
npm run calories:eval -- --split holdout --repeats 3 --json
```

The runner calls the configured API origin, records the event path and analysis ID, accepts default portion clarifications, uses each dataset case's declared meal type, and reports confidence, ingredient grounding, stability, completion, accuracy, and latency. Set `CALORIE_EVAL_BASE_URL`, `CALORIE_EVAL_DATASET`, or `CALORIE_EVAL_REPEATS` to change defaults.

Live-provider evals are intentionally not ordinary pull-request unit tests. Deterministic matching, quantity parsing, and macro arithmetic stay covered by unit tests; run the full suite against a protected local or staging environment before a release.

## Historical grounding lessons

Earlier decomposition-only runs reached roughly 98–100% USDA hint hit rates, but hit rate alone did not prove calorie accuracy. The durable lessons retained in the current engine are: keep lookup hints atomic and English, decompose composite dishes, preserve raw/cooked/dry state, prefer deterministic trustworthy reference rows, and use semantic aliases only where lexical matching cannot express cuisine or preparation equivalence.
