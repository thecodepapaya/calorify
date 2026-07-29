export type CalorieEvalThresholds = {
  minCompletionRate: number;
  minPassRate: number;
  maxMeanRangeError: number;
};

export type CalorieEvalCase = {
  id: string;
  description: string;
  mealType: 'BREAKFAST' | 'LUNCH' | 'DINNER' | 'SNACK';
  expectedCalories: { min: number; max: number };
  requiredIngredientGroups?: string[][];
  forbiddenIngredientTerms?: string[];
  tags?: string[];
};

export type CalorieEvalDataset = {
  version: number;
  description: string;
  thresholds: CalorieEvalThresholds;
  cases: CalorieEvalCase[];
};

export type EvaluatedIngredient = {
  rawName?: string;
  canonicalName?: string;
};

export type CalorieEvalObservation = {
  calories?: number;
  ingredients?: EvaluatedIngredient[];
  latencyMs: number;
  terminalStep?: string;
  error?: string;
};

export type CalorieEvalCaseResult = {
  id: string;
  description: string;
  passed: boolean;
  completed: boolean;
  calories?: number;
  expectedCalories: { min: number; max: number };
  rangePassed: boolean;
  ingredientsPassed: boolean;
  missingIngredientGroups: string[][];
  forbiddenIngredientMatches: string[];
  rangeError: number;
  latencyMs: number;
  terminalStep?: string;
  error?: string;
  tags: string[];
};

export type CalorieEvalSummary = {
  total: number;
  completed: number;
  passed: number;
  completionRate: number;
  passRate: number;
  meanRangeError: number;
  meanAbsoluteErrorToMidpoint: number;
  p95LatencyMs: number;
  thresholdsPassed: boolean;
  thresholdFailures: string[];
};

function normalize(value: string): string {
  return value.toLowerCase().replace(/[^a-z0-9]+/g, ' ').trim();
}

function ingredientCorpus(ingredients: EvaluatedIngredient[] = []): string {
  return normalize(
    ingredients
      .flatMap((ingredient) => [ingredient.rawName ?? '', ingredient.canonicalName ?? ''])
      .join(' ')
  );
}

/** Error is zero inside the accepted range and proportional to its midpoint outside it. */
export function calculateRangeError(calories: number, range: { min: number; max: number }): number {
  const midpoint = (range.min + range.max) / 2;
  if (calories < range.min) return (range.min - calories) / midpoint;
  if (calories > range.max) return (calories - range.max) / midpoint;
  return 0;
}

export function evaluateCalorieCase(
  evalCase: CalorieEvalCase,
  observation: CalorieEvalObservation
): CalorieEvalCaseResult {
  const completed = Number.isFinite(observation.calories);
  const calories = completed ? observation.calories : undefined;
  const rangePassed =
    calories !== undefined &&
    calories >= evalCase.expectedCalories.min &&
    calories <= evalCase.expectedCalories.max;
  const corpus = ingredientCorpus(observation.ingredients);
  const missingIngredientGroups = (evalCase.requiredIngredientGroups ?? []).filter(
    (group) => !group.some((term) => corpus.includes(normalize(term)))
  );
  const forbiddenIngredientMatches = (evalCase.forbiddenIngredientTerms ?? []).filter((term) =>
    corpus.includes(normalize(term))
  );
  const ingredientsPassed =
    missingIngredientGroups.length === 0 && forbiddenIngredientMatches.length === 0;

  return {
    id: evalCase.id,
    description: evalCase.description,
    passed: completed && rangePassed && ingredientsPassed,
    completed,
    calories,
    expectedCalories: evalCase.expectedCalories,
    rangePassed,
    ingredientsPassed,
    missingIngredientGroups,
    forbiddenIngredientMatches,
    rangeError: calories === undefined ? 1 : calculateRangeError(calories, evalCase.expectedCalories),
    latencyMs: observation.latencyMs,
    terminalStep: observation.terminalStep,
    error: observation.error,
    tags: evalCase.tags ?? [],
  };
}

function rate(numerator: number, denominator: number): number {
  return denominator === 0 ? 0 : numerator / denominator;
}

function percentile95(values: number[]): number {
  if (values.length === 0) return 0;
  const sorted = [...values].sort((a, b) => a - b);
  return sorted[Math.ceil(sorted.length * 0.95) - 1] ?? 0;
}

export function summarizeCalorieEval(
  results: CalorieEvalCaseResult[],
  thresholds: CalorieEvalThresholds
): CalorieEvalSummary {
  const total = results.length;
  const completedResults = results.filter((result) => result.completed);
  const passed = results.filter((result) => result.passed).length;
  const completionRate = rate(completedResults.length, total);
  const passRate = rate(passed, total);
  const meanRangeError = rate(
    results.reduce((sum, result) => sum + result.rangeError, 0),
    total
  );
  const meanAbsoluteErrorToMidpoint = rate(
    completedResults.reduce((sum, result) => {
      const midpoint = (result.expectedCalories.min + result.expectedCalories.max) / 2;
      return sum + Math.abs((result.calories ?? midpoint) - midpoint);
    }, 0),
    completedResults.length
  );
  const thresholdFailures: string[] = [];
  if (completionRate < thresholds.minCompletionRate) {
    thresholdFailures.push(
      `completion rate ${completionRate.toFixed(3)} < ${thresholds.minCompletionRate.toFixed(3)}`
    );
  }
  if (passRate < thresholds.minPassRate) {
    thresholdFailures.push(`pass rate ${passRate.toFixed(3)} < ${thresholds.minPassRate.toFixed(3)}`);
  }
  if (meanRangeError > thresholds.maxMeanRangeError) {
    thresholdFailures.push(
      `mean range error ${meanRangeError.toFixed(3)} > ${thresholds.maxMeanRangeError.toFixed(3)}`
    );
  }

  return {
    total,
    completed: completedResults.length,
    passed,
    completionRate,
    passRate,
    meanRangeError,
    meanAbsoluteErrorToMidpoint,
    p95LatencyMs: percentile95(results.map((result) => result.latencyMs)),
    thresholdsPassed: thresholdFailures.length === 0,
    thresholdFailures,
  };
}
