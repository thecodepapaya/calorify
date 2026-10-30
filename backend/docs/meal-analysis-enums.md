# Meal-Analysis Enum Reference

Canonical reference for enum values serialized and parsed across the meal-analysis workflow in `backend`.

Codes use uppercase `SCREAMING_SNAKE_CASE` (except legacy compact model origins which retain lowercase compatibility).

## Meal Types & Provenance

| Field | Allowed values |
| --- | --- |
| `origin` | `user_text`, `model_inferred` |
| `meal_type` | `BREAKFAST`, `LUNCH`, `DINNER`, `SNACK`, `UNSPECIFIED` |
| `portion.kind` | `AMOUNT`, `COUNT` |
| `preparation.method` | See Preparation Methods table below |
| `variation_type` | `INGREDIENT_AMOUNT`, `INGREDIENT_VARIANT`, `INGREDIENT_PRESENCE`, `PREPARATION` |
| `retrieval_intent` | `GENERIC_INGREDIENT`, `BRANDED_PRODUCT`, `AMBIGUOUS` |

## Preparation Methods

Canonical preparation codes used for accurate USDA matching:

| Code | Description | Typical Caloric Impact |
| --- | --- | --- |
| `RAW` | Uncooked / fresh state | Baseline water content |
| `BOILED` | Boiled or poached in water | Water uptake / nutrient leach |
| `STEAMED` | Steamed with minimal added fat | Retains water and nutrients |
| `ROASTED` | Oven roasted / baked dry | Moisture reduction |
| `GRILLED` | Direct heat grilled | Moisture loss, minimal fat |
| `FRIED_PAN` | Sautéed or shallow fried | Moderate fat absorption |
| `FRIED_DEEP` | Submerged deep fried | Significant fat absorption |
| `BAKED` | Baked in oven | Moisture loss |
| `DRIED` | Dehydrated / sundried | Concentrated nutrient density |
| `CANNED` | Preserved in brine / syrup | Moisture and sodium addition |

## Retrieval Intent

- `GENERIC_INGREDIENT`: Matches generic Foundation and SR Legacy foods in the USDA dataset.
- `BRANDED_PRODUCT`: Prioritizes Branded food entries in the USDA dataset matching specific product names and manufacturers.
- `AMBIGUOUS`: Fails closed or asks for user clarification rather than guessing an ungrounded food variant.

