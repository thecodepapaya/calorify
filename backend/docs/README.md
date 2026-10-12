# Backend Documentation

Index of backend design notes, CLI guides, API contracts, and operational documentation.

## Documentation Index

- [Meal-analysis V3 API](meal-analysis-v3-api.md) — Authenticated HTTP routes, NDJSON streaming events, question bundles, and durable session lifecycle.
- [Meal-analysis V3 CLI](meal-analysis-cli.md) — Observable developer tool for text and image analysis, scenario calculation, and question planning.
- [USDA Lookup CLI](usda-lookup-cli.md) — Tool to inspect ingredient matching through the V3 USDA resolver against the local database.
- [Meal-analysis Model & Resolver Evals](../evals/README.md) — LLM pass evaluations and USDA resolver hit-rate benchmark runner.
- [Meal-analysis Enum Reference](meal-analysis-enums.md) — Canonical compact model enums, preparation methods, and deterministic codes.
- [Meal-analysis History](analysis-history.md) — Protected operator inspector for stored V3 sessions and results.
- [Prometheus Metrics](meal-analysis-prometheus.md) — Provider telemetry, stage metrics, and Grafana queries.

For cross-component system architecture, see the [Meal-Analysis V3 Reliability Plan](../../docs/plans/meal-analysis-reliability.md). For all project documentation, see the [Documentation Index](../../docs/README.md).
