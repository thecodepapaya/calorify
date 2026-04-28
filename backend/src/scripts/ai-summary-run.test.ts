import test from 'node:test';
import assert from 'node:assert/strict';
import { parseAiSummaryRunArgs } from './aiSummaryRunCliArgs.js';

test('defaults to cron_hour when no flags', () => {
  const r = parseAiSummaryRunArgs(['node', 'script']);
  assert.equal(r.ok, true);
  if (r.ok) assert.deepEqual(r.submit, { mode: 'cron_hour' });
});

test('--scope cron-hour', () => {
  const r = parseAiSummaryRunArgs(['node', 'script', '--scope', 'cron-hour']);
  assert.equal(r.ok, true);
  if (r.ok) assert.deepEqual(r.submit, { mode: 'cron_hour' });
});

test('--scope near-3am is alias for cron_hour', () => {
  const r = parseAiSummaryRunArgs(['node', 'script', '--scope', 'near-3am']);
  assert.equal(r.ok, true);
  if (r.ok) assert.deepEqual(r.submit, { mode: 'cron_hour' });
});

test('--scope all', () => {
  const r = parseAiSummaryRunArgs(['node', 'script', '--scope', 'all']);
  assert.equal(r.ok, true);
  if (r.ok) assert.deepEqual(r.submit, { mode: 'all' });
});

test('--user', () => {
  const r = parseAiSummaryRunArgs(['node', 'script', '--user', 'abc123']);
  assert.equal(r.ok, true);
  if (r.ok) assert.deepEqual(r.submit, { mode: 'user', userId: 'abc123' });
});

test('rejects --user with --scope', () => {
  const r = parseAiSummaryRunArgs(['node', 'script', '--scope', 'all', '--user', 'x']);
  assert.equal(r.ok, false);
  if (!r.ok) assert.equal(r.kind, 'error');
});

test('--help', () => {
  const r = parseAiSummaryRunArgs(['node', 'script', '--help']);
  assert.equal(r.ok, false);
  if (!r.ok) assert.equal(r.kind, 'help');
});
