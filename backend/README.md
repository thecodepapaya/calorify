# Calorify Backend (Go)

High-performance, idiomatic Go API service for user health tracking, USDA-grounded nutritional analysis, vector similarity search, and AI coaching summaries.

## Architecture

- **Go 1.23+**: High-throughput REST API server structured around Google Protocol Buffers definitions.
- **PostgreSQL (`calorify`)**: Primary operational database storing users, health data, meal records, and meal analysis state.
- **PostgreSQL (`usda` with pgvector)**: Materialized USDA FoodData Central reference database with 768-dimensional vector embeddings (`embeddinggemma-2`) and HNSW index for sub-millisecond semantic search.
- **Ollama (`embeddinggemma-2`)**: Local/remote high-throughput dense text embeddings for USDA food items and ingredient queries.
- **OpenAI Structured Outputs**: Powers multi-pass meal component & ingredient decomposition (`internal/analysis/`).
- **OpenTelemetry & Prometheus**: Native distributed tracing via OTLP and operational latency/throughput metrics.

## Key Subsystems

- `cmd/server/`: HTTP API server entrypoint.
- `cmd/usda/`: Ingestion, vector embedding generation, and maintenance CLI for USDA datasets.
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
Apply schemas to application database:
```bash
# Apply calorify schema
psql -h localhost -p 5434 -U user -d calorify_db_dev -f migrations/calorify/000001_create_user_profile.sql

# Apply USDA schema with pgvector
psql -h localhost -p 5433 -U user -d usda_db -f migrations/usda/000001_create_usda_tables.sql
```

### 3. USDA Ingestion & Embeddings
```bash
# Ingest raw USDA CSV archives
go run cmd/usda/main.go -ingest -data_dir=./usda_data_raw

# Generate dense vector embeddings using Ollama
go run cmd/usda/main.go -embed-all -ollama_url=http://localhost:11435
```

### 4. Run the API Server
```bash
go run cmd/server/main.go
```

## Documentation

- [`docs/README.md`](docs/README.md) — Canonical index for backend documentation.
- [`docs/DEPLOYMENT.md`](docs/DEPLOYMENT.md) — Production VM architecture, Docker Compose topology, and deployment runbook.
- [`docs/meal-analysis-pipeline.md`](docs/meal-analysis-pipeline.md) — Two-pass LLM decomposition, USDA pgvector matching, and analysis event lifecycle.
- [`docs/meal-analysis-enums.md`](docs/meal-analysis-enums.md) — Canonical enum schemas, preparation methods, and variation types.
- [`docs/observability.md`](docs/observability.md) — Prometheus metrics, OpenTelemetry tracing, and operator inspection.
- [`evals/README.md`](evals/README.md) — LLM pass evaluation and USDA retrieval benchmark harness.
- [`TODO.md`](TODO.md) — Active roadmap, technical debt, and feature backlog.
