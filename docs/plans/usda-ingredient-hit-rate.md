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

### Phase 2.5 — pass-2 USDA-style naming

**Status:** implemented 2026-09-08.

1. Pass 2 now emits `canonicalIdentity` and `lookupAliases` in the USDA
   FoodData Central description structure — category head noun, then the
   specific food, then its form or state, comma-separated, with `nfs` when
   the specific food is unknown. The format is taught in the
   `SECOND_PASS_SYSTEM_PROMPT` rules, the field descriptions of the
   second-pass response schema, and the embedded example JSON
   (`twoPassInterpretation.ts`). `mealItemName` and `ingredientName` stay
   natural and may stay in the input language.
2. Rationale: when the requested token set carries the row's own head noun
   and specific tokens, the hard token-set tiers match directly and the
   fuzzy qualifier whitelist stops being the binding constraint. State
   words (`raw`, `cooked`, `boiled`) are already identity stop words, so
   they steer only basis inference and the preparation tier.
3. The val set (`backend/evals/usda-resolver.cases.json`) was rewritten to
   the new output shape: the first term of each group is the USDA-style
   canonical identity; plain and regional names remain as lookup aliases.
   Two formerly distinct groups deduplicated to one (raw carrots), so the
   corpus is now 112 unique active leaves. The meal-analysis eval's
   expected ingredient groups gained USDA-ordered alternatives where
   reordering breaks substring matching (`rice, brown`, `beans, black`).
4. Measurement (2026-09-08): **75/112 unique active leaves resolved
   (67.0%)**, up from 70/113 (61.9%) on plain-style terms. Rejection
   histogram: 34 `IDENTITY_MISMATCH`, 3 `LOW_CONFIDENCE_MATCH`, 0
   `NO_CANDIDATES` (was 37/5/1). Remaining miss mechanisms:
   - true data gaps — asafoetida, flattened rice (poha), bottle gourd,
     sambar powder have no mirror row;
   - over-specified state tokens the row lacks (`spices, cumin seed,
     ground` versus the row `Spices, cumin seed`);
   - head-noun variance (`black gram, mature seeds, raw` versus the row
     `Beans, black, mature seeds, raw`);
   - survey phrasing (`from canned`, `Egg omelet or scrambled egg`) and
     non-qualifier row descriptors (`iced`, `hot`; `brewed` is an identity
     token, not a stop word).
5. Two paid meal-analysis eval runs (`gpt-5.6-luna`, 1 repeat each) were
   both contaminated by a persistent upstream OpenRouter 429 rate limit
   (7 of 12 cases in the first run, 9 of 12 in the second; every errored
   call returned `{id, error}` with `output: null`, none were
   schema-invalid model output). Across both runs, eight cases produced
   at least one clean execution and seven of those eight passed — the
   only clean miss named injera as `bread, injera, fermented` instead of
   its grain. Clean pass-2 outputs follow the new format closely,
   including `nfs` forms (`spices, nfs`, `meat, nfs, cooked`). A fully
   clean measurement is pending upstream capacity or a dedicated
   OpenRouter key.
6. Third paid run (2026-09-08, `--delay-ms 0`, artifacts
   `/tmp/meal-eval-usda-style-r3`): the upstream 429 persisted despite the
   OpenRouter integration change — 6 of 12 cases returned the identical
   `temporarily rate-limited upstream` body; the other two failures were a
   pass-2 timeout (masala dosa) and a truncated pass-1 stream with
   `finishReason: error` (Chongqing noodles). The four clean executions all
   passed (banana 18/18, nonfood 8/8, onigiri 25/25, shawarma 29/29);
   banana and onigiri were first-time clean passes. Across all three runs,
   only masala dosa and the Chipotle bowl lack a clean execution.

### Phase 2.6 — local fallback head-noun reduction

**Status:** implemented 2026-09-08.

1. Problem: the migration-seeded `usda_resolver_fallback_foods` row
   (`Spices, unspecified (curry-powder profile)`, normalized name
   `spices`) only rescued a bare `spices` identity. The local-fallback
   cohort was queried with the leaf's full term list, so a named blend
   such as `spices, sambar powder` could never match the curated row —
   the fallback was a one-row net for the exact string `spices`.
2. Change: the local-fallback cohort now resolves with a leaf reduced to
   the head segment of the canonical identity (`localFallbackLeaf` in
   `nutrition.ts`), mirroring the `nfsFallbackLeaf` pattern. The reduced
   leaf drives both the SQL terms and the identity matcher, so a generic
   ingredient whose category matches a curated fallback row resolves once
   the primary and NFS attempts reject it.
