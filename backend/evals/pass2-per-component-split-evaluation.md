# Pass-2 Per-Component Split: Before and After

Record of what changed when pass 2 moved from one call per meal to one call per component, why, and what three meals showed before and after. Completed 2026-11-17.

The current behaviour is described in [the pipeline doc](../docs/meal-analysis-pipeline.md).

## Summary

- For a five-component meal, pass-2 wall time fell from 12.07 s to 6.97 s and end-to-end time from 24.82 s to 19.10 s.
- Single-component meals did not change, as expected.
- Pass 2 now writes more: output tokens for the large meal rose by a third, and prompt tokens rose 3.6 times.
- Calorie totals moved, but mostly because pass 1 gave different portions on the second run. One run per meal cannot separate that from the split.
- A follow-up the same day set reasoning effort to `none`: single-component meals dropped to 4 to 5 s end to end, with one output regression seen on a multi-component meal (see "Follow-up: reasoning effort none").

## Why the split was made

On 2026-11-14 the two model calls were 96% of analysis time. Pass 2 fitted `1.60 s + 7.43 ms per output token`, so its time grew with the number of ingredients it had to write. A five-component meal spent 12.07 s writing 1,415 tokens in one call.

Splitting pass 2 into one call per component lets the calls run in parallel. Wall time then follows the slowest component, not the sum of all of them.

## What changed

| Area | Before | After | Why |
|---|---|---|---|
| Pass-2 calls | One call with the whole pass-1 output | One call per component, at most 10 at once | Parallel calls; wall time follows the slowest one |
| Pass-2 input | Every component plus tip and meal health | The context prefix and one component | A call cannot write ingredients for another component, and the prompt is smaller |
| Link to the component | The model wrote `component_name` on each ingredient | The server nests each response under its component | Saves output tokens and removes a field the model could get wrong |
| Stored shape | Flat ingredient list | Ingredients nested under components, with `component_id` and `ingredient_id` | Two components with the same name no longer collide |
| Failure | Any pass-2 error fails the analysis | Any component's failure fails the analysis | Same behaviour; no partial ingredient lists |
| `llm_call` | One `PASS_2` row per analysis | One `PASS_2` row per component, with `component_id` | Each call can be attributed |
| Dashboard LLM card | Per-call averages | Per-analysis token sums and stage wall time | With several calls per analysis, per-call averages stop describing a meal |
| Pass-2 prompt | "Decompose meal components", with a rule tying each ingredient to a component | "Decompose the provided meal component"; the linking rule is gone | The call now sees one component |
| Portion rule | Portions split "in grams" | Countable foods must be `EXACT`; continuous foods `BULK` | "In grams" was pushing the model to weigh eggs |
| Clarifications | Up to 2 ingredient questions | Up to 2 questions, components first, then ingredients; `EXACT` ingredients skipped | The component's portion is the root uncertainty |
| Pipeline timeout | 45 s | 30 s | The USDA database is fully indexed in production, so even complex lookups resolve in about 1.5 s or less and the extra headroom is not needed |

The portion rule, the `EXACT` skip and the timeout were uncommitted working-tree changes at the time of the "after" runs.

## Method

- Three text inputs, one run each, before and after, on a local backend with `gpt-6-luna`.
- Before: 2026-11-14, single-call pass 2. After: 2026-11-17, per-component pass 2.
- Numbers come from `meal_analysis` stage timestamps and `llm_call` rows.

| Meal | Before | After |
|---|---|---|
| 6 roti, daal, rice, alloo sabzi and raita | `eb167e86` | `172a7813` |
| 1 guava | `59311a62` | `b5ff51a2` |
| 4 roti parantha | `bd336b5e` | `d51815c6` |

**Limits:** one run per meal. Pass 1 is not deterministic, so the two runs of a meal started from different portions. Timing is from a local machine.

## Timing

| Meal | Stage | Before | After |
|---|---|---|---|
| Large meal | Pass 1 | 9.48 s | 8.93 s |
| | Pass 2 | 12.07 s | 6.97 s |
| | USDA | 3.26 s | 3.19 s |
| | End to end | 24.82 s | 19.10 s |
| Guava | Pass 1 | 3.97 s | 3.19 s |
| | Pass 2 | 2.80 s | 2.82 s |
| | USDA | 2.76 s | 0.07 s |
| | End to end | 9.53 s | 6.08 s |
| Parantha | Pass 1 | 5.81 s | 4.47 s |
| | Pass 2 | 5.49 s | 5.87 s |
| | USDA | 3.36 s | 0.21 s |
| | End to end | 14.66 s | 10.55 s |

