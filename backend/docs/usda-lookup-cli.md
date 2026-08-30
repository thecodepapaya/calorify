# USDA lookup CLI

Use this read-only CLI to inspect how the active local USDA snapshot resolves a
single food name. It calls the same V3 local nutrition resolver used by meal
analysis; it does not maintain separate search terms, matching rules, or
ordering.

From `backend/`:

```bash
npm run usda:lookup -- "whole wheat flour"
```

From the repository root:

```bash
npm --prefix backend run usda:lookup -- "whole wheat flour"
```

Run it without arguments for the lookup-type menu and prompts. The menu offers
generic ingredient, branded product, and ambiguous intent. Branded lookup also
asks for concise brand-and-product text, defaulting to the food name:

```bash
npm run usda:lookup
```

Arguments can provide the same choices directly:

```bash
npm run usda:lookup -- --name "dal cooked" --intent generic
npm run usda:lookup -- "pepsi" --intent branded --product-query "Pepsi cola"
```

Use `--json` for an auto-formattable report:

```bash
npm run --silent usda:lookup -- "dal cooked" --intent generic --json
npm run --silent usda:lookup -- "pepsi" --intent branded \
  --product-query "Pepsi cola" --json
```

JSON mode requires the name and intent on the command line; branded JSON also
requires `--product-query`. It never prompts, so standard output remains valid
JSON. `--silent` suppresses npm's command banner.
Every successful lookup also writes the full report to a fresh temporary
`response.json` artifact and prints its path to standard error, leaving standard
output clean for JSON consumers.

The CLI passes the food name as canonical identity with no aliases,
`AS_SERVED` nutrition basis, and `UNKNOWN` preparation. Generic intent excludes
`branded_food`; branded intent searches the full catalog and prioritizes its
`productQuery`; ambiguous intent fails closed. These inputs are printed in the
report. The production resolver then performs its normal active-dataset check,
candidate query, identity and preparation matching, nutrient validation,
ambiguity detection, and deterministic ranking.

The human report contains the selected row and macros per 100 grams when a safe
match exists. It also shows up to five production candidate diagnostics,
including partial candidates rejected for identity, preparation, nutrients,
ambiguity, or lower rank. JSON output includes each candidate's calories,
protein, carbs, fat, and fiber per 100 grams when the values pass validation;
otherwise `macrosPer100g` is `null`. Each candidate exposes `foodName` as the
USDA description-derived display label while retaining the original
`description`. An unmatched result is a successful inspection and therefore
exits with code `0`; database and CLI failures use nonzero codes.

The command never bootstraps, refreshes, or downloads USDA data. It requires an
already active, materialized snapshot through `USDA_DATABASE_URL` or
`DATABASE_URL`.

English full-text candidate retrieval and deterministic stemmed token-set
identity matching are enabled by default. Set `USDA_FTS_ENABLED=false` to
temporarily roll back to trigram-only retrieval. FTS expands retrieval only;
the existing preparation, nutrient, ambiguity, and ranking gates still decide
whether a food can resolve.
