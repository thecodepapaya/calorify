# Calorify Backend

Fastify and TypeScript API for authenticated nutrition analysis, USDA-grounded macro calculation, user data, summaries, and operational metrics.

## Architecture

- PostgreSQL stores application data, analysis sessions, and feedback. A separate shared PostgreSQL database stores imported USDA reference rows.
- Firebase Admin verifies client identity.
- OpenRouter is the primary meal-decomposition provider.
- OpenRouter's free router is the first fallback; direct OpenAI is the final fallback.
- Model output is schema-validated before USDA matching and deterministic macro calculation.
- Prometheus metrics, structured logs, Loki, and Grafana provide observability.

## Setup

```bash
npm ci
cp env.example .env
```

Populate `.env` with local-only values. At minimum, a complete environment normally includes `DATABASE_URL`, the relevant AI provider keys, and `ORACLE_BUCKET_DOWNLOAD_URL`. `USDA_DATABASE_URL` selects a separate reference database; it falls back to `DATABASE_URL` for local development. Firebase authentication requires an ignored service-account JSON and `FIREBASE_SERVICE_ACCOUNT_PATH`.

Start PostgreSQL and the API:

```bash
docker compose --profile staging up -d db-staging
npm run dev
```

When the API runs on the host, use `localhost:5433` in `DATABASE_URL`. When it runs inside Compose, use `db-staging:5432`.

## Commands

```bash
npm run dev          # hot reload
npm run type-check
npm run lint
npm test
npm run build
npm start

npm run meal-analysis -- --text "dal and rice"
npm run calories:eval -- --base-url http://127.0.0.1:8000
npm run user:inspect -- --user-id FIREBASE_UID
npm run usda:bootstrap
npm run usda:refresh
```

`meal-analysis` runs the text pipeline through the same application functions as the API, including durable resume, clarification, meal-type selection, and no-food outcomes. Pass `--json` for non-interactive defaults, or omit `--text` for a prompt. See the [local meal-analysis CLI guide](docs/meal-analysis-cli.md) for database and provider setup, arguments, test cases, and replay behavior.

`calories:eval` exercises the deployed HTTP streaming flow, follows controlled clarification choices, and checks calorie ranges, semantic ingredient coverage, completion, stability, and latency. Set `CALORIE_EVAL_AUTH_TOKEN` for authenticated routes. Add `--verbose` for per-case pipeline paths or `--output report.json` to retain a complete artifact. Dataset cases, thresholds, and detailed usage live in `evals/`.

`user:inspect` is a read-only, user-scoped diagnostic report. It shows the profile and locale, the same three-day stats returned with the AI summary, the exact next CSV input used by the summary job, stored summary history, matching batch statuses/errors, recent meal-analysis results, logged values, and feedback. Add `--json` for decomposition, uncertainty, clarification, and complete result objects, or `--limit 25` to expand each history section. The tool deliberately excludes tokens, uploaded-image URLs, and raw request payloads.

## Model routing

Meal analysis attempts:

1. `OPENROUTER_MEAL_MODEL` via OpenRouter (`openai/gpt-4.1-nano` by default).
2. `OPENROUTER_FREE_MODEL` via OpenRouter (`openrouter/free` by default).
3. `OPENAI_MEAL_ANALYSIS_MODEL` via direct OpenAI.

Network errors, rate limits, quota exhaustion, malformed JSON, and schema-invalid responses all advance to the next provider. AI summaries use direct OpenAI separately.

The canonical meal-analysis flow, persistence boundaries, terminal behavior,
and resume rules are documented in
[`docs/meal-analysis-state-machine.md`](docs/meal-analysis-state-machine.md).

## USDA grounding

USDA FoodData Central CSV data is imported into a shared PostgreSQL reference database. Deployed APIs connect with a read-only role; a one-off maintenance container owns migrations and imports. Lookup evaluates the model's ordered canonical identity and aliases with exact normalized names and indexed trigram candidates, then uses separate preparation states when ranking accepted matches. Calories and macros are scaled from the selected per-100-g reference row.

The importer accepts only the USDA `Energy` nutrient expressed in kcal. A read-boundary guard repairs legacy reference rows that were previously imported from kilojoules.

The API reports ready only when its application database and the shared USDA database are reachable and one active USDA dataset has been fully materialized. A missing dataset is restored through the maintenance container; ordinary API startup never imports USDA data. An atomic refresh keeps the previous active dataset usable until the replacement is complete.

## Configuration

`env.example` documents all supported values. Important rules:

- Never commit `.env`, `production.env`, `staging.env`, service accounts, signing keys, or pre-authenticated URLs.
- Keep `POSTGRES_PROD_PASSWORD` and `POSTGRES_STAGING_PASSWORD` consistent with their environment-specific `DATABASE_URL` values.
- Keep the USDA owner and reader passwords in the VM's ignored Compose environment only; API containers receive the reader URL, never the owner URL.
- `DEBUG` must be `false` in production.
- `ORACLE_BUCKET_DOWNLOAD_URL` is a bearer credential and is required in production.
- Request and response bodies are never written to application logs because payloads contain health data.
- After deploying the legacy image-URL scrub migration, rotate the Oracle pre-authenticated request; application migrations cannot remove the old credential from existing backups or archived WAL.

## Deployment and operations

[`DEPLOYMENT.md`](DEPLOYMENT.md) is the single backend runbook. It covers the
GHCR release flow, VM runtime contract, Compose services, staging and production,
the shared USDA database, observability, rollback, and storage maintenance.

## Observability

- `GET /health` — process liveness only; it does not check dependencies.
- `GET /ready` — readiness; requires PostgreSQL and an active, materialized USDA dataset.
- `GET /metrics` — Prometheus exposition.
- `docs/meal-analysis-prometheus.md` — meal-analysis metric definitions and queries.
- `npm run calories:eval -- --verbose` — deployed API regression and stability diagnostics.
- `npm run meal-analysis -- --text "dal and rice"` — local text full-flow pipeline diagnostics.
- `npm run user:inspect -- --user-id FIREBASE_UID` — user-scoped AI summary, meal-analysis, and feedback diagnostics.
- `DEPLOYMENT.md` — Loki/Grafana runtime and troubleshooting commands.
- [`docs/README.md`](docs/README.md) — backend design notes, release evidence,
  metrics, and evaluation references.

## Contracts

Protobuf definitions live in the repository-level `protos/` directory. After changing a contract, regenerate outputs with `scripts/generate_protos.sh`, run backend checks, and run affected Flutter tests.
