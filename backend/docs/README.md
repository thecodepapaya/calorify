# Backend documentation

- [USDA lookup CLI](usda-lookup-cli.md) — inspect selected and partial local
  database matches through the production V3 resolver without modifying data.
- [Meal-analysis V3 API](meal-analysis-v3-api.md) — authenticated HTTP routes,
  atomic question bundles, terminal events, and durable session behavior.
- [Meal-analysis V3 hypothesis CLI](meal-analysis-cli.md) — observable two-pass
  text and image interpretation, derived scenarios, active local USDA grounding,
  per-ingredient generic/branded/ambiguous retrieval routing, bounded questions,
  five-macro ranges, and terminal outcomes.
- [Meal-analysis enum reference](meal-analysis-enums.md) — canonical compact
  model and deterministic enum values, including preparation methods.
- [Meal-analysis model eval](../evals/README.md) — exact-model evaluation of the
  two decomposition passes and their semantic bounds.
- [Meal-analysis Prometheus metrics](meal-analysis-prometheus.md) — metric
  names and example Grafana queries.

The approved cross-component rewrite is in the
[meal-analysis backend rewrite plan](../../docs/plans/meal-analysis-reliability.md).
This directory holds backend-specific implementation and operational evidence;
the repository-level docs index links to all other documentation.
