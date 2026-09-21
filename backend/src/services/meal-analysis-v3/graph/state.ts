import { Annotation } from '@langchain/langgraph';
import type { MealAnalysisLlmAttempt } from '../../meal-analysis/llm.js';
import type { CalculatedMeal, QuestionAnswer } from '../calculation.js';
import type {
  InterpretationProposal,
  MealTypeCandidate,
  NormalizedMealInput,
  ResolvedInterpretation,
} from '../domain.js';
import type { MealInterpretationImage, MealInterpretationResult } from '../interpretation.js';
import type { MealType, MealTypeResolution } from '../mealType.js';
import type {
  MealAnalysisQuestionBundle,
  MealAnalysisV3InterpretationSnapshot,
  MealAnalysisV3Result,
} from '../contract.js';

/**
 * Single state object flowing through the meal-analysis LangGraph. Each node
 * returns a partial update that replaces the named channels; nothing here is
 * checkpointed externally. `snapshotInput` is only seeded on the resume graph.
 */
export const MealAnalysisState = Annotation.Root({
  // Invocation inputs.
  rawInput: Annotation<unknown>,
  requestReceivedAt: Annotation<string>,
  image: Annotation<MealInterpretationImage | undefined>,
  nutritionAnswersInput: Annotation<unknown[] | undefined>,
  mealTypeAnswer: Annotation<MealType | undefined>,
  hasRequestInput: Annotation<boolean>,
  snapshotInput: Annotation<unknown>,

  // Stage outputs accumulated by the nodes.
  input: Annotation<NormalizedMealInput | undefined>,
  interpreted: Annotation<MealInterpretationResult | undefined>,
  proposal: Annotation<InterpretationProposal | undefined>,
  mealTypeCandidate: Annotation<MealTypeCandidate | undefined>,
  generatedCopy: Annotation<MealAnalysisV3InterpretationSnapshot['generatedCopy'] | undefined>,
  providerAttempts: Annotation<MealAnalysisLlmAttempt[] | undefined>,
  resolved: Annotation<ResolvedInterpretation | undefined>,
  calculation: Annotation<CalculatedMeal | undefined>,
  initialMealType: Annotation<MealTypeResolution | undefined>,
  questions: Annotation<MealAnalysisQuestionBundle | undefined>,
  nutritionAnswers: Annotation<QuestionAnswer[] | undefined>,
  pendingInput: Annotation<boolean | undefined>,
  result: Annotation<MealAnalysisV3Result | undefined>,
});

export type MealAnalysisState = typeof MealAnalysisState.State;
