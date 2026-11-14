# Observability, Metrics & Telemetry

The Go backend uses OpenTelemetry tracing for pipeline visibility. Prometheus metrics are not yet implemented (see `TODO.md` section "Observability, Metrics & Dashboards"); this document describes what exists today.

## Distributed Tracing (OpenTelemetry)

Distributed tracing is configured in `internal/telemetry/telemetry.go` using the OpenTelemetry Go SDK and OTLP HTTP exporter (collected by the Phoenix container in `compose.yaml`).

- **Collector Target**: Configured via `OTEL_EXPORTER_OTLP_ENDPOINT` (e.g. `http://collector:4318/v1/traces`).
- **Instrumented Spans** (see `internal/analysis/service.go`):
  - `meal_analysis_pipeline`: root span for the full background pipeline, carrying analysis id, user uid, input text/image attributes.
  - `decompose_components`: Pass 1 LLM component decomposition.
  - `decompose_ingredients`: Pass 2 LLM ingredient decomposition.
  - `enrich_usda_macro`: batch embedding, USDA vector search, macro hydration.
  - `prepare_final_response`: final response persistence.
- Per-stage wall time is also derivable in SQL from the `meal_analysis` `*_at` timestamp columns (`decomposed_component_at`, `decomposed_ingredient_at`, `usda_enriched_at`, `generated_clarification_at`, `final_response_at`).

## Prometheus Metrics

Not implemented. The planned endpoint and metric names (HTTP request counters/histograms, LLM call latency, USDA search duration) are tracked in `TODO.md`. The [latency optimization plan](../../docs/plans/meal-analysis-latency-optimization.md) adds per-call LLM token/duration capture as a prerequisite for latency work.

## Analysis Session Inspection

Operators can inspect stored sessions, stage artifacts, timings, and failure reasons via the analysis-history dashboard (`GET /analysis-history` and `GET /internal/analysis-history`, currently public), or directly from the `meal_analysis` table:

```sql
SELECT id, user_uid, status, created_at, updated_at
FROM meal_analysis
ORDER BY created_at DESC
LIMIT 20;
```
