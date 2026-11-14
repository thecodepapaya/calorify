# Meal-Analysis Latency Optimization Plan

Status: active plan (agreed 2026-11-14)
Owner: Ashutosh (core logic) + agent (mechanical plumbing, on request)
Scope: `backend/internal/analysis/` pipeline latency. No pass-1/pass-2 merge; two-pass decomposition is a quality invariant.

## 1. Objective

Reduce end-to-end meal-analysis latency (request accepted -> `PRESENTED` status):

| Metric | Current (prod, 7d avg) | Target |
|---|---|---|
| E2E average | 10.96 s | < 10 s (must), ~ 5 s (preferred) |
| Pass 1 (components) | 5.66 s | - |
| Pass 2 (ingredients) | 4.84 s | - |
| USDA hydration | 0.46 s | no work needed |
| Clarification + final | ~ 0.00 s | no work needed |

The two LLM calls are 96% of wall clock. USDA hydration is already sub-second after the HNSW index fix and per-analysis query parallelization (2026-11-06 review); it is out of scope for this plan except as a measurement row.

### Budget math

- **< 10 s average**: each LLM call needs roughly a 10-15% cut. Achievable with input/prompt trims alone.
- **~ 5 s average**: two serial calls must average ~2.2 s each (leaving ~0.5 s for hydration + DB writes). That is a 55-60% cut per call and almost certainly requires the recipe cache, the model split, or both — not just trimming.

## 2. Constraints and standing rules

- **No pass merge.** Two-pass decomposition stays. (User decision, 2026-11-14; backed by the recorded one-call experiment: 28/36 vs 36/36 fixture reliability, see [backend/evals/luna-one-call-meal-analysis-evaluation.md](../backend/evals/luna-one-call-meal-analysis-evaluation.md).)
- **No live model calls for validation.** Every output-affecting change is validated offline: eval-harness replay against recorded artifacts, or DB-persisted stage artifacts. Never spend money on live eval runs without an explicit request.
- **Eval harness is absent.** `cmd/meal_eval` and `cmd/usda_eval` no longer exist in the tree. Historical baselines (recorded 2026-11-01): meal eval 20/36 runs passing, 89.1% hard assertions; USDA resolver top-1 89/115. Any model-level change requires rebuilding the harness first (see L4).
- **Mentorship split (backend/AGENTS.md).** The user writes core logic: DDL, DTOs, pipeline code, cache design decisions. The agent handles mechanical work when asked: instrumentation plumbing, dashboards, eval-harness tooling, docs.
- **No backward compatibility.** Single pre-production deployment state; direct single-path code, no fallback shims.
- **Single VM, no Redis deployed.** Any "cache" defaults to process-local unless a concrete reason forces otherwise.
- **Migrations run on every boot, unversioned.** `MigrateCalorify` globs `migrations/calorify/*.sql`, sorts the paths lexicographically, and executes each file in order (`internal/database/database.go:42-79`). There is no version table, so every file re-runs on every startup and each must stay idempotent (`CREATE TABLE IF NOT EXISTS`, guarded `ALTER`s). New DDL can be appended to `000001_create_user_profile.sql` or added as a new numbered file; file count is not the constraint, re-execution is. A versioned runner (golang-migrate) is a deliberate non-goal for now.
- **Pipeline timeout**: the whole background pipeline runs under a 45 s context (`service.go` runPipeline). Cuts here reduce timeout pressure for free.

## 3. Phase 0 - Per-call measurement (agreed design)

Goal: know, per call, where the seconds go (prompt tokens vs cached tokens vs completion tokens, and wall duration). Nothing downstream can be decided honestly without this.

### 3.1 `llm_call` table (generic, LLM calls only)

Settled decisions:

- Generic table; any future LLM call site (summaries, clarification LLM work) writes here too.
- LLM calls only. Ollama embed and USDA search timings stay where they are (OTel spans, `*_at` columns); hydration is known-cheap.
- `analysis_id` FK to `meal_analysis`.
- Per-call timestamp column included, even though stage `*_at` timestamps overlap. Recording twice is accepted.
- Blocking insert right after each call (agreed: ~1 ms, not worth async complexity; also avoids context-lifetime questions).

Column spec (the user writes the DDL; this is the agreed shape):

