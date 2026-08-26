import assert from 'node:assert/strict';
import test from 'node:test';
import { resolveMealType } from '../../../src/services/meal-analysis-v3/mealType.js';

const base = {
  inputKind: 'IMAGE' as const,
  imageOrigin: 'CAMERA_NOW' as const,
  capturedAt: '2026-08-26T07:00:00.000Z',
  requestReceivedAt: '2026-08-26T07:05:00.000Z',
  timeZone: 'Asia/Kolkata',
};

test('meal type precedence starts with an explicit clarification answer', () => {
  assert.deepEqual(resolveMealType({
    ...base,
    answer: 'DINNER',
    hint: { value: 'BREAKFAST', origin: 'USER_TEXT', confidence: 1 },
  }), { status: 'RESOLVED', value: 'DINNER', origin: 'USER_CLARIFICATION' });
});

test('explicit text beats fresh camera context', () => {
  assert.deepEqual(resolveMealType({
    ...base,
    hint: { value: 'BREAKFAST', origin: 'USER_TEXT', confidence: 1 },
  }), { status: 'RESOLVED', value: 'BREAKFAST', origin: 'USER_TEXT' });
});

test('a fresh immediate camera image defaults from local meal time', () => {
  assert.deepEqual(resolveMealType(base), {
    status: 'RESOLVED',
    value: 'LUNCH',
    origin: 'CONTEXT_DEFAULT',
  });
});

test('gallery and stale camera times do not silently set meal type', () => {
  assert.equal(resolveMealType({ ...base, imageOrigin: 'GALLERY' }).status, 'NEEDS_INPUT');
  assert.equal(resolveMealType({
    ...base,
    requestReceivedAt: '2026-08-26T08:00:00.000Z',
  }).status, 'NEEDS_INPUT');
});

test('only a confident model inference avoids a meal-type question', () => {
  assert.equal(resolveMealType({
    ...base,
    inputKind: 'TEXT',
    imageOrigin: undefined,
    hint: { value: 'SNACK', origin: 'MODEL_INFERRED', confidence: 0.79 },
  }).status, 'NEEDS_INPUT');
  assert.deepEqual(resolveMealType({
    ...base,
    inputKind: 'TEXT',
    imageOrigin: undefined,
    hint: { value: 'SNACK', origin: 'MODEL_INFERRED', confidence: 0.8 },
  }), { status: 'RESOLVED', value: 'SNACK', origin: 'MODEL_INFERRED' });
});
