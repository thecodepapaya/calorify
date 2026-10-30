# Backend Go Documentation

Index of backend design notes, deployment runbooks, API contracts, evaluation datasets, and operational guides for `backend`.

## Documentation Index

- [Deployment & Topology](DEPLOYMENT.md) — Production/staging VM configuration, Docker Compose topology, release flow, and rollback procedures.
- [Meal-Analysis Pipeline](meal-analysis-pipeline.md) — Two-pass LLM decomposition, vector embedding retrieval, clarification handling, and asynchronous job lifecycle.
- [Meal-Analysis Enum Reference](meal-analysis-enums.md) — Canonical compact model enums, preparation methods, and deterministic codes.
- [Observability & Telemetry](observability.md) — OpenTelemetry distributed tracing, Prometheus performance metrics, and analysis session inspection.
- [Evals & Benchmarks](../evals/README.md) — LLM decomposition test cases, USDA resolver accuracy benchmarks, and evaluation harnesses.
- [Roadmap & Feature Status](../TODO.md) — Active tracking of ported features, technical debt, and implementation backlog.

For cross-component system design, refer to [`docs/plans/`](../../docs/plans/).

