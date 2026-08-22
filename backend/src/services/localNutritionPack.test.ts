import assert from 'node:assert/strict';
import { generateKeyPairSync, verify } from 'node:crypto';
import test from 'node:test';

import {
  localNutritionManifestMetadata,
  signLocalNutritionManifest,
} from './localNutritionPack.js';

test('manifest signature covers pack identity, bytes, and compatibility fields', () => {
  const { privateKey, publicKey } = generateKeyPairSync('ed25519');
  const unsigned = {
    schemaVersion: 1,
    packVersion: 'starter-v1',
    datasetVersion: 'fdc-v1',
    objectName: 'local-nutrition/starter-v1.json',
    sizeBytes: 123,
    signingKeyId: 'test-key',
    createdAtEpochMs: 1_700_000_000_000,
    recordCount: 5,
    calculationVersion: 'local-macro-v1',
  };
  const signed = signLocalNutritionManifest(
    unsigned,
    Buffer.from('{"pack":true}\n'),
    privateKey.export({ format: 'pem', type: 'pkcs8' }).toString()
  );
  const { signature, ...signedFields } = signed;
  assert.equal(
    verify(
      null,
      Buffer.concat([
        Buffer.from(`${localNutritionManifestMetadata(signedFields)}\n--PACK--\n`),
        Buffer.from('{"pack":true}\n'),
      ]),
      publicKey,
      Buffer.from(signature, 'base64')
    ),
    true
  );
  assert.equal(
    verify(
      null,
      Buffer.concat([
        Buffer.from(
          `${localNutritionManifestMetadata({ ...signedFields, sizeBytes: 124 })}\n--PACK--\n`
        ),
        Buffer.from('{"pack":true}\n'),
      ]),
      publicKey,
      Buffer.from(signature, 'base64')
    ),
    false
  );
});
