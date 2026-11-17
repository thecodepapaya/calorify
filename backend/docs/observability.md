# Observability, Metrics & Telemetry

The Go backend has three sources of pipeline visibility: OpenTelemetry traces, the `llm_call` table, and the analysis-history dashboard. Prometheus metrics are not implemented (see `TODO.md` section "Observability, Metrics & Dashboards").

## Distributed Tracing (OpenTelemetry)

Distributed tracing is configured in `internal/telemetry/telemetry.go` using the OpenTelemetry Go SDK and OTLP HTTP exporter (collected by the Phoenix container in `compose.yaml`).

- **Collector Target**: Configured via `OTEL_EXPORTER_OTLP_ENDPOINT` (default `http://localhost:6006`, the Phoenix container).
- **Instrumented Spans** (see `internal/analysis/service.go`):
  - `meal_analysis_pipeline`: root span for the full background pipeline, carrying analysis id, user uid, input text/image attributes.
  - `decompose_components`: Pass 1 LLM component decomposition.
  - `decompose_ingredients`: Pass 2 LLM ingredient decomposition (all per-component calls).
  - `enrich_usda_macro`: batch embedding, USDA vector search, macro hydration.
  - `generate_clarification`: quantity-question generation.
  - `prepare_final_response`: final response persistence.
- Per-stage wall time is also derivable in SQL from the `meal_analysis` `*_at` timestamp columns (`decomposed_component_at`, `decomposed_ingredient_at`, `usda_enriched_at`, `generated_clarification_at`, `final_response_at`).

## Model Calls (`llm_call`)

One row per model call: one `PASS_1` row and one `PASS_2` row per component for a completed analysis. Failed calls are recorded with their error.

| Column | Meaning |
| --- | --- |
| `analysis_id`, `stage`, `component_id` | Which analysis, which pass, and for pass 2 which component (NULL for pass 1) |
| `model`, `response_model` | Model requested, and the model the provider reports having served |
| `reasoning_effort` | Effort sent on the request |
| `prompt_tokens`, `cached_tokens`, `completion_tokens`, `reasoning_tokens` | Usage reported by the provider |
| `duration_ms` | Wall time around the call |
| `finish_reason`, `service_tier` | From the response |
| `error` | NULL on success |

```sql
SELECT stage, component_id, duration_ms, prompt_tokens, completion_tokens, reasoning_tokens, finish_reason, error
FROM llm_call
WHERE analysis_id = '<id>'
ORDER BY created_at;
```

## Prometheus Metrics

Not implemented. The planned endpoint and metrics are tracked in `TODO.md`.

## Analysis Session Inspection

The analysis-history dashboard (`GET /analysis-history`, with JSON at `GET /internal/analysis-history`; both currently public) shows stored sessions, stage outputs, timings, failure reasons, input images, and each analysis's model calls. Its LLM card reports tokens summed per stage and stage wall time, over presented analyses only.

Sessions can also be read from the `meal_analysis` table:

```sql
SELECT id, user_uid, status, created_at, updated_at
FROM meal_analysis
ORDER BY created_at DESC
LIMIT 20;
```
