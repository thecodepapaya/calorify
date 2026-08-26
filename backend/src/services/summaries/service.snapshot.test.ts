import assert from 'node:assert/strict';
import test from 'node:test';
import { aiSummarySnapshotSchema, resolveAiSummaryLocale } from './service.js';

const base = {
  summaryLocalDate: '2026-08-25', timezone: 'Asia/Kolkata', locale: 'hi',
  meals: [{ loggedAt: '2026-08-24T12:00:00+05:30', name: 'Dal', mealType: 'LUNCH', calories: 400, protein: 20, carbs: 50, fat: 10, fiber: 8 }],
  context: { dailyCalorieGoal: 2000 },
};

test('snapshot accepts the bounded contract and rejects today, extra fields, and over 100 meals', () => {
  assert.equal(aiSummarySnapshotSchema.parse(base).locale, 'hi');
  assert.equal(aiSummarySnapshotSchema.safeParse({ ...base, meals: [{ ...base.meals[0], loggedAt: '2026-08-25T00:01:00+05:30' }] }).success, false);
  assert.equal(aiSummarySnapshotSchema.safeParse({ ...base, userId: 'must-not-pass' }).success, false);
  assert.equal(aiSummarySnapshotSchema.safeParse({ ...base, summaryLocalDate: '2026-02-31' }).success, false);
  assert.equal(aiSummarySnapshotSchema.safeParse({ ...base, meals: Array.from({ length: 101 }, () => base.meals[0]) }).success, false);
});

test('all app locales resolve exactly and unsupported tags fall back to English', () => {
  for (const locale of ['en','ar','bn','cs','da','de','el','es','fi','fr','gu','he','hi','hu','id','it','ja','ko','ms','nl','no','pl','pt','ro','ru','sv','te','th','tl','tr','uk','ur','vi','zh-CN','zh-TW']) {
    assert.equal(resolveAiSummaryLocale(locale), locale);
  }
  assert.equal(resolveAiSummaryLocale('xx-ZZ'), 'en');
});