- The guava and parantha end-to-end gains come from pass 1 and the USDA step, not from the split.
- The USDA step ranged from 0.07 s to 3.36 s locally. The local USDA database is only partially indexed, which is why some lookups are slow there; production is fully indexed.
- Pass 1 is now the largest single step for the large meal.

### Pass-2 calls for the large meal, after

| Component | Duration | Output tokens |
|---|---|---|
| Rice | 2.78 s | 136 |
| Daal | 3.88 s | 245 |
| Roti | 4.63 s | 368 |
| Raita | 4.84 s | 433 |
| Aloo sabzi | 6.97 s | 701 |

- The aloo sabzi call set the wall time. The earlier fit predicts 6.81 s for 701 tokens, so the per-token model still holds.
- The plan had estimated 5.35 s for this meal. It missed because the slowest component wrote more tokens than expected.

### Tokens for the large meal

| | Before | After |
|---|---|---|
| Pass-2 calls | 1 | 5 |
| Pass-2 prompt tokens | 1,216 | 4,388 |
| Pass-2 output tokens | 1,415 | 1,883 |

Six of the 15 ingredients after the split are `PINCH` seasonings. They add output tokens and no calories.

## Output

### Calories

| Meal | Before | After |
|---|---|---|
| Large meal | 1,297 kcal (908 to 1,727) | 1,402 kcal (979 to 1,996) |
| Guava | 102 kcal (68 to 136) | 68 kcal (54 to 102) |
| Parantha | 990 kcal (836 to 1,161) | 990 kcal (861 to 1,126) |

### Pass-1 portions

| Component | Before | After |
|---|---|---|
| Roti | 6 x 40 g | 6 x 45 g |
| Daal | 180 g (120 to 250) | 200 g (120 to 300) |
| Rice | 180 g (100 to 250) | 180 g (100 to 300) |
| Aloo sabzi | 150 g (100 to 220) | 160 g (100 to 250) |
| Raita | 120 g (60 to 180) | 120 g (60 to 200) |
| Guava | 1 x 150 g | 1 x 100 g |
| Parantha | 4 x 80 g | 4 x 75 g |

Pass 1 was not changed by the split, so these differences are its run-to-run variance. The guava's drop from 102 to 68 kcal is entirely this.

### Ingredients for the large meal

| Component | Before | After |
|---|---|---|
| Roti | flour 180 g; 598 kcal | flour 195 g, water 90 g; 647 kcal |
| Daal | lentils 140 g, oil 5 g, onion 15 g, tomato 15 g, curry powder; 213 kcal | lentils 200 g; 232 kcal |
| Rice | cooked rice 180 g; 234 kcal | cooked rice 180 g; 234 kcal |
| Aloo sabzi | potato 115 g, oil 8 g, onion 15 g, tomato 10 g, curry powder; 168 kcal | potato 125 g, oil 10 g, onion 15 g, tomato 8 g, cumin, turmeric, chilli powder; 207 kcal |
| Raita | yogurt 105 g, cucumber 15 g; 84 kcal | yogurt 105 g, cucumber 12 g, cumin, salt; 84 kcal |
| Total | 14 ingredients | 15 ingredients |

- **Daal lost its fat and aromatics.** It went from five ingredients to lentils alone. The prompt allows no cooking fat for a simmered dish, so this is within the rules, but it is a change.
- **Aloo sabzi and raita gained seasonings.**
- **Parantha** went from flour 245 g, oil 20 g and salt to flour 240 g, water 110 g, ghee 22 g and salt. The total stayed at 990 kcal.

### USDA matches worth noting

- "Cumin seed, ground" matched "Flaxseed, ground" at similarity 0.82. It is a `PINCH`, so it added no calories.
- "Potatoes, flesh and skin, cooked, sautéed" matched "Potatoes, boiled, cooked in skin, flesh, with salt" at 0.84.
- Pass 1 named raita "Yogurt, plain, whole milk" after and "Yogurt, with cucumber, Indian-style, raita" before.

### Clarification questions

| Meal | Before | After |
|---|---|---|
| Large meal | Quantity of Wholemeal wheat flour? Quantity of Cooked white rice? | Quantity of Rice? Quantity of Daal? |
| Guava | none | none |
| Parantha | Quantity of Wholemeal wheat flour? Quantity of Vegetable oil? | Quantity of Wholemeal wheat flour in Roti paratha? Quantity of Ghee in Roti paratha? |

