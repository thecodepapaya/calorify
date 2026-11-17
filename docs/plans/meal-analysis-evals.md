# Meal-Analysis Evals Plan

Status: high-level plan, revised 2026-11-17; nothing built. Open decisions in section 12.
Scope: measuring variance and accuracy of `backend/internal/analysis`, per stage and end to end.
Related: [Meal-Analysis Pipeline](../../backend/docs/meal-analysis-pipeline.md), [eval datasets](../../backend/evals/README.md), [latency plan](meal-analysis-latency-optimization.md) (L4 depends on this harness).

## 1. Why

Priority is variance and accuracy, ahead of latency. Today neither can be measured:

- The same input gives different totals. "bread with 2 omlettes" produced 373, 472 and 430 kcal on three consecutive runs of the same code (2026-11-15).
- No harness exists. `cmd/meal_eval` is absent, and `meal-analysis.cases.json` uses the retired `COUNT`/`AMOUNT` vocabulary.
- A wrong total cannot be traced to the stage that caused it.

## 2. Decisions

| Decision | Detail |
|---|---|
| Four evals, each runnable alone | `pass1`, `pass2`, `usda`, `e2e` |
| Direct provider calls | Pass 1 and pass 2 evals call the model through the same request-building code as production, without the application database |
| Production code may change for reuse | Each stage is split into a core (no storage) and a wrapper that stores (section 4). This replaces the earlier rule of no changes to `internal/analysis` |
| Live calls need an explicit request | Every live command prints its call count first and needs `--live` to proceed. Scoring is always offline |
| Evals measure; they do not gate CI | Only the scorer's unit tests run in CI |
| Text input only in v1 | Images deferred |

## 3. The four evals

```text
case input ──> [pass 1] ──> components ──> [pass 2] ──> ingredients ──> [usda] ──> macros
     │             ▲                           ▲                           ▲
     │        pass1 eval                  pass2 eval                   usda eval
     │      (live case input)       (frozen components)        (names with gold rows)
     └──────────────────────────── e2e eval ─────────────────────────────────┘
```

| Eval | Input | Calls per run | Needs | Answers |
|---|---|---|---|---|
| `pass1` | Case input (text, locale, country, timezone, time) | 1 model call | API key | Right components? Stated quantities kept? Right portion kind and unit weight? How much do these vary? |
| `pass2` | One frozen pass-1 component plus its case context | 1 model call | API key | Right ingredients? Do ingredient grams add up to the component? How much do names and grams vary on identical input? |
| `usda` | A canonical name and ingredient type | 0 model calls | Ollama, USDA database | Does the name resolve to an acceptable row? What does name drift cost? |
| `e2e` | Case input | 1 + one per component | All of the above | Is the calorie total inside the reference band? How wide is the spread? |

**Why frozen input for pass 2:** pass 2's output depends on what pass 1 produced. Feeding every run the same component makes all remaining spread pass 2's own. This replaces the earlier "replay" suite.

**Why e2e still matters:** stage evals cannot show how errors combine. A pass-1 unit weight that is 30% high and a USDA row that is 30% low can cancel or compound.

**One scorer per stage, reused:** an e2e run records every stage's output, so the pass-1, pass-2 and USDA scorers also run on e2e results. The e2e report adds only totals, bands and spread.

No eval writes to the application database. Nothing appears on the dashboard, and no eval user is needed.

## 4. Code changes for reuse

### 4.1 The problem

Each stage function in `service.go` does five things in one body: builds the request, calls the provider, writes `llm_call`, parses and validates, and saves the stage output under an analysis id. An eval needs the first, second and fourth without the storage.

| Function today | Stores | Blocks reuse because |
|---|---|---|
| `decomposeComponents` | `llm_call`, `meal_component` | Needs an analysis id and the application database |
| `decomposeIngredients` | `llm_call` per call, `meal_ingredient` | Same; the per-component call is a closure, so one component cannot be run alone |
| `enrichUsdaMacro` | `usda_enriched` | Same; lookup of a single name is not callable on its own |
| `generateClarification`, `prepareFinalResponse` | Their columns | Same |

Model, reasoning effort and both prompts are package constants, so a run cannot compare two models without a code edit.

### 4.2 Target shape

Split each stage into a **core** that takes inputs and returns outputs, and a **wrapper** that calls the core and stores the result. Production behaviour does not change.

