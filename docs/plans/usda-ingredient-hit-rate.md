# USDA ingredient hit-rate plan

**Status:** active implementation plan.

**Last verified:** 2026-09-08.

**Owner:** meal-analysis backend.

**Canonical scope:** maximizing USDA-sourced resolution for pass-2 ingredient
leaves in the V3 resolver. Retrieval mechanics (FTS, ordering, embeddings)
remain canonical in [nutrition resolver retrieval](nutrition-resolver-retrieval.md);
the overall flow remains canonical in
[meal-analysis reliability](meal-analysis-reliability.md).

## Goal

Almost every `ACTIVE_NUTRITION` leaf produced by pass 2 resolves to a row in
the local USDA mirror (including its seeded fallback table), accepting a
bounded accuracy cost. The model nutrition fallback
(`backend/src/services/meal-analysis-v3/pipeline.ts:227-250`) stops being the
routine backstop and becomes rare.

**Metric:** USDA resolve rate = unique leaves (by `lookupKey`) whose reference
has `source: 'USDA_FOODDATA_CENTRAL'` divided by all resolved-for
`ACTIVE_NUTRITION` leaves. Targets: at least 95% USDA-sourced on the
evaluation corpus, model fallback below 2%.

## Current miss inventory

Verified against `backend/src/services/meal-analysis-v3/nutrition.ts` on
2026-09-08. The ladder today is: primary cohort, NFS retry, local fallback
table (spices), branded-to-generic retry, then the model estimate in the
pipeline.

| Reason | Where | Blocking condition |
| --- | --- | --- |
| `PREPARATION_MISMATCH` | `hardPreparationTier` (`nutrition.ts:1096-1165`) | Regex-inferred basis (`twoPassInterpretation.ts:634-650`) demands RAW/COOKED/DRY/DRAINED forms USDA may not carry; blocks eligibility (`nutrition.ts:874`) **and** is excluded from the NFS and local fallback gates (`nutrition.ts:680-704`) |
| `IDENTITY_MISMATCH` | hard tiers (`nutrition.ts:1021-1071`), fuzzy gate (`nutrition.ts:924-946`) | Fuzzy requires the candidate token set to be inside requested tokens plus `FUZZY_QUALIFIER_TERMS` (`nutrition.ts:253-270`, 72 descriptor tokens) with regular-plural folding |
| `LOW_CONFIDENCE_MATCH` | `nutrition.ts:800-808`, `897-905` | Fuzzy best trigram similarity below `0.4` (`nutrition.ts:212`) |
| `NO_CANDIDATES` | `CANDIDATE_SQL` (`nutrition.ts:287-453`) | Trigram, ILIKE, and FTS all miss; `plainto_tsquery` ANDs lexemes, so one exotic token defeats FTS |
| `MISSING_REQUIRED_NUTRIENT` / `INVALID_NUTRIENT_VALUES` | `nutrition.ts:983-1019` | Presence flags and macro plausibility caps |
| `UNSUPPORTED_YIELD_ONLY` | `nutrition.ts:495-502` | Non-water yield-only leaves |
| `NO_ACTIVE_DATASET` / `DATASET_NOT_MATERIALIZED` | `nutrition.ts:503-510` | Dataset gates |
| `AMBIGUOUS_RETRIEVAL_INTENT` | `nutrition.ts:26` | Declared but never emitted; dead reason |

## Strategy

Ordered relaxation. Every step is deterministic, recorded in candidate
diagnostics, individually flagged, and measured against a corpus before
promotion. Never relaxed: nutrient presence, macro plausibility, the
provenance boundary, and the adversarial negatives.

### Phase 0 — baseline corpus and measurement

**Status:** implemented 2026-09-08.

1. The canonical corpus is the standalone USDA resolver cases val set
   (`backend/evals/usda-resolver.cases.json`): twenty themed cases whose
   term groups become unique active leaves — first term as canonical
   identity, the rest as lookup aliases capped at three, the group's
   retrieval intent and product query carried onto the leaf, and basis and
   preparation inferred by the same `nutritionBasis` regex the pipeline
   uses. No model is called. The original Phase 0 corpus, derived from the
   required ingredient groups of the meal-analysis eval dataset
   (`backend/evals/meal-analysis.cases.json`), remains runnable via
   `--dataset` for continuity.
2. `npm run usda:resolver-eval` (backend) resolves the corpus against the
   local USDA mirror and prints the resolve rate, rejection-reason
   histogram, per-case summaries, and per-miss candidate diagnostics; the
   full report is written as a JSON artifact to a temporary directory
   (override with `--output-directory`).
   `backend/tests/evals/usdaResolverEval.test.ts` covers corpus
   extraction, validation, and aggregation offline.
