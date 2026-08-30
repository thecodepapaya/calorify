# Meal-analysis enum reference

This is the canonical reference for enum values serialized by the V3
meal-analysis workflow. Schemas reject unknown values; prompts and clients must
send the exact spelling and casing shown here.

Codes use uppercase `SCREAMING_SNAKE_CASE`. The compact model origin is the one
intentional exception: it remains lowercase to preserve the established
two-pass contract.

## Compact model JSON

| Field | Allowed values |
| --- | --- |
| `origin` | `user_text`, `model_inferred` |
| `mealTypeCandidate.value` | `BREAKFAST`, `LUNCH`, `DINNER`, `SNACK`, or `null` |
| `portion.kind` | `AMOUNT`, `COUNT` |
| `preparation.method` | A preparation code from the table below |
| `variationType` | `INGREDIENT_AMOUNT`, `INGREDIENT_VARIANT`, `INGREDIENT_PRESENCE`, `PREPARATION` |

Count, total-amount, and unit-size uncertainty is represented by pass-one
portion ranges. Those concepts are not pass-two `variationType` values.

Pass-two variation fields are type-specific:

| `variationType` | `ingredientName` | `alternatives` |
| --- | --- | --- |
| `INGREDIENT_AMOUNT` | Required ingredient name | Must be empty; the ingredient range carries the values |
| `INGREDIENT_PRESENCE` | Required ingredient name | Must be empty; zero/nonzero ingredient range carries absence/presence |
| `INGREDIENT_VARIANT` | Required ingredient name | One to three canonical food identities |
| `PREPARATION` | Must be `null` | One to three preparation codes |

## Preparation methods

The model selects one method in pass one. Pass two may provide plausible
alternatives using the same closed list. Choose the method that best describes
the food's nutritionally relevant final treatment. Added oil, ghee, sauces, and
other calorie sources still belong in the quantified ingredients; a
preparation code is not a substitute for them.

| Umbrella | Preparation codes | Meaning |
| --- | --- | --- |
| `RAW` | `RAW` | Not cooked |
| `MOIST_HEAT` | `BOILED`, `SIMMERED`, `POACHED`, `STEAMED`, `PRESSURE_COOKED` | Cooked primarily with water or steam |
| `DRY_HEAT` | `BAKED`, `ROASTED`, `GRILLED`, `TOASTED` | Cooked primarily by dry or radiant heat |
| `FAT_HEAT` | `SAUTEED`, `STIR_FRIED`, `SHALLOW_FRIED`, `DEEP_FRIED` | Cooked primarily in fat |
| `PROCESSED` | `FERMENTED`, `PICKLED`, `DRIED`, `SMOKED`, `BLENDED`, `JUICED` | Material non-heat processing |
| `COOKED_UNKNOWN` | `COOKED_UNKNOWN` | Known to be cooked, but the method is unavailable |
| `UNKNOWN` | `UNKNOWN` | Preparation state itself is unavailable |
| `OTHER` | `OTHER` | Known method that the closed taxonomy cannot represent |

Use the most specific supported code. `SIMMERED` fits daal cooked gently in
liquid; `PRESSURE_COOKED` fits daal when pressure cooking is known. Do not use
`OTHER` merely because a regional dish name is unfamiliar.

## Deterministic internal JSON

These values appear after the compact model responses are validated and
adapted. They are not additional values the model may invent.

| Field | Allowed values |
| --- | --- |
| Image origin | `CAMERA_NOW`, `GALLERY` |
| Provenance origin | `USER_TEXT`, `USER_CLARIFICATION`, `IMAGE_OBSERVED`, `CONTEXT_DEFAULT`, `MODEL_INFERRED`, `REFERENCE_DEFAULT`, `DERIVED` |
| Measurement basis | `FINISHED`, `INGREDIENT` |
| Natural measure | `GRAM`, `MILLILITER`, `CUP`, `BOWL`, `PLATE`, `TABLESPOON`, `TEASPOON`, `HANDFUL`, `PINCH`, `SERVING` |
| Question kind | `COUNT`, `UNIT_SIZE`, `TOTAL_AMOUNT`, `INGREDIENT_VARIANT`, `INGREDIENT_AMOUNT`, `INGREDIENT_PRESENCE`, `PREPARATION`, `ADDED_OR_RETAINED_FAT` |
| Ingredient role | `ACTIVE_NUTRITION`, `YIELD_ONLY` |
| Nutrition basis | `RAW`, `DRY`, `COOKED`, `DRAINED`, `RETAINED`, `AS_SERVED` |

`UNKNOWN` means the workflow lacks a reliable value. `OTHER` means it has a
reliable value that is outside a closed taxonomy. They are not interchangeable.