3. Measurement (2026-09-08, artifacts `/tmp/usda-resolver-eval-v3`):
   **78/112 unique active leaves resolved (69.6%)**, up from 75/112
   (67.0%). Rejections: 31 `IDENTITY_MISMATCH`, 3
   `LOW_CONFIDENCE_MATCH`. Three leaves converted, all through the
   fallback tier: `spices, sambar powder` (the intended case),
   `spices, asafoetida, ground` (a true data gap — the generic spice
   proxy is the row's purpose), and `spices, cumin seed, ground`.
4. Caveat: the cumin conversion masks a real near-miss. `Spices, cumin
   seed` exists and was the top primary candidate (similarity 0.71); it
   was rejected only because the request carries a `ground` token the row
   lacks — request-side over-specification, the same mechanism recorded
   in the Phase 2.5 miss list. The fallback now resolves it to the
   curry-powder profile instead of the correct row, so the resolve-rate
   metric no longer surfaces that state-token gap on its own.

### Phase 2.7 — parenthetical identity variants and zero-macro spices fallback

**Status:** implemented 2026-09-08.

1. Problem: USDA descriptions embed synonyms in parentheses — `Gourd,
   white-flowered (calabash)`, `Milk, fat free (skim)`, `Chickpeas
   (garbanzo beans, bengal gram), mature seeds, cooked`. The identity
   matcher compared only the full name, so a request naming the
   parenthetical synonym (`calabash`) or the parenthetical-stripped name
   (`chickpeas, mature seeds`) was rejected as `IDENTITY_MISMATCH` even
   when the row was the top candidate.
2. Change: `parentheticalIdentityVariants` in `nutrition.ts` derives three
   extra match variants from a row description — the description with
   every parenthetical removed, the parenthetical content alone, and the
   head noun joined with the parenthetical content. Variant matches slot
   into the existing hard tiers at ranks 10-13, below every direct tier,
   and join the fuzzy candidate token sets. `with` joined the identity
   stop words (TS set and the SQL pattern) because `with salt` suffixes
   otherwise break token-set equality.
3. Spices fallback: the migration-seeded row is now `Spices, nfs` with
   zero macros (`20260908_usda_resolver_fallback_spices_zero_macro.sql`),
   replacing the curry-powder profile. Spice servings are grams, so zero
   is safer than attributing curry-powder macros to every unmatched
   blend; the row keeps `normalized_name` `spices` so the Phase 2.6
   head-noun reduction keeps matching every spice blend.
4. Tests: three red-green matcher tests (calabash alias, milk/skim
   head+parenthetical, chickpeas stripped name) plus a migration-content
   test. Full suite 459 green.
5. Measurement (2026-09-08, artifacts `/tmp/usda-resolver-eval-v4`):
   **83/112 unique active leaves resolved (74.1%)**, up from 78/112
   (69.6%) after Phase 2.6 and 75/112 (67.0%) at the Phase 2.5
   measurement. Rejections: 26 `IDENTITY_MISMATCH`, 3
   `LOW_CONFIDENCE_MATCH`, no regressions. Four conversions came from
   parenthetical variants — bottle gourd (calabash alias), chickpeas
   (stripped name), pumpkin seeds (stripped name), milk (head +
   parenthetical). The fifth, `broccoli, steamed`, converted through the
   `with` stop word: the `Broccoli, cooked, boiled, drained, with salt`
   row rose from `STEMMED_TOKEN_SET` to `CANONICAL_TOKEN_SET`, tied with
   the without-salt row, and the temporary-release collision override
   picked it by similarity — bypassing the confidence gate that had
   rejected the pair at similarity 0.22.

### Phase 2.8 — gate parenthetical variants against the matched variant

**Status:** implemented 2026-09-08.

1. Problem (production, session `f60c15aa-f5df-4273-b6fd-a7c0789204aa`):
   `4 roti daal raita` failed `UNRESOLVED_NUTRITION` because the
   `whole-wheat-flour` leaf matched `Wheat flour, whole-grain (Includes
   foods for USDA's Food Distribution Program)` through the Phase 2.7
   parenthetical-stripped variant at `ALIAS_TOKEN_SET` rank 13, but the
   confidence gate scored the SQL trigram similarity against the full
   description — parenthetical included — yielding 0.333, below the 0.4
   threshold. The variant matching found the row; the gate then rejected
   it against a string the request never claimed to resemble.
2. Change: `hardIdentityMatch` now returns a `gateSimilarity` for every
   parenthetical-variant tier (ranks 10-13), computed as the Jaccard
   similarity of identity token sets between the matched request string
   and the matched variant. `passesFuzzyConfidence` prefers
   `gateSimilarity` over the SQL trigram score, so direct tiers keep the
   full-description gate and variant tiers are scored against what they
   actually matched. A token-set variant match is set-equal by
   construction, so it scores 1; the helper keeps the gate meaningful if
   variant matching ever loosens.
3. Tests: red-green test reproducing the production row (alias
   `flour, wheat, whole-grain`, full-description similarity 0.333,
   expected `168893`). Full suite 460 green.
4. Measurement (2026-09-08, artifacts `/tmp/usda-resolver-eval-v5`):
   **83/112 unique active leaves resolved (74.1%)**, unchanged from
   Phase 2.7 — the miss set is byte-identical to v4, so no val-set leaf
   exercises this path and none regressed. The production row is covered
   by the unit test, not the corpus.

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
