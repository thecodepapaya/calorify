name: Meal decomposition eval

# Meal decomposition eval

Evaluate and improve the V2 pipeline's LLM decomposition step — the first LLM call in `nutritionEngineV2.ts` that breaks a meal description into atomic ingredients with gram estimates and canonical USDA hints.

## What is being evaluated

`analyzeTextMealDecompositionPreview` in [`backend/src/services/nutritionEngineV2.ts`](../../../backend/src/services/nutritionEngineV2.ts) calls the LLM with `DECOMPOSITION_SYSTEM_PROMPT` and then immediately calls `canonicalizeWithUsda` for each ingredient's `canonical_hint`. The CLI exposes this without running the rest of the pipeline (macro fallback, clarifications, presentation).

Two things determine USDA match rate:

1. **`DECOMPOSITION_SYSTEM_PROMPT`** — teaches the LLM what `canonical_hint` to emit per ingredient.
2. **`ALIASES` map** in [`backend/src/services/usdaLookup.ts`](../../../backend/src/services/usdaLookup.ts) — maps raw hint strings to known USDA `normalized_name` values before the fuzzy search runs.

## CLI tool

```bash
# Single input
docker exec calorify-backend-staging npm run analysis:v2:cli -- --text "2 rotis with paneer sabzi"

# Batch CSV
docker exec calorify-backend-staging npm run analysis:v2:cli -- --csv /app/eval_inputs.csv

# JSON output
docker exec calorify-backend-staging npm run analysis:v2:cli -- --csv /app/eval_inputs.csv --json
```

Copy the CSV into the container first:
```bash
sudo docker cp ./eval_inputs.csv calorify-backend-staging:/app/eval_inputs.csv
```

The CLI prints per-ingredient USDA hit/miss and an overall hit rate at the bottom.

## Eval methodology

### 1. Create diverse test inputs

Write a CSV with a `text` header column. Aim for 20–30 inputs covering:
- **Indian** (roti, dal, sabzi, rice dishes, dosas, idli)
- **East Asian** (fried rice, pad thai, miso soup, bibimbap)
- **Western** (salads, pasta, sandwiches, scrambled eggs)
- **Middle Eastern / Mediterranean** (hummus, pita, falafel)
- **Latin** (tacos, rice and beans)
- **Multilingual** — same dishes in Arabic, Chinese, German, French, Spanish, Hindi, etc.

Inputs should vary in specificity: "2 rotis with paneer sabzi", "bowl of chicken fried rice", "鸡蛋炒饭", "Hähnchenbrust mit Brokkoli und Reis".

### 2. Run baseline

```bash
sudo docker exec calorify-backend-staging npm run analysis:v2:cli -- --csv /app/eval_inputs.csv 2>&1
```

Record the overall `Overall USDA hits: N/M (X%)` line and note failure patterns.

### 3. Diagnose misses

Common patterns to look for:

| Pattern | Symptom | Root cause |
|---------|---------|------------|
| Wrong word order in hint | `wheat flour whole` → MISS | Prompt example used wrong term; USDA has `whole wheat flour` |
| Reversed oil name | `oil vegetable` → MISS | Prompt example; USDA has `vegetable oil` |
| Compound hint | `curry powder or garam masala` → MISS | LLM combined alternatives; no USDA entry exists |
| ALIAS target not in USDA | Alias resolves but hits fuzzy path | Alias map points to non-existent normalized_name |
| LIMIT 50 non-determinism | Correct entry exists but not returned | `findUsdaCandidates` returns 50 arbitrary rows with no ORDER BY |

Check whether a term exists in USDA:
```bash
sudo docker exec calorify-backend-staging bash -c 'node -e "
const { Pool } = require(\"/app/node_modules/pg\");
const pool = new Pool({ connectionString: process.env.DATABASE_URL });
const terms = [\"whole wheat flour\", \"vegetable oil\", \"your term here\"];
pool.query(\"SELECT DISTINCT normalized_name FROM usda_foods WHERE normalized_name = ANY(\$1)\", [terms])
  .then(r => { console.log(r.rows.map(x => x.normalized_name).join(\"\n\")); pool.end(); });
"'
```