| Column | Purpose |
|---|---|
| `id` | PK |
| `analysis_id` | FK -> `meal_analysis(id)` |
| `stage` | e.g. `PASS_1`, `PASS_2` (extendable enum) |
| `model` | model string actually used |
| `prompt_tokens` | from `res.Usage.PromptTokens` |
| `cached_tokens` | from `res.Usage.PromptTokensDetails.CachedTokens` |
| `completion_tokens` | from `res.Usage.CompletionTokens` |
| `duration_ms` | wall time measured around the call |
| `created_at` | per-call timestamp |
| `error` | NULL on success; error text on failure |

### 3.2 Instrumentation at call sites

- `decomposeComponents` and `decomposeIngredients` capture `res.Usage.*` and a wall-clock duration, then insert the row before returning.
- The usage block is always present on a completed call; failed calls still record `error` + duration.
- TTFT (time-to-first-token) is not measurable without streaming. Optional later refinement: enable streaming purely to split TTFT from decode. Not in scope for Phase 0.

### 3.3 Dashboard surfacing

- `internal/dashboard` analysis-history view gains per-call tokens + duration in the session detail (mechanical work, agent-owned).
- The existing avg-step-profile panel (source of the 10.96 s numbers) continues as the top-level KPI.

### 3.4 Phase 0 acceptance

- Table created via startup migration on next deploy; `go vet` / `go test` / `go build` clean.
- After ~1 day of prod traffic, each completed analysis has 2 `llm_call` rows and the dashboard shows them.
- Prompts/DDL live in one place; no duplicate tracking beyond the agreed timestamp overlap.

## 4. Phase 1 - Data readout and decision tree

Read the accumulated `llm_call` rows and branch:

| Observation | Likely cause | Lever |
|---|---|---|
| Pass 2 `completion_tokens` high (thousands) | decode time dominates pass 2 | L5 output trim, L3 cache (skip decode entirely on hits) |
| `cached_tokens` = 0 on either call | static system prompt not hitting OpenAI prompt cache (too short, or prefix varies) | L2 prompt-caching fix |
| Pass 1 duration >> pass 2 despite similar tokens | image prefill cost | L1 image compression (already in progress) |
| Both calls have low tokens but multi-second duration | reasoning/model latency floor | L4 model split (pass 2 first) |
| High `prompt_tokens` on pass 2 | pass-1 JSON serialized wholesale as input | trim pass-2 input to fields pass 2 actually uses |

Estimating decode share without TTFT: `completion_tokens / duration` gives effective tokens/sec; comparing that rate against the model's known decode speed tells us how much of the call is fixed overhead (TTFT + reasoning) vs decode.

## 5. Phase 2 - Levers

Ordered by expected impact-to-risk ratio, pending Phase 1 data. Each lever states its validation path; none ships without prod re-measurement against the KPI.

### L1. Image compression and size cap (user-owned, in progress)

- User compresses and caps the image size before it reaches the backend. Vision prefill cost scales with image tokens; 500 KiB webp is far more than the model needs.
- Expected effect: cuts a chunk of pass 1's 5.66 s; magnitude visible in Phase 0 data (pass-1 duration vs pass-2 as the before/after control).
- Validation: KPI re-measure; pass-2 row as control.

### L2. Prompt-caching fix (measurement-driven, likely small)

- If `cached_tokens` is 0: find why (system prompt under the ~1024-token cache threshold, or dynamic content ahead of the static prefix) and fix ordering so the static prompt + schema hit the cache.
- Expected effect: reduces TTFT on pass 2 (its system prompt + schema are static consts). Pass 1's image content will never cache; only its static prefix can.
- Validation: `cached_tokens > 0` on pass 2 rows; duration delta.

### L3. Pass-2 recipe cache

Intent: skip the pass-2 LLM call entirely for repeat meals. Saves its full 4.84 s on hits and the cost of the call.

Design questions that must be settled before any code (user decisions):

1. **Key.** Pass 1 output is nondeterministic; the same photo can produce slightly different components run to run. The key must be a normalized component set (canonical names, sorted; portions rounded or excluded?) plus context (locale, country). Exact normalization rule is a user decision; it determines the hit rate.
2. **Hit rate.** Before building, measure re-analysis frequency from `meal_analysis` rows (same user, similar component sets). If repeats are rare, the lever is dead — decide from data, not hope.
3. **Storage.** Process-local, version-keyed map (key includes prompt hash + model version + schema hash so prompt edits invalidate automatically) vs Redis/DB. Default: process-local; the VM has no Redis and one backend process. A DB table is the fallback if persistence across restarts matters.
4. **Staleness hazard (known from the 2026-11-06 review).** Pass-2 output is not a pure function of components: cooking fats are allocated per cooked dish, and preparation context matters. A cache hit can be subtly different from a fresh call. Accepted-risk decision: is that tolerable? (Earlier review leaned no; the question deserves an explicit yes/no before building.)
5. **Invalidation.** Version key (prompt hash + model + schema hash) handles prompt changes. Nothing else should need invalidation if the key includes context.

