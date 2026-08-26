import test, { mock } from 'node:test';
import assert from 'node:assert/strict';

await mock.module('../../config.js', {
  defaultExport: {
    LOCAL_INFERENCE: { localNutritionPackObject: 'local-nutrition/pack.json' },
  },
});

await mock.module('../infrastructure/objectStorage.js', {
  namedExports: {
    buildOracleDownloadUrl: mock.fn(
      () => 'https://object.example/local-nutrition/pack.json'
    ),
  },
});

const { downloadLocalNutritionPack } = await import('./localPackDownload.js');

test('downloads the pack and forwards If-Modified-Since', async () => {
  let request: Request | undefined;
  mock.method(globalThis, 'fetch', async (input, init) => {
    request = new Request(input, init);
    return new Response('{"schemaVersion":1}', {
      status: 200,
      headers: { 'last-modified': 'Mon, 24 Aug 2026 00:00:00 GMT' },
    });
  });

  const result = await downloadLocalNutritionPack(
    'Sun, 23 Aug 2026 00:00:00 GMT'
  );

  assert.equal(result.status, 200);
  assert.equal(
    request?.headers.get('if-modified-since'),
    'Sun, 23 Aug 2026 00:00:00 GMT'
  );
  if (result.status === 200) {
    assert.equal(result.body.toString(), '{"schemaVersion":1}');
  }
  mock.restoreAll();
});

test('preserves an upstream 304 without a body', async () => {
  mock.method(globalThis, 'fetch', async () =>
    new Response(null, {
      status: 304,
      headers: { 'last-modified': 'Mon, 24 Aug 2026 00:00:00 GMT' },
    })
  );

  const result = await downloadLocalNutritionPack();
  assert.deepEqual(result, {
    status: 304,
    lastModified: 'Mon, 24 Aug 2026 00:00:00 GMT',
  });
  mock.restoreAll();
});
