import assert from 'node:assert/strict';
import test from 'node:test';
import {
  applyQuestionAnswers,
  calculateMeal,
  planNutritionQuestions,
  resolveInterpretation,
  validateCalculatedMeal,
} from '../../../src/services/meal-analysis-v3/calculation.js';
import {
  countQuestionProposal,
  foodProposal,
  nutritionReferences,
} from './fixtures.js';

test('calculation uses exactly one FINISHED_MASS or UNIT_COUNT scale', () => {
  const proposal = foodProposal();
  const resolved = resolveInterpretation(proposal, nutritionReferences(proposal));
  const calculated = calculateMeal(resolved);

  const sabzi = calculated.components.find((component) => component.componentId === 'sabzi')!;
  assert.equal(sabzi.scenarios[0]!.scale, 1);
  assert.equal(sabzi.macros.caloriesKcal.estimate, 76.2);
  assert.equal(sabzi.macros.caloriesKcal.min, 76.2);
  assert.equal(sabzi.macros.caloriesKcal.max, 166.2);

  const roti = calculated.components.find((component) => component.componentId === 'roti')!;
  assert.equal(roti.scenarios[0]!.scale, 4);
  assert.equal(roti.macros.caloriesKcal.estimate, 408);
  assert.equal(roti.macros.caloriesKcal.max, 612);

  const oats = calculated.components.find((component) => component.componentId === 'oats')!;
  assert.equal(oats.scenarios[0]!.scale, 1, 'a consumed prepared serving equal to its yield has scale one');
  assert.equal(oats.macros.caloriesKcal.estimate, 389);

  assert.equal(calculated.macros.caloriesKcal.estimate, 873.2);
  assert.equal(calculated.macros.caloriesKcal.min, 873.2);
  assert.equal(calculated.macros.caloriesKcal.max, 1167.2);
  assert.equal(calculated.macros.proteinGrams.estimate, 33.7);
  validateCalculatedMeal(calculated);
});

test('resolution rejects missing, surplus, and unverified yield-only nutrition', () => {
  const proposal = foodProposal();
  const references = nutritionReferences(proposal);
  assert.throws(
    () => resolveInterpretation(proposal, references.slice(1)),
    /missing nutrition reference/
  );
  assert.throws(
    () => resolveInterpretation(proposal, [...references, {
      ...references[0]!,
      scenarioId: 'surplus-scenario',
    }]),
    /surplus nutrition reference/
  );
  const brokenWater = references.map((reference) =>
    reference.leafId === 'water'
      ? { ...reference, verifiedZero: false }
      : reference
  );
  assert.throws(
    () => resolveInterpretation(proposal, brokenWater),
    /verified all-zero reference/
  );
});

test('planner ranks macro impact and emits no more than one question per component', () => {
  const proposal = foodProposal();
  const resolved = resolveInterpretation(proposal, nutritionReferences(proposal));
  const questions = planNutritionQuestions(resolved);

  assert.equal(questions.length, 2);
  assert.deepEqual(new Set(questions.map((question) => question.target.componentId)), new Set(['sabzi', 'roti']));
  assert.equal(new Set(questions.map((question) => question.target.componentId)).size, questions.length);
  assert.ok(questions[0]!.impactScore >= questions[1]!.impactScore);
  assert.ok(questions.every((question) => question.impactScore > 0));
  assert.equal(planNutritionQuestions(resolved, { maxQuestions: 1 }).length, 1);
  assert.deepEqual(planNutritionQuestions(resolved, { minimumImpactScore: 1_000 }), []);
});

