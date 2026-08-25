/** Manually maintained OpenAPI schema helpers for JSON HTTP endpoints. */

/** JSON body for simple acks and standard errors (`calorify.ApiResult`). */
export function getApiResultSchema() {
  return {
    type: 'object',
    required: ['ok', 'message'],
    properties: {
      ok: {
        type: 'boolean',
        description: 'True for success acknowledgements; false for errors.',
      },
      message: {
        type: 'string',
        description: 'Human-readable message (often empty on success when unused).',
      },
    },
    additionalProperties: true,
  };
}

/**
 * Get error response schema
 */
export function getErrorResponseSchema() {
  return getApiResultSchema();
}

/** POST /api/v1/food/ai-summary/generate (calorify.AiMealSummaryResponse JSON) */
export function getAiMealSummaryResponseSchema() {
  return {
    type: 'object',
    required: ['mealCount', 'topFoods', 'macroBalanceScore', 'trend'],
    properties: {
      summary: { type: 'string', nullable: true },
      generatedAt: { type: 'string', nullable: true },
      mealCount: { type: 'integer' },
      topFoods: { type: 'array', items: { type: 'string' } },
      macroBalanceScore: { type: 'integer' },
      trend: { type: 'string', enum: ['UP', 'DOWN', 'STEADY', 'UNSPECIFIED'] },
    },
  };
}

/** GET /api/v1/food/meal-analysis-tips */
export function getMealAnalysisTipsResponseSchema() {
  return {
    type: 'object',
    required: ['version', 'tips'],
    properties: {
      version: { type: 'integer' },
      tips: { type: 'array', items: { type: 'string' } },
    },
  };
}
