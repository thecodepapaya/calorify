# Backend Go Deployment & Operations

This document defines the production infrastructure topology, container management, environment configurations, and deployment procedures for `backend`.

## Topology

Production runs on an isolated Docker network with a dedicated application database and a USDA reference database:

```text
GitHub Actions / CI ──build──> Container Image (backend)
       │
       └──deploy prod─────────> backend-prod ────> db-prod (calorify)
                                        └─────────> db-usda (pgvector)

USDA Maintenance / Ingestion ────────────────────> db-usda (owner)
```

| Service | Purpose | Host Port | Database / Storage |
| --- | --- | --- | --- |
| `backend-prod` | Production Go API | `8000` | Connects to `db-prod` & `db-usda` |
| `db-prod` | Production application & user data | Internal | PostgreSQL volume `postgres_data_prod` |
| `db-usda` | USDA reference database | `5434` | PostgreSQL volume with pgvector |
| `ollama` | Embedding inference engine | `11434` | Runs `embeddinggemma-2` |

## Environment Configuration

Configuration is injected via environment variables:

- `DATABASE_URL`: Application PostgreSQL connection string (`calorify` database).
- `USDA_DATABASE_URL`: Read-only connection string for USDA reference database (`usda` database).
- `OLLAMA_URL`: Endpoint for Ollama embedding engine (defaults to `http://localhost:11434`).
- `OPENAI_API_KEY`: API key for OpenAI structured outputs decomposition.
- `FIREBASE_PROJECT_ID` & `FIREBASE_CREDENTIALS`: Credentials for Firebase Authentication.
- `OTEL_EXPORTER_OTLP_ENDPOINT`: OpenTelemetry OTLP collector target for traces and metrics.

> **Important**: Never commit raw secrets or production `.env` files into source control.

## Database Migrations

Application and USDA schemas are managed independently:

1. **Application Migrations (`migrations/calorify/`)**: Defines tables for `users`, `health_data`, `meals`, and `meal_analysis`.
2. **USDA Migrations (`migrations/usda/`)**: Defines `usda_foods` with `vector(768)` embedding columns and HNSW indexes (`vector_cosine_ops`).

Migrations are run during container bootstrapping or maintenance jobs using `golang-migrate`.

