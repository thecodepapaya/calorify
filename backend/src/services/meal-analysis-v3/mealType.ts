export const MEAL_TYPES = ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'] as const;

export type MealType = (typeof MEAL_TYPES)[number];

export type MealTypeOrigin =
  | 'USER_CLARIFICATION'
  | 'USER_TEXT'
  | 'CONTEXT_DEFAULT'
  | 'MODEL_INFERRED';

export interface MealTypeHint {
  value: MealType;
  origin: 'USER_TEXT' | 'MODEL_INFERRED';
  confidence: number;
}

export interface MealTypeQuestion {
  questionId: 'meal-type';
  scope: 'MEAL_TYPE';
  prompt: string;
  options: Array<{ optionId: MealType; label: string }>;
}

export type MealTypeResolution =
  | { status: 'RESOLVED'; value: MealType; origin: MealTypeOrigin }
  | { status: 'NEEDS_INPUT'; question: MealTypeQuestion };

export interface ResolveMealTypeInput {
  answer?: MealType;
  hint?: MealTypeHint | null;
  inputKind: 'TEXT' | 'IMAGE';
  imageOrigin?: 'CAMERA_NOW' | 'GALLERY';
  capturedAt: string;
  timeZone: string;
  requestReceivedAt: string;
}

const MAX_CAMERA_AGE_MS = 15 * 60 * 1000;
const MAX_FUTURE_SKEW_MS = 2 * 60 * 1000;

function localHour(timestamp: string, timeZone: string): number | undefined {
  const hour = new Intl.DateTimeFormat('en-US', {
    hour: '2-digit',
    hourCycle: 'h23',
    timeZone,
  }).formatToParts(new Date(timestamp)).find((part) => part.type === 'hour')?.value;
  const parsed = Number(hour);
  return Number.isInteger(parsed) ? parsed : undefined;
}

function mealTypeFromHour(hour: number): MealType | undefined {
  if (hour >= 5 && hour < 11) return 'BREAKFAST';
  if (hour >= 11 && hour < 15) return 'LUNCH';
  if (hour >= 15 && hour < 18) return 'SNACK';
  if (hour >= 18 && hour < 23) return 'DINNER';
  return undefined;
}

function cameraContextDefault(input: ResolveMealTypeInput): MealType | undefined {
  if (input.inputKind !== 'IMAGE' || input.imageOrigin !== 'CAMERA_NOW') return undefined;
  const captured = new Date(input.capturedAt).getTime();
  const received = new Date(input.requestReceivedAt).getTime();
  if (!Number.isFinite(captured) || !Number.isFinite(received)) return undefined;
  const age = received - captured;
  if (age > MAX_CAMERA_AGE_MS || age < -MAX_FUTURE_SKEW_MS) return undefined;
  const hour = localHour(input.capturedAt, input.timeZone);
  return hour === undefined ? undefined : mealTypeFromHour(hour);
}

export function resolveMealType(input: ResolveMealTypeInput): MealTypeResolution {
  if (input.answer) {
    return { status: 'RESOLVED', value: input.answer, origin: 'USER_CLARIFICATION' };
  }
  if (input.hint?.origin === 'USER_TEXT') {
    return { status: 'RESOLVED', value: input.hint.value, origin: 'USER_TEXT' };
  }
  const contextDefault = cameraContextDefault(input);
  if (contextDefault) {
    return { status: 'RESOLVED', value: contextDefault, origin: 'CONTEXT_DEFAULT' };
  }
  if (input.hint?.origin === 'MODEL_INFERRED' && input.hint.confidence >= 0.8) {
    return { status: 'RESOLVED', value: input.hint.value, origin: 'MODEL_INFERRED' };
  }
  return {
    status: 'NEEDS_INPUT',
    question: {
      questionId: 'meal-type',
      scope: 'MEAL_TYPE',
      prompt: 'What type of meal was this?',
      options: MEAL_TYPES.map((value) => ({
        optionId: value,
        label: value[0] + value.slice(1).toLowerCase(),
      })),
    },
  };
}
