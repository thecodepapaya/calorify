# Backend Go Documentation

Index of backend design notes, deployment runbooks, API contracts, evaluation datasets, and operational guides for `backend`.

## Documentation Index

- [Deployment & Topology](DEPLOYMENT.md) — Production VM configuration, Docker Compose topology, release flow, and rollback procedures.
- [USDA Database Tool](usda-database.md) — Building and maintaining the USDA reference database with `cmd/usda`: commands, flags, safety rules, data corrections, and running against another database.
- [Meal-Analysis Pipeline](meal-analysis-pipeline.md) — Pass 1, per-component pass 2, USDA vector retrieval, clarification tiering, storage and observability.
- [Meal-Analysis Enum Reference](meal-analysis-enums.md) — Canonical compact model enums, preparation methods, and deterministic codes.
- [Observability & Telemetry](observability.md) — OpenTelemetry distributed tracing, Prometheus performance metrics, and analysis session inspection.
- [Evals & Benchmarks](../evals/README.md) — LLM decomposition test cases, USDA resolver accuracy benchmarks, and evaluation harnesses.
- [Latency Optimization Plan](../../docs/plans/meal-analysis-latency-optimization.md) — Active plan to cut meal-analysis e2e latency below 10s (target ~5s): per-call LLM measurement, decision tree, and levers.
- [Roadmap & Feature Status](../TODO.md) — Active tracking of ported features, technical debt, and implementation backlog.

For cross-component system design, refer to [`docs/plans/`](../../docs/plans/).
