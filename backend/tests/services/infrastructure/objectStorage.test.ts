import test from 'node:test';
import assert from 'node:assert/strict';
import { buildMealImageObjectKey } from '../../../src/services/infrastructure/objectStorage.js';

test('meal image keys use the authenticated UID and fixed-width server UTC time', () => {
  assert.equal(
    buildMealImageObjectKey('firebase_uid-1', new Date('2026-08-25T12:15:30.123Z')),
    'firebase_uid-1/20260825T121530123Z.webp'
  );
});

test('meal image keys reject a UID that cannot be one path component', () => {
  assert.throws(
    () => buildMealImageObjectKey('uid/child', new Date('2026-08-25T12:15:30.123Z')),
    /cannot be used as an image path segment/
  );
});
