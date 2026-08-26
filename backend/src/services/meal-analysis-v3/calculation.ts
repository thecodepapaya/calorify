import { interpretationProposalSchema } from './domain.js';
import type {
  FoodInterpretationProposal,
  MacroEstimate,
  MacroEstimates,
  MacroVector,
  NutritionQuestionKind,
  RecipeScenario,
  ResolvedComponent,
  ResolvedIngredientLeaf,
  ResolvedInterpretation,
  ResolvedNutritionReference,
  ResolvedRecipeScenario,
  ScenarioAssumption,
} from './domain.js';

export type { MacroEstimates, MacroVector } from './domain.js';

const MACRO_KEYS = [
  'caloriesKcal',
  'proteinGrams',
  'carbsGrams',
  'fatGrams',
  'fiberGrams',
] as const satisfies readonly (keyof MacroVector)[];

type MacroKey = (typeof MACRO_KEYS)[number];

export class MealCalculationError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'MealCalculationError';
  }
}

export interface CalculatedScenario {
  scenarioId: string;
  scale: number;
  macros: MacroVector;
}

export interface CalculatedComponent {
  componentId: string;
  pointScenarioId: string;
  scenarios: CalculatedScenario[];
  macros: MacroEstimates;
}

export interface CalculatedMeal {
  components: CalculatedComponent[];
  macros: MacroEstimates;
}

export interface OptionQuestionResponse {
  kind: 'OPTION';
  options: Array<{ optionId: string; label: string }>;
}

export interface NumberQuestionResponse {
  kind: 'NUMBER';
  unitCode: string;
  min: number;
  max: number;
  step: number;
  integerOnly: boolean;
}

export interface NutritionQuestion {
  questionId: string;
  scope: 'NUTRITION';
  target: {
    componentId: string;
    dimension: NutritionQuestionKind;
    dimensionKey: string;
  };
  prompt: string;
  response: OptionQuestionResponse | NumberQuestionResponse;
  allowUseEstimate: true;
  impactScore: number;
}

export type QuestionAnswer =
  | { questionId: string; kind: 'OPTION'; optionId: string }
  | { questionId: string; kind: 'NUMBER'; value: number }
  | { questionId: string; kind: 'USE_ESTIMATE' };

export interface QuestionPlanningOptions {
  maxQuestions?: number;
  minimumImpactScore?: number;
  denominatorFloors?: Partial<MacroVector>;
  macroWeights?: Partial<MacroVector>;
}

export const DEFAULT_QUESTION_DENOMINATOR_FLOORS: Readonly<MacroVector> = {
  caloriesKcal: 50,
  proteinGrams: 5,
  carbsGrams: 5,
  fatGrams: 3,
  fiberGrams: 2,
};

export const DEFAULT_QUESTION_MACRO_WEIGHTS: Readonly<MacroVector> = {
  caloriesKcal: 1,
  proteinGrams: 0.35,
  carbsGrams: 0.25,
  fatGrams: 0.35,
  fiberGrams: 0.2,
};

/** Provisional version-1 materiality gate; evaluation may calibrate this through options. */
export const DEFAULT_MINIMUM_QUESTION_IMPACT_SCORE = 0.1;

/**
 * Attaches trusted point nutrition to every scenario leaf. Missing, duplicate,
 * or surplus references are rejected so a scenario can never calculate with a
 * silently absent ingredient.
 */
