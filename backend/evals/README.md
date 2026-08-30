# Meal-analysis model eval

This live model eval tests the two meal-decomposition LLM passes directly. Its
purpose is to measure whether a selected model reliably preserves explicit user
information and produces plausible structured estimates.

The dataset currently contains one fixed case: `4 roti daal`, with `en-IN`,
country `IN`, timezone `Asia/Kolkata`, and a fixed timestamp. Five repetitions
run by default so model variability is visible.

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
- `--repeats <count>` controls repetitions per case; the default is five.
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

The console output stays compact: it shows the artifact path, selected model,
reasoning effort, each repetition's result, and aggregate pass rate. Inspect the
separate JSON files when a response or assertion needs diagnosis.

## Scoring

Hard assertions cover:

- strict pass-one and pass-two schemas;
- semantic recognition of roti and daal, without requiring exact spelling;
- preservation of the explicit count of four as `COUNT` with `user_text`
  provenance;
- inferred per-roti grams in the accepted 25–80 g estimate window;
- inferred daal serving grams in the accepted 80–400 g estimate window;
- ordered ranges and absence of the redundant `unit` field;
- exact component correspondence between passes;
- `model_inferred` provenance for every ingredient amount;
- valid ingredient variation references;
- flour in the roti recipe and lentils/pulses in the daal recipe.

Optional fat/spice coverage and ingredient-to-serving mass coherence are
diagnostic. They do not determine a run's pass/fail result yet.

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
npm run meal-analysis:eval -- --model gpt-5-nano --repeats 5
npm run meal-analysis:eval -- --model gpt-5.6-luna --repeats 5
```

Keep the current plausibility windows unchanged during a model comparison.
Change them only when the product expectation itself changes, and record that
change alongside the dataset.