3. Baseline (dataset v3, 2026-09-08): **29/40 leaves resolve (72.5%)**; all
   11 misses are `IDENTITY_MISMATCH`. The binding constraint is the fuzzy
   identity gate: candidates such as `Eggs, Grade A, Large, egg whole`,
   `Rice, white, cooked, glutinous`, and `Chicken, back` fail the
   reverse-containment qualifier check on tokens like `grade`, `large`,
   `whole`, `white`, and `glutinous`. There were zero `NO_CANDIDATES`
   misses, so retrieval recall is not binding on this corpus. The corpus
   also carries no preparation keywords, so the preparation gate is not
   exercised; Phase 1 impact must be measured with preparation-bearing
   leaves from real pass-2 outputs.
4. Baseline (val set v1, 2026-09-08): the expanded corpus measures
   **70/113 unique active leaves resolved (61.9%)** plus one builtin water
   leaf. Misses: 37 `IDENTITY_MISMATCH`, 5 `LOW_CONFIDENCE_MATCH`, 1
   `NO_CANDIDATES`. The corpus spans regional vocabulary (Indian, West
   African, Mexican, Middle Eastern, East Asian), preparation and
   nutrition-basis forms, spices, oils, dairy, grains, beverages,
   sweeteners, nuts and seeds, six branded products with product queries,
   and two ambiguous product-versus-generic identities. All six
   branded-product leaves resolve through the branded path; both
   ambiguous-intent leaves miss on identity. The hardest clusters are
   regional vocabulary and spices (indian-breakfast 1/6,
   south-indian-meal 1/5, beverages-and-sweeteners 1/6,
   indian-thali-lunch 2/7, west-african-stew 2/6); generic Western
   staples resolve near-completely (middle-eastern-mezze, salad-bar, and
   mexican-plate 6/6 each). The lower rate versus the derived corpus is
   the point: the val set deliberately stresses the gaps this plan exists
   to close.

### Phase 1 — unblock preparation mismatches

The largest structural gate: a preparation miss both rejects every candidate
and blocks the NFS and local fallbacks.

1. Allow `PREPARATION_MISMATCH` into the `nfsFallbackLeaf` and
   `localFallbackAllowed` reason sets (`nutrition.ts:680-704`) and relax the
   `hasUnspecifiedPreparation` guard (`nutrition.ts:721-726`) that currently
   excludes RAW, DRY, and DRAINED-basis leaves from those retries; both
   retries already reset the basis to `AS_SERVED`, which is the fix.
2. Add a preparation-relaxed retry inside `resolveCandidateCohort`: when zero
   candidates pass strict preparation but identity and nutrients pass,
   select the best identity-ranked candidate under a new
   `PREPARATION_RELAXED` tier ranked below `UNSPECIFIED_COMPATIBLE` in
   `PREPARATION_RANK` (`nutrition.ts:201-206`). Prefer candidates sharing the
   requested heat umbrella when one exists.
3. Flag: `USDA_PREPARATION_RELAXED`, default on after corpus evaluation.
4. Accepted cost: raw-versus-cooked water density (typically 1.2x to 2.5x)
   and drained-versus-undrained differences. This also absorbs most damage
   from the known `nutritionBasis` regex misclassification.

### Phase 2 — widen fuzzy identity compatibility

**Status:** implemented 2026-09-08.

1. `FUZZY_QUALIFIER_TERMS` (`nutrition.ts:253-270`) expanded from 9 to 72
   tokens: grade and size markers (`grade`, `a`, `large`, `whole`), color
   and variety descriptors (`white`, `brown`, `glutinous`), form and
   processing state (`fresh`, `canned`, `enriched`, `ground`), cuts and
   parts (`breast`, `meat`, `skinless`, `boneless`), and composed USDA
   qualifier phrases (`variety meats and by-products`, `long-grain`). The
   invariant holds — descriptors only, never food nouns — so `milk` to
   `milk chocolate`, `chicken` to `chicken fat`, `coconut` to
   `coconut oil`, and `pea` to `peanut` stay rejected, each with a test.
2. The fuzzy containment now folds naive regular plurals (`egg` covers
   `eggs`), because USDA names mix both forms in one row
   (`Eggs, Grade A, Large, egg whole`). Irregular plurals stay strict.
   The `0.4` similarity threshold and the bidirectional containment are
   unchanged.
