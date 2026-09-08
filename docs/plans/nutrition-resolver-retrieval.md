# Nutrition resolver retrieval plan

**Status:** active implementation plan.

**Last verified:** 2026-09-08.

**Owner:** meal-analysis backend.
**Canonical scope:** retrieval evolution for the V3 local USDA nutrition
resolver. The broader [meal-analysis reliability plan](meal-analysis-reliability.md)
remains the canonical policy for meal analysis as a whole.

The resolver runs for every active leaf in every retained scenario before
calculation and clarification planning. Its output is one input to the broader
flow; session replay, cross-stream progress, questions, presentation, logging,
and client recovery belong to the cross-component plan. The current HTTP answer
path repeats resolver work because stage checkpoints are not yet persisted.

## Decision summary

| Capability | Decision | Status |
| --- | --- | --- |
| USDA trigram retrieval | Retain | Implemented |
| PostgreSQL full-text search and English stemming | Enabled by default; rollback flag remains | Implemented |
| Stemmed identity tier | Enabled with FTS | Implemented |
| USDA `NFS` fallback | Exact generic fallback after no better result | Implemented |
| Generic `spices` fallback | Migration-seeded local profile | Implemented |
| Model nutrition fallback | Strict per-100-g estimate after all USDA paths fail | Implemented |
| Temporary release match fallback | Accept fuzzy scores from `0.4`; break equal-rank conflicts by score, then numeric FDC ID | Temporary |
| Fuzzy descriptor whitelist | 72 form, state, cut, and grade descriptors plus regular-plural folding; never food nouns | Implemented |
| Embedding generation, pgvector, and semantic retrieval | Defer | Not built |
| Embeddings as an acceptance signal | Never allow | Permanent constraint |

Resolver changes must preserve the result receipt and public provenance
boundary described by the cross-component flow. A model estimate uses a
synthetic record ID and `llm-nutrition-estimate-v1`; it is not a USDA match.

Before the implemented stemmed tier, the resolver safely rejected basic
ingredients such as `tomato` and `onion` when USDA wrote them as `tomatoes` and
`onions`. Lowercasing and punctuation removal did not reduce morphology, and a
full-text candidate query alone would not have fixed the literal final identity
gate. The shipped FTS phase therefore added both stemmed retrieval and a
bounded, deterministic stemmed identity tier.

## Current resolver behavior

`backend/src/services/meal-analysis-v3/nutrition.ts` is the canonical
implementation. For every nutrition-bearing leaf, it runs this exact order:

1. Resolve yield-only water as a physical zero; reject every other yield-only
   leaf.
2. Verify that one USDA dataset is active and materialized.
3. Build lookup terms from canonical identity plus aliases.
4. Retrieve no more than 30 rows. Generic lookup accepts only
   `survey_fndds_food`, `sr_legacy_food`, and `foundation_food`; branded lookup
   accepts only `branded_food` and also ranks its product query.
5. For generic lookup, PostgreSQL unions trigram/substring retrieval with
   English FTS when `USDA_FTS_ENABLED` is true. A single query deduplicates by
   FDC ID and orders rows by product relevance, stemmed identity, FTS rank,
   trigram similarity, then FDC ID.
6. Evaluate every row before selection: dataset version, preparation and basis,
   required nutrients, and macro plausibility are blocking gates. Identity
   mismatch is retained only to permit the constrained fuzzy fallback.
7. Apply hard identity tiers, in order:
   `CANONICAL_EXACT`, `CANONICAL_TOKEN_SET`, `ALIAS_EXACT`,
   `ALIAS_TOKEN_SET`, `STEMMED_TOKEN_SET`, `PRODUCT_QUERY_PHRASE`.
8. If no viable hard identity exists, use the fuzzy fallback. It requires a
   compatible identity and similarity at least `0.4`. A compatible identity
   means every requested token appears in the candidate name and every
   extra candidate token is a whitelisted form, state, cut, or grade
   descriptor — never a food noun — with naive regular-plural folding
   (`egg` covers `eggs`). The former runner-up margin is temporarily
   disabled.
