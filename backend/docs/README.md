# Backend documentation

- [Calorie-estimation reliability plan](calorie-estimation-reliability-plan.md)
  — quality, measurement, and rollout improvements.
- [Local inference phases 1–3 release candidate](local-inference-phases-1-3-release-candidate.md)
  — workflow foundation through the hybrid text beta.
- [Local inference Phase 4 release candidate](local-inference-phase-4-release-candidate.md)
  — local USDA data, calculation, and release gates.
- [Local nutrition pack build and curation](../data/local_nutrition/README.md)
  — build, publish, freshness, and pure-USDA item selection.
- [Meal-analysis state machine](meal-analysis-state-machine.md) — durable
  end-to-end V2 flow, data boundaries, no-food termination, leases, stream
  events, resume behavior, and log confirmation.
- [Local meal-analysis CLI](meal-analysis-cli.md) — prerequisites, interactive
  and scripted text runs, resume/replay testing, and troubleshooting.
- [Meal-analysis Prometheus metrics](meal-analysis-prometheus.md) — metric
  names and example Grafana queries.
- [Meal-analysis history page](analysis-history.md) — protected visual
  inspection of text/image layers, provider attempts, USDA matches,
  presentation enrichment, audit actions, and final responses.

The product-level local-inference decision record is in
[`docs/plans/local-inference-meal-analysis.md`](../../docs/plans/local-inference-meal-analysis.md).
This directory holds backend-specific implementation and operational evidence;
the repository-level docs index links to all other documentation.
