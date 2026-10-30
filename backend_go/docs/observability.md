# Observability, Metrics & Telemetry

`backend_go` incorporates native OpenTelemetry tracing and Prometheus metrics to deliver complete operational visibility into request latencies, LLM pipeline stages, and database query performance.

## Distributed Tracing (OpenTelemetry)

Distributed tracing is configured in `internal/telemetry/telemetry.go` using the OpenTelemetry Go SDK and OTLP HTTP exporter.

- **Collector Target**: Configured via `OTEL_EXPORTER_OTLP_ENDPOINT` (e.g. `http://collector:4318/v1/traces`).
- **Instrumented Spans**:
  - `meal_analysis.pipeline`: Root span covering complete background pipeline execution.
  - `meal_analysis.pass1_decompose`: Pass 1 LLM component decomposition.
  - `meal_analysis.pass2_decompose`: Pass 2 LLM ingredient breakdown.
  - `meal_analysis.usda_search`: Dense vector search and macro hydration.
  - `meal_analysis.save_result`: Result persistence to PostgreSQL.

## Prometheus Metrics

Exposed at `GET /metrics` for scraping by Prometheus and visualization in Grafana:

### 1. HTTP Server Metrics
- `http_requests_total{method,path,status}`: Counter of HTTP requests handled.
- `http_request_duration_seconds{method,path}`: Histogram of request latencies.

### 2. External Provider & LLM Metrics
- `llm_requests_total{provider,operation,status}`: Decomposition request counter.
- `llm_request_duration_seconds{provider,operation}`: Latency of external OpenAI calls.

### 3. USDA Vector Database Metrics
- `usda_search_duration_seconds`: Histogram of cosine similarity search query execution times.
- `usda_search_hits_total{outcome}`: Counter tracking retrieval hits vs fallback triggers.

## Analysis Session Inspection

Operators can inspect stored sessions, pipeline outcomes, and error logs directly from the `meal_analysis` database table:

```sql
SELECT analysis_id, user_uid, status, created_at, updated_at
FROM meal_analysis
ORDER BY created_at DESC
LIMIT 20;
```

