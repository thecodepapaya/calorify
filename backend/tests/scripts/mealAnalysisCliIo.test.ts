import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import {
  mkdtemp,
  rm,
  truncate,
  writeFile,
} from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import test from 'node:test';
import {
  MAX_MEAL_ANALYSIS_CLI_IMAGE_BYTES,
  MealAnalysisCliInputError,
  createHumanStageObserver,
  createNdjsonStageObserver,
  loadMealAnalysisCliImage,
  parseMealAnalysisCliAnswers,
} from '../../src/scripts/mealAnalysisCliIo.js';
import type { StageObservation } from '../../src/services/meal-analysis-v3/observability.js';

function jpeg(): Buffer {
  return Buffer.from([
    0xff, 0xd8, 0xff, 0xe0, 0x00, 0x04, 0x00, 0x00, 0xff, 0xd9,
  ]);
}

function png(): Buffer {
  const bytes = Buffer.alloc(33);
  Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]).copy(bytes);
  bytes.writeUInt32BE(13, 8);
  bytes.write('IHDR', 12, 'ascii');
  bytes.writeUInt32BE(1, 16);
  bytes.writeUInt32BE(1, 20);
  return bytes;
}

function webp(): Buffer {
  const frame = Buffer.from([0x2f, 0x00, 0x00, 0x00, 0x00]);
  const bytes = Buffer.alloc(12 + 8 + frame.length + 1);
  bytes.write('RIFF', 0, 'ascii');
  bytes.writeUInt32LE(bytes.length - 8, 4);
  bytes.write('WEBP', 8, 'ascii');
  bytes.write('VP8L', 12, 'ascii');
  bytes.writeUInt32LE(frame.length, 16);
  frame.copy(bytes, 20);
  return bytes;
}

async function temporaryDirectory(t: test.TestContext): Promise<string> {
  const directory = await mkdtemp(join(tmpdir(), 'calorify-cli-io-'));
  t.after(() => rm(directory, { recursive: true, force: true }));
  return directory;
}

test('loads JPEG, PNG, and WebP bytes with safe observable descriptors', async (t) => {
  const directory = await temporaryDirectory(t);
  const cases = [
    { name: 'meal.jpg', bytes: jpeg(), mediaType: 'image/jpeg' },
    { name: 'meal.png', bytes: png(), mediaType: 'image/png' },
    { name: 'meal.webp', bytes: webp(), mediaType: 'image/webp' },
  ] as const;

  for (const fixture of cases) {
    const path = join(directory, fixture.name);
    await writeFile(path, fixture.bytes);
    const loaded = await loadMealAnalysisCliImage(path);

    assert.deepEqual(loaded.bytes, fixture.bytes);
    assert.equal(loaded.mediaType, fixture.mediaType);
    assert.deepEqual(loaded.descriptor, {
      mediaType: fixture.mediaType,
      byteLength: fixture.bytes.length,
      sha256: createHash('sha256').update(fixture.bytes).digest('hex'),
    });
    assert.equal('base64' in loaded.descriptor, false);
  }
});

test('rejects unsupported, malformed, missing, and oversized image inputs', async (t) => {
  const directory = await temporaryDirectory(t);
  const unsupportedPath = join(directory, 'meal.gif');
  await writeFile(unsupportedPath, Buffer.from('GIF89a', 'ascii'));
  await assert.rejects(
    loadMealAnalysisCliImage(unsupportedPath),
    (error: unknown) =>
      error instanceof MealAnalysisCliInputError &&
      error.message === 'Image must be a valid JPEG, PNG, or WebP file'
  );

  const malformedPngPath = join(directory, 'malformed.png');
  await writeFile(
    malformedPngPath,
    Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a])
  );
  await assert.rejects(loadMealAnalysisCliImage(malformedPngPath), MealAnalysisCliInputError);

  await assert.rejects(
    loadMealAnalysisCliImage(join(directory, 'missing.jpg')),
    /Unable to read image file/
  );

  const oversizedPath = join(directory, 'oversized.jpg');
  await writeFile(oversizedPath, Buffer.from([0xff, 0xd8, 0xff, 0xd9]));
  await truncate(oversizedPath, MAX_MEAL_ANALYSIS_CLI_IMAGE_BYTES + 1);
  await assert.rejects(loadMealAnalysisCliImage(oversizedPath), /Image must be between/);
});

test('parses only explicit JSON arrays for answers', () => {
  assert.equal(parseMealAnalysisCliAnswers(undefined), undefined);
  assert.deepEqual(parseMealAnalysisCliAnswers('[]'), []);
  assert.deepEqual(
    parseMealAnalysisCliAnswers('[{"questionId":"count","value":4}]'),
    [{ questionId: 'count', value: 4 }]
  );
  assert.throws(
    () => parseMealAnalysisCliAnswers('{"questionId":"count"}'),
    /--answers must be a JSON array/
  );
  assert.throws(
    () => parseMealAnalysisCliAnswers('not-json'),
    /--answers must be valid JSON/
  );
});

function observation(overrides: Partial<StageObservation> = {}): StageObservation {
  return {
    sequence: 3,
    stage: 'INTERPRETED',
    status: 'COMPLETED',
    durationMs: 16.6,
    input: { text: 'dal and rice' },
    output: { components: 2 },
    ...overrides,
  };
}

test('human observer prints one concise line and forwards the full observation', async () => {
  let written = '';
  const observations: unknown[] = [];
  const observer = createHumanStageObserver(
    { write: (chunk) => { written += chunk; } },
    (value) => { observations.push(value); }
  );
  await observer(observation());

  assert.equal(written, '[03] INTERPRETED · 17 ms\n');
  assert.deepEqual(observations, [observation()]);
});

test('NDJSON observer emits exactly one sanitized observation per line', async () => {
  const writes: string[] = [];
  const observer = createNdjsonStageObserver({ write: (chunk) => { writes.push(chunk); } });
  const rawBase64 = Buffer.from('private image').toString('base64');

  await observer(observation({
    sequence: 1,
    input: { imageBase64: rawBase64, bytes: Buffer.from('private image') },
  }));
  await observer(observation({ sequence: 2 }));

  assert.equal(writes.length, 2);
  assert.ok(writes.every((line) => line.endsWith('\n')));
  assert.ok(writes.every((line) => line.slice(0, -1).includes('\n') === false));
  assert.equal(writes.join('').includes(rawBase64), false);

  const first = JSON.parse(writes[0]!) as StageObservation;
  assert.equal(first.sequence, 1);
  assert.deepEqual(first.input, {
    imageBase64: '[redacted image data]',
    bytes: {
      byteLength: 13,
      sha256: createHash('sha256').update('private image').digest('hex'),
    },
  });
});
