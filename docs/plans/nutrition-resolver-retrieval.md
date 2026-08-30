# Nutrition resolver retrieval plan

**Status:** active implementation plan.

**Last verified:** 2026-08-31.

**Owner:** meal-analysis backend.
**Canonical scope:** retrieval evolution for the V3 local USDA nutrition
resolver. The broader [meal-analysis reliability plan](meal-analysis-reliability.md)
remains the canonical policy for meal analysis as a whole.

## Decision summary

| Capability | Decision | Status |
| --- | --- | --- |
| USDA trigram retrieval | Retain | Implemented |
| PostgreSQL full-text search and English stemming | Add now | Planned |
| Stemmed identity tier | Add with FTS | Planned |
| Embedding generation, pgvector, and semantic retrieval | Defer | Not built |
| Embeddings as an acceptance signal | Never allow | Permanent constraint |

The current resolver can safely reject basic ingredients such as `tomato` and
`onion` when USDA writes them as `tomatoes` and `onions`. Its comparison
normalization lowercases and removes punctuation, but does not reduce
morphology. A full-text candidate query alone would not fix this: the final
identity gate would still compare literal tokens. The FTS phase therefore adds
both stemmed retrieval and a bounded, deterministic stemmed identity tier.

## Current baseline

`backend/src/services/meal-analysis-v3/nutrition.ts` currently:

1. expands every generated scenario into nutrition-bearing leaves;
2. resolves yield-only water as a physical zero and rejects other yield-only
   leaves;
3. verifies an active materialized USDA snapshot;
4. retrieves at most 30 candidates from trusted generic USDA record types, or
   branded rows for a branded request;
5. rejects incompatible dataset, preparation, missing nutrient, and invalid
   macro candidates;
6. ranks literal canonical and alias identity tiers before constrained fuzzy
   fallback;
7. resolves only an unambiguous, safe candidate; otherwise returns an explicit
   unresolved reason.

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
- Ambiguity remains unresolved unless the existing exact/near-equivalent macro
  collision policy selects safely.
- Candidate search can improve recall. It cannot weaken final identity,
  preparation, nutrient, or ambiguity checks.
- The resolver remains functional when FTS is unavailable; current trigram
  retrieval is the rollback path.

## Phase 1: full-text search and stemmed identity

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
4. Preserve the current `pg_trgm` indexes and SQL path. FTS must be feature
   flagged until validation passes.
5. Keep the final resolver candidate ceiling at 30. Retrieve bounded FTS and
   trigram cohorts, deduplicate by FDC ID, apply deterministic rank fusion, and
   pass no more than 30 rows to existing candidate evaluation.

### Resolver design

1. Normalize canonical identity and aliases as today.
2. Retrieve current trigram candidates and FTS candidates in parallel.
3. Deduplicate by FDC ID. Use a versioned reciprocal-rank fusion rule and FDC
   ID only as the stable final ordering tie-breaker.
4. Run all current dataset, macro, and preparation gates before identity
   selection.
5. Apply identity tiers in this order:
   `CANONICAL_EXACT`, `CANONICAL_TOKEN_SET`, `ALIAS_EXACT`,
   `ALIAS_TOKEN_SET`, `STEMMED_TOKEN_SET`, `PRODUCT_QUERY_PHRASE`, then
   constrained fuzzy fallback only when no viable identity tier exists.
6. Keep fuzzy's controlled-extra-token, minimum-similarity, and winner-margin
   requirements. FTS rank or a stem match never bypasses them for other forms.
7. Emit candidate diagnostics that name the retrieval source(s), identity tier,
   FTS rank, trigram similarity, and rejection reason. Do not log raw meal
   text.

### Migration and rollback

1. Test the migration against a copy of the USDA snapshot.
2. Build the GIN index concurrently and verify it is valid before recording the
   migration.
3. Release with FTS disabled by default.
4. Roll back behavior by disabling the FTS flag. The trigram path remains
   intact; removing the index is not required for behavioral rollback.
5. If the migration fails or the index is invalid, leave FTS disabled and fix
   the migration. Do not alter an applied migration because migration checksums
   make that fail deterministically.

### Validation and promotion criteria

Build a labelled resolver corpus before enabling FTS. It must include common
singular/plural forms, Indian ingredient terms, preparation-sensitive pairs,
generic categories, branded products, typos, and adversarial negatives.

Required tests:

- `tomato` resolves a safe `tomatoes` candidate and `onion` resolves a safe
  `onions` candidate;
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