| Core (new) | Takes | Returns | Uses |
|---|---|---|---|
| Pass 1 | request | `Pass1DTO`, call record | model client |
| Pass 2, one component | request context, one component | `Pass2CallDTO`, call record | model client |
| Pass 2, all components | request, `Pass1DTO` | `Pass2DTO`, call records | the one-component core, in parallel |
| USDA lookup | names with ingredient types | one candidate per name, with similarity | Ollama, USDA database |
| USDA enrichment | `Pass2DTO` | `UsdaEnriched` | the lookup core, then scaling |
| Clarification | `Pass1DTO`, `UsdaEnriched`, locale | `Clarifications` | nothing external |
| Final response | request, stage outputs | `MealPackage` | nothing external |

Rules for a core:

- It never reads or writes `s.DB` and takes no analysis id.
- It returns its `LlmCallRecord`s, including those of failed calls. The wrapper adds the analysis id and saves them.
- Validation that fails an analysis today (`pass 1 returned no components`, `EXACT` without per-unit grams, no USDA candidate) stays in the core, so evals see the same failures.
- Tracing spans stay in the core.

### 4.3 Overrides

Model and reasoning effort become settings on `Service` that default to today's constants, so an eval run can compare two models from flags. Prompts and schemas stay in code; a prompt change is identified by the code hash in the run manifest (section 7).

### 4.4 Tests that should exist before the split

`decomposeIngredients` has no fake-client test today ([TODO.md](../../backend/TODO.md) section 3). The split moves this code, so tests for ordering, nesting, failure cancellation and `llm_call` rows should be written first and stay green through it.

## 5. Harness layout

| Part | Where | Notes |
|---|---|---|
| Cases | `backend/evals/*.json` | Versioned inputs and expectations (section 6) |
| Runner | `backend/internal/evals` | Loads cases, calls the cores, writes a run directory |
| Scorer | `backend/internal/evals` | Pure Go; unit-tested with fixtures; reuses `ParsePass1`, `ParsePass2` and `PortionDTO.Grams` |
| CLI | `backend/cmd/meal_eval` | Subcommands, in the style of `cmd/usda` |
| Make targets | `backend/Makefile` | `eval-pass1`, `eval-pass2`, `eval-usda`, `eval-e2e`, `eval-score` |

CLI commands:

| Command | Does |
|---|---|
| `pass1`, `pass2`, `usda`, `e2e` | Run that eval and write a run directory. Dry run unless `--live` (not needed for `usda`) |
| `freeze` | Build the pass-2 input file from a `pass1` run (section 6.2) |
| `score <run>` | Score a run; `--baseline <run>` adds differences |

Common flags: `--cases`, `--tags`, `--repeats`, `--label`, `--model`, `--reasoning-effort`.

**Why a binary and not opt-in tests:** the earlier plan used `_test.go` recorders because the stage functions were unexported and tied to storage. With exported cores, a binary is simpler to run and cannot be triggered by `go test ./...`.

## 6. Cases

### 6.1 `meal-analysis.cases.json` v4

Used by `pass1` and `e2e`. Changes from v3:

