import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';

// ---------------------------------------------------------------------------
// Mock config
// ---------------------------------------------------------------------------

await mock.module('../../src/config.js', {
  defaultExport: {
    APP_VERSION: '1.2.3-test',
    APP_NAME: 'CalorifyTest',
  },
});

const mockReadinessCheck = mock.fn(async () => ({
  database: true,
  usdaDataset: true,
}));

await mock.module('../../src/services/infrastructure/database.js', {
  namedExports: { readinessCheck: mockReadinessCheck },
});

const { healthRoutes } = await import('../../src/routes/health.js');

// ---------------------------------------------------------------------------
// Build test app
// ---------------------------------------------------------------------------

async function buildTestApp() {
  const fastify = Fastify({ logger: false });
  await fastify.register(healthRoutes);
  await fastify.ready();
  return fastify;
}

// ---------------------------------------------------------------------------
// GET /
// ---------------------------------------------------------------------------

test('GET / returns 200 with welcome message and version', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/' });
  assert.equal(response.statusCode, 200);

  const body = response.json();
  assert.equal(body.message, 'Welcome to Calorify Backend API');
  assert.equal(body.version, '1.2.3-test');
  await app.close();
});

test('GET / returns JSON content-type', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/' });
  assert.ok(response.headers['content-type']?.includes('application/json'));
  await app.close();
});

test('GET / response has message as string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/' });
  const body = response.json();
  assert.equal(typeof body.message, 'string');
  assert.ok(body.message.length > 0);
  await app.close();
});

test('GET / response has version as string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/' });
  const body = response.json();
  assert.equal(typeof body.version, 'string');
  await app.close();
});

// ---------------------------------------------------------------------------
// GET /health
// ---------------------------------------------------------------------------

test('GET /health returns 200 with status ok', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/health' });
  assert.equal(response.statusCode, 200);

  const body = response.json();
  assert.equal(body.status, 'ok');
  await app.close();
});

test('GET /health returns JSON content-type', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/health' });
  assert.ok(response.headers['content-type']?.includes('application/json'));
  await app.close();
});

test('GET /health returns only status field', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/health' });
  const body = response.json();
  assert.deepEqual(body, { status: 'ok' });
  await app.close();
});

test('GET /health responds quickly (under 500ms)', async () => {
  const app = await buildTestApp();
  const start = Date.now();
  await app.inject({ method: 'GET', url: '/health' });
  const elapsed = Date.now() - start;
  assert.ok(elapsed < 500);
  await app.close();
});

// ---------------------------------------------------------------------------
// GET /ready
// ---------------------------------------------------------------------------

test('GET /ready returns 200 only when database and USDA are ready', async () => {
  mockReadinessCheck.mock.mockImplementationOnce(async () => ({
    database: true,
    usdaDataset: true,
  }));
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/ready' });
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), {
    status: 'ready',
    checks: { database: true, usdaDataset: true },
  });
  await app.close();
});

test('GET /ready returns 503 while the USDA dataset is not materialized', async () => {
  mockReadinessCheck.mock.mockImplementationOnce(async () => ({
    database: true,
    usdaDataset: false,
  }));
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/ready' });
  assert.equal(response.statusCode, 503);
  assert.deepEqual(response.json(), {
    status: 'not_ready',
    checks: { database: true, usdaDataset: false },
  });
  await app.close();
});

test('GET /ready returns 503 when the database is unavailable but liveness stays healthy', async () => {
  mockReadinessCheck.mock.mockImplementationOnce(async () => ({
    database: false,
    usdaDataset: false,
  }));
  const app = await buildTestApp();
  const readiness = await app.inject({ method: 'GET', url: '/ready' });
  const liveness = await app.inject({ method: 'GET', url: '/health' });
  assert.equal(readiness.statusCode, 503);
  assert.equal(liveness.statusCode, 200);
  await app.close();
});

// ---------------------------------------------------------------------------
// Unknown routes
// ---------------------------------------------------------------------------

test('GET /unknown-route returns 404', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/unknown-route' });
  assert.equal(response.statusCode, 404);
  await app.close();
});

test('POST /health returns 404 (method not allowed)', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'POST', url: '/health' });
  assert.equal(response.statusCode, 404);
  await app.close();
});