3. Shipped without a runtime flag: a boolean selecting between two constant
   token lists would add plumbing through the pure fuzzy path for no
   operational benefit over reverting the constant, and the eval measures
   the effect.
4. Baseline after this phase: **33/40 (82.5%)**, up from 29/40 (72.5%).
   The remaining misses decompose into three mechanisms:
   - **Threshold blocker** (`egg` twice, `guanciale`, `brown rice`): the
     rows are compatible but score below the `0.4` trigram threshold
     against short requests — long USDA names lose string similarity even
     when token identity is proven. Next candidate: a lower floor for
     containment-passed rows.
   - **FTS-rank ordering** (`queso`/`cheese`): `ts_rank_cd` rewards rows
     that repeat the term, and `full_text_rank` sorts above
     `identity_similarity`, so `Cheese, NFS` (similarity 0.64) falls out
     of the top 30 behind cheese-sandwich rows. Next candidate: rank
     identity similarity above FTS rank.
   - **Corpus artifacts** (`pecorino`, `shin ramyun`): the eval maps what
     production would emit as `romano cheese` or a branded product onto
     generic identities.
5. The optional `lookupAliases` cap raise from 3 to 5
   (`twoPassInterpretation.ts:164`) remains open.

### Phase 3 — retrieval recall for zero-candidate terms

1. Term-reduction ladder: on `NO_CANDIDATES`, reduce the term toward its
   head noun by dropping one modifier token at a time, at most two retries,
   through the existing lookup cache. This defeats the AND semantics of
   `plainto_tsquery` and the full-string trigram requirement.
2. Extend `usda_resolver_fallback_foods` seeding beyond spices to terminal
   generic category rows (oils, sugars, flours, dairy, vegetables, legumes),
   sourced from USDA survey rows where possible; `data_type` stays
   `local_fallback` so provenance stays honest.

**Decision record — no curated alias maps.** A hand-maintained
Indian-English-to-USDA alias map was considered and rejected on 2026-09-08:
it carries permanent maintenance cost, has no definitive source list, and
pass 2 already emits `lookupAliases` per ingredient. Regional vocabulary
must flow through model-emitted aliases and retrieval recall, never through
a code- or database-maintained alias map.

### Phase 4 — guardrails, surfacing, promotion

1. Adversarial corpus in `backend/tests/services/meal-analysis-v3/nutrition.test.ts`:
   `pea` to `peanut`, `oil` to `boiler`, `paneer` to `palak paneer`,
   `ginger` to `ginger tea`, and `milk` to `milk chocolate` must remain
   rejected through every new tier.
2. Surface degradation: the relaxed tier and fuzzy acceptance are already
   visible in `NutritionCandidateDiagnostic`; a `matchQuality` field on
   `ResolvedNutritionReference` is deferred until the durable API needs it.
3. Metrics from the `NUTRITION_RESOLVED` stage output: resolve rate,
   rejection-reason counts, `PREPARATION_RELAXED` usage, alias-map hits,
   local-fallback hits, model-fallback rate, p50/p95 latency.
4. Promotion: at least 95% USDA resolve rate on the corpus, model fallback
   below 2%, zero adversarial false accepts, no regression on currently
   resolved cases, and the full backend chain green
   (`npm run type-check && npm run lint && npm test`).

## Non-goals

- No LLM, embedding, or edit-distance acceptance inside the resolver; the
  retrieval plan's non-goals hold.
- No relaxation of nutrient-presence or macro-plausibility gates.
- No silent model estimates: `MODEL_INFERRED` provenance stays distinct.
- No change to water and yield-only handling.

## Relationship to other plans

- [Nutrition resolver retrieval](nutrition-resolver-retrieval.md) stays
  canonical for retrieval mechanics; its temporary release accuracy tradeoff
  is superseded by this plan's measured ladder, and that document must be
  updated in the same change as any phase landing here.
- [Meal-analysis reliability](meal-analysis-reliability.md) release gates are
  unchanged; this plan raises USDA coverage so the zero-unresolved gate is
  met by USDA rows rather than model estimates.

Adjacent but out of scope: zero-gram ingredients are dropped before resolution
(`twoPassInterpretation.ts:659`), which removes leaves upstream of the
resolver.

## Maintenance contract

Update this document in the same change as any ladder reordering, new tier,
qualifier whitelist change, alias-map change, or fallback-table seeding
change. Keep `docs/README.md` and the retrieval plan synchronized, and verify
all relative links before finishing.
