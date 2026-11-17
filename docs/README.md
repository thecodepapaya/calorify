# Calorify Documentation

Central index for Calorify system architecture, component documentation, technical plans, and operational runbooks.

## Getting Started

- [Project Overview](../README.md) — Product vision, core pipeline, and repository structure.
- [Phone Application](../app/calorify/README.md) — Android Flutter app, setup, and testing suites.
- [Wear OS Companion](../app/watch/README.md) — Smartwatch app, speech capture, and Data Layer synchronization.
- [Shared Packages](../app/shared_packages/README.md) — Shared domain models, tokens, and utilities.
- [Backend Development](../backend/README.md) — Go API service, USDA database, and local runners.
- [Backend Deployment Runbook](../backend/docs/DEPLOYMENT.md) — Production topology, configuration, prerequisites, and migrations.

## Architecture & Plans

- [Meal-Analysis Evals](plans/meal-analysis-evals.md) — Active plan: independent pass 1, pass 2, USDA and end-to-end evals with direct provider calls, the stage split they need, cases, scoring, cost, and phases (nothing built yet).
- [Meal-Analysis Latency Optimization](plans/meal-analysis-latency-optimization.md) — Latency measurements, levers taken (per-component pass 2, reasoning effort `none`), and remaining levers including the pass-2 recipe table. Secondary to the evals work.
- [Suggested Nutrition Targets](plans/suggested-nutrition-targets.md) — Backend-owned target calculations and client contract (not yet implemented).
- [Considered Features](plans/considered-features.md) — Accuracy, reliability, and presentation directions considered for meal analysis, with preconditions; not commitments.
- [Meal-Analysis Pipeline](../backend/docs/meal-analysis-pipeline.md) — Current Go pipeline architecture: pass 1, per-component pass 2, USDA vector retrieval, clarification tiering, storage and observability.

## Feature Workflows

- [Daily AI Summaries](ai-summary.md) — Bounded local meal snapshots, deterministic stats, and localized AI prose generation. The backend half is not yet ported to Go.

## Reference Documentation

- [Backend Documentation Index](../backend/docs/README.md) — Index of backend-specific guides and references.
- [Model & Resolver Evals](../backend/evals/README.md) — Eval case files and dated evaluation records.
- [USDA Database Tool](../backend/docs/usda-database.md) — Commands for loading, embedding and correcting the USDA reference database.
- [Meal-Analysis Enum Reference](../backend/docs/meal-analysis-enums.md) — Enum values in the model schemas and stored records.
- [Observability & Telemetry](../backend/docs/observability.md) — OpenTelemetry tracing, the `llm_call` table, and the analysis-history dashboard.
- [Translation Regeneration](../app/shared_packages/i18n/README.md) — Localization management and safe `slang` update procedures.
- [GitHub Actions Workflows](github-actions.md) — CI/CD automation, required status checks, and release pipelines.
- [Play Store Release Metadata](../fastlane/metadata/README.md) — Changelog file formatting and release-note generation scripts.
- [Website Image Guidelines](../web/IMAGE_GUIDELINES.md) — Specifications and assets for product screenshots.
- [Interactive Web Demo](../web/try.html) — Web-based interactive meal analysis flow with simulated polling client.
