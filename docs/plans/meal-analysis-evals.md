# Meal-Analysis Evals Plan

Status: plan, self-reviewed against the code (2026-11-16); nothing built.
Scope: measuring variance and accuracy of `backend/internal/analysis`, and of USDA retrieval.
Related: [Meal-Analysis Pipeline](../../backend/docs/meal-analysis-pipeline.md), [eval datasets](../../backend/evals/README.md), [latency plan](meal-analysis-latency-optimization.md) (L4 depends on this harness).

## 1. Why

Priority is variance and accuracy, ahead of latency. Today neither can be measured:

- The same input gives different totals. "bread with 2 omlettes" produced 373, 472 and 430 kcal on three consecutive runs of the same code (2026-11-15).
- No harness exists. `cmd/meal_eval` and `cmd/usda_eval` are absent, and `meal-analysis.cases.json` uses the retired `COUNT`/`AMOUNT` vocabulary.
- No change to prompts, portions or matching can be judged as better or worse.

The evals must answer four questions:

1. **Variance:** for a fixed input, how far apart are repeated results, and which stage causes it?
2. **Structure:** does the pipeline find the right components, keep stated quantities, and choose the right portion kind?
3. **Accuracy:** is the calorie total inside a sourced reference band?
4. **Retrieval:** does a canonical name resolve to an acceptable USDA row?

## 2. Constraints

- **Live model calls need an explicit request each time.** Recording is the only step that spends money. Scoring is always offline.
- **No changes to `internal/analysis` production code.** DTOs, DDL and pipeline code are user-owned ([backend/AGENTS.md](../../backend/AGENTS.md)). The harness adds only `_test.go` files there.
- **The evals measure; they do not gate CI.** No live calls in CI. Only the scorer's unit tests run there.
- **Text input only in v1.** Image cases are deferred (section 12).
- **Local application database only.** Recording writes `meal_analysis` and `llm_call` rows.

## 3. Design

Recording and scoring are separate steps, joined by a run directory.

```text
cases (JSON) ──> recorder (live, explicit) ──> run directory ──> scorer (offline) ──> report
                                                    ^
                 existing meal_analysis rows ───────┘  (export, free)
```

| Part | Where | Notes |
|---|---|---|
| Cases | `backend/evals/*.cases.json` | Versioned inputs and expectations |
| Pipeline recorder | opt-in test in `internal/analysis` | Calls `runPipeline` synchronously |
| Pass-2 replay recorder | same | Re-runs `decomposeIngredients` on one stored pass-1 output |
| Resolver recorder | same | Calls the real `getEmbeddings` and `searchUsda`; no model calls |
| DB exporter | same | Turns existing rows into a run directory |
| Scorer | `internal/evals` (pure Go) + `cmd/meal_eval score` | Deterministic; unit-tested with fixtures; reuses `analysis.ParsePass1`, `ParsePass2` and `PortionDTO.Grams` |

**Why tests for recording:** `runPipeline`, `decomposeIngredients`, `searchUsda` and `getEmbeddings` are unexported. A `cmd` binary would need them exported (a production change) or would copy the SQL (the eval would then test a copy). A `_test.go` file in the package reaches them as they are.

**Opt-in, not auto-run:** the existing DB tests run whenever Postgres is reachable. Recorder tests must not: each skips unless its own env variable is set (section 6). They run through Makefile targets that pass `-count=1` (no cached results), `-run` (one test) and `-timeout 60m` (the default 10 minutes is shorter than a baseline).

## 4. Suites

| Suite | Question | Live calls | Repeats |
|---|---|---|---|
| `resolver` | Retrieval | none (Ollama + Postgres) | 1 |
| `structure` | Structure | yes | 3 per case |
| `variance` | Variance | yes | 5 per case, tagged cases only |
| `replay` | Which stage causes variance | yes, pass 2 only | 5 per tagged case |
| `accuracy` | Accuracy | none extra; scored on the same runs | - |

## 5. Case files

### 5.1 `meal-analysis.cases.json` v4

Changes from v3:

- `portion.kind`: `COUNT` becomes `EXACT`, `AMOUNT` becomes `BULK`; `PINCH` allowed.
- `origin` values upper-cased to match the DTO (`USER_STATED`, `MODEL_INFERRED`).
- New `tags` per case: any of `smoke`, `variance`, `accuracy`.
- New `ingredientKeys` per component: named groups used to line up ingredients across runs. They replace `requiredIngredientGroups`; `diagnosticIngredientGroups` stays.
- New optional `reference` per case: a calorie band with its source.
- New optional `expectNoFood` for non-food input.

`input` maps to the request as: `text` to `text`, `locale` to `meta_info.locale`, `countryCode` to `country_code`, `timeZone` to `timezone`, `capturedAt` to `timestamp`.

