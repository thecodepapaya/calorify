# Backend documentation

- [Historical local-inference phases 1–3 release candidate](local-inference-phases-1-3-release-candidate.md)
  — V2 workflow foundation through the hybrid text beta.
- [Historical local-inference Phase 4 release candidate](local-inference-phase-4-release-candidate.md)
  — paused V2 local USDA data, calculation, and release gates.
- [Local nutrition pack build and curation](../data/local_nutrition/README.md)
  — build, publish, freshness, and pure-USDA item selection.
- [Meal-analysis state machine](meal-analysis-state-machine.md) — durable
  end-to-end V2 flow, data boundaries, no-food termination, leases, stream
  events, resume behavior, and log confirmation.
- [Meal-analysis V3 hypothesis CLI](meal-analysis-cli.md) — observable text
  and image runs through recipe scenarios, active local USDA grounding,
  bounded questions, five-macro ranges, and terminal outcomes.
- [Meal-analysis Prometheus metrics](meal-analysis-prometheus.md) — metric
  names and example Grafana queries.
- [Meal-analysis history page](analysis-history.md) — protected visual
  inspection of text/image layers, provider attempts, USDA matches,
  presentation enrichment, audit actions, and final responses.

The product-level local-inference decision record is in
[`docs/plans/local-inference-meal-analysis.md`](../../docs/plans/local-inference-meal-analysis.md).
The approved cross-component rewrite is in the
[meal-analysis backend rewrite plan](../../docs/plans/meal-analysis-reliability.md).
This directory holds backend-specific implementation and operational evidence;
the repository-level docs index links to all other documentation.