### 4. Fix aliases

Edit `ALIASES` in `usdaLookup.ts`. Rules:
- Alias **values** must be exact `normalized_name` strings from the USDA table.
- Add reverse aliases when the prompt has historically taught the LLM a wrong term (e.g. `'wheat flour whole': 'whole wheat flour'`).
- Do not add aliases for every possible miss — prefer fixing the prompt so the LLM generates correct hints in the first place.

### 5. Fix the prompt

Edit `DECOMPOSITION_SYSTEM_PROMPT` in `nutritionEngineV2.ts`. Key rules:

- **canonical_hint must always be in English** regardless of input language.
- **One ingredient per row, one term per hint** — never `"curry powder or garam masala"`, `"oil or butter"`, or any compound with "or", "and", commas, or parentheses.
- **Correct USDA term order** — USDA uses `whole wheat flour` not `wheat flour whole`; `vegetable oil` not `oil vegetable`.
- **Examples in the prompt are authoritative** — the LLM mirrors whatever terms the examples use, so errors there propagate everywhere.

### 6. Rebuild and re-run

```bash
sudo docker compose --profile staging up -d --build
sudo docker cp ./eval_inputs.csv calorify-backend-staging:/app/eval_inputs.csv
sudo docker exec calorify-backend-staging npm run analysis:v2:cli -- --csv /app/eval_inputs.csv 2>&1
```

### 7. Save versioned results

Store each iteration in `backend/eval/`:

```
backend/eval/
  v1_baseline.md
  v2_alias_and_prompt_fix.md
  v3_multilingual_global.md
```

Each file should record: date, overall hit rate, changes from previous version, per-input hit rates, and a table of remaining misses with root causes.

## Key files

| File | Purpose |
|------|---------|
| `backend/src/services/nutritionEngineV2.ts` | `DECOMPOSITION_SYSTEM_PROMPT` and `DECOMPOSITION_SCHEMA` |
| `backend/src/services/usdaLookup.ts` | `ALIASES` map and `canonicalizeWithUsda` lookup logic |
| `backend/src/services/usdaLookupUtils.ts` | `normalizeUsdaTerm` — strips punctuation, lowercases |
| `backend/src/scripts/meal-analysis-api-cli.ts` | CLI entry point |
| `backend/eval/` | Versioned eval outputs |

## Known USDA terms (confirmed in DB)

These exact `normalized_name` values exist — use them as alias targets and prompt examples:

```
whole wheat flour    wheat flour         vegetable oil        olive oil
oil olive            oil coconut         oil mustard          ghee
butter               paneer              lentils              chickpeas
kidney beans         mung beans cooked   basmati rice         rice cooked nfs
brown rice           white rice          spinach              broccoli
cauliflower          tomato              onion                green peas
eggplant             okra               chicken breast        beef
ground beef          shrimp cooked       salmon               lamb
egg                  eggs               tofu firm             tofu
salt                 sugar              honey                 garam masala
curry powder         turmeric powder     coriander powder      mustard seeds
ginger               garlic             soy sauce             fish sauce
sesame oil           miso paste         tamarind              coconut
coconut milk         yogurt plain        greek yogurt          cottage cheese
milk whole           milk skim          cheddar cheese         parmesan cheese
bread white          bread whole wheat   naan                  pita bread
hummus               avocado            banana                apple
mango                almond             peanut butter          rolled oats
oats                 pasta cooked        rice noodles          semolina
black beans          gochujang          idli                  upma
```

## Iteration history

| Version | Hit rate | Key change |
|---------|----------|-----------|
| v1 baseline | 88% (131/149) | Initial state |
| v2 | 94% (147/156) | Fixed alias targets; added reverse aliases for `wheat flour whole`/`oil vegetable`; banned compound hints |
| v3 | 98% (168/171) | Added multilingual + global-cuisine guidance; expanded USDA term examples in rule 13; added global portion references |