- `portion.kind`: `COUNT` becomes `EXACT`, `AMOUNT` becomes `BULK`; `PINCH` allowed.
- `origin` values upper-cased to match the DTO (`USER_STATED`, `MODEL_INFERRED`).
- New `tags` per case: any of `smoke`, `variance`, `accuracy`.
- New `ingredientKeys` per component: named groups used to line up ingredients across runs. They replace `requiredIngredientGroups`.
- New optional `reference` per case: a calorie band with its source.
- New optional `expectNoFood` for non-food input.

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
    }
  ]
}
```

The bands in this example show the shape; they are not reviewed values.

Target about 30 cases: the 12 existing v3 cases converted, about 8 everyday Indian meals from real local inputs, about 5 with unstated quantities, and about 5 countable-against-continuous probes. About 10 carry the `variance` tag.

### 6.2 `pass2-components.json`

Input for the `pass2` eval. Each entry is one pass-1 component exactly as pass 1 emits it, with the case id, component key and request context.

- **Built by `freeze`** from a `pass1` run: for each case, one run that passed every structure assertion.
- **Reviewed by the user**, then committed. It changes only when deliberately re-frozen, so pass-2 results stay comparable across prompt changes.
- **Expectations are not copied.** The scorer looks up `ingredientKeys` in the meal case by case id and component key.

### 6.3 `usda-resolver.cases.json` v2

The file has 115 groups and no expected answers. Add gold labels:

- `acceptableFdcIds`: rows that count as a correct match.
- `primaryFdcId`: the best row, used for calorie-error reporting.
- `expectedMiss`: true when the USDA data has no acceptable row.

Labelling: for each group, list the top 5 retrieved rows plus a text search of `usda_foods` for the head noun. Unlabelled groups are reported as unjudged.

**Second source of names:** the canonical names that `pass2` runs actually produce. `usda` can take a `pass2` run as input and report every distinct name with the row it resolves to. This is the real input distribution; the gold file is the judged subset.

### 6.4 Reference bands

A band is valid only with a source: a USDA row and its portion weights, or a product label, with the computation written in the `source` field. Unsourced cases are left out of accuracy numbers.

Worked example, "4 roti": survey row "Bread, chappatti or roti" is 299 kcal per 100 g, with a medium roti at 40 g and a large one at 52 g. Band: 478 to 622 kcal.

**Limit:** bands are built from the same USDA data the pipeline uses. They check portions and matching, not whether a USDA value is right for a regional dish.

Bands and gold labels are drafted by the agent and reviewed by the user before they count.

## 7. Run directory

`backend/evals/runs/<utc-timestamp>-<eval>-<label>/`, gitignored:

- `manifest.json`: eval, label, repeats, cases file hash, git commit, model, reasoning effort, embedding model, USDA dataset version, and a **code hash** (SHA-256 over the non-test files in `backend/internal/analysis`). The code hash is the prompt version and reflects uncommitted edits.
- `results.jsonl`: one line per run with case id, repeat index, status, failure reason, the stage outputs that eval produced, and its call records (tokens, duration, finish reason).

Runs go round-robin over cases, so repeats of a case are spread over the session. A failed run is recorded and never stops the session.

## 8. Scoring

### 8.1 Alignment (shared)

- **Text match:** lower case, strip punctuation, split into words. An alias matches when its words appear as whole words, in order, so "oil" does not match "boiled".
- **Components** match on `canonical_name` or `name`; **ingredients** match `ingredientKeys` within the matched component.
- **Ties:** the longest alias wins. A remaining tie is reported as `ambiguous` and counts as unmatched.
- Every report lists unmatched, extra and ambiguous items per run.

### 8.2 Failure classes (shared)

`no_components`, `portion_validation`, `usda_no_match`, `timeout`, `provider`, `other`. `provider` failures (rate limits, API errors) are reported and left out of every rate.

### 8.3 Pass 1

Per run:

| Id | Assertion |
|---|---|
| P1-1 | Call completed; or, with `expectNoFood`, failed as `no_components` |
| P1-2 | Every expected component matched |
| P1-3 | Where the case gives `exact`: value equals it, origin is `USER_STATED`, min equals max |
| P1-4 | Portion kind equals the expected kind |
| P1-5 | `EXACT` per-unit grams inside the expected band |
| P1-6 | Where the case gives an estimate band: value inside it, origin as expected |

Across repeats, per component: kind agreement, count agreement, preparation-method agreement, canonical-name agreement, and relative range of nominal grams, `(max - min) / median`. Extra components are reported, not asserted.

### 8.4 Pass 2

Per run:

| Id | Assertion |
|---|---|
| P2-1 | Call completed and every portion validated |
| P2-2 | Every required ingredient key present |
| P2-3 | No forbidden ingredient group present |

Reported: ratio of summed ingredient grams to the component's grams. Across repeats, per ingredient key: presence rate, canonical-name agreement, kind agreement and relative range of grams.

### 8.5 USDA

- **Identity hit rate:** top row in `acceptableFdcIds`, on the first term.
- **Calorie error:** top row's kcal per 100 g against the primary row, as a distribution.
- **Name-drift agreement:** share of groups where every term resolves to the same row.
- **False accepts:** for `expectedMiss` groups the pipeline still takes the top row, because `searchUsda` has no similarity floor. Each counts as a wrong match.
- **Zero-energy matches:** names that resolve to a row with no energy value.
- **Similarity by outcome:** scores for hits, misses and false accepts, to show whether a floor could separate them.

### 8.6 End to end

A case needs at least four completed runs out of five; otherwise it is reported as insufficient, so a change that makes hard cases fail cannot look less variable.

- **Completion rate**, excluding `provider` failures.
- **Calorie spread:** relative range and coefficient of variation of nominal kcal. Compared only at equal repeats.
- **In-band rate:** share of runs with nominal kcal inside the reference band, plus the signed distance outside it.
- **Reference coverage:** share of runs whose reported range overlaps the band.
- **Range self-consistency:** share of runs whose reported range contains the case median, shown with the mean range width.
- **`fdc_id` agreement** per ingredient key, and agreement on clarification count and subject.
- The pass-1, pass-2 and USDA scorers run on the stage outputs of the same runs.

**Headline:** the median and the worst per-case calorie spread, and the in-band rate.

**Reading the stage split:** e2e spread is the total. `pass1` spread is pass 1's share. `pass2` spread on frozen input is pass 2's share. `usda` name-drift agreement shows how much naming differences change the row.

## 9. Comparing a change

1. Record the baseline twice on unchanged code. The difference between the two is the noise level.
2. Record the change with the same cases and repeats.
3. Compare per case: how many improved and worsened, and a bootstrap 90% interval over cases for the median difference (fixed seed, offline).
4. A change counts as an improvement only if the interval excludes zero, the difference is larger than the noise level, and completion and assertion pass rates do not drop by more than the noise level.

A prompt change to one pass is judged first on that pass's eval, which is cheaper, then confirmed on `e2e`.

With about 10 variance cases and five repeats, only large effects are detectable, such as a spread falling from 25% to under 10%.

## 10. Cost

| Recording | Runs | Model calls (about) |
|---|---|---|
| `pass1`, 30 cases x 5 | 150 | 150 |
| `pass2`, about 25 frozen components x 5 | 125 | 125 |
| `usda` | - | 0 |
| `e2e`, 30 cases x 3, plus 10 variance cases x 2 more | 110 | 330 |
| One full baseline | | 605 |

From local `llm_call` rows: a pass-1 call uses about 900 input tokens and a pass-2 call about 880, with 200 to 600 output tokens each. Stage evals can run several cases at once; `e2e` runs one at a time so that timings stay meaningful.

## 11. Phases

| Phase | Work | Live calls | Done when |
|---|---|---|---|
| 1 | Fake-client tests for `decomposeIngredients` | none | Ordering, nesting, cancellation and `llm_call` rows covered |
| 2 | Split stages into cores and wrappers; model and effort settings | none | `go test ./...` green; a local analysis behaves as before |
| 3 | Cases v4; case loader; scorer with fixture tests; `score` command | none | A hand-built fixture run scores as expected |
| 4 | `usda` eval: runner, gold labels, baseline | none | Every group labelled or unjudged; numbers recorded |
| 5 | `pass1` eval and `freeze` | smoke, on request | Three `smoke` cases record and score; pass-2 input file reviewed |
| 6 | `pass2` eval | smoke, on request | Frozen components record and score |
| 7 | Reference bands; `e2e` eval | smoke, on request | User has reviewed every band; smoke cases score end to end |
| 8 | Baseline twice for each eval; numbers in [backend/evals/README.md](../../backend/evals/README.md) | yes, on request | Baseline and noise level committed |

Phase 4 does not depend on phases 1 and 2 beyond the USDA lookup core, so it can start as soon as that one core exists.

**Ownership:** phases 1 and 2 are pipeline code and are written by the user ([backend/AGENTS.md](../../backend/AGENTS.md)). The harness (`internal/evals`, `cmd/meal_eval`, Makefile targets), case conversion, draft bands and labels, and reports are written by the agent on request. The user reviews bands and labels and approves each live recording.

## 12. Open decisions

In the order they block work:

1. **How production and `e2e` share the stage order.** Either each has its own five-line sequence of core calls, or one exported function runs the stages and reports each output to a caller-supplied hook (production saves, the eval collects). The first is simpler; the second cannot drift.
2. **Where the cores live.** Exported methods on `Service` (built with a nil application pool for evals), or a smaller type holding only the model client, Ollama URL and USDA pool.
3. **Model and effort overrides.** Fields on `Service` as in 4.3, or keep constants and edit code to compare models.
4. **Pass-2 input.** Frozen from a `pass1` run as in 6.2, or written by hand.
5. **Should `e2e` also be able to store runs** in the application database so they show on the dashboard. The plan says no.

## 13. Deferred

- Image inputs.
- Clarification answers (no answers route yet).
- Macro bands other than calories.
- Tip, health score and meal type.
- A latency metric. Timings are captured in each run.
- Exporting existing `meal_analysis` rows into a run directory. It is free, but rows carry no code version and no case expectations.

## 14. Risks

| Risk | Mitigation |
|---|---|
| The split changes production behaviour | Tests first (phase 1); cores keep today's validation and failure messages |
| Eval path drifts from production | Evals call the same cores; open decision 1 |
| Frozen pass-2 input goes stale after a pass-1 prompt change | Re-freeze deliberately; the manifest records the input file hash |
| Reference bands or gold labels are wrong | Every band cites a source; user review; unsourced cases excluded |
| Alias matching mislabels a component | Whole-word matching; ambiguous counts as unmatched; unmatched and extra items listed |
| Five repeats understate spread | Compare at equal repeats; baseline recorded twice |
| Failed runs hide variance | Minimum completed runs per case; completion rate must not drop |
| Provider changes behaviour between recordings | Manifest records the resolved model and date; re-record the baseline after a gap |
| Live calls made by accident | Dry run by default; `--live` required; not reachable from `go test` |
