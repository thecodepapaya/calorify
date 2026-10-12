# Calorify Backend

Fastify and TypeScript API for authenticated nutrition analysis, USDA-grounded macro calculations, AI summaries, and operational observability.

## Architecture

- **PostgreSQL**: Stores application data, analysis sessions, and feedback. A separate shared database holds imported USDA reference data.
- **Firebase Admin**: Verifies client authentication and token identity.
- **OpenRouter / OpenAI**: Powers the two-pass structured meal decomposition and daily summaries.
- **USDA Grounding**: Pure deterministic arithmetic scales verified reference nutrients; model-fallback nutrition is explicitly flagged.
- **Observability**: Prometheus metrics, Loki, and Grafana.

### Service Modules (`src/services/`)

- `meal-analysis/` — Session management, provider coordination, and presentation enrichment.
- `meal-analysis-v3/` — LangGraph `StateGraph` pipeline: component & ingredient interpretation, USDA resolution, scenario calculation, and question planning.
- `usda/` — Reference data import, maintenance, and multi-tier ingredient ranking.
- `summaries/` — Daily nutritional statistics and localized AI prose generation.
- `infrastructure/` — Database pools, storage (Oracle Object Storage), WebP validation, and metrics.

## Setup & Local Development

1. **Install dependencies and configure environment**:
   ```bash
   npm ci
   cp env.example .env
   ```
   *Fill in `.env` with local database URLs, provider API keys, and bucket URLs.*

2. **Start local databases** (Application on `:5433`, read-only USDA on `:5434`):
   ```bash
   docker compose -f docker-compose.yml -f docker-compose.local.yml \
     --profile staging up -d --wait db-staging db-usda
   ```

3. **Bootstrap USDA reference data** (first run only):
   ```bash
   docker build -t calorify-backend-local:latest .
   docker compose -f docker-compose.yml -f docker-compose.local.yml \
     --profile maintenance run --rm usda-maintenance
   ```

4. **Start the API service**:
   ```bash
   npm run dev
   ```

## Key Commands

```bash
npm run dev              # Start development server with hot-reload
npm run build            # Compile TypeScript to dist/
npm start                # Run compiled production server
npm run type-check       # Verify TypeScript types
npm run lint             # Run ESLint checks

# Testing
npm test                 # Run tests via Node native test runner and tsx
npm run test:coverage    # Enforce 80% line/stmt and 70% branch coverage

# Meal-Analysis & USDA CLIs
npm run meal-analysis:local                          # Interactive guided meal analysis
npm run meal-analysis -- --text "dal and rice"      # Headless text analysis
npm run meal-analysis:eval -- --model openai/gpt-5.6-luna  # Evaluate LLM passes
npm run usda:resolver-eval                           # Evaluate USDA retrieval baseline
npm run usda:lookup -- --query "rolled oats"        # Inspect USDA resolver matching
```

## Testing Conventions

All tests live under `tests/` mirroring `src/` (e.g. `src/services/usda/lookup.ts` -> `tests/services/usda/lookup.test.ts`).
- Production directories must never contain test files.
- Run `npm test` to execute all tests serially.
- Enforce code quality with `npm run test:coverage` and `npm run lint`.

## External Integrations

- **V3 Meal Analysis API**: Authenticated NDJSON stream supporting progressive UI stages, atomic clarification questions, and deterministic replays. See [Meal-Analysis V3 API Guide](docs/meal-analysis-v3-api.md).
- **USDA Reference Data**: Read-only connection to materialized USDA FoodData Central records. Migrations and imports are isolated to maintenance containers. See [Nutrition Resolver Retrieval](../docs/plans/nutrition-resolver-retrieval.md).
- **Daily AI Summaries**: Non-blocking client catch-up calling `POST /api/v1/food/ai-summary/generate`, backed by deterministic stats and idempotent row locks. See [Daily AI Summaries](../docs/ai-summary.md).
- **Meal Image Uploads**: Authenticated WebP upload to private object storage returning an opaque image ID. See [Meal Image Uploads](../docs/meal-image-uploads.md).

## Configuration & Security Rules

- Never commit `.env`, credentials, service account keys, or signed bucket URLs.
- Set `DEBUG=false` in production.
- Request and response bodies are excluded from application logs to protect private dietary data.
- Refer to [`DEPLOYMENT.md`](DEPLOYMENT.md) for production VM configurations, deployment workflows, and rollback procedures.

## Observability & Diagnostics

- `GET /health` — Process liveness.
- `GET /ready` — Readiness (requires reachable application and USDA databases).
- `GET /metrics` — Prometheus telemetry. See [Meal-Analysis Prometheus Metrics](docs/meal-analysis-prometheus.md).
- `GET /analysis-history` — Protected operator inspector for stored sessions. See [Analysis History](docs/analysis-history.md).
