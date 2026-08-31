# Meal analysis performance (Prometheus / Grafana)

The backend exposes Prometheus metrics on `GET /metrics` (see [`src/index.ts`](../src/index.ts)).

## Implemented provider metrics

V3 model calls use the shared model client and emit:

- `ai_requests_total{provider,outcome}`; and
- `ai_request_duration_seconds{provider}`.

These metrics cover provider attempts, including interpretation, model
nutrition fallback, and presentation. They do not distinguish the V3 operation
or analysis stage, so they cannot by themselves produce per-stage latency or
end-to-end meal-analysis funnels.

## Reserved histogram: `meal_analysis_trace_step_seconds`

The backend registers `meal_analysis_trace_step_seconds{category,name}`, but
the current V3 path does not call `.observe()` on it. Queries may therefore
return no series or no samples. The examples below are target queries for when
stage instrumentation is wired; they are not evidence that these labels are
currently emitted.

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

## Mobile / client

The app defines `mealAnalysisV3Started`, `mealAnalysisV3Completed`, and
`mealAnalysisV3Failed`, and the debug observability screen documents intended
`duration_ms` and `source` fields. The production V3 flow does not currently
log those events. Firebase meal-analysis funnel dashboards are therefore a
future instrumentation feature.

## Required wiring

When implementing stage and client metrics:

- reduce stage observations to bounded operation names rather than raw input or
  output;
- never label a metric with analysis ID, user ID, meal text, ingredient names,
  image ID, provider response, or exception message;
- record terminal outcome and source with closed low-cardinality values;
- test that one analysis with clarification does not double-count a completion;
  and
- update this document only after local metric scraping or Firebase debug
  evidence confirms that samples are emitted.
