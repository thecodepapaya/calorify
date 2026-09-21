# LangGraph/LangSmith meal-analysis pipeline rewrite

Status: **implemented 2026-09-22** (backend only; staged/production rollout of
the Docker image is the remaining manual step). See "Implementation record"
below for deviations from the original phase ladder.

Scope: re-express the V3 calorie-estimation backend flow as a LangGraph
`StateGraph` and observe it with LangSmith. The flow itself — stages, two-pass
interpretation, USDA grounding, question planning, pause/resume, presentation
— is unchanged. Only the orchestration layer is replaced; the model-access
layer (`backend/src/services/meal-analysis/llm.ts`, `LLM_PROVIDER` routing)
is kept as-is and merely made traceable.

This plan supersedes one line of
[meal-analysis-reliability.md](meal-analysis-reliability.md): the "no
LangGraph orchestration" non-goal. The flow stays deterministic and
single-shot per request; LangGraph becomes the orchestration substrate, not a
dynamic agent/tool loop. That line should be updated when this plan is
accepted.

## What exists today

- `backend/src/services/meal-analysis-v3/pipeline.ts` — hand-rolled stage
  sequencing. `runMealAnalysisV3` runs
  `INPUT_NORMALIZED -> INTERPRETED -> VALIDATED -> NUTRITION_RESOLVED ->
  CALCULATED -> QUESTIONS_PLANNED -> [pause] -> ANSWERS_APPLIED ->
  RECALCULATED -> MEAL_TYPE_RESOLVED -> PRESENTED -> INTEGRITY_CHECKED`,
  recorded through the `StageRecorder` in `observability.ts`.
- `backend/src/services/meal-analysis-v3/interpretation.ts` — the two
  generative LLM passes (compact meal items, then quantified ingredients),
  both strict `json_schema` structured-output calls.
- `backend/src/services/meal-analysis/llm.ts` —
  `createMealAnalysisLlmClient`, the provider layer. `LLM_PROVIDER`
  (`openrouter | openai`) picks between two OpenAI-SDK pathways; each attempt
  is validated (`validateStructuredContent`) and reported via `onAttempt`.
  This file is not modified by this plan beyond adding tracing.
- `backend/src/services/meal-analysis-v3/store.ts` — the
  `meal_analysis_v3_session` table; the `interpretation_snapshot` column
  holds the zod-validated `MealAnalysisV3InterpretationSnapshot` that makes
  `/answer` a zero-model-call deterministic replay
  (`resumeMealAnalysisV3FromSnapshot`).
- Callers: `backend/src/routes/v3/food.ts` (NDJSON stream + progress events),
  `backend/src/scripts/mealAnalysisCli.ts`, and the eval harness
  (`npm run meal-analysis:eval`), all of which inject fixture interpreters to
  run offline.

## Invariants (must not change)

1. The `/api/v3` routes, NDJSON event contract, and progress payloads the
   app already consumes.
2. `/answer` performs **zero model calls** and replays deterministically from
   the persisted interpretation snapshot.
3. Deterministic core modules are reused verbatim: `domain.ts`,
   `calculation.ts`, `nutrition.ts` (USDA resolver), `presentation.ts`,
   `mealType.ts`, `text.ts`. The rewrite touches orchestration, not
   arithmetic, matching, or copy.
4. The model-access layer keeps its current shape: `LLM_PROVIDER`
   (`openrouter | openai`), the `MealAnalysisLlmClient` interface, attempt
   reporting, and structured-output validation. V2 and summaries are
   untouched.
5. The eval harness and CLI keep working offline with fixture interpreters
   (no live model spend without an explicit request).
6. Backend coverage gates (`npm run test:coverage`) and the existing
   eval pass-rate floor (currently 83.3% recognition grade) hold.

## Target architecture

### Graph shape

One `StateGraph` in `backend/src/services/meal-analysis-v3/graph/` with nodes
mapped one-to-one from the current stages:

| Node | Wraps today's | Notes |
| --- | --- | --- |
| `normalizeInput` | `INPUT_NORMALIZED` | zod parse of normalized meal input |
| `interpret` | `INTERPRETED` | two LLM passes via the injected interpreter |
| `validate` | `VALIDATED` | `parseAndValidateInterpretation` |
| `resolveNutrition` | `NUTRITION_RESOLVED` | USDA resolver + bounded LLM fallback |
| `calculate` | `CALCULATED` | `calculateMeal` scenario arithmetic |
| `planQuestions` | `QUESTIONS_PLANNED` | question bundle, meal-type question |
| `applyAnswers` | `ANSWERS_APPLIED` | resume path only |
| `finalize` | `RECALCULATED`/`MEAL_TYPE_RESOLVED`/`PRESENTED`/`INTEGRITY_CHECKED` | recalc, meal type, presentation, integrity gate |

