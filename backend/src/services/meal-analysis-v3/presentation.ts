import { z } from 'zod';
import type { MealAnalysisLlmAttempt } from '../meal-analysis/llm.js';
import type {
  ResolvedComponent,
  ResolvedInterpretation,
} from './domain.js';
import type { MealType, MealTypeOrigin } from './mealType.js';

const generatedPresentationSchema = z.object({
  mealName: z.string().trim().min(1).max(80),
  tip: z.string().trim().max(280),
}).strict();

export interface MealPresentation {
  mealName: string;
  servingSizeText: string;
  tip: string;
  providerAttempts: MealAnalysisLlmAttempt[];
  usedFallback: boolean;
}

export interface MealPresentationInput {
  interpretation: ResolvedInterpretation;
  mealType: { value: MealType; origin: MealTypeOrigin };
  locale: string;
  countryCode: string;
  generatedCopy?: unknown;
  providerAttempts: MealAnalysisLlmAttempt[];
}

export interface MealPresenter {
  present(input: MealPresentationInput): Promise<MealPresentation>;
}

const DISALLOWED_NAME_PATTERN =
  /\p{N}|\b(?:g|gram|grams|kg|ml|millilit(?:er|re)|oz|ounce|ounces|lb|pound|pounds|kcal|calories?|small|medium|large|serving size)\b/iu;

function validMealName(value: string): boolean {
  return value.trim().length > 0 && !DISALLOWED_NAME_PATTERN.test(value);
}

function formatQuantity(value: number): string {
  if (Number.isInteger(value)) return String(value);
  return String(Math.round(value * 10) / 10);
}

function naturalMeasureLabel(code: string, quantity: number): string {
  const label = code.toLowerCase().replaceAll('_', ' ');
  if (quantity === 1) return label;
  if (label.endsWith('s')) return label;
  if (/(?:ch|sh|x|z)$/.test(label)) return `${label}es`;
  return `${label}s`;
}

function countUnitLabel(component: ResolvedComponent): string {
  const code = component.portionConstraint.kind === 'COUNT'
    ? component.portionConstraint.naturalUnitCode
    : '';
  return ['COUNT', 'ITEM', 'UNIT'].includes(code)
    ? component.canonicalIdentity
    : code;
}

function componentServingSegment(component: ResolvedComponent): string {
  const scenario = component.scenarios.find(({ scenarioId }) =>
    scenarioId === component.pointScenarioId
  );
  if (!scenario) return 'measured portion';

  if (scenario.effectivePortion.kind === 'UNIT_COUNT') {
    if (component.portionConstraint.kind !== 'COUNT') return 'measured portion';
    const count = scenario.effectivePortion.consumedCount;
    return `${formatQuantity(count)} ${naturalMeasureLabel(
      countUnitLabel(component),
      count
    )}`;
  }
  if (
    component.portionConstraint.kind === 'AMOUNT' &&
    component.portionConstraint.naturalMeasure !== null &&
    !['GRAM', 'MILLILITER'].includes(component.portionConstraint.naturalMeasure.unitCode)
  ) {
    const quantity = component.portionConstraint.naturalMeasure.quantity.estimate;
    return `${formatQuantity(quantity)} ${naturalMeasureLabel(
      component.portionConstraint.naturalMeasure.unitCode,
      quantity
    )}`;
  }
  return 'measured portion';
}

export function buildServingSizeText(components: ResolvedComponent[]): string {
  const text = components.map(componentServingSegment).join(' + ');
  return text.slice(0, 120) || 'measured portion';
}

function fallbackMealName(interpretation: ResolvedInterpretation): string {
  const joined = interpretation.components.map(({ displayName }) => displayName).join(' & ');
  if (validMealName(joined)) return joined.slice(0, 80);
  if (validMealName(interpretation.mealNameCandidate)) {
    return interpretation.mealNameCandidate.slice(0, 80);
  }
  return 'Meal';
}

function generatedPresentation(value: unknown): z.infer<typeof generatedPresentationSchema> {
  const parsed = generatedPresentationSchema.parse(value);
  if (!validMealName(parsed.mealName)) {
    throw new Error('Generated meal name contains serving size or weight');
  }
  return parsed;
}

export function createMealPresenter(): MealPresenter {
  return {
    async present(input) {
      const servingSizeText = buildServingSizeText(input.interpretation.components);
      const fallback = (): MealPresentation => ({
        mealName: fallbackMealName(input.interpretation),
        servingSizeText,
        tip: '',
        providerAttempts: [...input.providerAttempts],
        usedFallback: true,
      });

      try {
        const generated = generatedPresentation(input.generatedCopy);
        return {
          ...generated,
          servingSizeText,
          providerAttempts: [...input.providerAttempts],
          usedFallback: false,
        };
      } catch {
        return fallback();
      }
    },
  };
}
