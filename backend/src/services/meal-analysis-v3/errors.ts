import {
  MealAnalysisLlmProviderError,
  MealAnalysisLlmResponseError,
} from '../meal-analysis/llm.js';
import { MealAnalysisV3StageError } from './observability.js';

export interface MealAnalysisV3PublicError {
  code:
    | 'PROVIDER_UNAVAILABLE'
    | 'INVALID_MODEL_OUTPUT'
    | 'NUTRITION_DATA_UNAVAILABLE'
    | 'ANALYSIS_UNAVAILABLE';
  retryable: true;
  recoveryAction: 'RETRY';
}

function errorChain(error: unknown): unknown[] {
  const chain: unknown[] = [];
  const visited = new Set<unknown>();
  let current = error;
  while (current !== null && typeof current === 'object' && !visited.has(current)) {
    visited.add(current);
    chain.push(current);
    current = (current as { cause?: unknown }).cause;
  }
  return chain;
}

/** Maps internal failures to a small, non-sensitive V3 client contract. */
export function classifyMealAnalysisV3Error(error: unknown): MealAnalysisV3PublicError {
  const chain = errorChain(error);
  if (chain.some((item) => item instanceof MealAnalysisLlmResponseError)) {
    return {
      code: 'INVALID_MODEL_OUTPUT',
      retryable: true,
      recoveryAction: 'RETRY',
    };
  }
  if (chain.some((item) => item instanceof MealAnalysisLlmProviderError)) {
    return {
      code: 'PROVIDER_UNAVAILABLE',
      retryable: true,
      recoveryAction: 'RETRY',
    };
  }

  const stageError = chain.find(
    (item): item is MealAnalysisV3StageError => item instanceof MealAnalysisV3StageError,
  );
  if (stageError?.stage === 'INTERPRETED' || stageError?.stage === 'VALIDATED') {
    return {
      code: 'INVALID_MODEL_OUTPUT',
      retryable: true,
      recoveryAction: 'RETRY',
    };
  }
  if (stageError?.stage === 'NUTRITION_RESOLVED') {
    return {
      code: 'NUTRITION_DATA_UNAVAILABLE',
      retryable: true,
      recoveryAction: 'RETRY',
    };
  }
  return {
    code: 'ANALYSIS_UNAVAILABLE',
    retryable: true,
    recoveryAction: 'RETRY',
  };
}
