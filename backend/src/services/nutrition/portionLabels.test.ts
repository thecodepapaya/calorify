import assert from 'node:assert/strict';
import test from 'node:test';

import { PortionKind } from '../../protos/calorify/meal_analysis_pipeline.js';
import { localizeSizeQuestion } from './portionLabels.js';

test('count clarification is grammatical for countable and bulk food names', () => {
  assert.equal(
    localizeSizeQuestion('roti', 4, PortionKind.COUNT, 'en'),
    'What size was each of the 4 portions of roti?'
  );
  assert.equal(
    localizeSizeQuestion('whole wheat bread', 2, PortionKind.COUNT, 'en'),
    'What size was each of the 2 portions of whole wheat bread?'
  );
});