export function resolveInterpretation(
  proposal: FoodInterpretationProposal,
  references: readonly ResolvedNutritionReference[]
): ResolvedInterpretation {
  interpretationProposalSchema.parse(proposal);
  const byLeaf = new Map<string, ResolvedNutritionReference>();
  for (const reference of references) {
    validateReference(reference);
    const key = referenceKey(reference.scenarioId, reference.leafId);
    if (byLeaf.has(key)) {
      throw new MealCalculationError(`duplicate nutrition reference for ${key}`);
    }
    byLeaf.set(key, reference);
  }

  const used = new Set<string>();
  const components: ResolvedComponent[] = proposal.components.map((component) => ({
    ...component,
    scenarios: component.scenarios.map((scenario) => ({
      ...scenario,
      ingredients: scenario.ingredients.map((leaf): ResolvedIngredientLeaf => {
        const key = referenceKey(scenario.scenarioId, leaf.leafId);
        const reference = byLeaf.get(key);
        if (reference === undefined) {
          throw new MealCalculationError(`missing nutrition reference for ${key}`);
        }
        used.add(key);
        if (leaf.role === 'YIELD_ONLY' &&
            (!reference.verifiedZero || MACRO_KEYS.some((macro) => reference.per100g[macro] !== 0))) {
          throw new MealCalculationError(`yield-only ingredient ${key} needs a verified all-zero reference`);
        }
        return {
          ...leaf,
          nutritionReference: {
            source: reference.source,
            sourceRecordId: reference.sourceRecordId,
            datasetVersion: reference.datasetVersion,
            verifiedZero: reference.verifiedZero,
            per100g: { ...reference.per100g },
          },
        };
      }),
    })),
  }));

  for (const key of byLeaf.keys()) {
    if (!used.has(key)) throw new MealCalculationError(`surplus nutrition reference for ${key}`);
  }
  return { ...proposal, components };
}

/** Calculates point vectors first, then marginal component and meal ranges. */
export function calculateMeal(resolved: ResolvedInterpretation): CalculatedMeal {
  validateResolvedInterpretation(resolved);
  const components = resolved.components.map(calculateComponent);
  const calculated: CalculatedMeal = {
    components,
    macros: estimatesFromComponents(components),
  };
  validateCalculatedMeal(calculated);
  return calculated;
}

/**
 * Checks arithmetic invariants without rounding. This is also safe to call at
 * a final integrity gate on a deserialized calculated value.
 */
export function validateCalculatedMeal(calculated: CalculatedMeal): void {
  if (calculated.components.length === 0) {
    throw new MealCalculationError('calculated meal must contain a component');
  }
  requireUnique(calculated.components.map((component) => component.componentId), 'calculated component IDs');
  for (const component of calculated.components) {
    if (component.scenarios.length === 0) {
      throw new MealCalculationError(`component ${component.componentId} has no calculated scenarios`);
    }
    requireUnique(component.scenarios.map((scenario) => scenario.scenarioId), `scenario IDs in ${component.componentId}`);
    const point = component.scenarios.find((scenario) => scenario.scenarioId === component.pointScenarioId);
    if (point === undefined) {
      throw new MealCalculationError(`point scenario is missing in component ${component.componentId}`);
    }
    for (const scenario of component.scenarios) {
      assertPositiveFinite(scenario.scale, `scale for ${scenario.scenarioId}`);
      assertMacroVector(scenario.macros, `macros for ${scenario.scenarioId}`);
    }
    for (const macro of MACRO_KEYS) {
      const values = component.scenarios.map((scenario) => scenario.macros[macro]);
      assertEstimate(component.macros[macro], `component ${component.componentId} ${macro}`);
      assertClose(component.macros[macro].estimate, point.macros[macro], `point ${component.componentId} ${macro}`);
      assertClose(component.macros[macro].min, Math.min(...values), `minimum ${component.componentId} ${macro}`);
      assertClose(component.macros[macro].max, Math.max(...values), `maximum ${component.componentId} ${macro}`);
    }
  }

  for (const macro of MACRO_KEYS) {
    assertEstimate(calculated.macros[macro], `meal ${macro}`);
    for (const field of ['estimate', 'min', 'max'] as const) {
      const expected = sum(calculated.components.map((component) => component.macros[macro][field]));
      assertClose(calculated.macros[macro][field], expected, `meal ${macro}.${field}`);
    }
  }
}

