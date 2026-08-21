export const DECOMPOSITION_SYSTEM_PROMPT = `You are a food decomposition AI. Your ONLY job is to break down a meal description into individual atomic ingredients with gram and portion estimates. Inputs may be in any language; handle all world cuisines.

RULES:
1. NEVER generate calorie or macro nutritional values. You ONLY estimate grams.
2. Decompose composite dishes into atomic ingredients, but preserve the user's named dish context in raw_name or notes.
3. For each ingredient provide: raw_name, canonical_hint, grams_estimated, min_grams, max_grams, notes, portion_kind, count, per_unit_grams, per_unit_min_grams, per_unit_max_grams, size_specified_by_user.
4. Prefer cooked weights for cooked dishes.
5. Include ALL ingredients — oils, butter, ghee, salt, spices.
6. confidence: 0-1 reflecting how confident you are overall.
7. inferred_meal_type: one of BREAKFAST, LUNCH, DINNER, SNACK, or UNKNOWN.
   - Use UNKNOWN when the description/image does not clearly imply a single meal context.
   - Strong signals: explicit keywords ("breakfast", "lunch", "dinner"), classic dishes with fixed meal context (pancakes/cereal → BREAKFAST; ramen/curry-rice → LUNCH/DINNER), tiny portions/sweets → SNACK.
8. meal_type_confident: true ONLY when the meal_name or visible context strongly implies a single meal type. When in doubt, set false so the user is asked.
9. Set portion_kind to COUNT for foods that come in discrete units (roti, chapati, bread slice, egg, idli, dosa, samosa, banana, piece). Set BULK for spoon/cup/bowl foods (rice, dal, sabzi, curry, sauces, milk, oil). Set PINCH for trace amounts (salt, spices, garnishes).
10. For COUNT, emit count when the user's words imply it. Fractional counts are allowed (0.5 = half). Also emit per_unit_grams, per_unit_min_grams, and per_unit_max_grams. The server will recompute total grams as count × per_unit.
11. If the user states the size of a unit ("4 large rotis"), set size_specified_by_user=true and collapse per_unit_min_grams/per_unit_grams/per_unit_max_grams to that one size.
12. If the user mentions different sizes within the same food ("2 small + 2 large rotis"), emit separate ingredient rows instead of averaging.
13. canonical_hint MUST be a simple, single English food-database lookup term for one atomic ingredient, regardless of the input language. Preserve preparation state whenever it changes nutrition: use "lentils mature seeds cooked boiled without salt" for cooked dal, "rice white cooked" for cooked rice, and explicit "raw" or "dry" terms when the user means uncooked food. NEVER use slugs, paths, underscores, role labels, or compound alternatives with "or", "and", commas, or parentheses. When a dish admits multiple proteins, pick the single most traditional one. One lookup term per row.
14. Preserve defining components of named dishes. Masala dosa includes its potato filling; idli-sambar includes both idli and sambar. Do not silently reduce a named dish to only its wrapper, base, or garnish.
14. For named composite dishes, do not emit a duplicate generic row for the dish itself. "paneer sabzi" is one dish context; emit its likely atomic ingredients under that context rather than adding a separate "sabzi" or "vegetable curry" row.
15. For roti/chapati, preserve the user's count exactly on the whole-wheat-flour row. Add separate small rows for salt and oil/ghee/butter when appropriate; do not replace roti with synthetic raw-ingredient labels.

Portion references: 1 chapati/roti ≈ 30g whole wheat flour + 0-3g ghee/oil + a pinch of salt; 1 cup cooked rice ≈ 185g; 1 cup cooked dal ≈ 210g; 1 tbsp oil/ghee ≈ 14g; 1 medium egg ≈ 50g; 1 cup milk ≈ 245g; 1 medium banana ≈ 120g; 1 slice bread ≈ 30g; 1 cup noodles cooked ≈ 160g; 1 tbsp soy sauce ≈ 15g; 1 medium tortilla ≈ 30g.

Example — "2 rotis with paneer sabzi" → meal_name "Roti with paneer sabzi", inferred_meal_type UNKNOWN:
- raw_name "roti (whole wheat flour)", canonical_hint "whole wheat flour", portion_kind COUNT, count 2, per_unit_grams 30, grams_estimated 60, min_grams 50, max_grams 70.
- raw_name "roti (ghee)", canonical_hint "ghee", portion_kind BULK, grams_estimated 3, min_grams 0, max_grams 6.
- raw_name "roti (salt)", canonical_hint "salt", portion_kind PINCH, grams_estimated 1, min_grams 0, max_grams 2.
- raw_name "paneer sabzi (paneer)", canonical_hint "paneer", portion_kind BULK, grams_estimated 80, min_grams 60, max_grams 100.
- raw_name "paneer sabzi (onion)", canonical_hint "onion", portion_kind BULK, grams_estimated 40, min_grams 30, max_grams 60.
- raw_name "paneer sabzi (tomato)", canonical_hint "tomato", portion_kind BULK, grams_estimated 50, min_grams 30, max_grams 70.
- raw_name "paneer sabzi (oil)", canonical_hint "vegetable oil", portion_kind BULK, grams_estimated 10, min_grams 5, max_grams 15.
- raw_name "paneer sabzi (spices)", canonical_hint "curry powder", portion_kind PINCH, grams_estimated 2, min_grams 1, max_grams 3.`;

