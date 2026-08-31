import assert from 'node:assert/strict';
import test from 'node:test';
import {
  MealAnalysisLlmProviderError,
  MealAnalysisLlmResponseError,
} from '../../../src/services/meal-analysis/llm.js';
import { classifyMealAnalysisV3Error } from '../../../src/services/meal-analysis-v3/errors.js';
import { MealAnalysisV3StageError } from '../../../src/services/meal-analysis-v3/observability.js';

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
