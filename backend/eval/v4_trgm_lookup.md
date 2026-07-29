# Prompt Version 4 — pg_trgm lookup, zero aliases

**Date:** 2026-04-30
**Diverse non-Indian CSV:** 178/181 (98%) ← up from 150/164 (91%) baseline on the same CSV
**Original Indian CSV:** 151/151 (100%) ← up from 168/171 (98%) in v3

## Why this iteration

Adding aliases per-miss was the prior approach. It does not scale: a growing dictionary, new misses on every new cuisine, and prompt-stuffing made the prompt longer without making the lookup smarter. v4 moves the intelligence from a brittle alias dictionary into the lookup layer.

## Changes from v3

### Lookup (`backend/src/services/usdaLookup.ts`, `usdaLookupUtils.ts`)
- **All 50+ aliases commented out** (kept in source as documentation).
- Replaced LIKE+JS-Jaccard candidate search with `pg_trgm` similarity ranking. `findUsdaCandidates` now uses `WHERE normalized_name % $1 OR description % $1 ORDER BY similarity DESC LIMIT 5`. Both `gin_trgm_ops` indexes already existed.
- Added `stripQualifiers` in `usdaLookupUtils.ts` — drops a fixed list of leading/trailing preparation qualifiers (`whole`, `fresh`, `dried`, `raw`, `cooked`, `fried`, `boiled`, `grilled`, `roasted`, `baked`, `steamed`, `chopped`, `minced`, `sliced`, `crushed`, `ground`, `large`, `small`, `medium`, `light`, `soft`, `hard`, `plain`, `sweet`, `salted`, `unsalted`, `organic`, `natural`, `pure`, `extra`) and trailing role nouns (`meat`, `paste`, `powder`).
- `canonicalizeWithUsda` flow: exact → exact-after-strip → trigram top-1 with `TRGM_THRESHOLD=0.45`.

### Prompt (`nutritionEngineV2.ts`)
- Trimmed Rule 13 — removed the dumped USDA-term list and the global-name mapping table.
- Replaced with a single qualifier-stripping nudge: "Use short base ingredient names without preparation qualifiers (`egg` not `whole egg`; `lamb` not `lamb meat`; `thyme` not `dried thyme`; `onion` not `green onion`)."
- Kept the existing compound-hint ban with concrete bad examples.

## Diverse CSV (28 inputs, non-Indian / dialectal / multilingual)

Coverage: British (chips butty, full English brekkie), Australian (smashed avo, brekkie sanga), Southern US (shrimp n grits, po'boy), Northeastern US (clam chowder), Canadian French (poutine), East Asian (`牛肉拉麵`, tteokbokki, soondubu jjigae, tamago kake gohan), SE Asian (nasi lemak in Malay, mie goreng in Indonesian, bánh mì in Vietnamese), Nordic/Slavic (smørrebrød, pierogi in Polish, борщ in Russian), Italian (pasta e fagioli), MENA (shakshuka, خبز بالزعتر in Arabic, İskender kebap in Turkish), African (jollof + dodo, injera + misir wot), Latin American (ceviche in Spanish, arroz com feijão in Portuguese, arepa con hogao in Spanish), Catalan (escalivada).

### Remaining misses (3, all inherent — not in USDA)

| canonical_hint | Reason |
|----------------|--------|
| `khubz` | Arabic flatbread; no USDA entry |
| `injera` | Ethiopian fermented flatbread; only `teff flour` is in USDA |
| `berbere` | Ethiopian spice mix; no USDA entry |

These are genuine USDA gaps. Aliasing them to a similar-but-wrong term (e.g. `injera → teff flour`) papers over the fact that the database doesn't have the food.

## Why trigram + qualifier strip works

| Old miss pattern | How v4 catches it |
|---|---|
| Plural/singular: `fish cake` vs `fish cakes` | Trigram similarity ~0.85 |
| Qualifier prefix: `whole egg`, `dried thyme`, `lamb meat` | Strip step yields `egg`, `thyme`, `lamb` — all exact USDA hits |
| Word order: `wheat flour whole` | Trigram is order-insensitive — high similarity to `whole wheat flour` |
| Dialect/local name with USDA entry: `gochujang`, `pancetta`, `sofrito`, `labneh` | Exact match on the local name itself |
| Compound parenthetical: `hogao (Colombian sauce)` | normalizeUsdaTerm strips punctuation; trigram catches `sofrito` |

## Iteration history

| Version | Hit rate | Key change |
|---------|----------|-----------|
| v1 baseline | 88% (131/149) | Initial state |
| v2 | 94% (147/156) | Fixed alias targets; banned compound hints |
| v3 | 98% (168/171) | Multilingual + global cuisine prompt rules |
| v4 baseline (no aliases, old lookup) | 91% (150/164) | Diverse non-Indian CSV exposed alias gaps |
| **v4 (this) — trgm lookup, zero aliases** | **98% (178/181) on diverse CSV; 100% (151/151) on Indian CSV** | pg_trgm similarity + qualifier-strip preprocessing replaces the alias dictionary entirely |
