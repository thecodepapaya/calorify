# Meal-Analysis Pipeline Architecture

The meal analysis engine in `backend` turns user food input (text or image) into components, ingredients and nutrition totals grounded in USDA reference foods.

This is the current behaviour of `internal/analysis`. Open work is tracked in [`TODO.md`](../TODO.md) section 3.

## Pipeline Overview

`POST /users/meals/analysis` validates the input, creates a `meal_analysis` row, returns the id, and starts the pipeline in a background goroutine (`service.go` `runPipeline`). The whole pipeline runs under a 30 s timeout.

```text
User Input (Text / Image)
         │
         ▼
[ Pass 1: Component Decomposition ]      ── one OpenAI structured-output call
         │  (meal name, quantity, meal type, tip, health, components with portions)
         ▼
[ Pass 2: Ingredient Decomposition ]     ── one call per component, in parallel
         │  (ingredients with portions, nested under their component)
         ▼
[ USDA Retrieval and Scaling ]           ── Ollama (embeddinggemma-2) + pgvector
         │  (top-1 USDA row per ingredient; macros scaled to grams)
         ▼
[ Clarification Generation ]             ── pure Go, no model call
         │  (up to 2 quantity questions, components first)
         ▼
[ Final Response ]                       ── PostgreSQL (meal_analysis)
```

## Stages

### 1. Pass 1: Component Decomposition

- Both passes use `gpt-6-luna` with reasoning effort `none` (`llmReasoningEffort` in `utils.go`).
- One call (`decomposeComponents`) with the context prefix (country, locale, timezone, capture time), the text, and the image if present.
- Output (`Pass1DTO`): meal `name`, `quantity`, `meal_type`, `tip`, `meal_health`, and `components`. Each component has a localised `name`, an English `canonical_name`, a `preparation_method` and a `portion`.
- Each named dish is one component; base ingredients are not split out here.
- A response with no components fails the analysis with `pass 1 returned no components`. This is what non-food input produces.

### 2. Pass 2: Ingredient Decomposition

- One call per component (`decomposeIngredients`), run in parallel with at most 10 at once.
- **Input per call:** the context prefix plus that one component as JSON (name, canonical name, preparation method, portion). Meal-level fields are not sent.
- **Output per call** (`Pass2CallDTO`): `ingredients`, each with a localised `name`, an English `canonical_name`, an `ingredient_type` (`BASE` or `BRANDED`) and a `portion`.
- The model does not name the component. The server nests each response under its component, in pass-1 order, as `Pass2DTO{components: [{name, canonical_name, ingredients}]}`.
- **Portion kinds:** countable foods (eggs, bread slices, roti, idli) are `EXACT` with a count and per-unit grams; continuous foods (dal, curry, rice, oil) are `BULK` in grams; seasonings are `PINCH` and resolve to 0 g.
- **Validation:** an `EXACT` portion without `per_unit_grams` fails the analysis, with the component and ingredient named in the error.
- **Failure:** any failed call fails the whole analysis and cancels the others. There are no partial ingredient lists.
- **Cost:** the prompt is sent once per component, about 870 to 890 input tokens each. This was accepted in exchange for the shorter wall time.

### 3. USDA Retrieval and Scaling

- All ingredient names are embedded in one batch call to Ollama (`embeddinggemma-2`, 768 dimensions). Query text is `"task: search result | query: " + canonical_name`; the index-time prefix `"title: none | content: " + description` is applied by `cmd/usda -embed*`.
- `searchUsda` (`db.go`) takes the top row from base foods and the top row from branded foods, and prefers base for `BASE` ingredients and branded for `BRANDED`.
- There is no similarity threshold and no fallback. The best candidate is taken unconditionally, and an ingredient with no candidate fails the analysis.
- Searches run in parallel, at most 10 at once per analysis.
- Macros per 100 g (energy, protein, fat, carbs, fibre) are scaled to each ingredient's minimum, nominal and maximum grams, then summed per component and for the meal.
- Stored as `UsdaEnriched{components: [{component_id, name, canonical_name, ingredients, macros}], macros}`. Each ingredient carries `component_id` and `ingredient_id`, assigned from pass-1 component order and the order within each pass-2 response.

### 4. Clarification Generation

Pure Go (`generateClarification`); no model call. At most 2 questions, all of type `QUANTITY`, with Small, Medium and Large options carrying macro deltas.

- **Tier 1, components:** portion is `MODEL_INFERRED`, kind is not `PINCH`, and the component's calorie range (max minus min) is over 80 kcal. Sorted by range, largest first. Question: "Quantity of {component}?".
- **Tier 2, ingredients:** only in components not asked about in tier 1. Ingredients with an `EXACT` portion are skipped. Calorie range over 80 kcal, largest first. Question: "Quantity of {ingredient} in {component}?".
- Question text is localised from `clarifications_i18n.json` and uses the localised display names.

**Why calorie range is the trigger:** portion ranges are not comparable across kinds. Two pieces of roti, 130 g of dal and 20 g of cucumber cannot share one threshold, and ranking by grams would put rice above roti even when roti is the larger calorie uncertainty. One calorie threshold works for every kind. A component's range is the sum of its ingredients' ranges, so no extra computation is needed.

Answers are not handled yet: there is no answers route, so a question has no effect on the stored meal.

### 5. Final Response

`prepareFinalResponse` builds `MealPackage{meal, clarifications}`. The meal carries name, quantity, type, macros, health and metadata; it has no ingredient list. Meal type is chosen from the local capture hour, and the model's value is used only between 23:00 and 05:00.

## Status and Storage

`meal_analysis.status` moves through `INITIATED`, `COMPONENT_DECOMPOSED`, `INGREDIENT_DECOMPOSED`, `USDA_MACRO_HYDRATED`, `CLARIFICATION_GENERATED` and `PRESENTED`. Any stage error or panic sets `FAILED` with a `failure_reason`. Each stage writes its JSON column and a timestamp.

Clients poll `GET /users/meals/analysis/{analysis_id}` for progress and the final result.

## Observability

- **`llm_call`:** one row per model call, with stage, model, token counts (prompt, cached, completion, reasoning), duration and error. Each row also records the `reasoning_effort` sent, and from the response the `finish_reason`, the resolved `response_model` and the `service_tier`. A completed analysis has one `PASS_1` row and one `PASS_2` row per component. `PASS_2` rows carry `component_id`; `PASS_1` rows leave it NULL. Failed calls are recorded with their error.
- **Dashboard LLM card:** values are per analysis, over presented analyses only. Tokens are summed across a stage's calls. Duration is the stage's wall time (from the stage timestamps), not the sum of the parallel calls, because wall time is the wait and tokens are the bill. A small graph plots pass-2 wall time.
- **Tracing:** every stage has an OpenTelemetry span (`internal/telemetry/`).

Rows stored before the per-component split have a flat ingredient list and do not parse as the nested shape; the dashboard shows them without ingredients.

## Open Questions

1. **Preparation-state trap:** embeddings score `"raw white rice"` and `"cooked white rice"` above 0.9, but their calories per 100 g differ about 2.8x. The search does not filter by preparation state.
2. **No similarity floor:** the top candidate is accepted whatever its score, so a poor match gives silently wrong macros.
3. **No fallback for unresolvable ingredients:** a missing candidate fails the whole analysis.

These are tracked in `TODO.md` section 3 ("LLM Nutrition Fallback", "Preparation State Filtering", "Ingredient Match & Portion Accuracy").