test('planner drops low-impact and already user-specified uncertainty', () => {
  const proposal = foodProposal();
  const resolved = resolveInterpretation(proposal, nutritionReferences(proposal));
  const lowImpact = structuredClone(resolved);
  const rich = lowImpact.components.find((component) => component.componentId === 'sabzi')!
    .scenarios.find((scenario) => scenario.scenarioId === 'sabzi-rich')!;
  rich.ingredients.find((ingredient) => ingredient.leafId === 'oil')!.nutritionBasisGrams = 5.1;
  const materialQuestions = planNutritionQuestions(lowImpact);
  assert.deepEqual(materialQuestions.map((question) => question.target.componentId), ['roti']);
  assert.equal(planNutritionQuestions(lowImpact, { minimumImpactScore: 0 }).length, 2);

  const explicitSize = structuredClone(resolved);
  for (const scenario of explicitSize.components.find((component) => component.componentId === 'roti')!.scenarios) {
    const assumption = scenario.assumptions[0]!;
    assumption.origin = 'USER_TEXT';
    assumption.evidence = {
      origin: 'USER_TEXT',
      text: 'rotis',
      startUtf16: 21,
      endUtf16: 26,
    };
  }
  assert.deepEqual(
    planNutritionQuestions(explicitSize).map((question) => question.target.componentId),
    ['sabzi']
  );
});

test('OPTION and USE_ESTIMATE answers filter scenarios and recalculate from leaves', () => {
  const proposal = foodProposal();
  const resolved = resolveInterpretation(proposal, nutritionReferences(proposal));
  const questions = planNutritionQuestions(resolved);
  const answers = questions.map((question) => {
    if (question.target.componentId === 'sabzi') {
      return { questionId: question.questionId, kind: 'OPTION' as const, optionId: 'rich' };
    }
    return { questionId: question.questionId, kind: 'USE_ESTIMATE' as const };
  });
  const answered = applyQuestionAnswers(resolved, questions, answers);
  const sabzi = answered.components.find((component) => component.componentId === 'sabzi')!;
  assert.equal(sabzi.scenarios.length, 1);
  assert.equal(sabzi.pointScenarioId, 'sabzi-rich');
  assert.equal(sabzi.scenarios[0]!.assumptions[0]!.origin, 'USER_CLARIFICATION');
  assert.equal(calculateMeal(answered).macros.caloriesKcal.estimate, 963.2);

  assert.throws(
    () => applyQuestionAnswers(resolved, questions, answers.slice(1)),
    /every question requires exactly one answer/
  );
});

test('NUMBER answers replace count uncertainty without patching a calorie delta', () => {
  const proposal = countQuestionProposal();
  const resolved = resolveInterpretation(proposal, nutritionReferences(proposal));
  const questions = planNutritionQuestions(resolved);
  assert.equal(questions.length, 1);
  assert.equal(questions[0]!.response.kind, 'NUMBER');
  assert.equal(questions[0]!.target.dimension, 'COUNT');

  const answered = applyQuestionAnswers(resolved, questions, [{
    questionId: questions[0]!.questionId,
    kind: 'NUMBER',
    value: 6,
  }]);
  const portion = answered.components[0]!.portionConstraint;
  assert.equal(portion.kind, 'COUNT');
  assert.equal(portion.count?.estimate, 6);
  assert.equal(portion.count?.origin, 'USER_CLARIFICATION');
  assert.ok(answered.components[0]!.scenarios.every((scenario) =>
    scenario.effectivePortion.kind === 'UNIT_COUNT' && scenario.effectivePortion.consumedCount === 6
  ));
  assert.ok(answered.components[0]!.scenarios.every((scenario) =>
    scenario.assumptions[0]!.origin === 'USER_CLARIFICATION'
  ));
  const recalculated = calculateMeal(answered);
  assert.equal(recalculated.macros.caloriesKcal.estimate, 612);
  assert.equal(recalculated.macros.caloriesKcal.min, 612);
  assert.equal(recalculated.macros.caloriesKcal.max, 612);

  assert.throws(() => applyQuestionAnswers(resolved, questions, [{
    questionId: questions[0]!.questionId,
    kind: 'NUMBER',
    value: 6.5,
  }]), /bounds|integer|off-step/);
});

test('final validation detects tampered point, range, and meal aggregation', () => {
  const proposal = foodProposal();
  const calculated = calculateMeal(resolveInterpretation(proposal, nutritionReferences(proposal)));
  const wrongPoint = structuredClone(calculated);
  wrongPoint.components[0]!.macros.caloriesKcal.estimate += 1;
  assert.throws(() => validateCalculatedMeal(wrongPoint), /point/);

  const wrongTotal = structuredClone(calculated);
  wrongTotal.macros.fiberGrams.max += 1;
  assert.throws(() => validateCalculatedMeal(wrongTotal), /meal fiberGrams.max mismatch/);
});