State is a single `Annotation.Root` object holding input, resolved
interpretation, calculation, question bundle, answers, and terminal outcome.
Deps (interpreter, nutrition resolver, presenter) travel in graph config, not
state, so fixture injection keeps working for tests, CLI, and eval.

`NEEDS_INPUT` uses LangGraph's native human-in-the-loop: `planQuestions`
calls `interrupt(questions)`; the answer request resumes with
`Command({ resume: answers })`. Terminal outcomes (`COMPLETE`, `NO_FOOD`,
`UNUSABLE_INPUT`, `UNRESOLVED`) end at `END` with the existing result shapes.

### Pause/resume and persistence

- `/answer` runs a second compiled graph (`buildMealAnalysisResumeGraph`)
  seeded from the zod-validated `interpretation_snapshot`, sharing the tail
  nodes with the fresh-analysis graph. Interpretation and USDA lookup are
  never re-run, so `/answer` stays a zero-model-call deterministic replay
  with no checkpoint infrastructure.
- The `interpretation_snapshot` column keeps being written exactly as today
  (the pause node emits it through the `onInterpretationSnapshot` hook).
  It remains the canonical replay source, so `/answer` determinism never
  depends on graph state surviving deploys.

### Progress streaming

Nodes emit the same `StageObservation` events through the unchanged
`StageRecorder`, so `progress.ts`, the NDJSON progress contract, the tests,
and the eval harness observe identical events.

### LangSmith

- Tracing via env: `LANGSMITH_TRACING=true`, `LANGSMITH_API_KEY`,
  `LANGSMITH_PROJECT`. Off by default locally; on for staging and
  production VM env files when this ships.
- Every graph run tagged with `analysisId`, `userId`, `locale`,
  `LLM_PROVIDER`, and terminal outcome, so traces are filterable per
  session and per provider.
- Graph nodes are LangChain runnables and are auto-traced. The raw OpenAI
  SDK calls inside `createMealAnalysisLlmClient` are made traceable by
  wrapping the client with the `langsmith` OpenAI wrapper (or, if that does
  not fit the installed SDK major, by constructing the two interpretation
  calls through `ChatOpenAI` with the same `response_format`); the choice is
  mechanical and settled in the LangSmith phase without changing
  `MealAnalysisLlmClient`'s interface or the provider routing.
- The `/api/v3/food/feedback` route additionally posts a best-effort LangSmith
  feedback score (up/down) correlated by `analysisId`; failure is logged and
  non-blocking. The existing Postgres feedback column remains the source of
  truth.
- Dashboards: per-node latency and error rate, `invalid_structured_response`
  rate per provider, and the eval pass-rate over time (fed from eval run
  artifacts, not live traffic). Prometheus `instrumentAiCall` metrics stay.

### Dependencies added (backend)

`@langchain/langgraph`, `@langchain/core`, `langsmith`. All MIT; Node 22
compatible; the backend is ESM so the LangChain ESM packages fit the existing
`tsc`/`tsx` setup.

## Migration phases

Each phase leaves the tree green (`npm run type-check && npm run lint &&
npm test` in `backend/`).

1. **Phase 0 — spike (no production code).** Verify the LangChain packages
   import and type-check under the current `tsc`/Node 22/ESM setup, and that
   `graph.stream()` progress works under `tsx`. Add dependencies only after
   this.
2. **Phase 1 — graph build.** State schema, nodes, edges, interrupt point;
   compile without a checkpointer (in-memory) so CLI/eval run unchanged.
   Fixture-interpreter unit tests assert identical stage observations and
   results to the current pipeline over the same inputs.
3. **Phase 2 — swap behind a flag.** `ANALYSIS_ENGINE=graph|legacy` selects
   the implementation inside `runMealAnalysisV3` /
   `resumeMealAnalysisV3FromSnapshot` facades, so routes, CLI, eval, and
   their tests are untouched. Default `legacy`.
4. **Phase 3 — durable resume.** Postgres checkpointer, `interrupt()` +
   `Command` resume for `/answer`, snapshot column still written (invariant 2
   preserved via the snapshot replay path remaining available).