/** Selects up to three positive-impact candidates, with at most one per component. */
export function planNutritionQuestions(
  resolved: ResolvedInterpretation,
  options: QuestionPlanningOptions = {}
): NutritionQuestion[] {
  const maxQuestions = Math.min(3, Math.max(0, Math.trunc(options.maxQuestions ?? 3)));
  if (maxQuestions === 0) return [];
  const floors = mergedMacroVector(DEFAULT_QUESTION_DENOMINATOR_FLOORS, options.denominatorFloors);
  const weights = mergedMacroVector(DEFAULT_QUESTION_MACRO_WEIGHTS, options.macroWeights);
  for (const key of MACRO_KEYS) {
    assertPositiveFinite(floors[key], `denominator floor ${key}`);
    assertNonnegativeFinite(weights[key], `macro weight ${key}`);
  }
  const minimumImpactScore = options.minimumImpactScore ?? DEFAULT_MINIMUM_QUESTION_IMPACT_SCORE;
  assertNonnegativeFinite(minimumImpactScore, 'minimumImpactScore');
  const baseline = calculateMeal(resolved);
  const baselineWidth = normalizedWidthScore(baseline.macros, floors, weights);

  const candidates: Array<{ question: NutritionQuestion; componentIndex: number }> = [];
  for (const [componentIndex, component] of resolved.components.entries()) {
    const dimensions = component.scenarios[0]!.assumptions.map((assumption) => assumption.dimensionKey);
    for (const dimensionKey of dimensions) {
      const assumptions = component.scenarios.map((scenario) =>
        requiredAssumption(scenario, dimensionKey)
      );
      const first = assumptions[0]!;
      if (first.origin === 'USER_TEXT' || first.origin === 'USER_CLARIFICATION') continue;
      const response = buildQuestionResponse(assumptions);
      if (response === null) continue;
      const question: NutritionQuestion = {
        questionId: questionId(component.componentId, dimensionKey),
        scope: 'NUTRITION',
        target: {
          componentId: component.componentId,
          dimension: first.questionKind,
          dimensionKey,
        },
        prompt: questionPrompt(component.displayName, first.questionKind),
        response,
        allowUseEstimate: true,
        impactScore: 0,
      };
      const simulatedAnswers = scoringAnswers(question, assumptions);
      const afterWidths = simulatedAnswers.map((answer) => {
        const changed = applyOneAnswer(resolved, question, answer);
        return normalizedWidthScore(calculateMeal(changed).macros, floors, weights);
      });
      const impactScore = Math.max(0, baselineWidth - mean(afterWidths));
      if (impactScore + 1e-15 < minimumImpactScore) continue;
      candidates.push({ question: { ...question, impactScore }, componentIndex });
    }
  }

  candidates.sort((left, right) =>
    right.question.impactScore - left.question.impactScore ||
    left.componentIndex - right.componentIndex ||
    left.question.target.dimension.localeCompare(right.question.target.dimension) ||
    left.question.questionId.localeCompare(right.question.questionId)
  );
  const selected: NutritionQuestion[] = [];
  const usedComponents = new Set<string>();
  for (const candidate of candidates) {
    if (usedComponents.has(candidate.question.target.componentId)) continue;
    selected.push(candidate.question);
    usedComponents.add(candidate.question.target.componentId);
    if (selected.length === maxQuestions) break;
  }
  return selected;
}

/** Applies one complete answer bundle. USE_ESTIMATE deliberately changes nothing. */
export function applyQuestionAnswers(
  resolved: ResolvedInterpretation,
  questions: readonly NutritionQuestion[],
  answers: readonly QuestionAnswer[]
): ResolvedInterpretation {
  requireUnique(questions.map((question) => question.questionId), 'question IDs');
  requireUnique(
    questions.map((question) => question.target.componentId),
    'question component targets'
  );
  requireUnique(answers.map((answer) => answer.questionId), 'answer question IDs');
  if (answers.length !== questions.length) {
    throw new MealCalculationError('every question requires exactly one answer');
  }
  const byQuestion = new Map(answers.map((answer) => [answer.questionId, answer]));
  let updated = resolved;
  for (const question of questions) {
    const answer = byQuestion.get(question.questionId);
    if (answer === undefined) throw new MealCalculationError(`missing answer for ${question.questionId}`);
    updated = applyOneAnswer(updated, question, answer);
    byQuestion.delete(question.questionId);
  }
  if (byQuestion.size !== 0) {
    throw new MealCalculationError(`answer supplied for unknown question ${byQuestion.keys().next().value as string}`);
  }
  validateResolvedInterpretation(updated);
  return updated;
}

function calculateComponent(component: ResolvedComponent): CalculatedComponent {
  const scenarios = component.scenarios.map(calculateScenario);
  const point = scenarios.find((scenario) => scenario.scenarioId === component.pointScenarioId);
  if (point === undefined) throw new MealCalculationError(`point scenario missing for ${component.componentId}`);
  return {
    componentId: component.componentId,
    pointScenarioId: component.pointScenarioId,
    scenarios,
    macros: estimatesFromScenarios(scenarios, point),
  };
}