Shape of one case:

```json
{
  "id": "in-bread-omelette-unstated-bread",
  "tags": ["variance", "accuracy"],
  "input": {"text": "bread with 2 omlettes", "locale": "en-IN", "countryCode": "IN", "timeZone": "Asia/Kolkata", "capturedAt": "2026-11-15T03:00:00.000Z"},
  "expectedComponents": [
    {
      "key": "omelette",
      "aliases": ["omelet", "omelette"],
      "portion": {"kind": "EXACT", "exact": 2, "origin": "USER_STATED", "perUnitGrams": {"estimateMin": 55, "estimateMax": 130}},
      "ingredientKeys": [
        {"key": "egg", "aliases": ["egg", "eggs"], "required": true},
        {"key": "cooking-fat", "aliases": ["butter", "oil", "ghee"], "required": false}
      ]
    },
    {
      "key": "bread",
      "aliases": ["bread"],
      "portion": {"kind": "EXACT", "origin": "MODEL_INFERRED", "estimateMin": 1, "estimateMax": 4, "perUnitGrams": {"estimateMin": 20, "estimateMax": 45}},
      "ingredientKeys": [{"key": "bread", "aliases": ["bread"], "required": true}]
    }
  ],
  "forbiddenIngredientGroups": []
}
```

The bands in this example are placeholders to show the shape, not reviewed values.

### 5.2 Case set

Target about 30 cases:

| Group | Count | Source |
|---|---|---|
| Global stress set | 12 | Existing v3 cases, converted |
| Everyday Indian meals | about 8 | Real inputs from the local DB (roti, dal, rice, sabzi, raita, paratha, milkshake, guava) |
| Unstated quantities | about 5 | "bread with 2 omlettes", "roti and sabzi", "dal rice" |
| Countable vs continuous probes | about 5 | eggs, idli, momos against dal, curry, soup |

About 10 cases carry the `variance` tag.

### 5.3 Reference bands

A band is only valid with a source. The rule:

- **Source:** a USDA row (`fdcId`) and its portion weights, or a product label.
- **Computation:** portion range in grams times kcal per 100 g, written out in the `source` field.
- **Unsourced cases** have no `reference` and are left out of accuracy numbers.

Worked example, "4 roti": survey row "Bread, chappatti or roti" is 299 kcal per 100 g, with a medium roti at 40 g and a large one at 52 g. Band: 4 x 40 g to 4 x 52 g, so 478 to 622 kcal.

Bands are drafted by the agent and reviewed by the user before they count.

**Limit:** bands are built from the same USDA data the pipeline uses. They check portions and matching. They cannot show that a USDA value is itself wrong for a regional dish.

### 5.4 `usda-resolver.cases.json` v2

The file has 115 groups and no expected answers, so a hit cannot be judged today. Add gold labels:

- `acceptableFdcIds`: rows that count as a correct match.
- `primaryFdcId`: the best row, used for calorie-error reporting.
- `expectedMiss`: true when the USDA data has no acceptable row.

Labelling: for each group, list the top 5 retrieved rows plus a text search of `usda_foods` for the head noun, so the best row is found even when retrieval misses it. Pick acceptable rows by hand. Unlabelled groups are reported as unjudged. Labels are drafted by the agent and reviewed by the user.

`intent` maps to the search type: `BRANDED_PRODUCT` uses `BRANDED`, everything else `BASE`.

## 6. Recorders

### 6.1 Pipeline recorder

- Skips unless `CALORIFY_EVAL_RECORD=1`.
- Inputs by env: cases file, suite, repeats, absolute output directory. Connection settings come from the same variables the server uses.
- **Dry run first:** prints case count, run count and estimated calls (one plus the expected component count per run), and stops unless `CALORIFY_EVAL_CONFIRM_LIVE=1`.
- **Local guard:** refuses to run unless the application database host is `localhost` or `127.0.0.1`.
- Upserts a `users` row with uid `eval-harness` (`meal_analysis.user_uid` references `users.uid`).
- For each run: `CreateNewAnalysis`, then `runPipeline` synchronously, then read back the `meal_analysis` row and its `llm_call` rows.
- **Order:** round-robin over cases, one run at a time, so repeats of a case are spread over the session.
- A failed run is recorded with its `failure_reason`; it never stops the session.

### 6.2 Pass-2 replay recorder

Isolates pass-2 variance. For each `variance` case it takes one stored pass-1 output from a pipeline run, then calls `decomposeIngredients` and `enrichUsdaMacro` on it five times, each under a fresh analysis row. Pass 1 is not called, so a run costs one call per component. Same opt-in, dry run and local guard as 6.1.

Reading the result: spread in a replay run is caused by pass 2 and matching alone. Spread in the full pipeline minus that is pass 1's share.

### 6.3 Run directory

