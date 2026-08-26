import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

const secret = 'firebase-private-key=service-secret-value';
const verifyIdToken = mock.fn(async () => {
  throw new Error(`Firebase SDK failure: ${secret}`);
});

await mock.module('firebase-admin', {
  defaultExport: {
    initializeApp: mock.fn(() => {}),
    credential: {
      cert: mock.fn(() => ({})),
    },
    auth: mock.fn(() => ({ verifyIdToken })),
  },
});

await mock.module('../../../src/config.js', {
  defaultExport: {
    FIREBASE_SERVICE_ACCOUNT_PATH: null,
  },
});

const { verifyFirebaseToken } = await import('../../../src/services/infrastructure/firebase.js');

test('verifyFirebaseToken replaces Firebase SDK exception details', async () => {
  await assert.rejects(
    verifyFirebaseToken('opaque-token'),
    (error: Error) => {
      assert.equal(error.message, 'Invalid or expired authentication token');
      assert.equal(String(error).includes(secret), false);
      assert.equal(error.stack?.includes(secret) ?? false, false);
      assert.equal('cause' in error, false);
      return true;
    }
  );
});