- The large meal now asks about components, which is the tiering working as designed.
- The parantha count was stated by the user, so the component tier is skipped and the questions fall to flour and ghee. A user cannot answer how much flour is in a paratha; the real unknown is the paratha's size.

## Conclusions

1. The split cuts pass-2 time for multi-component meals and does nothing for single-component ones.
2. Wall time now depends on the most detailed component, so trimming that component's output is the next pass-2 lever.
3. Per-component calls write more in total. Seasonings are a visible part of that.
4. Calorie changes between the two runs are dominated by pass-1 portion variance. Judging output quality needs repeated runs, which the [evals plan](../../docs/plans/meal-analysis-evals.md) covers.

## Open questions raised

- Should pass 2 keep listing `PINCH` seasonings?
- What should be asked when the user states a count but the unit size is uncertain?
- Should a simmered dal carry cooking fat?
- Should reasoning effort stay at `none`, given the duplicated raita below?

## Follow-up: reasoning effort none

Run on 2026-11-17 after three changes: the OpenAI SDK moved from v1.12.0 to v3.100.0, reasoning effort changed from `low` to `none` on both passes, and `llm_call` gained `reasoning_tokens`, `reasoning_effort`, `finish_reason`, `response_model` and `service_tier`.

Four meals, one run each, compared with the `low` runs made earlier the same day on the per-component code.

| Meal | Effort `low` | Effort `none` |
|---|---|---|
| 4 roti, raita, kaddu sabzi and raita | `0b791f49` | `8229ebd5` |
| 4 roti parantha | `d51815c6` | `f57fe5fc` |
| 1 guava | `b5ff51a2` | `1cfd9c6f` |
| 6 roti, daal, rice, alloo sabzi and raita | `172a7813` | `e6a73daa` |

### What the new columns show

- The API accepted `none`. Every call reports `reasoning_tokens` 0, `finish_reason` `stop`, `response_model` `gpt-6-luna` and `service_tier` `default`.
- The `low` runs predate the `reasoning_tokens` column, so how many of their tokens were reasoning is not recorded. It can only be inferred from the drop in output tokens, and the outputs themselves differ.

### Timing and tokens

| Meal | Stage | `low` | `none` |
|---|---|---|---|
| Parantha | Pass 1 | 4.47 s, 322 tokens | 2.42 s, 151 tokens |
| | Pass 2 | 5.87 s, 505 tokens | 2.27 s, 162 tokens |
| | End to end | 10.55 s | 4.75 s |
| Guava | Pass 1 | 3.19 s, 219 tokens | 2.14 s, 142 tokens |
| | Pass 2 | 2.82 s, 118 tokens | 1.86 s, 82 tokens |
| | End to end | 6.08 s | 4.06 s |
| Roti, raita, kaddu sabzi | Pass 1 | 6.22 s, 486 tokens | 5.63 s, 580 tokens |
| | Pass 2 (slowest call) | 6.15 s, 613 tokens | 4.26 s, 444 tokens |
| | USDA | 0.38 s | 3.27 s |
| | End to end | 12.75 s | 13.16 s |
| Five-component meal | Pass 1 | 8.93 s, 792 tokens | 4.80 s, 447 tokens |
| | Pass 2 (slowest call) | 6.97 s, 701 tokens | 5.36 s, 444 tokens |
| | Pass 2 (all calls) | 1,883 tokens | 1,527 tokens |
| | USDA | 3.19 s | 0.86 s |
| | End to end | 19.10 s | 11.03 s |

- **Single-component meals are now at 4 to 5 s end to end.** Both passes roughly halved.
- **The five-component meal fell from 19.10 s to 11.03 s.** Pass 1 nearly halved. Against the original single-call run of 2026-11-14 (24.82 s), end-to-end time is down 56%.
- **The roti, raita, kaddu meal did not get faster overall.** Pass 2 improved, but pass 1 wrote more tokens because it produced four components where the `low` run produced three, and the USDA step took 3.27 s.
- **The time per token is unchanged.** Calls at `none` still fit roughly 1.3 s plus 6.6 to 7.4 ms per output token. The saving comes from writing fewer tokens.
- **The slow USDA step is a local artefact.** The first analysis in each session took about 3.2 s in the USDA step and the following ones 0.06 to 0.86 s. The local USDA database is only partially indexed; production is fully indexed.

### Output

