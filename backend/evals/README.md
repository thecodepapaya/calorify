# Meal-analysis model eval

This live model eval tests the two meal-decomposition LLM passes directly. Its
purpose is to measure whether a selected model reliably preserves explicit user
information and produces plausible structured estimates.

The dataset contains 12 fixed text cases from 11 country contexts, including one negative non-food case, across Asia,
Africa, Europe, the Caribbean, and North America. It was condensed from a
20-case set while preserving its coverage: composite dishes, enumerated
platters, street food, soup, dessert, branded products, restaurant
customization, beverages, native-script input, counts, weights, volumes,
household measures, fractions, and unit conversion, spanning a trivial
single-item input to compound multi-item meals. All timestamps are fixed.
Three repetitions run by default so model variability is visible without
making the suite unnecessarily expensive.

USDA resolution, calories, macros, clarification selection, meal-type
resolution, presentation, and the HTTP flow are intentionally outside this
eval. USDA-backed nutrition calculations are deterministic and should be tested
separately.

## Files

- `meal-analysis.cases.json` contains the inputs and expected semantic bounds.
- `../src/evals/mealAnalysisEval.ts` runs and scores one repetition.
- `../src/scripts/meal-analysis-eval.ts` provides the command-line runner and
  aggregate report.
- `../tests/evals/mealAnalysisEval.test.ts` tests the evaluator itself without
  making live model calls.

## Run

```bash
npm run meal-analysis:eval
npm run meal-analysis:eval -- --model openai/gpt-5.6-luna
npm run meal-analysis:eval -- --model gpt-5-nano --repeats 3
```

`OPENROUTER_API_KEY` is required for a live run. Available options are:

- `--model <name>` selects the OpenRouter model. Bare OpenAI model names receive
  the `openai/` prefix.
- `--repeats <count>` controls repetitions per case; the default is three.
- `--delay-ms <ms>` pauses between runs to avoid upstream rate limits; the
  default is 5000, and 0 disables the pause.
- `--case <id>` runs a single dataset case.
- `--dataset <path>` uses another compatible case file.
- `--output-directory <path>` chooses the artifact directory instead of making
  one under the operating system's temporary directory.
- `--help` prints command usage.

The selected model is used through OpenRouter with no fallback. A run therefore
cannot silently be credited to another model.
Legacy GPT-5 nano uses `minimal` reasoning effort; GPT-5.1 and newer use
`none`.

The command prints a temporary artifact directory. Every provider response,
parsed model output, provider error, run result, and the aggregate
`summary.json` is stored there as pretty-printed JSON.

the console output stays compact: it shows the artifact path, selected model,
reasoning effort, and an `Eval 3/12`-style heading before each case with its
food text, ID, and locale context. Each repetition reports its result and failed hard assertions;
the final summary includes completed run and case counts plus the aggregate pass
rate. Inspect the separate JSON files when a response or assertion needs diagnosis.

## Scoring

Hard assertions cover:

- strict pass-one and pass-two schemas;
- semantic recognition of each expected component, without requiring exact
  spelling;
- preservation of explicit counts and amounts with `user_stated` provenance;
- plausible inferred gram estimates for counted food portions;
- plausible inferred serving grams for continuous portions;
- ordered ranges and absence of the redundant `unit` field;
- exact component correspondence between passes;
- allowed `user_stated` or `model_inferred` provenance for every ingredient amount;
- valid ingredient variation references;
- expected defining ingredients in each component recipe;
- absence of explicitly excluded ingredients for cases that specify them.

Fixture `estimateMin`/`estimateMax` values are acceptance bounds for the
model's point estimate; they do not prescribe the model's returned uncertainty
range. Fixture `exact` values require a collapsed `min=estimate=max` result.

Optional fat/spice coverage, lookup-alias coverage, and ingredient-to-serving
mass coherence are diagnostic. They do not determine a run's pass/fail result
yet. Alias syntax and uniqueness remain hard schema requirements.

Every hard assertion must pass for a repetition to pass. The command reports
the repetition pass rate and each assertion's pass rate, but it does not enforce
a release threshold. Model assertion failures therefore produce a report
without making the command fail; configuration and runner errors still return
a non-zero exit status.

## Comparing models

Run each model against the same case and repetition count, then compare the
generated `summary.json` files. Each summary records the model, reasoning
effort, repetition totals, overall pass rate, and per-assertion pass rates.
Because fallback is disabled, every result belongs to the model named in that
summary.

```bash
npm run meal-analysis:eval -- --model gpt-5-nano --repeats 3
npm run meal-analysis:eval -- --model gpt-5.6-luna --repeats 3
```

Keep the current plausibility windows unchanged during a model comparison.
Change them only when the product expectation itself changes, and record that
change alongside the dataset.

## USDA resolver eval

`npm run usda:resolver-eval` resolves the USDA resolver cases val set
(`usda-resolver.cases.json`) against the local USDA mirror and reports the
resolve-rate baseline for the
[USDA ingredient hit-rate plan](../../docs/plans/usda-ingredient-hit-rate.md):
resolve rate over unique active ingredient leaves, rejection-reason
histogram, per-case summaries, and per-miss candidate diagnostics. Corpus
construction mirrors pass-2 leaf output — the first term of each group is
the canonical identity in the USDA head, specific, state format the pass-2
prompt contract requires (with `nfs` when the specific food is unknown),
the rest are lookup aliases capped at three (plain and regional names the
model may still hedge with), the group's retrieval intent and product
query flow into the leaf, and the pipeline's own nutrition-basis
inference assigns basis and preparation.
No model is called. The val set spans cuisines, preparation forms,
branded products, ambiguous identities, and regional vocabulary; it is a
measurement, not a gate. The meal-analysis dataset's required ingredient
groups remain available as a legacy derived corpus via
`--dataset meal-analysis.cases.json`.

Start the database first:

```bash
docker compose -f docker-compose.yml -f docker-compose.local.yml --profile staging up -d --wait db-usda
```

The command writes a full JSON report to a temporary artifact directory
(`--output-directory` preserves it) and never enforces a pass threshold; it
is a measurement, not a gate.

Current baseline (val set v1 with USDA-style canonical identities, the
local-fallback head-noun reduction, parenthetical identity matching, and the
fuzzy threshold lowered to 0.3, 2026-09-08): 86/112 unique active leaves
resolved (76.8%), up from 70/113 (61.9%) on plain-style terms. See the
[USDA ingredient hit-rate plan](../../docs/plans/usda-ingredient-hit-rate.md)
for the miss inventory.
