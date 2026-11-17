# Calorify Backend (Go)

High-performance, idiomatic Go API service for user health tracking, USDA-grounded nutritional analysis, vector similarity search, and AI coaching summaries.

## Architecture

- **Go 1.27+**: High-throughput REST API server structured around Google Protocol Buffers definitions.
- **PostgreSQL (`calorify`)**: Primary operational database storing users, health data, meal records, and meal analysis state.
- **PostgreSQL (`usda` with pgvector)**: Materialized USDA FoodData Central reference database with 768-dimensional vector embeddings (`embeddinggemma-2`) and HNSW index for sub-millisecond semantic search.
- **Ollama (`embeddinggemma-2`)**: Local/remote high-throughput dense text embeddings for USDA food items and ingredient queries.
- **OpenAI Structured Outputs**: Powers multi-pass meal component & ingredient decomposition (`internal/analysis/`).
- **OpenTelemetry**: Native distributed tracing via OTLP (Prometheus metrics are planned, see `TODO.md`).

## Key Subsystems

- `cmd/server/`: HTTP API server entrypoint.
- `cmd/usda/`: CLI that builds and maintains the USDA database (`status`, `setup`, `migrate`, `ingest`, `embed`).
- `internal/api/`: Request routing and handlers for users, health data, meals, and meal analysis intake.
- `internal/analysis/`: Two-pass LLM meal decomposition, pgvector similarity lookup, macro hydration, and asynchronous analysis pipeline.
- `internal/telemetry/`: OpenTelemetry initialization and tracing spans.
- `migrations/`: Versioned SQL migrations for both application (`migrations/calorify`) and USDA databases (`migrations/usda`).
- `evals/`: Ground-truth datasets (`meal-analysis.cases.json`, `usda-resolver.cases.json`) and benchmark evaluation specifications.

## Quickstart

### 1. Start Infrastructure
```bash
docker compose up -d
```

Host ports: calorify DB `5434`, USDA DB `5433`, Ollama `11435`.

### 2. Run Database Migrations
Apply the schema to the application database (the USDA schema is applied by `make usda-setup` in the next step):
```bash
# Apply calorify schema
psql -h localhost -p 5434 -U user -d calorify_db_dev -f migrations/calorify/000001_create_user_profile.sql
```

### 3. USDA Ingestion & Embeddings

Put the USDA zip archives in `raw_data/`, pull the embedding model once, then run one command:

```bash
docker exec ollama ollama pull embeddinggemma-2
make usda-setup
```

It creates the tables and indexes, loads the archives, applies data corrections and embeds non-branded foods. It is safe to re-run and never deletes anything. `make usda-status` shows the current state. Commands, flags and common tasks are in [`docs/usda-database.md`](docs/usda-database.md).

### 4. Run the API Server
```bash
go run cmd/server/main.go
```

## Documentation

- [`docs/README.md`](docs/README.md) — Canonical index for backend documentation.
- [`docs/DEPLOYMENT.md`](docs/DEPLOYMENT.md) — Production VM architecture, Docker Compose topology, and deployment runbook.
- [`docs/usda-database.md`](docs/usda-database.md) — Building and maintaining the USDA reference database with `cmd/usda`: commands, flags, safety rules, data corrections.
- [`docs/meal-analysis-pipeline.md`](docs/meal-analysis-pipeline.md) — Two-pass LLM decomposition, USDA pgvector matching, and analysis event lifecycle.
- [`docs/meal-analysis-enums.md`](docs/meal-analysis-enums.md) — Canonical enum schemas, preparation methods, and variation types.
- [`docs/observability.md`](docs/observability.md) — OpenTelemetry tracing, planned Prometheus metrics, and operator inspection.
- [`evals/README.md`](evals/README.md) — LLM pass evaluation and USDA retrieval benchmark harness.
- [`TODO.md`](TODO.md) — Active roadmap, technical debt, and feature backlog.
