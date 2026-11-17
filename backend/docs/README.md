# Backend Go Documentation

Index of backend design notes, tooling guides, deployment runbook, and evaluation records for `backend`.

## Documentation Index

- [Deployment & Topology](DEPLOYMENT.md) — Production VM configuration, Docker Compose topology, release flow, and rollback procedures.
- [USDA Database Tool](usda-database.md) — Building and maintaining the USDA reference database with `cmd/usda`: commands, flags, safety rules, data corrections, and running against another database.
- [Meal-Analysis Pipeline](meal-analysis-pipeline.md) — Pass 1, per-component pass 2, USDA vector retrieval, clarification tiering, storage and observability.
- [Meal-Analysis Enum Reference](meal-analysis-enums.md) — Enum values in the model schemas and stored records: portion kinds, origins, preparation methods, statuses.
- [Observability & Telemetry](observability.md) — OpenTelemetry tracing, the `llm_call` table, and the analysis-history dashboard.
- [Evals & Benchmarks](../evals/README.md) — Eval case files and dated evaluation records.
- [Evals Plan](../../docs/plans/meal-analysis-evals.md) — Active plan: independent pass 1, pass 2, USDA and end-to-end evals, and the stage split they need.
- [Latency Optimization Plan](../../docs/plans/meal-analysis-latency-optimization.md) — Latency measurements, levers taken (per-component pass 2, reasoning effort `none`), and remaining levers. Secondary to the evals work.
- [Roadmap & Feature Status](../TODO.md) — Open work, technical debt, and feature backlog.

For cross-component system design, refer to [`docs/plans/`](../../docs/plans/).
