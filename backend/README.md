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

Populate `.env` with local-only values. At minimum, a complete environment normally includes `DATABASE_URL`, `SECRET_KEY`, the relevant AI provider keys, and `ORACLE_BUCKET_DOWNLOAD_URL`. Firebase authentication requires an ignored service-account JSON and `FIREBASE_SERVICE_ACCOUNT_PATH`.

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

npm run analysis:v2:cli -- --text "2 rotis with dal"
npm run eval:calories -- --base-url http://127.0.0.1:8000
npm run usda:bootstrap
npm run usda:refresh
```

The calorie eval executes complete streamed V2 flows, follows default clarification choices, and checks calorie ranges, semantic ingredient coverage, completion, and latency. Dataset cases and thresholds live in `evals/calorie-estimation.cases.json`.

## Model routing

Meal analysis attempts:

1. `OPENROUTER_MEAL_MODEL` via OpenRouter (`openai/gpt-4.1-nano` by default).
2. `OPENROUTER_FREE_MODEL` via OpenRouter (`openrouter/free` by default).
3. `OPENAI_MEAL_ANALYSIS_MODEL` via direct OpenAI.

Network errors, rate limits, quota exhaustion, malformed JSON, and schema-invalid responses all advance to the next provider. AI summaries use direct OpenAI separately.

## USDA grounding

USDA FoodData Central CSV data is imported into PostgreSQL. Lookup combines semantic aliases, exact normalized names, and indexed trigram candidates while preserving preparation state such as raw, cooked, or dry. Calories and macros are scaled from the selected per-100-g reference row.

The importer accepts only the USDA `Energy` nutrient expressed in kcal. A read-boundary guard repairs legacy reference rows that were previously imported from kilojoules.

## Configuration

`env.example` documents all supported values. Important rules:

- Never commit `.env`, `production.env`, `staging.env`, service accounts, signing keys, or pre-authenticated URLs.
- Keep `POSTGRES_PROD_PASSWORD` and `POSTGRES_STAGING_PASSWORD` consistent with their environment-specific `DATABASE_URL` values.
- `DEBUG` must be `false` in production.
- `ORACLE_BUCKET_DOWNLOAD_URL` is a bearer credential and is required in production.
- Request/response body logging should remain disabled in production unless temporarily needed and carefully reviewed.

## Docker and deployment

```bash
docker compose --profile staging up -d --build
docker compose --profile production up -d --build
```

The deployment workflow validates type checking, lint, tests, and an image build before connecting with GitHub environment secrets. `scripts/deploy-production.sh` performs a health-checked replacement and restores the previous backend image if startup fails.

Required GitHub deployment secrets are listed in `.github/workflows/deploy-backend.yml`. Runtime application secrets remain on the host in ignored env files.

## Observability

- `GET /health` — liveness/health response.
- `GET /metrics` — Prometheus exposition.
- `docs/meal-analysis-prometheus.md` — meal-analysis metric definitions and queries.
- `loki/README.md` — local Loki/Grafana setup.

## Contracts

Protobuf definitions live in the repository-level `protos/` directory. After changing a contract, regenerate outputs with `scripts/generate_protos.sh`, run backend checks, and run affected Flutter tests.