function calculateScenario(scenario: ResolvedRecipeScenario): CalculatedScenario {
  let referenceMacros = zeroVector();
  for (const ingredient of scenario.ingredients) {
    validateResolvedIngredient(ingredient, scenario.scenarioId);
    if (ingredient.role === 'YIELD_ONLY') continue;
    const factor = ingredient.nutritionBasisGrams / 100;
    referenceMacros = addVectors(referenceMacros, scaleVector(ingredient.nutritionReference.per100g, factor));
  }
  const scale = scenarioScale(scenario);
  return { scenarioId: scenario.scenarioId, scale, macros: scaleVector(referenceMacros, scale) };
}

function scenarioScale(scenario: ResolvedRecipeScenario): number {
  assertPositiveFinite(scenario.finishedYieldGrams, `finished yield grams for ${scenario.scenarioId}`);
  let scale: number;
  switch (scenario.effectivePortion.kind) {
    case 'WHOLE_RECIPE':
      if (scenario.finishedYieldUnits !== null) {
        throw new MealCalculationError(`WHOLE_RECIPE ${scenario.scenarioId} cannot have yield units`);
      }
      scale = 1;
      break;
    case 'FINISHED_MASS':
      if (scenario.finishedYieldUnits !== null) {
        throw new MealCalculationError(`FINISHED_MASS ${scenario.scenarioId} cannot have yield units`);
      }
      assertPositiveFinite(scenario.effectivePortion.consumedGrams, `consumed grams for ${scenario.scenarioId}`);
      scale = scenario.effectivePortion.consumedGrams / scenario.finishedYieldGrams;
      break;
    case 'UNIT_COUNT': {
      if (scenario.finishedYieldUnits === null) {
        throw new MealCalculationError(`UNIT_COUNT ${scenario.scenarioId} requires yield units`);
      }
      assertPositiveFinite(scenario.finishedYieldUnits, `finished yield units for ${scenario.scenarioId}`);
      assertPositiveFinite(scenario.effectivePortion.consumedCount, `consumed count for ${scenario.scenarioId}`);
      const derivedUnitGrams = scenario.finishedYieldGrams / scenario.finishedYieldUnits;
      assertClose(
        scenario.effectivePortion.perUnitFinishedGrams,
        derivedUnitGrams,
        `per-unit yield for ${scenario.scenarioId}`
      );
      scale = scenario.effectivePortion.consumedCount / scenario.finishedYieldUnits;
      break;
    }
  }
  assertPositiveFinite(scale, `scale for ${scenario.scenarioId}`);
  return scale;
}

function estimatesFromScenarios(
  scenarios: readonly CalculatedScenario[],
  point: CalculatedScenario
): MacroEstimates {
  return mapMacroEstimates((macro) => ({
    estimate: point.macros[macro],
    min: Math.min(...scenarios.map((scenario) => scenario.macros[macro])),
    max: Math.max(...scenarios.map((scenario) => scenario.macros[macro])),
  }));
}

function estimatesFromComponents(components: readonly CalculatedComponent[]): MacroEstimates {
  return mapMacroEstimates((macro) => ({
    estimate: sum(components.map((component) => component.macros[macro].estimate)),
    min: sum(components.map((component) => component.macros[macro].min)),
    max: sum(components.map((component) => component.macros[macro].max)),
  }));
}

function buildQuestionResponse(
  assumptions: readonly ScenarioAssumption[]
): OptionQuestionResponse | NumberQuestionResponse | null {
  const first = assumptions[0]!;
  if (assumptions.some((assumption) => assumption.answerKind !== first.answerKind)) {
    throw new MealCalculationError(`mixed answer kinds for dimension ${first.dimensionKey}`);
  }
  if (first.answerKind === 'OPTION') {
    const labels = new Map<string, string>();
    for (const assumption of assumptions) {
      if (assumption.answerKind !== 'OPTION') continue;
      const existing = labels.get(assumption.optionCode);
      if (existing !== undefined && existing !== assumption.optionLabel) {
        throw new MealCalculationError(`option label mismatch for ${assumption.dimensionKey}`);
      }
      labels.set(assumption.optionCode, assumption.optionLabel);
    }
    if (labels.size < 2) return null;
    return {
      kind: 'OPTION',
      options: [...labels].sort(([left], [right]) => left.localeCompare(right))
        .map(([optionId, label]) => ({ optionId, label })),
    };
  }

  const numeric = assumptions.filter((assumption): assumption is Extract<ScenarioAssumption, { answerKind: 'NUMBER' }> =>
    assumption.answerKind === 'NUMBER'
  );
  if (new Set(numeric.map((assumption) => assumption.value)).size < 2) return null;
  return {
    kind: 'NUMBER',
    unitCode: first.unitCode,
    min: first.min,
    max: first.max,
    step: first.step,
    integerOnly: first.integerOnly,
  };
}

