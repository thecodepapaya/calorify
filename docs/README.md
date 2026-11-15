# Calorify Documentation

Central index for Calorify system architecture, component documentation, technical plans, and operational runbooks.

## Getting Started

- [Project Overview](../README.md) — Product vision, core pipeline, and repository structure.
- [Phone Application](../app/calorify/README.md) — Android Flutter app, setup, and testing suites.
- [Wear OS Companion](../app/watch/README.md) — Smartwatch app, speech capture, and Data Layer synchronization.
- [Shared Packages](../app/shared_packages/README.md) — Shared domain models, tokens, and utilities.
- [Backend Development](../backend/README.md) — Go API service, USDA database, and local runners.
- [Backend Deployment Runbook](../backend/DEPLOYMENT.md) — Production/staging VM deployment, migrations, and rollback.

## Architecture & Plans

- [Meal-Analysis Latency Optimization](plans/meal-analysis-latency-optimization.md) — Active plan to cut analysis e2e latency below 10s: per-call LLM measurement, decision tree, and levers.
- [Pass-2 Per-Component Split](plans/pass2-per-component-split.md) — Design record for splitting pass 2 into one parallel call per component: payload, storage shape, indices, failure semantics, and work split.
- [Suggested Nutrition Targets](plans/suggested-nutrition-targets.md) — Backend-owned target calculations and client contract (not yet implemented).
- [Considered Features](plans/considered-features.md) — Accuracy, reliability, and presentation directions considered for meal analysis, with preconditions; not commitments.
- [Meal-Analysis Pipeline](../backend/docs/meal-analysis-pipeline.md) — Current Go pipeline architecture: two-pass LLM decomposition, USDA vector retrieval, hydration.

## Feature Workflows

- [Daily AI Summaries](ai-summary.md) — Bounded local meal snapshots, deterministic stats, and localized AI prose generation.
- [Meal-Image Uploads](meal-image-uploads.md) — Authenticated WebP upload pipeline and object storage architecture.

## Reference Documentation

- [Backend Documentation Index](../backend/docs/README.md) — Index of backend-specific guides and references.
- [Model & Resolver Evals](../backend/evals/README.md) — Evaluation harness for LLM decomposition and USDA matching.
- [Meal-Analysis Enum Reference](../backend/docs/meal-analysis-enums.md) — Canonical enum values and preparation codes.
- [Observability & Telemetry](../backend/docs/observability.md) — OpenTelemetry tracing, performance metrics, and analysis session inspection.
- [Translation Regeneration](../app/shared_packages/i18n/README.md) — Localization management and safe `slang` update procedures.
- [GitHub Actions Workflows](github-actions.md) — CI/CD automation, required status checks, and release pipelines.
- [Play Store Release Metadata](../fastlane/metadata/README.md) — Changelog file formatting and release-note generation scripts.
- [Website Image Guidelines](../web/IMAGE_GUIDELINES.md) — Specifications and assets for product screenshots.
- [Interactive Web Demo](../web/try.html) — Web-based interactive meal analysis flow with simulated polling client.
