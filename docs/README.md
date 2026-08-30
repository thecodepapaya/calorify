# Calorify documentation

Use this page to find the document that matches the work you are doing.

## Start here

- [Project overview](../README.md) — product scope, setup, and repository map.
- [Security policy](../SECURITY.md) — vulnerability reporting and secret handling.
- [Backend development](../backend/README.md) — API setup, commands, and contracts.
- [Backend deployment runbook](../backend/DEPLOYMENT.md) — staging, production, rollback, and USDA operations.
- [Wear OS companion](../watch_app/README.md) — watch setup and phone synchronization.

## Plans and decisions

- [Meal-analysis backend rewrite](plans/meal-analysis-reliability.md) — approved
  two-pass component and ingredient interpretation, deterministic recipe
  scenarios, resolver-owned USDA matching and fallbacks, bounded clarification,
  macro ranges, CLI-first delivery, durable cutover, and release gates.
- [Nutrition resolver retrieval](plans/nutrition-resolver-retrieval.md) —
  canonical FTS, USDA NFS, and generic-spices fallback decisions, resolver
  invariants, and deferred embedding design and rollout criteria.
- [Suggested nutrition targets](plans/suggested-nutrition-targets.md) — backend-owned target policy and implementation contract.

## Implemented workflows

- [Daily AI summaries](ai-summary.md) — foreground generation, bounded local
  snapshots, OpenRouter prose, daily idempotency, caching, and diagnostics.
- [Meal-image uploads](meal-image-uploads.md) — authenticated backend upload,
  bounded WebP validation, Oracle handoff, visibility, and lifecycle limits.
- [Meal-analysis V3 API](../backend/docs/meal-analysis-v3-api.md) — the only
  supported app/backend meal-analysis transport and session contract.
- [Meal-analysis V3 hypothesis CLI](../backend/docs/meal-analysis-cli.md) — run
  the shared ephemeral V3 core with observable two-pass text or image stages.
- [Meal-analysis enum reference](../backend/docs/meal-analysis-enums.md) — exact
  model-facing and deterministic codes, including preparation methods.

## Backend references

- [Meal-analysis Prometheus metrics](../backend/docs/meal-analysis-prometheus.md)
- [Meal-analysis model eval](../backend/evals/README.md)

## Other references

- [GitHub Actions](github-actions.md)
- [Shared Flutter packages](../shared_packages/README.md)
- [Translation regeneration](../shared_packages/i18n/README.md)
- [Wear OS audit tracker](../watch_app/AUDIT_TRACKER.md)
- [Play Store metadata](../fastlane/metadata/README.md)
- [Website screenshot guidelines](../web/IMAGE_GUIDELINES.md)
