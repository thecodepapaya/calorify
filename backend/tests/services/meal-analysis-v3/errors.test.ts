import assert from 'node:assert/strict';
import test from 'node:test';
import {
  MealAnalysisLlmProviderError,
  MealAnalysisLlmResponseError,
} from '../../../src/services/meal-analysis/llm.js';
import {
  classifyMealAnalysisV3Error,
  mealAnalysisV3ErrorMetadata,
} from '../../../src/services/meal-analysis-v3/errors.js';
import { MealAnalysisV3StageError } from '../../../src/services/meal-analysis-v3/observability.js';
import { NutritionResolutionInfrastructureError } from '../../../src/services/meal-analysis-v3/nutrition.js';
import { UsdaDatabaseQueryError } from '../../../src/services/infrastructure/database.js';
import { UsdaQueryQueueError } from '../../../src/services/infrastructure/usdaQueryLimiter.js';

test('classifies invalid structured provider output separately from provider availability', () => {
  const error = new MealAnalysisV3StageError(
    'INTERPRETED',
    new MealAnalysisLlmProviderError(
      'invalid_structured_response',
      new MealAnalysisLlmResponseError('invalid_structured_response'),
    ),
  );

  assert.deepEqual(classifyMealAnalysisV3Error(error), {
    code: 'INVALID_MODEL_OUTPUT',
    retryable: true,
    recoveryAction: 'RETRY',
  });
});

test('preserves genuine provider and nutrition availability categories', () => {
  assert.equal(
    classifyMealAnalysisV3Error(
      new MealAnalysisV3StageError(
        'INTERPRETED',
        new MealAnalysisLlmProviderError('timeout', new Error('redacted')),
      ),
    ).code,
    'PROVIDER_UNAVAILABLE',
  );
  assert.equal(
    classifyMealAnalysisV3Error(
      new MealAnalysisV3StageError('NUTRITION_RESOLVED', new Error('redacted')),
    ).code,
    'NUTRITION_DATA_UNAVAILABLE',
  );
});

test('uses a generic safe category for other pipeline failures', () => {
  assert.deepEqual(classifyMealAnalysisV3Error(new Error('private detail')), {
    code: 'ANALYSIS_UNAVAILABLE',
    retryable: true,
    recoveryAction: 'RETRY',
  });
});

test('classifies a saturated USDA query queue as a distinct busy error', () => {
  const queueError = new UsdaQueryQueueError('QUEUE_TIMEOUT', { active: 6, queued: 12 });
  const error = new MealAnalysisV3StageError(
    'NUTRITION_RESOLVED',
    new NutritionResolutionInfrastructureError(queueError, 17, { active: 6, queued: 12 }),
  );

  assert.deepEqual(classifyMealAnalysisV3Error(error), {
    code: 'NUTRITION_SERVICE_BUSY',
    retryable: true,
    recoveryAction: 'RETRY',
  });
  assert.deepEqual(mealAnalysisV3ErrorMetadata(error), {
    errorKind: 'usda_query_queue_timeout',
    errorChain: [
      'meal_analysis_stage_failed',
      'nutrition_resolution_failed',
      'usda_query_queue_timeout',
    ],
    failedStage: 'NUTRITION_RESOLVED',
    nutritionUniqueLookupCount: 17,
    usdaLimiterActive: 6,
    usdaLimiterQueued: 12,
  });
});

test('classifies USDA pool acquisition timeout as a busy error', () => {
  const acquireTimeout = new UsdaDatabaseQueryError(
    'database_acquire_timeout',
    new Error('redacted'),
  );
  const error = new MealAnalysisV3StageError(
    'NUTRITION_RESOLVED',
    new NutritionResolutionInfrastructureError(acquireTimeout, 4, { active: 6, queued: 0 }),
  );

  assert.equal(classifyMealAnalysisV3Error(error).code, 'NUTRITION_SERVICE_BUSY');
  assert.equal(mealAnalysisV3ErrorMetadata(error).errorKind, 'database_acquire_timeout');
});
