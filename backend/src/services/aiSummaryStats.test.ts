import assert from 'node:assert/strict';
import test from 'node:test';
import { computeAiSummaryStats } from './aiSummaryStats.js';

test('computeAiSummaryStats returns the API empty state', () => {
  assert.deepEqual(computeAiSummaryStats([]), {
    mealCount: 0,
    topFoods: [],
    macroBalanceScore: 0,
    trend: 'STEADY',
  });
});

test('computeAiSummaryStats ranks foods and calculates a bounded score', () => {
  const now = new Date();
  const stats = computeAiSummaryStats([
    {
      logged_at: now,
      logged_meal_name: 'Dal rice',
      logged_meal_type: 'LUNCH',
      logged_calories: 450,
      logged_protein: 20,
      logged_carbs: 65,
      logged_fat: 12,
      logged_fiber: 8,
    },
    {
      logged_at: now,
      logged_meal_name: 'Dal rice',
      logged_meal_type: 'DINNER',
      logged_calories: 420,
      logged_protein: 18,
      logged_carbs: 62,
      logged_fat: 11,
      logged_fiber: 7,
    },
    {
      logged_at: now,
      logged_meal_name: 'Oats',
      logged_meal_type: 'BREAKFAST',
      logged_calories: 300,
      logged_protein: 12,
      logged_carbs: 48,
      logged_fat: 7,
      logged_fiber: 6,
    },
  ]);
  assert.equal(stats.mealCount, 3);
  assert.deepEqual(stats.topFoods, ['Dal rice', 'Oats']);
  assert.ok(stats.macroBalanceScore >= 0 && stats.macroBalanceScore <= 100);
});
