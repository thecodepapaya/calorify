import { END, START, StateGraph } from '@langchain/langgraph';
import { createMealAnalysisNodes, type MealAnalysisGraphDeps } from './nodes.js';
import { MealAnalysisState } from './state.js';

function routeAfterValidation(state: MealAnalysisState): 'resolveNutrition' | typeof END {
  return state.result === undefined ? 'resolveNutrition' : END;
}

function routeAfterNutrition(state: MealAnalysisState): 'calculate' | typeof END {
  return state.result === undefined ? 'calculate' : END;
}

function routeAfterQuestionPlanning(state: MealAnalysisState): 'pauseForInput' | 'applyAnswers' {
  return state.pendingInput === true && !state.hasRequestInput ? 'pauseForInput' : 'applyAnswers';
}

/**
 * Fresh analysis: normalize, interpret (two LLM passes), validate, resolve
 * USDA nutrition, calculate, plan questions, then either pause for the
 * answer bundle or apply answers and finalize.
 */
export function buildMealAnalysisGraph(deps: MealAnalysisGraphDeps) {
  const nodes = createMealAnalysisNodes(deps);
  return new StateGraph(MealAnalysisState)
    .addNode('normalizeInput', nodes.normalizeInput)
    .addNode('interpret', nodes.interpret)
    .addNode('validate', nodes.validate)
    .addNode('resolveNutrition', nodes.resolveNutrition)
    .addNode('calculate', nodes.calculate)
    .addNode('planQuestions', nodes.planQuestions)
    .addNode('pauseForInput', nodes.pauseForInput)
    .addNode('applyAnswers', nodes.applyAnswers)
    .addNode('finalize', nodes.finalize)
    .addEdge(START, 'normalizeInput')
    .addEdge('normalizeInput', 'interpret')
    .addEdge('interpret', 'validate')
    .addConditionalEdges('validate', routeAfterValidation, ['resolveNutrition', END])
    .addConditionalEdges('resolveNutrition', routeAfterNutrition, ['calculate', END])
    .addEdge('calculate', 'planQuestions')
    .addConditionalEdges('planQuestions', routeAfterQuestionPlanning, ['pauseForInput', 'applyAnswers'])
    .addEdge('pauseForInput', END)
    .addEdge('applyAnswers', 'finalize')
    .addEdge('finalize', END)
    .compile();
}

/**
 * Deterministic /answer replay: resumes from the persisted interpretation
 * snapshot, so interpretation and USDA lookup never re-run. Shares the tail
 * nodes with the fresh-analysis graph.
 */
export function buildMealAnalysisResumeGraph(deps: MealAnalysisGraphDeps) {
  const nodes = createMealAnalysisNodes(deps);
  return new StateGraph(MealAnalysisState)
    .addNode('resumeFromSnapshot', nodes.resumeFromSnapshot)
    .addNode('calculate', nodes.calculate)
    .addNode('planQuestions', nodes.planQuestions)
    .addNode('pauseForInput', nodes.pauseForInput)
    .addNode('applyAnswers', nodes.applyAnswers)
    .addNode('finalize', nodes.finalize)
    .addEdge(START, 'resumeFromSnapshot')
    .addEdge('resumeFromSnapshot', 'calculate')
    .addEdge('calculate', 'planQuestions')
    .addConditionalEdges('planQuestions', routeAfterQuestionPlanning, ['pauseForInput', 'applyAnswers'])
    .addEdge('pauseForInput', END)
    .addEdge('applyAnswers', 'finalize')
    .addEdge('finalize', END)
    .compile();
}