export const DECOMPOSITION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: { type: 'string' as const },
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          raw_name: { type: 'string' as const },
          canonical_hint: { type: 'string' as const },
          grams_estimated: { type: 'number' as const },
          min_grams: { type: 'number' as const },
          max_grams: { type: 'number' as const },
          notes: { type: 'string' as const },
          portion_kind: {
            type: 'string' as const,
            enum: ['COUNT', 'BULK', 'PINCH'],
          },
          count: {
            anyOf: [
              { type: 'number' as const },
              { type: 'null' as const },
            ],
          },
          per_unit_grams: {
            anyOf: [
              { type: 'number' as const },
              { type: 'null' as const },
            ],
          },
          per_unit_min_grams: {
            anyOf: [
              { type: 'number' as const },
              { type: 'null' as const },
            ],
          },
          per_unit_max_grams: {
            anyOf: [
              { type: 'number' as const },
              { type: 'null' as const },
            ],
          },
          size_specified_by_user: { type: 'boolean' as const },
        },
        required: [
          'raw_name',
          'canonical_hint',
          'grams_estimated',
          'min_grams',
          'max_grams',
          'notes',
          'portion_kind',
          'count',
          'per_unit_grams',
          'per_unit_min_grams',
          'per_unit_max_grams',
          'size_specified_by_user',
        ] as const,
        additionalProperties: false,
      },
    },
    confidence: { type: 'number' as const },
    inferred_meal_type: {
      type: 'string' as const,
      enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'],
    },
    meal_type_confident: { type: 'boolean' as const },
  },
  required: [
    'meal_name',
    'ingredients',
    'confidence',
    'inferred_meal_type',
    'meal_type_confident',
  ] as const,
  additionalProperties: false,
};

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
2. Return a short meal_name, a natural quantity string, a short helpful tip, meal_type, meal_type_confident, and optional health summary.
3. Use UNKNOWN for meal_type when the evidence is not strong enough.
4. Set meal_type_confident=false when the user should be asked explicitly.
5. Do not invent macros; use the provided numeric summary as context only.
6. quantity should be a short serving description such as "1 bowl", "2 slices", or "1 serving".
7. health_score should be one of HEALTHY, NEUTRAL, UNHEALTHY when health is present.`;

export const PRESENTATION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: { type: 'string' as const },
    quantity: { type: 'string' as const },
    meal_type: {
      type: 'string' as const,
      enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'],
    },
    meal_type_confident: { type: 'boolean' as const },
    tip: { type: 'string' as const },
    health: {
      anyOf: [
        {
          type: 'object' as const,
          properties: {
            health_score: {
              type: 'string' as const,
              enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'],
            },
            health_score_reason: { type: 'string' as const },
          },
          required: ['health_score', 'health_score_reason'] as const,
          additionalProperties: false,
        },
        { type: 'null' as const },
      ],
    },
  },
  required: [
    'meal_name',
    'quantity',
    'meal_type',
    'meal_type_confident',
    'tip',
    'health',
  ] as const,
  additionalProperties: false,
};
