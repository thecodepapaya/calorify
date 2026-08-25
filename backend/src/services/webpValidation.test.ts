import test from 'node:test';
import assert from 'node:assert/strict';
import {
  InvalidWebpError,
  MAX_MEAL_IMAGE_BYTES,
  MAX_MEAL_IMAGE_DIMENSION,
  validateStaticWebp,
} from './webpValidation.js';

function chunk(type: string, data: Buffer): Buffer {
  const result = Buffer.alloc(8 + data.length + (data.length & 1));
  result.write(type, 0, 'ascii');
  result.writeUInt32LE(data.length, 4);
  data.copy(result, 8);
  return result;
}

function webp(...chunks: Buffer[]): Buffer {
  const payload = Buffer.concat([Buffer.from('WEBP'), ...chunks]);
  const result = Buffer.alloc(8 + payload.length);
  result.write('RIFF', 0, 'ascii');
  result.writeUInt32LE(payload.length, 4);
  payload.copy(result, 8);
  return result;
}

function vp8l(width: number, height: number): Buffer {
  const frame = Buffer.alloc(5);
  frame[0] = 0x2f;
  frame.writeUInt32LE((width - 1) | ((height - 1) << 14), 1);
  return chunk('VP8L', frame);
}

test('accepts a bounded static lossless WebP', () => {
  assert.deepEqual(validateStaticWebp(webp(vp8l(640, 480))), {
    width: 640,
    height: 480,
  });
});

test('rejects malformed RIFF lengths and truncated chunks', () => {
  const invalidLength = webp(vp8l(2, 2));
  invalidLength.writeUInt32LE(1, 4);
  assert.throws(() => validateStaticWebp(invalidLength), InvalidWebpError);

  const truncated = webp(vp8l(2, 2));
  truncated.writeUInt32LE(500, 16);
  assert.throws(() => validateStaticWebp(truncated), InvalidWebpError);
});

test('allows metadata but rejects animation chunks', () => {
  assert.deepEqual(
    validateStaticWebp(webp(chunk('EXIF', Buffer.from('metadata')), vp8l(2, 2))),
    { width: 2, height: 2 }
  );
  assert.throws(
    () => validateStaticWebp(webp(chunk('ANIM', Buffer.alloc(6)), vp8l(2, 2))),
    InvalidWebpError
  );
});

test('rejects excessive dimensions', () => {
  assert.throws(
    () => validateStaticWebp(webp(vp8l(MAX_MEAL_IMAGE_DIMENSION + 1, 1))),
    InvalidWebpError
  );
});

test('rejects a body over 1 MiB before parsing it', () => {
  assert.throws(
    () => validateStaticWebp(Buffer.alloc(MAX_MEAL_IMAGE_BYTES + 1)),
    InvalidWebpError
  );
});
