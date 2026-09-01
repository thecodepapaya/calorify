import {
  MealAnalysisLlmProviderError,
  MealAnalysisLlmResponseError,
} from '../meal-analysis/llm.js';
import { MealAnalysisV3StageError } from './observability.js';
import {
  UsdaDatabaseQueryError,
} from '../infrastructure/database.js';
import { UsdaQueryQueueError } from '../infrastructure/usdaQueryLimiter.js';
import { safeErrorKind } from '../../utils/safeError.js';
import { NutritionResolutionInfrastructureError } from './nutrition.js';

export interface MealAnalysisV3PublicError {
  code:
    | 'PROVIDER_UNAVAILABLE'
    | 'INVALID_MODEL_OUTPUT'
    | 'NUTRITION_SERVICE_BUSY'
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
  if (chain.some((item) =>
    item instanceof UsdaQueryQueueError ||
    (item instanceof UsdaDatabaseQueryError && item.kind === 'database_acquire_timeout')
  )) {
    return {
      code: 'NUTRITION_SERVICE_BUSY',
      retryable: true,
      recoveryAction: 'RETRY',
    };
  }
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

function boundedErrorKind(error: unknown): string {
  if (error instanceof MealAnalysisV3StageError) return 'meal_analysis_stage_failed';
  if (error instanceof NutritionResolutionInfrastructureError) {
    return 'nutrition_resolution_failed';
  }
  if (error instanceof UsdaQueryQueueError) return error.code.toLowerCase();
  if (error instanceof UsdaDatabaseQueryError) return error.kind;
  if (error instanceof MealAnalysisLlmResponseError) return error.errorKind;
  if (error instanceof MealAnalysisLlmProviderError) return error.errorKind;
  return safeErrorKind(error, 'unexpected_error');
}

/** Redacted cause-chain metadata for V3 operational logs. */
export function mealAnalysisV3ErrorMetadata(error: unknown): Record<string, unknown> {
  const chain = errorChain(error);
  const kinds = [...new Set(chain.map(boundedErrorKind))];
  const errorKind = [...kinds].reverse().find((kind) => kind !== 'unexpected_error') ??
    'meal_analysis_v3_failed';
  const stageError = chain.find(
    (item): item is MealAnalysisV3StageError => item instanceof MealAnalysisV3StageError,
  );
  const nutritionError = chain.find(
    (item): item is NutritionResolutionInfrastructureError =>
      item instanceof NutritionResolutionInfrastructureError,
  );
  return {
    errorKind,
    errorChain: kinds,
    ...(stageError === undefined ? {} : { failedStage: stageError.stage }),
    ...(nutritionError === undefined ? {} : {
      nutritionUniqueLookupCount: nutritionError.uniqueLookupCount,
      usdaLimiterActive: nutritionError.limiter.active,
      usdaLimiterQueued: nutritionError.limiter.queued,
    }),
  };
}
