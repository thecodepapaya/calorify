import assert from 'node:assert/strict';
import test from 'node:test';
import {
  createStageRecorder,
  type StageObservation,
} from '../../../src/services/meal-analysis-v3/observability.js';

test('stage recorder exposes ordered exact inputs and outputs', async () => {
  const observations: StageObservation[] = [];
  const times = [100, 107];
  const recorder = createStageRecorder(
    (observation) => observations.push(observation),
    () => times.shift() ?? 107
  );

  const output = await recorder.record('INPUT_NORMALIZED', { raw: '  rice ' }, () => ({
    text: 'rice',
  }));

  assert.deepEqual(output, { text: 'rice' });
  assert.deepEqual(observations, [{
    sequence: 1,
    stage: 'INPUT_NORMALIZED',
    status: 'COMPLETED',
    durationMs: 7,
    input: { raw: '  rice ' },
    output: { text: 'rice' },
  }]);
});

test('skipped stages remain visible and sequence with completed stages', async () => {
  const observations: StageObservation[] = [];
  const recorder = createStageRecorder((observation) => observations.push(observation));

  await recorder.skip('ANSWERS_APPLIED', { answers: [] }, 'no nutrition questions');
  await recorder.skip('RECALCULATED', null, 'nothing changed');

  assert.deepEqual(observations.map(({ sequence, stage, status, output }) => ({
    sequence,
    stage,
    status,
    output,
  })), [
    {
      sequence: 1,
      stage: 'ANSWERS_APPLIED',
      status: 'SKIPPED',
      output: { reason: 'no nutrition questions' },
    },
    {
      sequence: 2,
      stage: 'RECALCULATED',
      status: 'SKIPPED',
      output: { reason: 'nothing changed' },
    },
  ]);
});