| Meal | `low` | `none` |
|---|---|---|
| Roti, raita, kaddu sabzi | 692 kcal, 3 components | 852 kcal, 4 components |
| Parantha | 990 kcal | 879 kcal |
| Guava | 68 kcal | 102 kcal |
| Five-component meal | 1,402 kcal, 15 ingredients | 1,382 kcal, 20 ingredients |

**Roti, raita, kaddu sabzi**

- **Raita was counted twice.** The input mentions raita twice. The `low` run merged it into one 200 g component. The `none` run produced two raita components of 125 g each, and its own tip reads "If both mentions of raita are the same serving, count it once". This is the one change that looks like a loss from removing reasoning. One run cannot confirm it.
- **Roti flour rose from 120 g to 160 g** for the same 4 x 40 g component (398 to 531 kcal). At `none`, the flour alone equals the whole roti weight.
- **Kaddu fell from 152 to 120 kcal** although the portion stayed 175 g. Pass 2 named the pumpkin "Pumpkin, cooked, with salt", which matched a boiled, drained row at 26 kcal for 145 g. The `low` run's "Pumpkin, cooked" matched a row at 81 kcal for 155 g. The name change alone moved the pumpkin's calories about threefold.

**Parantha**

- `low`: flour 240 g, water 110 g, ghee 22 g, salt. `none`: flour 185 g and oil 30 g only.
- At `none` the ingredients sum to 215 g against a 320 g component; at `low` they summed to 372 g against 300 g. Neither run kept pass 2 consistent with the pass-1 weight.

**Guava**

- One guava was 100 g at `low` and 150 g at `none`. The same swing appeared between the two earlier runs, so this is pass-1 variance, not an effect of the setting.
- Pass 1 named it "Guava, raw" this time and "Guavas, common, raw" before; the two resolved to different USDA rows.

**Five-component meal**

| Component | Single call, 2026-11-14 | Split, `low` | Split, `none` |
|---|---|---|---|
| Roti | 598 kcal | 647 kcal | 598 kcal |
| Daal | 213 kcal | 232 kcal | 251 kcal |
| Rice | 234 kcal | 234 kcal | 260 kcal |
| Aloo sabzi | 168 kcal | 207 kcal | 204 kcal |
| Raita | 84 kcal | 84 kcal | 69 kcal |
| Total | 1,297 kcal | 1,402 kcal | 1,382 kcal |

- **The three totals sit within 8% of each other**, and most of the movement follows pass-1 portions (rice 180 g, then 200 g; raita 120 g, then 100 g).
- **Daal has its aromatics back:** lentils 210 g, onion, tomato, 5 g of sunflower oil and curry powder. At `low` it was lentils alone.
- **The sunflower oil counted as 0 kcal.** It matched the Foundation row "Oil, sunflower" (`fdc_id` 1750349), which has no energy or fat value stored. About 44 kcal is missing. 43 non-branded rows in `usda_foods` have no energy value, and the search does not exclude them. Since this run, the USDA migration completes 25 of them, including this one, from the SR Legacy record of the same food.
- **Cooked potato matched a raw row.** "Potatoes, flesh and skin, cooked" resolved to "Potatoes, flesh and skin, raw" at similarity 0.88.
- **Raita lists six ingredients**, including 1 g of tomato, 2 g of onion and mint with no weight.
- **Pass 1 renamed four of the five components**: "Lentil curry, cooked", "Potato curry, cooked", "Raita, prepared", "Roti, whole wheat, cooked".

### Clarification questions

| Meal | `low` | `none` |
|---|---|---|
| Roti, raita, kaddu sabzi | Quantity of Kaddu sabzi? Quantity of Raita? | Quantity of Kaddu sabzi? Quantity of Wholemeal flour in Roti? |
| Parantha | Quantity of Wholemeal wheat flour in Roti paratha? Quantity of Ghee in Roti paratha? | Quantity of Wholemeal wheat flour in Roti paratha? Quantity of Vegetable oil in Roti paratha? |
| Guava | none | none |
| Five-component meal | Quantity of Rice? Quantity of Daal? | Quantity of Rice? Quantity of Raita? |

### Reading the follow-up

1. `none` is accepted and roughly halves both passes on simple meals.
2. On the five-component meal it nearly halved pass 1 and cut pass 2 by about a quarter. On the roti, raita, kaddu meal the gain was lost to an extra component.
3. One output regression was seen (the duplicated raita). Whether `none` causes it needs repeated runs.
4. Naming drift between runs changed which USDA row was chosen in two of the three meals, and in one case changed an ingredient's calories threefold. This is independent of the reasoning setting.
5. A matched USDA row with no energy value silently contributes zero calories.