function scoringAnswers(
  question: NutritionQuestion,
  assumptions: readonly ScenarioAssumption[]
): QuestionAnswer[] {
  if (question.response.kind === 'OPTION') {
    return question.response.options.map((option) => ({
      questionId: question.questionId,
      kind: 'OPTION' as const,
      optionId: option.optionId,
    }));
  }
  const values = [...new Set(assumptions.flatMap((assumption) =>
    assumption.answerKind === 'NUMBER' ? [assumption.value] : []
  ))].sort((left, right) => left - right);
  return values.map((value) => ({ questionId: question.questionId, kind: 'NUMBER', value }));
}

function applyOneAnswer(
  resolved: ResolvedInterpretation,
  question: NutritionQuestion,
  answer: QuestionAnswer
): ResolvedInterpretation {
  if (answer.questionId !== question.questionId) {
    throw new MealCalculationError(`answer ${answer.questionId} does not match ${question.questionId}`);
  }
  if (answer.kind === 'USE_ESTIMATE') {
    if (!question.allowUseEstimate) throw new MealCalculationError(`USE_ESTIMATE is disabled for ${question.questionId}`);
    return resolved;
  }
  const componentIndex = resolved.components.findIndex(
    (component) => component.componentId === question.target.componentId
  );
  if (componentIndex < 0) throw new MealCalculationError(`question targets missing component ${question.target.componentId}`);
  const component = resolved.components[componentIndex]!;
  let changed: ResolvedComponent;
  if (answer.kind === 'OPTION') {
    if (question.response.kind !== 'OPTION') throw new MealCalculationError(`${question.questionId} expects a number`);
    if (!question.response.options.some((option) => option.optionId === answer.optionId)) {
      throw new MealCalculationError(`invalid option ${answer.optionId} for ${question.questionId}`);
    }
    const scenarios = component.scenarios.filter((scenario) => {
      const assumption = requiredAssumption(scenario, question.target.dimensionKey);
      return assumption.answerKind === 'OPTION' && assumption.optionCode === answer.optionId;
    }).map((scenario) => markAssumptionClarified(scenario, question.target.dimensionKey));
    if (scenarios.length === 0) throw new MealCalculationError(`answer ${answer.optionId} leaves no scenario`);
    changed = {
      ...component,
      scenarios,
      pointScenarioId: choosePointScenarioId(component.pointScenarioId, scenarios),
    };
  } else {
    if (question.response.kind !== 'NUMBER') throw new MealCalculationError(`${question.questionId} expects an option`);
    validateNumericAnswer(answer.value, question.response, question.questionId);
    const scenarios = component.scenarios.map((scenario) =>
      applyNumericAnswerToScenario(scenario, question.target.dimensionKey, answer.value)
    );
    changed = {
      ...component,
      portionConstraint: updatedPortionConstraint(component, question, answer.value),
      scenarios,
    };
  }
  const components = [...resolved.components];
  components[componentIndex] = changed;
  return { ...resolved, components };
}