9. Select the best hard identity/preparation rank. If multiple rows tie:
   highest trigram similarity selects the winner, including when nutrient
   vectors differ. Equal scores select the numerically lowest FDC ID.
10. Mark non-selected viable rows `LOWER_MATCH_TIER`; return bounded candidate
    diagnostics with identity tier, preparation tier, FTS rank, trigram score,
    nutrients, and rejection reason.

### Onion example

For an `AS_SERVED` onion with `UNKNOWN` preparation, raw and cooked USDA rows
both pass preparation compatibility and receive `STEMMED_TOKEN_SET`. The
temporary policy ignores their differing macros for collision selection. The
raw row's trigram score (`0.41666666`) is uniquely higher than cooked no-salt
(`0.12195122`) and cooked salted (`0.13157895`), so raw onion is selected. If
two tied rows share the top trigram score, the numerically lower FDC ID is
selected.

## Temporary release accuracy tradeoff

**Status:** active release workaround. This is intentionally less reliable
than the target resolver policy and exists to return calories instead of
ending otherwise usable analyses as unresolved.

The follow-up plan that makes near-universal USDA coverage a measured release
policy is [USDA ingredient hit rate](usda-ingredient-hit-rate.md); update
this section as its phases land.

| Resolver setting | Previous policy | Temporary release policy |
| --- | --- | --- |
| `FUZZY_MATCH_THRESHOLD` | `0.75` | `0.4` |
| `FUZZY_MATCH_MARGIN` | `0.05` | Disabled |
| `MACRO_EQUIVALENCE_TOLERANCE` | `0.05` | Disabled for collision selection |
| `MACRO_COMPARISON_FLOOR` | `0.1` | Disabled for collision selection |
| Equal-rank, equal-score conflict | Return `AMBIGUOUS_MATCH` unless exact or near-equivalent macros resolved it | Select the numerically lowest FDC ID |

Previously, equal macro vectors selected the lowest FDC ID, vectors within the
`0.05` relative tolerance selected the lower-calorie row, a unique highest
similarity selected other conflicts, and equal similarities remained
`AMBIGUOUS_MATCH`. The temporary policy bypasses those macro collision rules.

After identity, preparation, dataset, required-nutrient, and macro-plausibility
checks pass, the resolver accepts a compatible fuzzy candidate at similarity
`0.4` or higher. It does not require a lead over the runner-up. Conflicting
candidates at the same identity and preparation ranks are ordered by highest
trigram similarity and then by numerically lowest USDA FDC ID. Macro equality
or proximity does not override this order.

This can choose the wrong USDA variant, including a preparation, fat-content,
or source-row variant that happens to score better. The calorie and macro
result is therefore deterministic but may be approximate. Preparation and
required-nutrient rejection remain blocking; this workaround does not allow a
known-incompatible or incomplete row merely to force a result.

Candidate conflicts at the same identity and preparation ranks must not emit
`AMBIGUOUS_MATCH` while this workaround is active. A valid candidate always
wins by similarity and then numeric FDC ID. `AMBIGUOUS_RETRIEVAL_INTENT` is a
different input-routing outcome and is not changed by this release policy.

Remove this override after the replacement retrieval/ranking design has a
labelled corpus covering the staging failures, reports top-candidate accuracy
and unresolved rate, and provides a deterministic policy for variant and
duplicate USDA rows. Restoring the stricter acceptance policy must update the
constants, collision selection, regression tests, and this document together.

Revert checklist:

1. Restore `FUZZY_MATCH_THRESHOLD = 0.75` and
   `FUZZY_MATCH_MARGIN = 0.05`, including the runner-up lead check.
2. Restore `MACRO_EQUIVALENCE_TOLERANCE = 0.05` and
   `MACRO_COMPARISON_FLOOR = 0.1` for equal-rank collisions.
3. Restore exact-vector FDC-ID selection, near-equivalent lower-calorie
   selection, unique-similarity selection, and `AMBIGUOUS_MATCH` for a
   remaining score tie.
4. Replace the temporary regression expectations and rerun the labelled
   resolver corpus before release.

