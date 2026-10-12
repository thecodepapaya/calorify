# Calorify Documentation

Central index for Calorify system architecture, component documentation, technical plans, and operational runbooks.

## Getting Started

- [Project Overview](../README.md) — Product vision, core pipeline, and repository structure.
- [Phone Application](../app/calorify/README.md) — Android Flutter app, setup, and testing suites.
- [Wear OS Companion](../app/watch/README.md) — Smartwatch app, speech capture, and Data Layer synchronization.
- [Shared Packages](../app/shared_packages/README.md) — Shared domain models, tokens, and utilities.
- [Backend Development](../backend/README.md) — Fastify API services, USDA database, and local runners.
- [Backend Deployment Runbook](../backend/DEPLOYMENT.md) — Production/staging VM deployment, migrations, and rollback.
- [Security Policy](../SECURITY.md) — Secret handling and vulnerability disclosure.

## Architecture & Plans

- [Meal-Analysis V3 Architecture & Roadmap](plans/meal-analysis-reliability.md) — Canonical specification for the end-to-end two-pass analysis lifecycle, scenario calculations, question bounds, and durable sync.
- [Nutrition Resolver Retrieval](plans/nutrition-resolver-retrieval.md) — Retrieval hierarchy, full-text search, USDA matching heuristics, and accuracy guardrails.
- [USDA Ingredient Hit Rate](plans/usda-ingredient-hit-rate.md) — Fallback ladder and resolution metrics for ingredient matching against the USDA mirror.
- [LangGraph Meal-Analysis Pipeline](plans/langgraph-meal-analysis-pipeline.md) — Orchestration of the meal analysis workflow using a LangGraph `StateGraph`.
- [Luna One-Call Evaluation](plans/luna-one-call-meal-analysis-evaluation.md) — Live benchmark comparing combined vs. two-call LLM meal analysis.
- [Suggested Nutrition Targets](plans/suggested-nutrition-targets.md) — Backend-owned target calculations and client contract.

## Feature Workflows

- [Daily AI Summaries](ai-summary.md) — Bounded local meal snapshots, deterministic stats, and localized AI prose generation.
- [Meal-Image Uploads](meal-image-uploads.md) — Authenticated WebP upload pipeline and object storage architecture.
- [Meal-Analysis V3 API](../backend/docs/meal-analysis-v3-api.md) — Streamed NDJSON API routes, event contracts, and session lifecycle.
- [Meal-Analysis V3 CLI](../backend/docs/meal-analysis-cli.md) — Interactive and automated developer tool for meal analysis testing.

## Reference Documentation

- [Backend Documentation Index](../backend/docs/README.md) — Index of backend-specific guides and references.
- [Model & Resolver Evals](../backend/evals/README.md) — Evaluation harness for LLM decomposition and USDA matching.
- [Meal-Analysis Enum Reference](../backend/docs/meal-analysis-enums.md) — Canonical enum values and preparation codes.
- [Prometheus Metrics](../backend/docs/meal-analysis-prometheus.md) — Implemented telemetry metrics and Grafana queries.
- [Meal-Analysis History](../backend/docs/analysis-history.md) — Protected operator inspection interface.
- [Translation Regeneration](../app/shared_packages/i18n/README.md) — Localization management and safe `slang` update procedures.
- [GitHub Actions Workflows](github-actions.md) — CI/CD automation, required status checks, and release pipelines.
- [Play Store Release Metadata](../fastlane/metadata/README.md) — Changelog file formatting and release-note generation scripts.
- [Website Image Guidelines](../web/IMAGE_GUIDELINES.md) — Specifications and assets for product screenshots.