function applyNumericAnswerToScenario(
  scenario: ResolvedRecipeScenario,
  dimensionKey: string,
  value: number
): ResolvedRecipeScenario {
  const assumptionIndex = scenario.assumptions.findIndex(
    (assumption) => assumption.dimensionKey === dimensionKey
  );
  if (assumptionIndex < 0) throw new MealCalculationError(`scenario ${scenario.scenarioId} lacks ${dimensionKey}`);
  const assumption = scenario.assumptions[assumptionIndex]!;
  if (assumption.answerKind !== 'NUMBER') {
    throw new MealCalculationError(`dimension ${dimensionKey} is not numeric`);
  }
  const assumptions = [...scenario.assumptions];
  assumptions[assumptionIndex] = {
    ...assumption,
    value,
    origin: 'USER_CLARIFICATION',
    evidence: null,
  };
  if (assumption.questionKind === 'COUNT') {
    if (scenario.effectivePortion.kind !== 'UNIT_COUNT') {
      throw new MealCalculationError(`COUNT answer is incompatible with ${scenario.scenarioId}`);
    }
    return {
      ...scenario,
      assumptions,
      effectivePortion: { ...scenario.effectivePortion, consumedCount: value },
    };
  }
  if (scenario.effectivePortion.kind !== 'FINISHED_MASS') {
    throw new MealCalculationError(`TOTAL_AMOUNT answer is incompatible with ${scenario.scenarioId}`);
  }
  const ratio = value / assumption.value;
  assertPositiveFinite(ratio, `numeric answer ratio for ${scenario.scenarioId}`);
  return {
    ...scenario,
    assumptions,
    effectivePortion: {
      ...scenario.effectivePortion,
      consumedGrams: scenario.effectivePortion.consumedGrams * ratio,
    },
  };
}

function markAssumptionClarified(
  scenario: ResolvedRecipeScenario,
  dimensionKey: string
): ResolvedRecipeScenario {
  const assumptionIndex = scenario.assumptions.findIndex(
    (assumption) => assumption.dimensionKey === dimensionKey
  );
  if (assumptionIndex < 0) {
    throw new MealCalculationError(`scenario ${scenario.scenarioId} lacks ${dimensionKey}`);
  }
  const assumptions = [...scenario.assumptions];
  assumptions[assumptionIndex] = {
    ...assumptions[assumptionIndex]!,
    origin: 'USER_CLARIFICATION',
    evidence: null,
  };
  return { ...scenario, assumptions };
}

function updatedPortionConstraint(
  component: ResolvedComponent,
  question: NutritionQuestion,
  value: number
): ResolvedComponent['portionConstraint'] {
  const exact = {
    estimate: value,
    min: value,
    max: value,
    origin: 'USER_CLARIFICATION' as const,
    evidence: null,
  };
  if (question.target.dimension === 'COUNT') {
    if (component.portionConstraint.kind !== 'COUNT') {
      throw new MealCalculationError(`COUNT question targets non-count component ${component.componentId}`);
    }
    return { ...component.portionConstraint, count: exact };
  }
  if (question.target.dimension !== 'TOTAL_AMOUNT' || component.portionConstraint.kind !== 'AMOUNT' ||
      component.portionConstraint.measurementBasis !== 'FINISHED') {
    throw new MealCalculationError(`numeric amount question is incompatible with ${component.componentId}`);
  }
  if (question.response.kind !== 'NUMBER') {
    throw new MealCalculationError(`numeric amount question lacks number response`);
  }
  if (question.response.unitCode === 'GRAM') {
    return { ...component.portionConstraint, finishedGrams: exact };
  }
  return {
    ...component.portionConstraint,
    naturalMeasure: {
      unitCode: asNaturalMeasureUnit(question.response.unitCode),
      quantity: exact,
    },
  };
}

function validateResolvedInterpretation(resolved: ResolvedInterpretation): void {
  interpretationProposalSchema.parse(stripNutrition(resolved));
  for (const component of resolved.components) {
    for (const scenario of component.scenarios) {
      scenarioScale(scenario);
      for (const ingredient of scenario.ingredients) {
        validateResolvedIngredient(ingredient, scenario.scenarioId);
      }
    }
  }
}

function stripNutrition(resolved: ResolvedInterpretation): FoodInterpretationProposal {
  return {
    ...resolved,
    components: resolved.components.map((component) => ({
      ...component,
      scenarios: component.scenarios.map((scenario): RecipeScenario => ({
        ...scenario,
        ingredients: scenario.ingredients.map((ingredient) => ({
          leafId: ingredient.leafId,
          displayName: ingredient.displayName,
          canonicalIdentity: ingredient.canonicalIdentity,
          lookupAliases: ingredient.lookupAliases,
          role: ingredient.role,
          nutritionBasis: ingredient.nutritionBasis,
          nutritionBasisGrams: ingredient.nutritionBasisGrams,
          preparationCodes: ingredient.preparationCodes,
          retainedFat: ingredient.retainedFat,
        })),
      })),
    })),
  };
}

