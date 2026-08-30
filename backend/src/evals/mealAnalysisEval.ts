import {
  firstPassResponseSchema,
  secondPassResponseSchema,
  type FirstPassResponse,
  type SecondPassResponse,
} from '../services/meal-analysis-v3/twoPassInterpretation.js';

type ExpectedOrigin = 'user_text' | 'model_inferred';

export interface MealAnalysisEvalCase {
  id: string;
  input: {
    text: string;
    locale: string;
    countryCode: string;
    timeZone: string;
    capturedAt: string;
  };
  expectedComponents: Array<{
    key: string;
    aliases: string[];
    portion: {
      kind: 'AMOUNT' | 'COUNT';
      exact?: number;
      estimateMin?: number;
      estimateMax?: number;
      origin: ExpectedOrigin;
      perUnitGrams?: {
        estimateMin: number;
        estimateMax: number;
        origin: ExpectedOrigin;
      };
    };
    requiredIngredientGroups: string[][];
    diagnosticIngredientGroups: string[][];
  }>;
  forbiddenIngredientGroups?: string[][];
}

export interface MealAnalysisEvalDataset {
  version: number;
  description: string;
  cases: MealAnalysisEvalCase[];
}

export interface MealAnalysisEvalAssertion {
  id: string;
  kind: 'hard' | 'diagnostic';
  passed: boolean;
  detail: string;
}

export interface MealAnalysisEvalRunResult {
  caseId: string;
  passed: boolean;
  hardPassed: number;
  hardTotal: number;
  assertions: MealAnalysisEvalAssertion[];
  firstPass?: FirstPassResponse;
  secondPass?: SecondPassResponse;
  error?: string;
}

function normalize(value: string): string {
  return value.toLowerCase().replace(/[^a-z0-9]+/g, ' ').trim();
}

function includesAlias(value: string, aliases: string[]): boolean {
  const normalized = normalize(value);
  return aliases.some((alias) => normalized.includes(normalize(alias)));
}

function ordered(range: { min: number; estimate: number; max: number } | undefined): boolean {
  return range !== undefined && range.min <= range.estimate && range.estimate <= range.max;
}

function containsPortionUnit(value: unknown): boolean {
  if (value === null || typeof value !== 'object') return false;
  const components = (value as { components?: unknown }).components;
  if (!Array.isArray(components)) return false;
  return components.some((component) => {
    if (component === null || typeof component !== 'object') return false;
    const portion = (component as { portion?: unknown }).portion;
    return portion !== null && typeof portion === 'object' && 'unit' in portion;
  });
}

function componentFor(
  pass: FirstPassResponse | undefined,
  aliases: string[]
): FirstPassResponse['components'][number] | undefined {
  return pass?.components.find((component) => includesAlias(
    `${component.componentName} ${component.canonicalIdentity}`,
    aliases
  ));
}

function ingredientComponentFor(
  pass: SecondPassResponse | undefined,
  firstComponent: FirstPassResponse['components'][number] | undefined,
  aliases: string[]
): SecondPassResponse['components'][number] | undefined {
  if (!pass) return undefined;
  if (firstComponent) {
    const exact = pass.components.find((component) =>
      normalize(component.componentName) === normalize(firstComponent.componentName));
    if (exact) return exact;
  }
  return pass.components.find((component) => includesAlias(component.componentName, aliases));
}

function ingredientCorpus(component: SecondPassResponse['components'][number] | undefined): string {
  return normalize((component?.ingredients ?? [])
    .flatMap((ingredient) => [
      ingredient.ingredientName,
      ingredient.canonicalIdentity,
      ...ingredient.lookupAliases,
    ])
    .join(' '));
}

function containsIngredientTerm(corpus: string, term: string): boolean {
  const normalizedTerm = normalize(term);
  return normalizedTerm.length > 0
    && ` ${corpus} `.includes(` ${normalizedTerm} `);
}

