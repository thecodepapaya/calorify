import assert from 'node:assert/strict';
import test from 'node:test';
import { computeAiSummaryStats, isAiSummaryEligible, type AiSummaryMeal } from './stats.js';

function meal(date: string, name = ' Dal   Rice ', calories = 500): AiSummaryMeal {
  return { loggedAt: `${date}T12:00:00+05:30`, name, mealType: 'LUNCH', calories, protein: 20, carbs: 60, fat: 15, fiber: 8 };
}

test('sparse eligibility supports both thresholds and rejects just-below cases', () => {
  assert.equal(isAiSummaryEligible([meal('2026-08-24'), meal('2026-08-24')], '2026-08-25', 'Asia/Kolkata'), true);
  assert.equal(isAiSummaryEligible([meal('2026-08-24'), meal('2026-08-23'), meal('2026-08-22')], '2026-08-25', 'Asia/Kolkata'), true);
  assert.equal(isAiSummaryEligible([meal('2026-08-24'), meal('2026-08-23')], '2026-08-25', 'Asia/Kolkata'), false);
});

test('statistics group food names case-insensitively and require trend coverage', () => {
  const meals = [
    meal('2026-08-24'), meal('2026-08-23', 'dal rice'),
    meal('2026-08-22', 'Soup', 600), meal('2026-08-21', 'Soup', 300),
    meal('2026-08-20', 'Salad', 300),
  ];
  const stats = computeAiSummaryStats(meals, '2026-08-25', 'Asia/Kolkata');
  assert.deepEqual(stats.topFoods, ['Dal Rice', 'Soup', 'Salad']);
  assert.equal(stats.mealCount, 5);
  assert.equal(stats.trend, 'UP');
  assert.equal(computeAiSummaryStats([meal('2026-08-24')], '2026-08-25', 'Asia/Kolkata').trend, 'UNSPECIFIED');
});
