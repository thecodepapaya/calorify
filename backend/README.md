# Calorify Backend

Fastify and TypeScript API for authenticated nutrition analysis, USDA-grounded macro calculation, user data, summaries, and operational metrics.

## Architecture

- PostgreSQL stores application data, analysis sessions, feedback, and imported USDA rows.
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

Populate `.env` with local-only values. At minimum, a complete environment normally includes `DATABASE_URL`, the relevant AI provider keys, and `ORACLE_BUCKET_DOWNLOAD_URL`. Firebase authentication requires an ignored service-account JSON and `FIREBASE_SERVICE_ACCOUNT_PATH`.

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

npm run calories:eval -- --base-url http://127.0.0.1:8000
npm run user:inspect -- --user-id FIREBASE_UID
npm run usda:bootstrap
npm run usda:refresh
```

`calories:eval` exercises the deployed HTTP streaming flow, follows controlled clarification choices, and checks calorie ranges, semantic ingredient coverage, completion, stability, and latency. Add `--verbose` for per-case pipeline paths or `--output report.json` to retain a complete artifact. Dataset cases, thresholds, and detailed usage live in `evals/`.

`user:inspect` is a read-only, user-scoped diagnostic report. It shows the profile and locale, the same three-day stats returned with the AI summary, the exact next CSV input used by the summary job, stored summary history, matching batch statuses/errors, recent meal-analysis results, logged values, and feedback. Add `--json` for decomposition, uncertainty, clarification, and complete result objects, or `--limit 25` to expand each history section. The tool deliberately excludes tokens, uploaded-image URLs, and raw request payloads.

## Model routing

Meal analysis attempts:

1. `OPENROUTER_MEAL_MODEL` via OpenRouter (`openai/gpt-4.1-nano` by default).
2. `OPENROUTER_FREE_MODEL` via OpenRouter (`openrouter/free` by default).
3. `OPENAI_MEAL_ANALYSIS_MODEL` via direct OpenAI.

Network errors, rate limits, quota exhaustion, malformed JSON, and schema-invalid responses all advance to the next provider. AI summaries use direct OpenAI separately.

## USDA grounding

USDA FoodData Central CSV data is imported into PostgreSQL. Lookup combines semantic aliases, exact normalized names, and indexed trigram candidates while preserving preparation state such as raw, cooked, or dry. Calories and macros are scaled from the selected per-100-g reference row.

The importer accepts only the USDA `Energy` nutrient expressed in kcal. A read-boundary guard repairs legacy reference rows that were previously imported from kilojoules.

The API reports ready only when PostgreSQL is reachable and one active USDA dataset has been fully materialized. A new deployment with no usable dataset therefore remains out of load-balancer rotation until bootstrap completes; an atomic refresh keeps the previous active dataset usable until the replacement is complete.

## Configuration

`env.example` documents all supported values. Important rules:

- Never commit `.env`, `production.env`, `staging.env`, service accounts, signing keys, or pre-authenticated URLs.
- Keep `POSTGRES_PROD_PASSWORD` and `POSTGRES_STAGING_PASSWORD` consistent with their environment-specific `DATABASE_URL` values.
- `DEBUG` must be `false` in production.
- `ORACLE_BUCKET_DOWNLOAD_URL` is a bearer credential and is required in production.
- Request and response bodies are never written to application logs because payloads contain health data.
- After deploying the legacy image-URL scrub migration, rotate the Oracle pre-authenticated request; application migrations cannot remove the old credential from existing backups or archived WAL.

## Docker and deployment

```bash
docker compose --profile staging up -d --build
docker compose --profile production up -d --build
```

Local Compose builds remain available for development and infrastructure
rehearsal. Staging and production releases use the same CI-built production
image: pushes to `main` publish `latest` plus a commit-specific tag to GHCR and
automatically deploy `latest` to staging. Production is a manual deployment of
the selected commit-specific tag. The VM does not pull source code; Actions copy
only the small deployment files before pulling the image.

See [`DEPLOYMENT.md`](DEPLOYMENT.md) for GitHub environment secrets, one-time VM
setup, release steps, and rollback constraints.

Required GitHub deployment secrets and VM prerequisites are listed in
[`DEPLOYMENT.md`](DEPLOYMENT.md). Runtime application secrets remain on the host
in ignored env files.

## Observability

- `GET /health` — process liveness only; it does not check dependencies.
- `GET /ready` — readiness; requires PostgreSQL and an active, materialized USDA dataset.
- `GET /metrics` — Prometheus exposition.
- `docs/meal-analysis-prometheus.md` — meal-analysis metric definitions and queries.
- `npm run calories:eval -- --verbose` — deployed API regression and stability diagnostics.
- `npm run user:inspect -- --user-id FIREBASE_UID` — user-scoped AI summary, meal-analysis, and feedback diagnostics.
- `loki/README.md` — local Loki/Grafana setup.

## Contracts

Protobuf definitions live in the repository-level `protos/` directory. After changing a contract, regenerate outputs with `scripts/generate_protos.sh`, run backend checks, and run affected Flutter tests.