function validateReference(reference: ResolvedNutritionReference): void {
  if (!reference.scenarioId || !reference.leafId || !reference.source.trim() ||
      !reference.sourceRecordId.trim() || !reference.datasetVersion.trim()) {
    throw new MealCalculationError('nutrition reference identity fields must be non-empty');
  }
  assertMacroVector(reference.per100g, `nutrition reference ${reference.scenarioId}:${reference.leafId}`);
}

function validateResolvedIngredient(ingredient: ResolvedIngredientLeaf, scenarioId: string): void {
  assertPositiveFinite(ingredient.nutritionBasisGrams, `basis grams for ${scenarioId}:${ingredient.leafId}`);
  const reference = ingredient.nutritionReference;
  if (!reference.source.trim() || !reference.sourceRecordId.trim() || !reference.datasetVersion.trim()) {
    throw new MealCalculationError(`incomplete reference for ${scenarioId}:${ingredient.leafId}`);
  }
  assertMacroVector(reference.per100g, `reference for ${scenarioId}:${ingredient.leafId}`);
  if (ingredient.role === 'YIELD_ONLY' &&
      (!reference.verifiedZero || MACRO_KEYS.some((macro) => reference.per100g[macro] !== 0))) {
    throw new MealCalculationError(`yield-only ingredient ${scenarioId}:${ingredient.leafId} is not verified zero`);
  }
}

function requiredAssumption(
  scenario: ResolvedRecipeScenario,
  dimensionKey: string
): ScenarioAssumption {
  const assumption = scenario.assumptions.find((candidate) => candidate.dimensionKey === dimensionKey);
  if (assumption === undefined) {
    throw new MealCalculationError(`scenario ${scenario.scenarioId} lacks assumption ${dimensionKey}`);
  }
  return assumption;
}

function choosePointScenarioId(
  current: string,
  scenarios: readonly ResolvedRecipeScenario[]
): string {
  if (scenarios.some((scenario) => scenario.scenarioId === current)) return current;
  return [...scenarios].sort((left, right) => left.scenarioId.localeCompare(right.scenarioId))[0]!.scenarioId;
}

function normalizedWidthScore(
  estimates: MacroEstimates,
  floors: MacroVector,
  weights: MacroVector
): number {
  return sum(MACRO_KEYS.map((macro) =>
    weights[macro] * (estimates[macro].max - estimates[macro].min) /
      Math.max(estimates[macro].estimate, floors[macro])
  ));
}

function questionPrompt(componentName: string, kind: NutritionQuestionKind): string {
  switch (kind) {
    case 'COUNT': return `How many ${componentName} did you have?`;
    case 'UNIT_SIZE': return `What size was each ${componentName}?`;
    case 'TOTAL_AMOUNT': return `How much ${componentName} did you have?`;
    case 'INGREDIENT_VARIANT': return `Which kind of ${componentName} was it?`;
    case 'INGREDIENT_PRESENCE': return `Which ingredients were in the ${componentName}?`;
    case 'PREPARATION': return `How was the ${componentName} prepared?`;
    case 'ADDED_OR_RETAINED_FAT': return `How much oil or fat was in the ${componentName}?`;
  }
}

function questionId(componentId: string, dimensionKey: string): string {
  return `nutrition:${componentId}:${dimensionKey}`;
}

function validateNumericAnswer(
  value: number,
  response: NumberQuestionResponse,
  id: string
): void {
  if (!Number.isFinite(value) || value < response.min - 1e-9 || value > response.max + 1e-9) {
    throw new MealCalculationError(`numeric answer for ${id} is out of bounds`);
  }
  if (response.integerOnly && !Number.isInteger(value)) {
    throw new MealCalculationError(`numeric answer for ${id} must be an integer`);
  }
  const steps = (value - response.min) / response.step;
  if (!nearlyEqual(steps, Math.round(steps))) {
    throw new MealCalculationError(`numeric answer for ${id} is off-step`);
  }
}

