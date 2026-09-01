import { z } from 'zod';
import type { MealAnalysisLlmAttempt } from '../meal-analysis/llm.js';
import type {
  ResolvedComponent,
  ResolvedInterpretation,
} from './domain.js';
import type { MealType, MealTypeOrigin } from './mealType.js';

const generatedPresentationSchema = z.object({
  mealName: z.string().trim().min(1).max(80),
  servingSizeText: z.string().trim().min(1).max(24),
  tip: z.string().trim().max(280),
}).strict();

export const MAX_SERVING_SIZE_TEXT_LENGTH = 24;

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

const FORBIDDEN_SERVING_TEXT =
  /\b(?:g|gram|grams|kg|kilogram|kilograms|ml|millilit(?:er|re)s?|oz|ounces?|lb|pounds?|kcal|calories?)\b/iu;

function validServingSizeText(value: string): boolean {
  const trimmed = value.trim();
  return trimmed.length > 0 &&
    trimmed.length <= MAX_SERVING_SIZE_TEXT_LENGTH &&
    !FORBIDDEN_SERVING_TEXT.test(trimmed);
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

function componentServingSegment(component: ResolvedComponent): string | null {
  const scenario = component.scenarios.find(({ scenarioId }) =>
    scenarioId === component.pointScenarioId
  );
  if (!scenario) return null;

  if (scenario.effectivePortion.kind === 'UNIT_COUNT') {
    if (component.portionConstraint.kind !== 'COUNT') return null;
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
  return null;
}

export function buildServingSizeText(components: ResolvedComponent[]): string {
  const segments = components
    .map(componentServingSegment)
    .filter((segment): segment is string => segment !== null);
  let text = '';
  for (const segment of segments) {
    const candidate = text === '' ? segment : `${text} + ${segment}`;
    if (candidate.length <= MAX_SERVING_SIZE_TEXT_LENGTH) text = candidate;
  }
  return text || 'measured portion';
}

function fallbackMealName(interpretation: ResolvedInterpretation): string {
  const joined = interpretation.components.map(({ displayName }) => displayName).join(' & ');
  if (validMealName(joined)) return joined.slice(0, 80);
  if (validMealName(interpretation.mealName)) {
    return interpretation.mealName.slice(0, 80);
  }
  return 'Meal';
}

function generatedPresentation(value: unknown): z.infer<typeof generatedPresentationSchema> {
  const parsed = generatedPresentationSchema.parse(value);
  if (!validMealName(parsed.mealName)) {
    throw new Error('Generated meal name contains serving size or weight');
  }
  if (!validServingSizeText(parsed.servingSizeText)) {
    throw new Error('Generated serving-size text is invalid');
  }
  return parsed;
}

export function createMealPresenter(): MealPresenter {
  return {
    async present(input) {
      const fallbackServingSizeText = buildServingSizeText(input.interpretation.components);
      const fallback = (): MealPresentation => ({
        mealName: fallbackMealName(input.interpretation),
        servingSizeText: fallbackServingSizeText,
        tip: '',
        providerAttempts: [...input.providerAttempts],
        usedFallback: true,
      });

      try {
        const generated = generatedPresentation(input.generatedCopy);
        return {
          ...generated,
          providerAttempts: [...input.providerAttempts],
          usedFallback: false,
        };
      } catch {
        return fallback();
      }
    },
  };
}
