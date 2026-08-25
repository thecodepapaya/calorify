import test from 'node:test';
import assert from 'node:assert/strict';
import {
  inferMealAnalysisStage,
  parseMealAnalysisStage,
  resolveMealAnalysisStage,
} from './mealAnalysisStage.js';

const decompositionData = { ingredients: [{}] };
const ingredientsData = { ingredients: [{}] };
const noClarification = { needsClarification: false, clarifications: [] };
const pendingClarification = {
  needsClarification: true,
  clarifications: [{ clarificationId: 'clr-row' }],
};

test('legacy rows infer their last durable stage from payloads', () => {
  assert.equal(inferMealAnalysisStage({ decompositionData }), 'DECOMPOSED');
  assert.equal(
    inferMealAnalysisStage({ decompositionData, ingredientsData }),
    'INGREDIENTS_RESOLVED'
  );
  assert.equal(inferMealAnalysisStage({
    decompositionData,
    ingredientsData,
    uncertaintyData: pendingClarification,
  }), 'AWAITING_CLARIFICATION');
  assert.equal(inferMealAnalysisStage({
    decompositionData,
    ingredientsData,
    uncertaintyData: noClarification,
    mealTypeQuestionData: { options: ['BREAKFAST'] },
  }), 'AWAITING_MEAL_TYPE');
  assert.equal(inferMealAnalysisStage({
    decompositionData,
    ingredientsData,
    uncertaintyData: noClarification,
    resultData: { analysisId: 'done' },
  }), 'COMPLETED');
});

test('explicit stage marker is parsed and validated', () => {
  assert.equal(parseMealAnalysisStage('PRESENTING'), 'PRESENTING');
  assert.equal(resolveMealAnalysisStage({
    stage: 'READY_FOR_PRESENTATION',
    decompositionData,
    ingredientsData,
    uncertaintyData: noClarification,
    selectedMealType: 'LUNCH',
  }), 'READY_FOR_PRESENTATION');
});

test('pre-decomposition stages require a durable request but no output snapshot', () => {
  assert.equal(resolveMealAnalysisStage({
    stage: 'PENDING_DECOMPOSITION',
  }), 'PENDING_DECOMPOSITION');
  assert.equal(resolveMealAnalysisStage({
    stage: 'DECOMPOSING',
  }), 'DECOMPOSING');
  assert.throws(() => resolveMealAnalysisStage({
    stage: 'DECOMPOSING',
    decompositionData,
  }), /output before decomposition completed/);
});

test('unknown markers and inconsistent snapshots are rejected', () => {
  assert.throws(() => parseMealAnalysisStage('DONE'), /unknown stage marker/);
  assert.throws(() => resolveMealAnalysisStage({
    stage: 'AWAITING_MEAL_TYPE',
    decompositionData,
    ingredientsData,
    uncertaintyData: pendingClarification,
    mealTypeQuestionData: { options: ['BREAKFAST'] },
  }), /still requires clarification/);
  assert.throws(() => resolveMealAnalysisStage({
    stage: 'AWAITING_CLARIFICATION',
    decompositionData,
    ingredientsData,
    uncertaintyData: noClarification,
  }), /has no pending clarification/);
});

test('in-flight clarification stage retains the pending snapshot invariant', () => {
  assert.equal(resolveMealAnalysisStage({
    stage: 'APPLYING_CLARIFICATION',
    decompositionData,
    ingredientsData,
    uncertaintyData: pendingClarification,
  }), 'APPLYING_CLARIFICATION');
});

test('legacy automatic stage markers resolve from their last completed payload', () => {
  assert.equal(resolveMealAnalysisStage({
    stage: 'RESOLVING_INGREDIENTS',
    decompositionData,
  }), 'RESOLVING_INGREDIENTS');
  assert.equal(resolveMealAnalysisStage({
    stage: 'FINALIZING_ANALYSIS',
    decompositionData,
    ingredientsData,
  }), 'FINALIZING_ANALYSIS');
  assert.throws(() => resolveMealAnalysisStage({
    stage: 'FINALIZING_ANALYSIS',
    decompositionData,
    ingredientsData,
    uncertaintyData: noClarification,
  }), /later stage/);
});