function asNaturalMeasureUnit(value: string): 'MILLILITER' | 'CUP' | 'BOWL' | 'PLATE' | 'TABLESPOON' |
  'TEASPOON' | 'HANDFUL' | 'PINCH' | 'SERVING' {
  switch (value) {
    case 'MILLILITER':
    case 'CUP':
    case 'BOWL':
    case 'PLATE':
    case 'TABLESPOON':
    case 'TEASPOON':
    case 'HANDFUL':
    case 'PINCH':
    case 'SERVING':
      return value;
    default:
      throw new MealCalculationError(`unsupported natural-measure unit ${value}`);
  }
}

function mapMacroEstimates(factory: (key: MacroKey) => MacroEstimate): MacroEstimates {
  return {
    caloriesKcal: factory('caloriesKcal'),
    proteinGrams: factory('proteinGrams'),
    carbsGrams: factory('carbsGrams'),
    fatGrams: factory('fatGrams'),
    fiberGrams: factory('fiberGrams'),
  };
}

function zeroVector(): MacroVector {
  return { caloriesKcal: 0, proteinGrams: 0, carbsGrams: 0, fatGrams: 0, fiberGrams: 0 };
}

function addVectors(left: MacroVector, right: MacroVector): MacroVector {
  return {
    caloriesKcal: left.caloriesKcal + right.caloriesKcal,
    proteinGrams: left.proteinGrams + right.proteinGrams,
    carbsGrams: left.carbsGrams + right.carbsGrams,
    fatGrams: left.fatGrams + right.fatGrams,
    fiberGrams: left.fiberGrams + right.fiberGrams,
  };
}

function scaleVector(vector: MacroVector, factor: number): MacroVector {
  return {
    caloriesKcal: vector.caloriesKcal * factor,
    proteinGrams: vector.proteinGrams * factor,
    carbsGrams: vector.carbsGrams * factor,
    fatGrams: vector.fatGrams * factor,
    fiberGrams: vector.fiberGrams * factor,
  };
}

function mergedMacroVector(base: Readonly<MacroVector>, override?: Partial<MacroVector>): MacroVector {
  return {
    caloriesKcal: override?.caloriesKcal ?? base.caloriesKcal,
    proteinGrams: override?.proteinGrams ?? base.proteinGrams,
    carbsGrams: override?.carbsGrams ?? base.carbsGrams,
    fatGrams: override?.fatGrams ?? base.fatGrams,
    fiberGrams: override?.fiberGrams ?? base.fiberGrams,
  };
}

function assertEstimate(estimate: MacroEstimate, label: string): void {
  assertNonnegativeFinite(estimate.estimate, `${label}.estimate`);
  assertNonnegativeFinite(estimate.min, `${label}.min`);
  assertNonnegativeFinite(estimate.max, `${label}.max`);
  if (estimate.min > estimate.estimate + 1e-9 || estimate.estimate > estimate.max + 1e-9) {
    throw new MealCalculationError(`${label} must satisfy min <= estimate <= max`);
  }
}

function assertMacroVector(vector: MacroVector, label: string): void {
  for (const macro of MACRO_KEYS) assertNonnegativeFinite(vector[macro], `${label}.${macro}`);
}

function assertPositiveFinite(value: number, label: string): void {
  if (!Number.isFinite(value) || value <= 0) throw new MealCalculationError(`${label} must be finite and positive`);
}

function assertNonnegativeFinite(value: number, label: string): void {
  if (!Number.isFinite(value) || value < 0) throw new MealCalculationError(`${label} must be finite and nonnegative`);
}

function assertClose(actual: number, expected: number, label: string): void {
  if (!nearlyEqual(actual, expected)) {
    throw new MealCalculationError(`${label} mismatch: expected ${expected}, received ${actual}`);
  }
}

function nearlyEqual(left: number, right: number): boolean {
  return Math.abs(left - right) <= 1e-10 * Math.max(1, Math.abs(left), Math.abs(right));
}

function referenceKey(scenarioId: string, leafId: string): string {
  return `${scenarioId}\u0000${leafId}`;
}

function requireUnique(values: readonly string[], label: string): void {
  if (new Set(values).size !== values.length) throw new MealCalculationError(`${label} must be unique`);
}

function sum(values: readonly number[]): number {
  return values.reduce((total, value) => total + value, 0);
}

function mean(values: readonly number[]): number {
  if (values.length === 0) throw new MealCalculationError('cannot calculate an empty mean');
  return sum(values) / values.length;
}