Expected effect: pass-2 latency x (1 - hit rate). At a 30% hit rate, average e2e drops ~1.5 s.
Validation: hit/miss counter per analysis in the dashboard; eval-replay spot checks on cached outputs.

### L4. Pass-2 model split (prerequisite: eval harness rebuild)

- Thesis: pass 1 is the accuracy-critical vision+reasoning call; pass 2 is schema-constrained JSON extraction. A smaller/faster model may hold pass-2 quality while cutting its 4.84 s substantially.
- The user's current position: cheaper models degrade accuracy. That claim is untested for pass 2 specifically; the eval harness exists to test exactly this.
- **Prerequisite: rebuild `cmd/meal_eval`** (offline replay against recorded pass-1 inputs from `meal_analysis.decomposed_component`; no live calls). Historical baseline to beat: 89.1% hard assertions. Harness rebuild is mechanical tooling (agent-owned, on request).
- Decision gate: only switch if the eval shows no meaningful regression. If it regresses, the lever is closed and we say so.

### L5. Output-token trim (data-driven)

- If Phase 1 shows pass-2 decode volume dominating: shrink generated content without dropping client-needed fields — e.g. shorter enum/string vocabulary, tighter max-length rules in the schema descriptions, fewer prose fields. Schema redesign is user-owned; schema conventions live in the struct-tag descriptions (see `backend/docs/` conventions: semantics in schema descriptions, direction in prompts).
- Expected effect: decode time scales roughly linearly with completion tokens; halving tokens roughly halves decode.

### Deferred (explicit non-goals for now)

- Streaming pass 2 into USDA hydration (overlaps only the 0.46 s hydration; complexity not justified).
- Redis or any new cache infrastructure.
- Versioned migration runner (see constraints).
- Global USDA concurrency limiter (per-analysis bound exists; revisit under burst-load evidence).

## 6. Sequencing

| Milestone | Contents | Done when |
|---|---|---|
| M0 | `llm_call` DDL + `SaveLlmCall` + call-site capture (user) ; dashboard columns (agent) | Deployed; prod rows accumulating |
| M1 | L1 image compression lands (user) | Prod KPI shows pass-1 drop |
| M2 | Readout: run the decision tree on accumulated rows | Levers picked with evidence |
| M3 | Chosen levers (subset of L2-L5) implemented and validated offline | Eval replay clean; hit-rate counters if L3 |
| M4 | Prod re-measure | 7d avg e2e < 10 s; assess distance to 5 s and whether remaining levers are worth it |

M1 can proceed in parallel with M0 since it needs no instrumentation to start, only to verify.

## 7. Verification loop (applies to every lever)

1. Offline validation first: eval-harness replay against recorded artifacts, or DB-artifact inspection. No live model calls.
2. Focused checks: `go vet ./...`, `go test ./...`, `go build ./...` (GOCACHE redirected to /tmp).
3. Deploy; watch the KPI panel and `llm_call` rows for at least a day of traffic.
4. Confirm untouched behavior: pass-1/pass-2 stage persistence and the polling endpoint statuses must remain intact; any output-shape change must be checked against both storage shapes (encoding/json stage columns and protojson final response).

## 8. Risk register

| Risk | Mitigation |
|---|---|
| Recipe cache serves subtly wrong pass-2 output (fat allocation, prep context) | Explicit user decision on staleness before building L3; spot-check eval replay on cache hits |
| Smaller pass-2 model degrades extraction quality | Eval harness gate before any switch; lever closed on regression |
| Prompt-cache fix breaks structured outputs | Schema/prompt untouched; only message ordering changes; schema test suite |
| Measurement table grows unbounded | 2 rows per analysis; revisit only if storage is ever observed as a problem |
| 45 s pipeline timeout masks real duration on failures | `error` + duration still recorded on failed calls; timeout untouched by this plan |
