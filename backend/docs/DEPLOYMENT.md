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
| `db-prod` | Production application & user data | `5434` | PostgreSQL volume `postgres_data_prod` |
| `db-usda` | USDA reference database | `5433` | PostgreSQL volume with pgvector |
| `ollama` | Embedding inference engine | `11435` | Runs `embeddinggemma-2` |

## Environment Configuration

Configuration is injected via environment variables:

- `DATABASE_URL`: Application PostgreSQL connection string (`calorify` database).
- `USDA_DATABASE_URL`: Read-only connection string for USDA reference database (`usda` database).
- `OLLAMA_URL`: Endpoint for Ollama embedding engine (defaults to `http://localhost:11435`).
- `OPENAI_API_KEY`: API key for OpenAI structured outputs decomposition.
- `FIREBASE_ADMIN_SDK`: Path to the Firebase Admin SDK JSON (defaults to `firebase-adminsdk.json`; compose mounts it at `/run/secrets/firebase-adminsdk.json`).
- `OTEL_EXPORTER_OTLP_ENDPOINT`: OpenTelemetry OTLP collector target for traces and metrics.

> **Important**: Never commit raw secrets or production `.env` files into source control.

## Deployment prerequisites

The deploy workflow syncs only `compose.yaml` into `$DEPLOY_PATH/backend` on the VM. Place these files in that directory before the first deploy:

- `.env`: production values (start from `backend/production.env`). Compose reads it for `${APP_NAME}`, `${EXTERNAL_PORT}`, `${POSTGRES_DB}`, and the `USDA_POSTGRES_*` interpolation, and as `env_file` for the server and database services.
- `firebase-adminsdk.json`: the file backing the `firebase-adminsdk.json` compose secret.

The deploy user must either reach the Docker socket directly or have passwordless sudo; the deploy action falls back to `sudo -n` when direct access is unavailable.

The `ollama` service needs its embedding model once per VM:

```bash
sudo docker exec ollama ollama pull embeddinggemma-2
```

## Database Migrations

Application and USDA schemas are managed independently:

1. **Application Migrations (`migrations/calorify/`)**: Defines tables for `users`, `health_data`, `meals`, and `meal_analysis`.
2. **USDA Migrations (`migrations/usda/`)**: Defines `usda_foods` with `vector(768)` embedding columns and HNSW indexes (`vector_cosine_ops`).

Migrations are run during container bootstrapping or maintenance jobs using `golang-migrate`.