The candidate SQL already uses PostgreSQL trigram retrieval (`pg_trgm`) and
substring predicates to *find* rows. Substring retrieval is not identity
authority and must never become automatic acceptance: `pea` must not resolve
to `peanut`, and `oil` must not resolve to `boiler`.

## Invariants

- A selected result must retain an FDC ID, USDA dataset version, macros, and
  resolver provenance.
- Preparation and nutrition-basis compatibility remain mandatory. Retrieval
  must not make `raw lentils` equivalent to `cooked lentils`.
- Calories, protein, carbohydrates, and fat remain required; existing
  missing-fiber-as-zero policy remains unchanged.
- Equal-rank ambiguity is temporarily forced to a deterministic result by
  similarity and numeric FDC ID; this is a documented accuracy tradeoff.
- Candidate search can improve recall. It cannot weaken final identity,
  preparation, or nutrient checks.
- The resolver remains functional when FTS is unavailable; current trigram
  retrieval is the rollback path.

## USDA NFS fallback

`NFS` means “not further specified.” It is a USDA generic food descriptor,
not a fuzzy synonym or a hand-maintained ingredient mapping.

**Decision:** after the normal generic lookup has no selected result, make one
additional lookup for `<base identity> nfs` when the leaf has no specific
preparation. Select it only if it passes the existing exact-identity, nutrient,
and candidate-uniqueness gates.

**Rationale:** meal interpretation can identify a base food and that it was
served, without establishing its exact USDA form. For example, a `cooked
lentils` leaf may have no safe plain cooked-lentil row, while `Lentils, NFS`
provides the USDA generic as-served record. This is safer than accepting a
nearby but different row such as sprouted lentils.

**Flow:**

1. Run normal canonical, alias, FTS, preparation, nutrient, ambiguity, and
   constrained-fuzzy resolution.
2. If it selects a row, keep that row: it is better than NFS.
3. Otherwise, for a generic leaf with only `UNKNOWN`, `OTHER`, or
   `COOKED_UNKNOWN` preparation, remove preparation words from its canonical
   identity and query `<base identity> nfs`.
4. Evaluate the NFS candidate as `AS_SERVED`. Macros remain per 100 g; this
   changes compatibility only, not portion scaling. The resolver never uses an
   NFS household-serving weight: calculation scales the verified per-100-g
   vector only by the leaf's resolved gram amount.
5. If no unique exact NFS row passes, preserve the original unresolved result.

**Boundaries:** NFS fallback is unavailable for branded requests, explicit
`RAW`, `DRY`, or `DRAINED` bases, or any specific preparation code. It can
still run after no candidates, identity mismatch, or low confidence, but the
temporary release conflict fallback selects an equal-rank primary candidate
before NFS is considered. An NFS lookup still cannot select an approximate NFS
result.

## Generic spices fallback

**Decision:** resolve the exact generic identity `spices` through a
resolver-owned database record when no more-specific interpretation is
available. The record is `Spices, unspecified (curry-powder profile)` and uses
the macro profile from USDA FDC `170924`, `Spices, curry powder`.

**Rationale:** `spices` is a category, not a resolvable USDA food identity.
Choosing cumin, dill, or another individual spice would invent composition;
using a fixed, explicit profile is deterministic and auditable. Named blends
and concrete spice components continue through ordinary USDA resolution.

**Lifecycle:** migration
`backend/migrations/usda/20260831_usda_resolver_fallback_foods.sql` creates
`usda_resolver_fallback_foods` and idempotently upserts the record. The table
is intentionally separate from `usda_foods`, because every USDA source refresh
replaces `usda_foods`. Staging and production receive it through the
`usda-migrate` schema-only runner; profile changes require a new migration,
never a direct database edit. This runner never downloads a USDA archive.

**Boundary:** the record uses `data_type = local_fallback` and a negative
internal ID, so it is visibly not an FDC record. It participates only in
generic retrieval and must still pass the normal identity, macro, and ranking
checks. USDA and NFS queries exclude this table; it is queried only after
neither has selected a row, so a local profile cannot shadow a future USDA
record.

## Model nutrition fallback