export function evaluateMealAnalysisRun(
  evalCase: MealAnalysisEvalCase,
  firstPassValue: unknown,
  secondPassValue: unknown,
  error?: string
): MealAnalysisEvalRunResult {
  const assertions: MealAnalysisEvalAssertion[] = [];
  const add = (
    id: string,
    kind: MealAnalysisEvalAssertion['kind'],
    passed: boolean,
    detail: string
  ) => assertions.push({ id, kind, passed, detail });

  const firstParsed = firstPassResponseSchema.safeParse(firstPassValue);
  const firstPass = firstParsed.success ? firstParsed.data : undefined;
  add(
    'pass1.schema',
    'hard',
    firstParsed.success,
    firstParsed.success ? 'valid' : firstParsed.error.issues.map((issue) => issue.message).join('; ')
  );
  add('pass1.food-detected', 'hard', firstPass?.food_detected === true, 'food must be detected');
  add(
    'pass1.component-count',
    'hard',
    firstPass?.components.length === evalCase.expectedComponents.length,
    `expected ${evalCase.expectedComponents.length}, received ${firstPass?.components.length ?? 0}`
  );
  add('pass1.no-unit-field', 'hard', !containsPortionUnit(firstPassValue), 'portion.unit is forbidden');

  const firstComponents = new Map<string, FirstPassResponse['components'][number] | undefined>();
  for (const expected of evalCase.expectedComponents) {
    const component = componentFor(firstPass, expected.aliases);
    firstComponents.set(expected.key, component);
    const prefix = `pass1.${expected.key}`;
    add(`${prefix}.present`, 'hard', component !== undefined, `aliases: ${expected.aliases.join(', ')}`);
    add(
      `${prefix}.portion-kind`,
      'hard',
      component?.portion.kind === expected.portion.kind,
      `expected ${expected.portion.kind}, received ${component?.portion.kind ?? 'missing'}`
    );
    add(
      `${prefix}.portion-origin`,
      'hard',
      component?.portion.origin === expected.portion.origin,
      `expected ${expected.portion.origin}, received ${component?.portion.origin ?? 'missing'}`
    );
    add(`${prefix}.range-ordered`, 'hard', ordered(component?.portion), 'min <= estimate <= max');

    if (expected.portion.exact !== undefined) {
      const exact = expected.portion.exact;
      add(
        `${prefix}.exact-value`,
        'hard',
        component?.portion.min === exact
          && component.portion.estimate === exact
          && component.portion.max === exact,
        `expected ${exact}/${exact}/${exact}, received ${component
          ? `${component.portion.min}/${component.portion.estimate}/${component.portion.max}`
          : 'missing'}`
      );
    } else {
      add(
        `${prefix}.estimate-plausible`,
        'hard',
        component !== undefined
          && component.portion.estimate >= (expected.portion.estimateMin ?? -Infinity)
          && component.portion.estimate <= (expected.portion.estimateMax ?? Infinity),
        `expected ${expected.portion.estimateMin}-${expected.portion.estimateMax}, received ${component?.portion.estimate ?? 'missing'}`
      );
    }

    if (expected.portion.perUnitGrams) {
      const perUnit = component?.portion.perUnitGrams ?? undefined;
      add(`${prefix}.per-unit-present`, 'hard', perUnit !== undefined, 'perUnitGrams is required');
      add(`${prefix}.per-unit-range-ordered`, 'hard', ordered(perUnit), 'min <= estimate <= max');
      add(
        `${prefix}.per-unit-estimate-plausible`,
        'hard',
        perUnit !== undefined
          && perUnit.estimate >= expected.portion.perUnitGrams.estimateMin
          && perUnit.estimate <= expected.portion.perUnitGrams.estimateMax,
        `expected ${expected.portion.perUnitGrams.estimateMin}-${expected.portion.perUnitGrams.estimateMax}, received ${perUnit?.estimate ?? 'missing'}`
      );
      add(
        `${prefix}.per-unit-origin`,
        'hard',
        perUnit?.origin === expected.portion.perUnitGrams.origin,
        `expected ${expected.portion.perUnitGrams.origin}, received ${perUnit?.origin ?? 'missing'}`
      );
    }
  }

  const secondParsed = secondPassResponseSchema.safeParse(secondPassValue);
  const secondPass = secondParsed.success ? secondParsed.data : undefined;
  add(
    'pass2.schema',
    'hard',
    secondParsed.success,
    secondParsed.success ? 'valid' : secondParsed.error.issues.map((issue) => issue.message).join('; ')
  );

  const firstNames = new Set(firstPass?.components.map((component) => normalize(component.componentName)) ?? []);
  const secondNames = new Set(secondPass?.components.map((component) => normalize(component.componentName)) ?? []);
  add(
    'pass2.component-correspondence',
    'hard',
    firstNames.size > 0
      && firstNames.size === secondNames.size
      && [...firstNames].every((name) => secondNames.has(name)),
    'pass-two componentName values must match pass one'
  );

  const amountOrigins = secondPass?.components.flatMap((component) =>
    component.ingredients.map((ingredient) => ingredient.amountGrams.origin)) ?? [];
  add(
    'pass2.amount-origins',
    'hard',
    amountOrigins.length > 0 && amountOrigins.every((origin) =>
      origin === 'user_text' || origin === 'model_inferred'),
    `received: ${amountOrigins.join(', ') || 'none'}`
  );

  const usefulAliases = secondPass?.components.flatMap((component) =>
    component.ingredients.filter((ingredient) =>
      ingredient.lookupAliases.length > 0
      && normalize(ingredient.canonicalIdentity) !== 'water')) ?? [];
  add(
    'pass2.lookup-alias-coverage',
    'diagnostic',
    usefulAliases.length > 0,
    `${usefulAliases.length} non-water ingredients include lookup aliases`
  );

  const variationReferencesValid = secondPass !== undefined && secondPass.components.every((component) => {
    const ingredientNames = new Set(component.ingredients.map((ingredient) =>
      normalize(ingredient.ingredientName)));
    return component.variations.every((variation) =>
      variation.ingredientName === null
      || ingredientNames.has(normalize(variation.ingredientName)));
  });
  add(
    'pass2.variation-references',
    'hard',
    variationReferencesValid,
    'non-null ingredientName must reference an ingredient in the same component'
  );

  const allIngredients = normalize(secondPass?.components.flatMap((component) =>
    component.ingredients.flatMap((ingredient) => [
      ingredient.ingredientName,
      ingredient.canonicalIdentity,
      ...ingredient.lookupAliases,
    ])).join(' ') ?? '');
  evalCase.forbiddenIngredientGroups?.forEach((group, index) => {
    add(
      `pass2.forbidden-ingredient-${index + 1}`,
      'hard',
      secondPass !== undefined
        && !group.some((term) => containsIngredientTerm(allIngredients, term)),
      `forbade: ${group.join(', ')}`
    );
  });

  for (const expected of evalCase.expectedComponents) {
    const firstComponent = firstComponents.get(expected.key);
    const component = ingredientComponentFor(secondPass, firstComponent, expected.aliases);
    const corpus = ingredientCorpus(component);
    expected.requiredIngredientGroups.forEach((group, index) => {
      add(
        `pass2.${expected.key}.required-ingredient-${index + 1}`,
        'hard',
        group.some((term) => corpus.includes(normalize(term))),
        `expected one of: ${group.join(', ')}`
      );
    });
    expected.diagnosticIngredientGroups.forEach((group, index) => {
      add(
        `pass2.${expected.key}.diagnostic-ingredient-${index + 1}`,
        'diagnostic',
        group.some((term) => corpus.includes(normalize(term))),
        `looked for one of: ${group.join(', ')}`
      );
    });

    const ingredientTotal = component?.ingredients.reduce(
      (sum, ingredient) => sum + ingredient.amountGrams.estimate,
      0
    );
    const portionTarget = firstComponent?.portion.kind === 'COUNT'
      ? firstComponent.portion.perUnitGrams?.estimate
      : firstComponent?.portion.estimate;
    const ratio = ingredientTotal !== undefined && portionTarget !== undefined && portionTarget > 0
      ? ingredientTotal / portionTarget
      : undefined;
    add(
      `pass2.${expected.key}.mass-coherence`,
      'diagnostic',
      ratio !== undefined && ratio >= 0.5 && ratio <= 2.5,
      ratio === undefined ? 'unavailable' : `ingredient/portion ratio ${ratio.toFixed(2)}`
    );
  }

  const hardAssertions = assertions.filter((assertion) => assertion.kind === 'hard');
  const hardPassed = hardAssertions.filter((assertion) => assertion.passed).length;
  return {
    caseId: evalCase.id,
    passed: hardPassed === hardAssertions.length,
    hardPassed,
    hardTotal: hardAssertions.length,
    assertions,
    ...(firstPass ? { firstPass } : {}),
    ...(secondPass ? { secondPass } : {}),
    ...(error ? { error } : {}),
  };
}

export function assertionPassRates(
  results: MealAnalysisEvalRunResult[]
): Array<{ id: string; kind: 'hard' | 'diagnostic'; passed: number; total: number; passRate: number }> {
  const groups = new Map<string, { kind: 'hard' | 'diagnostic'; passed: number; total: number }>();
  for (const result of results) {
    for (const assertion of result.assertions) {
      const group = groups.get(assertion.id) ?? { kind: assertion.kind, passed: 0, total: 0 };
      group.total += 1;
      if (assertion.passed) group.passed += 1;
      groups.set(assertion.id, group);
    }
  }
  return [...groups.entries()].map(([id, group]) => ({
    id,
    kind: group.kind,
    passed: group.passed,
    total: group.total,
    passRate: group.total === 0 ? 0 : group.passed / group.total,
  }));
}