`backend/evals/runs/<utc-timestamp>-<label>/`:

- `manifest.json`:
  - run id, label, suite, repeats, cases file hash;
  - git commit;
  - **code hash:** SHA-256 over the working-tree contents of the non-test files in `backend/internal/analysis`. Prompts, schemas, the model name and reasoning effort all live there, so this is the prompt version. It reflects uncommitted edits, which a commit hash would miss;
  - model names seen in `llm_call`, embedding model, USDA dataset version and USDA database host (no credentials).
- `results.jsonl`: one line per run with case id, repeat index, analysis id, status, failure reason, the five stage payloads, stage timestamps and `llm_call` rows.

Raw runs are gitignored. The baseline report is committed.

### 6.4 DB exporter

Builds a run directory from existing rows. It costs nothing and gives the first variance numbers.

- Groups by identical text, locale, country and timezone.
- Takes a required time window. Rows carry no code version, so a window is the only way to avoid mixing prompt versions. For "bread with 2 omlettes", the three runs after 2026-11-15 18:59 UTC share one prompt; the run at 18:45 does not.
- Excludes `eval-harness` rows unless asked.
- Skips rows that do not parse as the nested shape (rows before commit `7e82690d`) and reports how many.
- Rows have no case expectations, so only top-level metrics apply. Reports from it are marked indicative.

### 6.5 Resolver recorder

Skips unless `CALORIFY_EVAL_RESOLVER=1`. For each group it embeds every term separately with the production query prefix, calls `searchUsda`, and records the row and similarity. A separate labelling query records the top 5.

## 7. Scorer

### 7.1 Alignment

- **Text match:** lower case, strip punctuation, split into words. An alias matches when its words appear as whole words, in order. This avoids "oil" matching "boiled" and "egg" matching "eggplant".
- **Components:** an expected component matches a predicted one when an alias matches its `canonical_name` or `name`. `canonical_name` is always English, so native-script inputs align the same way.
- **Ties:** when an alias matches more than one predicted component, or two expected components match the same one, the longest alias wins. A tie that remains is reported as `ambiguous` and the component counts as unmatched. Nothing is assigned silently.
- **Ingredients:** same rule against `ingredientKeys`, within the matched component. Unmatched ingredients are grouped as `other`.
- Every report lists unmatched, extra and ambiguous items per run, so mislabelling is visible.

### 7.2 Failure classes

Each failed run is classed from `failure_reason`: `no_components`, `portion_validation`, `usda_no_match`, `timeout` (the 30 s pipeline limit), `provider` (model API errors such as rate limits), `other`.

`provider` failures are infrastructure, not pipeline behaviour. They are reported and left out of every rate.

### 7.3 Structure assertions (per run)

