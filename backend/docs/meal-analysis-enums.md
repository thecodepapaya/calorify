# Meal-Analysis Enum Reference

Enum values used by the meal-analysis pipeline in `backend`. The sources of truth are the struct tags in `internal/analysis/schema.go` (model output) and the proto files under `protos/` (stored and returned records). All values are uppercase.

## Model output (pass 1 and pass 2)

| Field | Values | Set by |
| --- | --- | --- |
| `meal_type` | `UNKNOWN`, `BREAKFAST`, `LUNCH`, `DINNER`, `SNACK` | Pass 1. The server replaces it with a value chosen from the local capture hour, except between 23:00 and 05:00 |
| `meal_health.health_score` | `NEUTRAL`, `HEALTHY`, `UNHEALTHY` | Pass 1 |
| `preparation_method` | See below | Pass 1, per component |
| `portion.kind` | `EXACT`, `BULK`, `PINCH` | Both passes |
| `portion.origin` | `USER_STATED`, `MODEL_INFERRED` | Both passes |
| `ingredient_type` | `BASE`, `BRANDED` | Pass 2, per ingredient |

### Portion kind

| Value | Meaning | `value`, `min_value`, `max_value` |
| --- | --- | --- |
| `EXACT` | Countable food (2 idli, 3 eggs) | A count. Grams come from `per_unit_grams`, which is required |
| `BULK` | Continuous food (dal, rice, oil) | Grams |
| `PINCH` | Seasoning | Resolves to 0 g |

### Portion origin

- `USER_STATED`: the user gave the quantity. Minimum, value and maximum are equal.
- `MODEL_INFERRED`: the model estimated it, with a range. Only these portions can trigger a clarification question.

### Ingredient type

- `BASE`: a commodity. The USDA search prefers Foundation, SR Legacy and Survey rows.
- `BRANDED`: a packaged product. The search prefers Branded rows.

### Preparation methods

`UNKNOWN`, `RAW`, `BOILED`, `SIMMERED`, `STEAMED`, `PRESSURE_COOKED`, `POACHED`, `BAKED`, `ROASTED`, `GRILLED`, `TOASTED`, `SAUTEED`, `STIR_FRIED`, `SHALLOW_FRIED`, `DEEP_FRIED`, `BLENDED`.

The method is stored and sent to pass 2. It is not used to filter the USDA search.

## Stored and returned records

| Field | Values | Notes |
| --- | --- | --- |
| `meal_analysis.status` | `INITIATED`, `COMPONENT_DECOMPOSED`, `INGREDIENT_DECOMPOSED`, `USDA_MACRO_HYDRATED`, `CLARIFICATION_GENERATED`, `CLARIFICATION_RESOLVED`, `PRESENTED`, `FAILED` | `CLARIFICATION_RESOLVED` is defined but never set; there is no answers route |
| `llm_call.stage` | `PASS_1`, `PASS_2` | |
| `Clarification.type` | `QUANTITY`, `INGREDIENT_ALTERNATIVE`, `PREPARATION_METHOD` | Only `QUANTITY` is generated |

Retired values that may appear in old rows or in `evals/meal-analysis.cases.json` v3: portion kinds `COUNT` and `AMOUNT`, and lowercase origins `user_text` and `model_inferred`.
