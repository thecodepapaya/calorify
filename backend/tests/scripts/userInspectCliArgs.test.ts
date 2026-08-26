import assert from 'node:assert/strict';
import test from 'node:test';
import { parseUserInspectArgs } from '../../src/scripts/userInspectCliArgs.js';

test('requires a user ID', () => {
  assert.deepEqual(parseUserInspectArgs(['node', 'cli']), {
    ok: false,
    kind: 'error',
    message: '--user-id is required',
  });
});

test('parses user ID, JSON output, and limit', () => {
  assert.deepEqual(
    parseUserInspectArgs([
      'node',
      'cli',
      '--user-id',
      ' firebase-123 ',
      '--limit',
      '25',
      '--json',
    ]),
    {
      ok: true,
      options: { userId: 'firebase-123', limit: 25, json: true },
    }
  );
});

test('supports the shorter --user alias', () => {
  assert.deepEqual(parseUserInspectArgs(['node', 'cli', '--user', 'uid-1']), {
    ok: true,
    options: { userId: 'uid-1', limit: 10, json: false },
  });
});

test('rejects unsafe history limits and unknown flags', () => {
  assert.equal(parseUserInspectArgs(['node', 'cli', '--user-id', 'u', '--limit', '0']).ok, false);
  assert.deepEqual(parseUserInspectArgs(['node', 'cli', '--user-id', 'u', '--raw']), {
    ok: false,
    kind: 'error',
    message: 'Unknown argument: --raw',
  });
});