| Id | Assertion |
|---|---|
| H1 | Run reached `PRESENTED`; or, with `expectNoFood`, failed as `no_components` (today's behaviour for non-food input) |
| H2 | Every expected component matched |
| H3 | Where the case gives `exact`: value equals it (counts exactly, grams within 1%), origin is `USER_STATED`, and min equals max equals value |
| H4 | Portion kind equals the expected kind |
| H5 | `EXACT` per-unit grams inside the expected band |
| H6 | Where the case gives `estimateMin` and `estimateMax`: value inside the band, and origin as expected |
| H7 | Every required ingredient key present |
| H8 | No forbidden ingredient group present |

Reported but not asserted: extra components, diagnostic ingredient groups, and the ratio of ingredient grams to component grams.

A run passes when all applicable assertions pass. Report pass rate per assertion and per case. With three repeats a single case's rate is coarse; read the rates across cases.

### 7.4 Variance metrics (per case)

A case needs at least four completed runs out of five; otherwise it is reported as insufficient. This stops a change that makes hard cases fail from looking less variable.

- **Completion rate:** completed runs over attempted, excluding `provider` failures.
- **Calorie spread:** relative range, `(max - min) / median` of nominal kcal, plus the coefficient of variation. Relative range grows with the number of runs, so it is only compared at equal repeats.
- **Per component:** kind agreement, count agreement, preparation-method agreement (each the share of runs matching the most common value), and relative range of nominal grams.
- **Per ingredient key:** presence rate, relative range of grams, and `fdc_id` agreement.
- **Clarifications:** agreement on how many questions were asked and on what each was about.
- **Range self-consistency:** share of runs whose reported `minValue` to `maxValue` contains the case median, reported together with the mean range width, `(maxValue - minValue) / value`. The width is shown because a pipeline could score well here just by reporting very wide ranges.

**Suite headline:** the median and the worst per-case calorie spread.

**Stage attribution:** the per-component and per-ingredient numbers are descriptive only, because pass 2 depends on what pass 1 produced. The `replay` suite gives the causal split.

### 7.5 Accuracy metrics

- **In-band rate:** share of runs with nominal kcal inside the reference band.
- **Distance outside the band:** zero inside; otherwise the signed gap to the nearest edge as a percentage, so over- and under-estimation are visible.
- **Reference coverage:** share of runs whose reported range overlaps the band.

Calories only in v1. Protein, carbohydrate, fat and fibre bands are deferred.

### 7.6 Resolver metrics

- **Identity hit rate:** top-1 row in `acceptableFdcIds`, on the first term.
- **Calorie error:** top-1 kcal per 100 g against the primary row, as a distribution.
- **Name-drift agreement:** share of groups where every term resolves to the same row. Pass 1 and pass 2 name the same food in different ways, so this measures how much that costs.
- **False accepts:** for `expectedMiss` groups, production still takes the top row, because `searchUsda` has no similarity floor. Each is counted as a wrong match.
- **Similarity by outcome:** similarity scores for hits, misses and false accepts, to show whether a floor could separate them.

### 7.7 Output

`report.json` and `report.md` in the run directory. With `--baseline <dir>`, each metric shows the baseline value and the difference.

## 8. Comparing a change

1. Record the baseline twice on unchanged code. Comparing the two shows how much metrics move with no change at all.
2. Record the change with the same cases and repeats.
3. Compare per case, not only in aggregate: report how many cases improved and worsened, and a bootstrap 90% interval over cases for the median difference (fixed seed, offline).
4. A change counts as an improvement only if that interval excludes zero, the difference is larger than the baseline-to-baseline difference, completion rate is not lower, and no structure pass rate drops by more than the baseline-to-baseline difference.

With about 10 variance cases and five repeats, only large effects are detectable, such as a spread falling from 25% to under 10%. Small differences are not evidence.

## 9. Cost

A run makes one pass-1 call plus one pass-2 call per component. The table assumes about two components per case (the v3 set has 24 in 12 cases).

| Recording | Runs | Calls (about) |
|---|---|---|
| All 30 cases x 3 | 90 | 270 |
| 10 variance cases x 2 more | 20 | 60 |
| One full baseline | 110 | 330 |
| Baseline twice | 220 | 660 |
| Replay, 10 cases x 5 | 50 | 100 |

From local `llm_call` rows, a two-component run uses about 2,700 input and 900 to 1,200 output tokens. One baseline is therefore about 300k input and 120k output tokens. At about 10 s per run in sequence, one baseline takes about 20 minutes.

## 10. Phases

| Phase | Work | Live calls | Done when |
|---|---|---|---|
| 1 | Convert cases to v4; add new cases without references | none | File loads in the scorer's case parser; v3 vocabulary gone |
| 2 | Scorer package and `cmd/meal_eval score`, with fixture tests | none | `go test ./...` green; a hand-built fixture run scores as expected |
| 3 | DB exporter; score existing rows | none | Report shows the 373, 472 and 430 kcal runs as one group |
| 4 | Resolver recorder, gold labels, resolver report | none | Every group labelled or marked unjudged; baseline numbers recorded |
| 5 | Reference bands with sources | none | User has reviewed every band |
| 6 | Pipeline and replay recorders | smoke only, on request | Three `smoke` cases record and score end to end |
| 7 | Baseline twice, then replay; record numbers in [backend/evals/README.md](../../backend/evals/README.md) | yes, on request | Baseline metrics and the baseline-to-baseline difference committed |

Phases 1 to 5 cost nothing and can start now.

## 11. Ownership

- **Agent, on request:** harness code (`internal/evals`, `cmd/meal_eval`, the recorder `_test.go` files, Makefile targets), case conversion, draft references and labels, reports.
- **User:** review of reference bands and gold labels; approval of each live recording; any change to `internal/analysis` production code.

## 12. Deferred

- Image inputs.
- Clarification answers (no answers route yet).
- Macro bands other than calories.
- Tip, health score and meal type. Meal type is set from the clock for most hours, so it does not vary.
- Latency reporting. Timings are captured in each run, but no latency metric is defined here.

## 13. Risks

| Risk | Mitigation |
|---|---|
| Reference bands or gold labels are wrong | Every band cites a source; user review; unsourced cases excluded |
| Alias matching mislabels a component | Whole-word matching; ambiguous matches count as unmatched; unmatched and extra items listed per run |
| Five repeats understate spread | Compare at equal repeats only; baseline recorded twice; per-case comparison |
| Failed runs hide variance | Minimum completed runs per case; completion rate must not drop |
| Eval rows pollute the local dashboard and exporter | Fixed `eval-harness` uid; exporter excludes it; local-only guard |
| Model provider changes behaviour between recordings | Manifest records model and date; re-record the baseline before comparing after a gap |
| Recorder runs by accident under `go test ./...` | Each recorder skips without its env variable; live calls need a second variable |