**Decision:** when a nutrition-bearing leaf remains unresolved after normal
USDA, NFS, and resolver-owned local fallback paths, request a per-100-g macro
estimate from the meal-analysis model. A provider error or invalid answer
leaves the reference unresolved.

**Trust boundary:** this does not change USDA matching or relabel an estimate
as USDA. USDA records retain `USDA_FOODDATA_CENTRAL`; model estimates use
`MODEL_INFERRED`, a synthetic record ID, and
`llm-nutrition-estimate-v1` in the result receipt.

**Acceptance:** the response must echo the exact request ID and canonical
identity, contain finite non-negative macros, stay within broad per-100-g
plausibility bounds, and include no duplicate request. It is used only for
the unresolved leaf; already resolved USDA references are untouched.

## Phase 1: full-text search and stemmed identity

**Status: implemented and enabled by default. Set `USDA_FTS_ENABLED=false` to
roll back to trigram-only retrieval while evaluating corpus and latency data.**

### Scope

Add English PostgreSQL FTS for generic USDA retrieval. It supplements, rather
than replaces, current trigram retrieval.

Add a `STEMMED_TOKEN_SET` identity tier after literal canonical/alias equality
and before constrained fuzzy fallback. It compares whole-word English lexemes
after the current identity-stop-word treatment. It is a deterministic
morphology equivalence, not a semantic similarity score.

Examples:

| Requested identity | USDA description | Expected result |
| --- | --- | --- |
| `tomato` | `Tomatoes, raw` | Stemmed identity candidate |
| `onion` | `Onions, raw` | Stemmed identity candidate |
| `pea` | `Peanut, raw` | Not equivalent |
| `tomato` | `Tomato sauce, canned` | Candidate only; form/identity checks decide |
| `cooked lentils` | `Lentils, raw` | Reject on preparation/basis |

### Database design

1. Add a USDA migration that uses the PostgreSQL `english` text-search
   configuration over `normalized_name` and `description`.
2. Add one expression GIN index with `CREATE INDEX CONCURRENTLY`. The migration
   runner supports one restart-safe concurrent index per migration; keep this
   index in its own file.
3. Use `plainto_tsquery`, not interpolated tsquery syntax, for untrusted input.
4. Preserve the current `pg_trgm` indexes and SQL path. FTS retains a rollback
   flag and is enabled by default.
5. Keep the final resolver candidate ceiling at 30. One SQL query combines
   trigram/substring and FTS predicates, groups by FDC ID, and passes no more
   than 30 rows to candidate evaluation.

### Resolver design

1. Normalize canonical identity and aliases as today; remove only the defined
   preparation/generic terms before comparing FTS stemmed lexeme sets.
2. Build query lexemes and `plainto_tsquery('english', term)` in PostgreSQL.
   The candidate side uses the same PostgreSQL `english` lexeme pipeline.
3. Run all dataset, macro, and preparation gates before identity selection.
4. Apply identity tiers in this order:
   `CANONICAL_EXACT`, `CANONICAL_TOKEN_SET`, `ALIAS_EXACT`,
   `ALIAS_TOKEN_SET`, `STEMMED_TOKEN_SET`, `PRODUCT_QUERY_PHRASE`, then
   constrained fuzzy fallback only when no viable identity tier exists.
5. Keep fuzzy's controlled-extra-token requirement. The temporary release
   override lowers minimum similarity to `0.4` and suspends the winner margin.
   FTS rank or a stem match still never bypasses preparation or nutrient gates.
6. For equal hard identity and preparation ranks, the temporary override uses
   highest trigram similarity and then numerically lowest FDC ID, even when
   macros differ.
7. Emit candidate diagnostics with identity tier, preparation tier, FTS rank,
   trigram similarity, and rejection reason. Do not log raw meal text.

### Migration and rollback

1. Test the migration against a copy of the USDA snapshot.
2. Build the GIN index concurrently and verify it is valid before recording the
   migration.
3. Release with FTS enabled by default.
4. Roll back behavior by setting `USDA_FTS_ENABLED=false`. The trigram path remains
   intact; removing the index is not required for behavioral rollback.
