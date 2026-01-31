/**
 * Schema Generator Utility
 * Generates OpenAPI/JSON Schema from Proto TypeScript types
 * This ensures API documentation stays in sync with proto definitions
 * 
 * IMPORTANT: When proto definitions change, you MUST update these schemas!
 * 
 * These schemas are derived from the proto definitions in:
 * - protos/calorify/meal_detection.proto
 * - protos/meal/meal.proto
 * 
 * Workflow when protos change:
 * 1. Regenerate TypeScript types: cd ../scripts && ./generate_protos.sh
 * 2. Update the corresponding schema functions below
 * 3. Run validation: npm run validate-schemas
 * 4. Update routes to use new schemas (if needed)
 * 
 * See SCHEMA_SYNC.md for detailed instructions.
 */

/**
 * Generate OpenAPI schema for MealMacro
 */
export function getMealMacroSchema() {
  return {
    type: 'object',
    required: ['calories', 'carbs', 'protein', 'fat', 'fiber'],
    properties: {
      calories: { type: 'integer', description: 'Calories in kcal' },
      carbs: { type: 'integer', description: 'Carbohydrates in grams' },
      protein: { type: 'integer', description: 'Protein in grams' },
      fat: { type: 'integer', description: 'Fat in grams' },
      fiber: { type: 'integer', description: 'Fiber in grams' },
    },
  };
}

/**
 * Generate OpenAPI schema for MealHealth
 */
export function getMealHealthSchema() {
  return {
    type: 'object',
    required: ['healthScore'],
    properties: {
      healthScore: {
        type: 'string',
        enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'],
        description: 'Health score of the meal',
      },
      healthScoreReason: {
        type: 'string',
        description: 'Reason for the health score',
      },
    },
  };
}

/**
 * Generate OpenAPI schema for Meal
 */
export function getMealSchema() {
  return {
    type: 'object',
    required: ['name', 'quantity', 'type', 'macros'],
    properties: {
      name: { type: 'string', description: 'Name of the meal' },
      quantity: { type: 'string', description: 'Quantity description (e.g., "1 bowl", "2 slices")' },
      type: {
        type: 'string',
        enum: ['UNKNOWN', 'BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'],
        description: 'Type of meal',
      },
      macros: getMealMacroSchema(),
      health: getMealHealthSchema(),
    },
  };
}

/**
 * Generate OpenAPI schema for Variation Option
 */
export function getVariationOptionSchema() {
  return {
    type: 'object',
    required: ['option'],
    properties: {
      option: { type: 'string', description: 'Option text (e.g., "curd", "labaan")' },
      macroDiff: {
        ...getMealMacroSchema(),
        description: 'Expected macro difference if this option is selected',
      },
    },
  };
}

/**
 * Generate OpenAPI schema for Variation
 */
export function getVariationSchema() {
  return {
    type: 'object',
    required: ['question', 'options'],
    properties: {
      question: {
        type: 'string',
        description: 'Question to ask the user (e.g., "What does the white bowl contain?")',
      },
      options: {
        type: 'array',
        items: getVariationOptionSchema(),
        description: 'List of options with their expected macro differences',
      },
    },
  };
}

/**
 * Generate OpenAPI schema for MealDetectionResult
 */
export function getMealDetectionResultSchema() {
  return {
    type: 'object',
    required: ['mealIdentified', 'calorieConfidence', 'tip'],
    properties: {
      mealIdentified: {
        type: 'boolean',
        description: 'Whether a meal was successfully identified',
      },
      calorieConfidence: {
        type: 'string',
        enum: ['UNSPECIFIED', 'LOW', 'MEDIUM', 'HIGH'],
        description: 'Confidence level for calorie estimation',
      },
      tip: {
        type: 'string',
        description: 'Helpful tip about the meal',
      },
      meal: {
        ...getMealSchema(),
        description: 'Meal information (present if mealIdentified is true)',
      },
      metadata: {
        type: 'object',
        properties: {
          imageUrl: { type: 'string', description: 'URL of the image used for detection' },
          mealDescription: { type: 'string', description: 'Text description used for detection' },
          selectedVariations: {
            type: 'array',
            items: getVariationSchema(),
            description: 'Variations that were selected',
          },
        },
      },
    },
  };
}

/**
 * Generate OpenAPI schema for MealDetectionResponse
 */
export function getMealDetectionResponseSchema() {
  return {
    type: 'object',
    required: ['result', 'variations'],
    properties: {
      result: {
        ...getMealDetectionResultSchema(),
        description: 'Meal detection result',
      },
      variations: {
        type: 'array',
        items: getVariationSchema(),
        description: 'Questions to improve confidence when confidence is LOW or MEDIUM',
      },
    },
  };
}

/**
 * Generate OpenAPI schema for ImageMealDetectionRequest
 */
export function getImageMealDetectionRequestSchema() {
  return {
    type: 'object',
    required: ['imageUrl'],
    properties: {
      imageUrl: {
        type: 'string',
        format: 'uri',
        description: 'URL to the image',
      },
      mimeType: {
        type: 'string',
        description: 'MIME type of the image (e.g., "image/jpeg", "image/png")',
        enum: ['image/jpeg', 'image/png', 'image/webp', 'image/gif'],
      },
    },
  };
}

/**
 * Generate OpenAPI schema for TextMealDetectionRequest
 */
export function getTextMealDetectionRequestSchema() {
  return {
    type: 'object',
    required: ['textDescription'],
    properties: {
      textDescription: {
        type: 'string',
        description: 'Text description of the meal',
      },
    },
  };
}

/**
 * Get error response schema
 */
export function getErrorResponseSchema() {
  return {
    type: 'object',
    required: ['detail'],
    properties: {
      detail: {
        type: 'string',
        description: 'Error message',
      },
    },
  };
}

/**
 * Get standard error responses for OpenAPI
 */
export function getStandardErrorResponses() {
  return {
    400: {
      description: 'Bad request',
      ...getErrorResponseSchema(),
    },
    401: {
      description: 'Unauthorized - invalid or missing authentication token',
      ...getErrorResponseSchema(),
    },
    500: {
      description: 'Internal server error',
      ...getErrorResponseSchema(),
    },
  };
}
