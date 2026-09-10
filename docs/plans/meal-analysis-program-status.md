# Meal-analysis program status

Status: active working tracker — pending work, decisions, and progress for the
V3 meal-analysis program across backend and app.

Last updated: 2026-09-10

This is the operational status document, not a second architecture plan.
Architecture, lifecycle, and long-term roadmap stay in
[meal-analysis-reliability.md](meal-analysis-reliability.md); USDA matching
phases live in [usda-ingredient-hit-rate.md](usda-ingredient-hit-rate.md);
deployment mechanics live in the [backend deployment
runbook](../../backend/DEPLOYMENT.md).

## Current state

- Backend `main` is one commit ahead of `origin/main`: `184ae7c6`
  (deterministic `/answer` via stored interpretation snapshots) is committed
  but not pushed.
- Production runs the image built from `40c4d42b` (deployed 2026-09-08) with
  the direct OpenAI provider pathway active. Deterministic `/answer` and the
  relaxed quantity-question rule are not live until `184ae7c6` deploys.
- App: V3 response persistence is committed as WIP (`1472f167`) and awaits
  review plus a proper commit message.

## Pending work

1. **Deploy `184ae7c6`.** Push to `main`, dispatch the staging publish
   workflow, then the production deploy with the full 40-character SHA. The
   `z20260909a` interpretation-snapshot migration applies automatically at
   backend startup. This activates deterministic `/answer` — the root cause
   of the 2026-09-08 evening `/answer` failures — and the relaxed quantity
   questions.
2. **Fix the Oracle download PAR.** `ORACLE_BUCKET_DOWNLOAD_URL` is malformed
   in both VM env files (a stray path segment), so every image download 404s
   and image analysis fails within milliseconds; zero of four all-time image
   sessions succeeded. Fix: re-copy the PAR from the Oracle console into both
   env files and restart both backends.
3. **Rotate the `/analysis-history` password.** Both VM env files still use
   the public placeholder from the repo.
4. **Finish app V3 response persistence.** Committed as WIP (`1472f167`):
   `v3_result_json` column, `rawJson` capture at parse time, edit
   preservation. Needs review and a real commit message.
5. **Clean paid meal-analysis eval.** Two of twelve cases
   (`indian-masala-dosa-breakfast`, `us-chipotle-fractional-bowl`) have never
   had a clean execution; the direct OpenAI pathway may avoid the upstream
   instability. The `184ae7c6` prompt change (model-inferred
   `INGREDIENT_AMOUNT` variations) is only measurable on the next paid eval.
   Never run live model calls without an explicit request.
6. **Phase 3 retrieval: head-noun reduction.** Designed, not implemented (see
   decisions). The zero-macro spices fallback currently masks the cumin
   near-miss: the real `Spices, cumin seed` row exists but is rejected on
   the request-side `ground` token. The tofu retrieval anomaly stays on hold.
7. **Optional:** give `MealCalculationError` a bounded kind/code in the
   error classifier instead of `unexpected_error`/`ANALYSIS_UNAVAILABLE`.

## Decisions

Durable rulings that constrain future changes:

- `/answer` determinism: persist run-1's interpretation snapshot (resolved
  interpretation, questions, meal-type candidate, generated copy, provider
  attempts) on the `NEEDS_INPUT` pause and replay answers against it with
  zero LLM/USDA calls. No fallback for sessions created before the snapshot
  column existed: `/answer` returns 409 telling the client to analyze again.
- Quantity questions about model-inferred ingredients are allowed when they
  are non-gram (relative Less/Typical/More options) and name the ingredient;
  user-stated ingredients keep gram labels and never get amount questions.
- The app preserves the final V3 server response verbatim in a dedicated
  `v3_result_json` column, separate from `analysis_snapshot_json` — the two
  response schemas must not share a column. `rawJson` is captured at parse
  time so the response is preserved exactly as received.
- Unresolved leaves get LLM-estimated macros with `MODEL_INFERRED`
  provenance; the <2% unresolved gate is a promotion criterion measured on
  the eval corpus, not a runtime mechanism.
- Model nutrition-fallback logging is JSONL (`results.jsonl`) under
  `NUTRITION_FALLBACK_LOG_PATH`, best-effort, zero-estimate responses
  included.
- Provider routing: `LLM_PROVIDER=openrouter|openai` toggles the whole backend
  between OpenRouter and direct OpenAI with full parity; direct model names
  are derived by stripping the `openai/` prefix; a missing key fails fast.
- Retrieval direction: request-side head-noun reduction — a
  `HEAD_NOUN_REDUCED` tier ranked below the parenthetical-variant tiers,
  reducing tokens only when every dropped token is a `FUZZY_QUALIFIER_TERMS`
  descriptor, keeping the 0.3 similarity gate, with adversarial pairs (milk
  vs milk chocolate, ginger vs ginger tea, flour vs almond) as red tests.
  Not yet green-lit for implementation.
- Standing retrieval rulings: no hand-maintained alias maps; no new stop
  words; zero-macro spices rows REPLACE rather than add; parenthetical
  variants rank below all direct tiers; the cumin miss stays honest.
- Terminal failures persist as `failure_data` and `/resume` replays the
  stored error without re-running; `failure_data` is not a `FAILED` outcome.
- App drift schema is squashed to a v1 baseline with wipe-and-rebuild for
  pre-baseline databases (`2ad0df23`); a database already at v1 from
  pre-release days is the known edge.
- Process: the owner commits to the repo himself; commit-only requests are
  never pushed.

## Progress

Recent commits, oldest first:

| Commit | Change |
| --- | --- |
| `5f9003ce` | Resolver hit-rate phases through 2.7 (pushed) |
| `bab9d15f` | Parenthetical-variant tiers gated by variant Jaccard (pushed) |
| `ca7e3e84` | Fuzzy threshold 0.4 to 0.3 (pushed) |
| `95898251` | Terminal failure persistence (pushed) |
| `ed1131d1` | Model nutrition-fallback logging (pushed) |
| `40c4d42b` | Direct OpenAI pathway toggle + pass-2 variation rule (pushed, deployed) |
| `2ad0df23` | App drift schema squash to v1 (user) |
| `2f3f07f5` | App version bump (user) |
| `184ae7c6` | Deterministic `/answer` via interpretation snapshots (local only) |
| `1472f167` | WIP: app V3 response persistence |

- USDA resolver eval trajectory: 70/113 to 86/112 (76.8%) across the
  hit-rate phases.
- Backend: 478 tests passing at `184ae7c6`, type-check and lint clean.
- App: 26 db tests and 201 non-golden tests passing; golden failures are
  pre-existing rendering drift.
- 2026-09-08 outage fully diagnosed: two independent failure modes — the
  malformed download PAR (image path) and non-deterministic question
  re-planning on `/answer` (text path, fixed by `184ae7c6`).

## Verification

- Backend: `cd backend && npm run type-check && npm run lint && npm test`
- App db: `cd app && flutter test test/unit/db/app_database_test.dart`
- App non-golden: `cd app && flutter test test/unit test/widget`
- App analysis: `cd app && flutter analyze --no-pub`
