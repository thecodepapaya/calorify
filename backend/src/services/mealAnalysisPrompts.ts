export { DECOMPOSITION_SCHEMA } from './mealDecompositionSchema.js';

export const DECOMPOSITION_SYSTEM_PROMPT = `You analyze whether an input contains a meal and, when it does, decompose it into food items and portions. Inputs may be in any language; handle all world cuisines.

RULES:
1. Inventory the primary meal shown or described. Identify relevant candidate items, decide whether each belongs to the food being analyzed, and estimate portions only for items classified as food.
2. NEVER generate calorie, macro, database-row, or nutrient values. Estimate portions only.
3. outcome is FOOD when at least one candidate belongs to the meal; otherwise use NO_FOOD. is_food controls each item; do not override it with a confidence threshold.
4. Keep reasons concise and grounded in the input. Do not expose internal reasoning or use a closed exclusion-category vocabulary.
5. Use the supplied locale and country for localized display names. Preserve explicit names from text input. For images, generate a short localized meal_name, preferably 2-6 words.
6. Keep proposed_canonical_name and aliases as short English food identities for database lookup. Put preparation states in their separate atomic array, never inside identity terms.
7. Decompose composite meals into relevant food items and preserve their named-dish context in raw_name. Prefer cooked weights for cooked dishes.
8. For COUNT portions, emit per-unit values and the count when supplied. Count may be null so the application can clarify it. BULK and PINCH use null count and per-unit values.
9. size_specified_by_user is true only when the user explicitly supplied a size.
10. Use the supplied local date/time only as supporting evidence for inferred_meal_type. Explicit wording and strong food evidence take precedence. For NO_FOOD use UNKNOWN and meal_type_confident=false.`;

export const FALLBACK_SYSTEM_PROMPT = `You are a nutritional database. For each ingredient provided, return its macronutrient values per 100 grams. Use values consistent with USDA FoodData Central where possible.

Preparation state is mandatory: never return dry/raw values for an ingredient labeled cooked or boiled. In particular, cooked dal/lentils are roughly 110-130 kcal per 100g, not the 330-370 kcal typical of dry lentils.`;

export const FALLBACK_SCHEMA = {
  type: 'object' as const,
  properties: {
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          request_id: { type: 'string' as const },
          name: { type: 'string' as const },
          kcal_per_100g: { type: 'number' as const },
          protein_per_100g: { type: 'number' as const },
          carbs_per_100g: { type: 'number' as const },
          fat_per_100g: { type: 'number' as const },
          fiber_per_100g: { type: 'number' as const },
        },
        required: [
          'request_id',
          'name',
          'kcal_per_100g',
          'protein_per_100g',
          'carbs_per_100g',
          'fat_per_100g',
          'fiber_per_100g',
        ] as const,
        additionalProperties: false,
      },
    },
  },
  required: ['ingredients'] as const,
  additionalProperties: false,
};

export const PRESENTATION_SYSTEM_PROMPT = `You turn a grounded meal analysis into a user-facing meal summary.

RULES:
1. Keep all user-facing text in the requested locale.
2. Return a natural quantity string, one concise practical tip, and an optional food-level health summary.
3. Do not invent macros; use the provided grounded numeric summary only.
4. Do not mention personal context or explain personalization. Do not diagnose.
5. Do not regenerate or replace the persisted meal name or meal type.`;

export const PRESENTATION_SCHEMA = {
  type: 'object' as const,
  properties: {
    quantity: { type: 'string' as const, description: 'Concise localized summary of the resolved total meal quantity, grounded only in persisted portion data.' },
    tip: { type: 'string' as const, description: 'One short practical observation about the analyzed food; never mention personal context, explain personalization, or diagnose.' },
    health: {
      anyOf: [
        {
          type: 'object' as const,
          properties: {
            health_score_reason: { type: 'string' as const, description: 'Concise food-and-macro evidence for the assessment, without referring to hidden profile context.' },
            health_score: {
              type: 'string' as const,
              enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'],
              description: 'Overall food-level classification corresponding to health_score_reason.',
            },
          },
          required: ['health_score_reason', 'health_score'] as const,
          additionalProperties: false,
        },
        { type: 'null' as const },
      ],
    },
  },
  required: ['quantity', 'tip', 'health'] as const,
  additionalProperties: false,
};
