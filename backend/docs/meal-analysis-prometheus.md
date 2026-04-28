# Meal analysis performance (Prometheus / Grafana)

The backend exposes Prometheus metrics on `GET /metrics` (see [`src/index.ts`](../src/index.ts)).

## Histogram: `meal_analysis_trace_step_seconds`

Labeled by `category` (`llm`, `usda`, `db`, `pipeline`) and `name` (e.g. `decompose_text`, `resolve_ingredients`, `persist_session_snapshot`, `enrich_presentation`). Each observed value is one internal step duration in seconds.

### Example: p95 decomposition (text)

```promql
histogram_quantile(
  0.95,
  sum by (le, name) (
    rate(meal_analysis_trace_step_seconds_bucket{name="decompose_text"}[5m])
  )
)
```

### Example: p95 ingredient resolution (parallel USDA + fallback)

```promql
histogram_quantile(
  0.95,
  sum by (le) (
    rate(meal_analysis_trace_step_seconds_bucket{name="resolve_ingredients"}[5m])
  )
)
```

### Example: total DB persist time per step name

```promql
sum by (name) (
  rate(meal_analysis_trace_step_seconds_sum{category="db"}[5m])
)
/ sum by (name) (
  rate(meal_analysis_trace_step_seconds_count{category="db"}[5m])
)
```

## Existing AI metrics

Upstream OpenAI/Gemini calls also increment `ai_requests_total` and `ai_request_duration_seconds` when wrapped with `instrumentAiCall` elsewhere; meal analysis LLM rounds inside `nutritionEngineV2` are primarily reflected in `meal_analysis_trace_step_seconds` for decomposition, fallback macros, and presentation.

## Mobile / client

The app logs `mealAnalysisV2Completed` to Firebase Analytics with `duration_ms` and `source` (`image` / `text`) for funnel-style dashboards in the Firebase console.