5. **Phase 4 — LangSmith.** Env wiring, model-call wrapping, run metadata,
   feedback hookup, dashboards.
6. **Phase 5 — verification gates.** Full backend suite and coverage gates;
   offline eval replay parity (pass rate >= 83.3%, zero live model calls);
   answer-determinism test (same snapshot + answers yields byte-identical
   result under both engines).
7. **Phase 6 — rollout and cleanup.** Staging burn-in, flip default to
   `graph`, production deploy, then remove the legacy orchestration path and
   the `ANALYSIS_ENGINE` flag. Update the reliability plan's non-goal line,
   `backend/docs/meal-analysis-v3-api.md` (only if progress event semantics
   shifted), and this status line.

## Decisions (resolved at implementation)

- **D1 — resume canonicality.** Resolved as (b): the zod-validated
  interpretation snapshot is the sole `/answer` source, carried by the resume
  graph. No checkpointer was introduced.
- **D2 — `progress.ts` mapping.** Moot: progress events are byte-identical
  (observer-driven), so no event timing changed.

## Verification summary

| Gate | Command (in `backend/`) | Expected |
| --- | --- | --- |
| Types + lint + tests | `npm run type-check && npm run lint && npm test` | green, per phase |
| Coverage | `npm run test:coverage` | existing thresholds hold |
| Eval parity (offline) | `npm run meal-analysis:eval` (artifact replay) | >= 83.3% pass rate, no live calls |
| Answer determinism | new unit test, both engines | byte-identical results |

## Implementation record (2026-09-22)

The full phase ladder was implemented in one change, with these deliberate
simplifications over the original plan ("don't overengineer" ruling):

- **No checkpointer, no `interrupt()`** (open decision D1, option b taken to
  its conclusion): the `NEEDS_INPUT` pause is a conditional edge to a
  `pauseForInput` node, and `/answer` runs a second compiled graph
  (`buildMealAnalysisResumeGraph`) seeded from the zod-validated
  interpretation snapshot. This keeps `/answer` a zero-model-call,
  deploy-proof deterministic replay with no new Postgres tables. The
  `langgraph-checkpoint-postgres` dependency was therefore not added.
- **No `ANALYSIS_ENGINE` flag** (phases 2/6 collapsed): the graph replaced the
  hand-rolled sequencing outright, because the pipeline's own test suite —
  exact stage-sequence assertions and byte-identical snapshot-replay vs
  direct-run results — is the parity gate.
- **Deps travel as closures**, not `config.configurable`: each invocation
  compiles a graph from `createMealAnalysisNodes(deps)`. Graph construction is
  cheap object wiring next to the LLM calls it orchestrates.
- **Model-call wrapping was dropped**: `langsmith@0.10.4` exposes no
  `wrapOpenAI`. Graph and node runs are traced natively; the raw model calls
  appear inside their node runs' timings. The provider layer
  (`meal-analysis/llm.ts`) is untouched.
- **Progress streaming stays observer-driven**: nodes emit the same
  `StageObservation` events through the unchanged `StageRecorder`, so the
  NDJSON progress contract needs no `streamMode` adapter.

Layout:

- `backend/src/services/meal-analysis-v3/contract.ts` — shared schemas, types,
  and helpers (moved out of `pipeline.ts` so the graph and facade share them
  without an import cycle); `pipeline.ts` re-exports the public surface.
- `backend/src/services/meal-analysis-v3/graph/` — `state.ts` (single
  `Annotation.Root` state), `nodes.ts` (node functions mirroring the legacy
  stages one-for-one, including recorder observations), `graph.ts`
  (`buildMealAnalysisGraph` and `buildMealAnalysisResumeGraph`).
- `backend/src/services/infrastructure/langsmith.ts` — env-gated client,
  run-metadata tagging, and the best-effort feedback mirror; Postgres remains
  the feedback source of truth.
- `backend/src/routes/v3/food.ts` — passes `analysisId`/`userId`/`locale`/
  `llmProvider` metadata into both pipeline entries and mirrors `/feedback`
  into LangSmith when configured.
- `backend/env.example` — documents the `LANGSMITH_*` variables.

Verification (all in `backend/`): `npm run type-check`, `npm run lint`,
`npm test` (483/483 pass, including the 12-observation stage-sequence and
snapshot-replay parity tests through the graph), and `npm run
test:coverage` at the existing 80/70 gates. No live model calls were made:
the eval runner's interpreter path is unchanged, and the graph is proven
byte-identical through the fixture-based suite.
