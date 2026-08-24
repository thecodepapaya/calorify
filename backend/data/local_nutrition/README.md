# Local nutrition pack

The released artifact is one JSON file: `pack.json`. Upload each approved
revision to the same object-storage key. The API exposes it at
`GET /api/v2/food/local-nutrition-pack`; clients send `If-Modified-Since`, keep
their current file on `304`, and validate then atomically replace it on `200`.

## Build

Build against the same active USDA snapshot named by `datasetVersion` in
`starter-pack-selection.json`. The configured `USDA_DATABASE_URL` (or local
`DATABASE_URL` fallback) must be reachable.

```bash
cd backend
npm ci
npm run local-nutrition:build -- \
  data/local_nutrition/starter-pack-selection.json \
  data/local_nutrition/build
```

The output is `data/local_nutrition/build/pack.json`. Before publishing, review:

- every FDC ID, USDA description, data type, and dataset version;
- non-negative calories, protein, carbohydrate, fat, and fibre per 100 g;
- raw, cooked, boiled, baked, fried, and dry states as distinct foods;
- duplicate FDC IDs and suspicious fuzzy resolutions;
- file size and holdout coverage against real ingredient proposals.

Upload by replacing the configured object exactly; do not create versioned
download URLs:

```bash
oci os object put --force \
  --bucket-name <bucket> \
  --name local-nutrition/pack.json \
  --file data/local_nutrition/build/pack.json
```

Set `LOCAL_NUTRITION_PACK_OBJECT=local-nutrition/pack.json`. Object Storage's
`Last-Modified` value is the update clock; pack-version string comparison is not
used to decide whether to download.

## Which foods belong in the pack

Use only rows from the active USDA snapshot. The pack builder emits the USDA
description, normalized name, FDC ID, data type, nutrients, and dataset version.
It deliberately emits no Calorify aliases.

Start with high-frequency generic ingredients that have stable per-100-g
meaning: cooked grains and legumes, raw fruit and vegetables, plain dairy,
eggs, unseasoned cooked proteins, tofu, bread, pasta, and cooking oils. Keep
preparation states separate.

Do not add an item merely to improve apparent coverage. Exclude:

- Calorify-created nutrient rows or model estimates;
- aliases that map one food to another;
- branded products unless product-specific matching is intentionally supported;
- recipes or mixed dishes without a reviewed USDA row;
- rows with incomplete nutrients, ambiguous preparation, or a mismatched USDA
  release.

The current starter selection contains 32 candidates. Treat it as a review
queue, not an automatic allowlist: inspect the resolved USDA row for every
candidate before publishing. Expand it from measured unresolved ingredient
frequency, then re-run accuracy and local/backend parity checks.
