import assert from 'node:assert/strict';
import test from 'node:test';

import {
  mealTypeForQuestion,
  parseCalorieEstimationCliArgs,
  printHuman,
  redactedImageUrl,
} from './calorie-estimation-cli.js';

test('parses a positional meal and normalizes optional context', () => {
  assert.deepEqual(
    parseCalorieEstimationCliArgs([
      'two',
      'rotis',
      'with',
      'dal',
      '--country',
      'in',
      '--locale',
      'hi',
      '--meal-type',
      'dinner',
      '--no-auto-continue',
      '--json',
    ]),
    {
      text: 'two rotis with dal',
      countryCode: 'IN',
      locale: 'hi',
      mealType: 'DINNER',
      autoContinue: false,
      json: true,
      help: false,
    }
  );
});

test('rejects ambiguous inputs, invalid meal types, and missing flag values', () => {
  assert.throws(
    () => parseCalorieEstimationCliArgs(['--text', 'dal', '--image-url', 'https://example.test/a.jpg']),
    /either --text or --image-url/
  );
  assert.throws(
    () => parseCalorieEstimationCliArgs(['--meal-type', 'brunch']),
    /BREAKFAST, LUNCH, DINNER, SNACK/
  );
  assert.throws(() => parseCalorieEstimationCliArgs(['--locale']), /requires a value/);
  assert.throws(() => parseCalorieEstimationCliArgs(['--unknown']), /Unknown argument/);
});

test('redacts image query strings and credentials from diagnostics', () => {
  assert.equal(
    redactedImageUrl('https://user:secret@example.test/meals/1.jpg?signature=private#fragment'),
    'https://example.test/meals/1.jpg'
  );
  assert.equal(redactedImageUrl('not a URL'), '(invalid URL)');
});

test('uses the inferred meal type and falls back deterministically', () => {
  const base = {
    step: 'MEAL_TYPE_QUESTION' as const,
    data: {
      analysisId: 'analysis-1',
      mealName: 'Dal',
      question: 'Which meal?',
      options: ['BREAKFAST', 'LUNCH', 'DINNER'] as const,
    },
  };

  assert.equal(
    mealTypeForQuestion({ ...base, data: { ...base.data, inferredMealType: 'DINNER' } }),
    'DINNER'
  );
  assert.equal(mealTypeForQuestion(base), 'LUNCH');
  assert.equal(
    mealTypeForQuestion({ ...base, data: { ...base.data, options: ['SNACK'] } }),
    'SNACK'
  );
});

test('human diagnostics print one terminal summary and all observability totals', () => {
  const output: string[] = [];
  const originalLog = console.log;
  console.log = (...values: unknown[]) => output.push(values.map(String).join(' '));
  try {
    printHuman({
      input: { kind: 'text', value: 'dal' },
      databaseHealthy: true,
      routing: { order: ['openrouter/model'] },
      timeline: [],
      decisions: [],
      terminalStep: 'MEAL_TYPE_QUESTION',
      trace: {
        totalDurationMs: 12,
        llmCallCount: 1,
        llmAttemptCount: 2,
        llmFailedAttemptCount: 1,
        usdaLookupCount: 3,
        dbWriteCount: 0,
        steps: [],
        llmAttempts: [
          {
            operation: 'decompose',
            provider: 'openrouter',
            model: 'free/model',
            outcome: 'success',
            durationMs: 8,
          },
        ],
      },
    });
  } finally {
    console.log = originalLog;
  }

  assert.equal(output.filter((line) => line.includes('No final result')).length, 1);
  assert.equal(output.filter((line) => line.includes('openrouter/free/model')).length, 1);
  assert.match(output.join('\n'), /1 LLM calls\/2 attempts\/1 failed attempts/);
});
