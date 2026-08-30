# Calorify Backend

Fastify and TypeScript API for authenticated nutrition analysis, USDA-grounded macro calculation, user data, summaries, and operational metrics.

## Architecture

- PostgreSQL stores application data, analysis sessions, and feedback. A separate shared PostgreSQL database stores imported USDA reference rows.
- Firebase Admin verifies client identity.
- OpenRouter is the sole meal-analysis provider.
- Model output is schema-validated before USDA matching and deterministic macro calculation.
- Prometheus metrics, structured logs, Loki, and Grafana provide observability.

Backend services are grouped by ownership under `src/services/`:

- `meal-analysis/` owns the analysis pipeline, durable state, history, prompts,
  provider coordination, and presentation enrichment.
- `meal-analysis-v3/` owns the isolated recipe-scenario domain, trusted
  nutrition resolver, pure calculation, bounded questions, presentation, and
  ephemeral shared runner used by the hypothesis CLI.
- `nutrition/` owns deterministic quantities, portions, dish templates, and
  local-nutrition pack resolution.
- `usda/` owns reference-data import, bootstrap, lookup, and ranking helpers.
- `summaries/` owns daily AI-summary generation and deterministic statistics.
- `infrastructure/` owns databases, migrations, external clients, storage,
  validation, and metrics.

## Setup

```bash
npm ci
cp env.example .env
```

Populate `.env` with local-only values. A complete local environment includes
separate `DATABASE_URL` and read-only `USDA_DATABASE_URL` values, the relevant
AI provider keys, `ORACLE_BUCKET_UPLOAD_URL`, and
`ORACLE_BUCKET_DOWNLOAD_URL`. Firebase authentication
requires an ignored service-account JSON and `FIREBASE_SERVICE_ACCOUNT_PATH`.

Start the separate application and USDA databases:

```bash
docker compose -f docker-compose.yml -f docker-compose.local.yml \
  --profile staging up -d --wait db-staging db-usda
```

On the first run, build the maintenance image and populate the USDA database
through its owner-only maintenance flow:

```bash
docker build -t calorify-backend-local:latest .
docker compose -f docker-compose.yml -f docker-compose.local.yml \
  --profile maintenance run --rm usda-maintenance
```

Then start the host backend:

```bash
npm run dev
```

For the host backend, `DATABASE_URL` uses `localhost:5433` and
`USDA_DATABASE_URL` uses the read-only USDA role on `localhost:5434`. The
local Compose override only exposes that USDA port to the host; the base
staging and production topology remains unchanged.

In VS Code, start the local dependencies first and then use `Backend: Dev`.
Run the meal-analysis CLI manually from a separate terminal. It needs the
local USDA service, but not the Fastify server or application database.

## Commands

```bash
npm run dev          # hot reload
npm run type-check
npm run lint
npm test
npm run test:coverage
npm run build
npm start

npm run meal-analysis -- --text "dal and rice"
npm run meal-analysis:eval -- --model openai/gpt-5.6-luna
npm run user:inspect -- --user-id FIREBASE_UID
npm run usda:migrate    # schema only; never downloads a USDA archive
npm run usda:bootstrap
npm run usda:refresh
```

## Testing

All backend tests live under `tests/`; production source directories must not
contain test files. The test tree mirrors the complete `src/` path, so
`src/services/usda/lookup.ts` maps directly to
`tests/services/usda/lookup.test.ts`. Keep the same basename when a test owns
one source module.

Tests for specialized contracts add a descriptive suffix while remaining in
the mirrored directory. For example, `store.postgres.test.ts` exercises the
real PostgreSQL store contract and `import.snapshot.test.ts` verifies USDA
snapshot behavior. Cross-module suites use a scope name such as
`routes/integration.test.ts`.

- `npm test` runs every `tests/**/*.test.ts` file serially with Node's native
  test runner and TypeScript support from `tsx`.
- `npm run test:coverage` enforces 80% line, function, and statement coverage
  plus 70% branch coverage over production source.
- `npm run lint` checks both `src/` and `tests/`.
- The PostgreSQL contract test skips unless
  `CALORIFY_POSTGRES_CONTRACT_TEST=true` and `DATABASE_URL` identifies a safe
  test database; the remaining suite is self-contained.

`meal-analysis` runs the isolated V3 hypothesis core for either text or a local
image. It exposes both compact LLM passes and every downstream stage, uses the active local USDA database,
asks only a bounded material question bundle, and never selects silent
defaults. Pass `--json` for NDJSON and `NEEDS_INPUT` behavior. See the
[meal-analysis CLI guide](docs/meal-analysis-cli.md) for setup, arguments,
stages, exit codes, and fixture replay.

`meal-analysis:local` is the guided launcher. It imports USDA only when no
active materialized snapshot exists, prompts for text or image input and
context, and then runs the same observable CLI.

`meal-analysis:eval` evaluates the two compact LLM passes directly, using one
exact OpenRouter model without fallbacks. It currently repeats the single
`4 roti daal` case five times and reports assertion-level pass rates without a
release threshold. USDA, calories, macros, clarification, and presentation are
outside this eval. See the [meal-analysis eval guide](evals/README.md) for
scoring, options, and artifacts.

`user:inspect` is a read-only, user-scoped diagnostic report. It shows the profile and locale, daily summary request/result history, bounded provider failure metadata, recent meal-analysis results, logged values, and feedback. Add `--json` for complete stored snapshots and result objects, or `--limit 25` to expand each history section. The tool deliberately excludes tokens and uploaded-image URLs.

## Model routing