5. If the migration fails or the index is invalid, set `USDA_FTS_ENABLED=false`
   and fix the migration. Do not alter an applied migration because migration
   checksums make that fail deterministically.

### Validation and promotion criteria

Build a labelled resolver corpus before enabling FTS. It must include common
singular/plural forms, Indian ingredient terms, preparation-sensitive pairs,
generic categories, branded products, typos, and adversarial negatives.

Required tests:

- `tomato` resolves a safe `tomatoes` candidate; tied onion forms select the
  highest trigram score and equal scores select the numerically lowest FDC ID;
- `pea` never resolves `peanut`; `oil` never resolves `boiler`;
- raw, dry, cooked, drained, juice, sauce, powder, and added-fat forms keep
  their existing preparation/form protections;
- FTS and trigram union/dedup/rank fusion are deterministic across repeated
  runs;
- FTS failure or timeout returns the existing trigram outcome;
- no more than 30 candidates enter evaluation;
- existing focused resolver tests and the full backend suite remain green.

Promotion requires no false acceptance on the safety corpus, no regression on
existing resolved cases, a measurable improvement in unresolved morphology
cases, and acceptable query latency under load. Record baseline and enabled
p50/p95 latency, candidate counts, resolve rate, unresolved reason counts, and
fallback rate.

## Deferred phase: embeddings

**Status: not built. Do not rely on this section as current behavior.**

Embeddings are reserved for synonym and semantic recall such as `dal` versus
`lentil stew` or regional naming variants. They are not suitable as identity
authority because they can conflate material forms such as `tomato` and
`tomato sauce`, or `raw lentils` and `cooked lentils`.

### Preconditions

- Approve the embedding provider, data-processing/privacy boundary, model,
  cost envelope, and regional handling. Query text sent to a hosted provider
  remains external processing even when application logs redact it.
- Replace the current plain `postgres:15` USDA image with a compatible
  PostgreSQL 15 pgvector image. Rehearse backup, restore, extension creation,
  data-integrity verification, and image rollback first.
- Select vector dimension, distance operator, index type (HNSW or IVFFlat),
  index build strategy, memory budget, and query parameters.
- Define model-version migration. Vectors of different model versions or
  dimensions must never be compared.

### Future architecture

1. Store embeddings separately from `usda_foods`, keyed by FDC ID, dataset
   version, canonical input content hash, embedding model/version, and status.
2. Generate USDA description vectors in resumable, idempotent batches during
   snapshot bootstrap or refresh, using owner credentials only.
3. Embed only normalized ingredient lookup terms at runtime, never the full
   meal text. Cache by a one-way key of normalized term and model version; set
   a retention limit.
4. Enforce timeout, rate limit, circuit breaker, and lexical-only fallback.
   Provider failure must not fail meal analysis.
5. Union lexical, FTS, and vector candidate IDs; deduplicate and fuse ranks
   deterministically before the unchanged verifier.
6. Run in shadow mode first. Measure recall@k, precision of final accepted
   matches, latency, provider errors, cache hit rate, vector coverage, and
   lexical fallback rate.
7. Enable with a percentage feature flag only after defined corpus and canary
   thresholds pass. Flag-off restores lexical/FTS retrieval immediately.

## Embedding trigger

Revisit embeddings only after FTS is live and measurements show that safe,
unresolved synonym or regional-name cases remain material. Starting that phase
requires a new decision record naming the provider/model, privacy approval,
vector index choice, evaluation thresholds, owner, and rollout date.

## Non-goals

- No raw substring acceptance.
- No model-generated nutrition values as a silent fallback.
- No embedding, edit-distance, or language-model score as final identity proof.
- No FTS-only acceptance that bypasses preparation, nutrient, ambiguity, or
  provenance checks.
- No pgvector image, vector schema, or external embedding call in Phase 1.

## Maintenance contract

Update this document in the same change whenever retrieval ordering, the
candidate cap, a resolver identity tier, FTS configuration, or an embedding
decision changes. Mark shipped items as implemented and move deferred decisions
only when their tests, metrics, and rollout evidence exist. Keep
`docs/README.md` and the linked reliability plan synchronized, and verify all
relative links and Markdown references before finishing.