Meal analysis attempts:

1. `OPENROUTER_MEAL_MODEL` via OpenRouter (`openai/gpt-5.6-luna` by default).
   The two-pass hypothesis CLI uses `OPENROUTER_MEAL_V3_MODEL`
   (`openai/gpt-5.6-luna` by default) for this primary attempt.
Network errors, rate limits, quota exhaustion, malformed JSON, and
schema-invalid responses fail the meal-analysis model call. Daily AI summaries
also use only their configured OpenRouter model.

## Daily AI summaries

The phone starts a non-blocking catch-up when the app opens or resumes. It
builds a bounded snapshot from the previous seven completed local calendar
days, applies the sparse-data threshold locally, and calls the authenticated
`POST /api/v1/food/ai-summary/generate` endpoint only when today's local cache
is empty. The endpoint validates the same boundaries, computes deterministic
statistics, and asks OpenRouter only for the prose. A completed row is replayed
for the same Firebase UID and local date without another provider call.

`ai_summaries` is also the retry and concurrency record. Active claims return
`202` with `Retry-After`, failed claims cool down for 15 minutes, stale claims
may be recovered after two minutes, and each UID/date is capped at three
provider attempts. Completion and failure writes include the claimed attempt
number, preventing a stale worker from modifying a newer claim. The phone
honors `Retry-After`; an unavailable Firebase token stops before any request and
does not start its failure cooldown.

The validated request, resolved locale, deterministic statistics, bounded
failure metadata, provider/model, and generated result remain available through
`npm run user:inspect -- --user-id FIREBASE_UID`. General logs and metrics do
not contain the meal snapshot. The complete cross-component workflow is
documented in [Daily AI summaries](../docs/ai-summary.md).

The canonical meal-analysis flow, persistence boundaries, terminal behavior,
and resume rules are documented in
[`docs/meal-analysis-state-machine.md`](docs/meal-analysis-state-machine.md).

## USDA grounding

USDA FoodData Central CSV data is imported into a shared PostgreSQL reference
database. Deployed APIs connect with a read-only role; a one-off maintenance
container owns migrations and imports. Lookup evaluates the model's ordered
canonical identity and aliases with exact normalized names and indexed trigram
candidates, then uses separate preparation states when ranking accepted
matches. Calories and macros are scaled from the selected per-100-g reference
row. New imports also store per-nutrient presence flags. V3 reuses legacy
materialized snapshots; missing fiber is intentionally treated as zero, while
a presence-aware snapshot still rejects missing calories, protein,
carbohydrate, or fat. This can understate fiber when the source omitted it.

The importer accepts only the USDA `Energy` nutrient expressed in kcal. A read-boundary guard repairs legacy reference rows that were previously imported from kilojoules.

The API reports ready only when its application database and the shared USDA database are reachable and one active USDA dataset has been fully materialized. A missing dataset is restored through the maintenance container; ordinary API startup never imports USDA data. An atomic refresh keeps the previous active dataset usable until the replacement is complete.

## Configuration

`env.example` documents all supported values. Important rules:

- Never commit `.env`, `production.env`, `staging.env`, service accounts, signing keys, or pre-authenticated URLs.
- Keep `POSTGRES_PROD_PASSWORD` and `POSTGRES_STAGING_PASSWORD` consistent with their environment-specific `DATABASE_URL` values.
- Keep the USDA owner and reader passwords in the VM's ignored Compose environment only; API containers receive the reader URL, never the owner URL.
- `DEBUG` must be `false` in production.
- `ORACLE_BUCKET_UPLOAD_URL` is a backend-only bearer credential and is required in production.
- `ORACLE_BUCKET_DOWNLOAD_URL` is the far-future, read-only PAR base returned for meal-history images; listing must remain disabled and it is required in production.
- Request and response bodies are never written to application logs because payloads contain health data.
- After deploying the backend upload flow, revoke the legacy app-exposed upload PAR; application migrations cannot remove the old credential from existing backups or archived WAL.

## Deployment and operations

[`DEPLOYMENT.md`](DEPLOYMENT.md) is the single backend runbook. It covers the
GHCR release flow, VM runtime contract, Compose services, staging and production,
the shared USDA database, observability, rollback, and storage maintenance.

## Observability

- `GET /health` — process liveness only; it does not check dependencies.
- `GET /ready` — readiness; requires PostgreSQL and an active, materialized USDA dataset.
- `GET /metrics` — Prometheus exposition.
- `GET /analysis-history` — password-protected visual history of durable meal
  layers, provider attempts, USDA grounding, presentation enrichment, audit
  actions, and final responses; disabled unless `ANALYSIS_HISTORY_PASSWORD` is set.
- `docs/meal-analysis-prometheus.md` — meal-analysis metric definitions and queries.
- `npm run meal-analysis:eval -- --model openai/gpt-5.6-luna` — direct two-pass
  model accuracy and stability diagnostics.
- `npm run meal-analysis -- --text "dal and rice"` — observable local V3
  hypothesis flow for text or image input.
- `npm run user:inspect -- --user-id FIREBASE_UID` — user-scoped AI summary, meal-analysis, and feedback diagnostics.
- `DEPLOYMENT.md` — Loki/Grafana runtime and troubleshooting commands.
- [`docs/README.md`](docs/README.md) — backend design notes, release evidence,
  metrics, and evaluation references.

## Contracts

Protobuf definitions live in the repository-level `protos/` directory. After changing a contract, regenerate outputs with `scripts/generate_protos.sh`, run backend checks, and run affected Flutter tests.
