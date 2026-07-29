import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Mock database and OpenAI before importing the module
// ---------------------------------------------------------------------------

const mockQuery = mock.fn(async (_sql: string, _params?: unknown[]) => ({ rows: [] }));

await mock.module('./database.js', {
  namedExports: { query: mockQuery },
});

const mockFilesCreate = mock.fn(async () => ({ id: 'file-mock-id' }));
const mockBatchesCreate = mock.fn(async () => ({ id: 'batch-mock-id' }));
const mockBatchesRetrieve = mock.fn(async (_id: string) => ({
  id: 'batch-mock-id',
  status: 'completed',
  output_file_id: 'output-file-id',
}));
const mockFilesContent = mock.fn(async () => ({
  text: async () => '',
}));

await mock.module('./openaiClient.js', {
  defaultExport: class MockOpenAI {
    files = { create: mockFilesCreate, content: mockFilesContent };
    batches = { create: mockBatchesCreate, retrieve: mockBatchesRetrieve };
  },
  namedExports: {
    toFile: async (value: unknown) => value,
  },
});

const {
  collectMealDataForUser,
  submitBatch,
  pollAndProcessBatch,
  saveAiSummary,
  saveBatchRecord,
  updateBatchStatus,
  getPendingBatches,
} = await import('./aiSummaryService.js');

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function resetQuery(returnValue: { rows: unknown[] } = { rows: [] }) {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async () => returnValue);
}

// ---------------------------------------------------------------------------
// collectMealDataForUser
// ---------------------------------------------------------------------------

test('collectMealDataForUser returns null when no meals found', async () => {
  resetQuery({ rows: [] });
  const result = await collectMealDataForUser('user-1', 'en');
  assert.equal(result, null);
});

test('collectMealDataForUser returns summary request with meal data', async () => {
  resetQuery({
    rows: [
      {
        logged_at: new Date('2024-01-15T08:00:00Z'),
        logged_meal_name: 'Oatmeal',
        logged_calories: 300,
        logged_meal_type: 'BREAKFAST',
      },
      {
        logged_at: new Date('2024-01-15T13:00:00Z'),
        logged_meal_name: 'Dal Rice',
        logged_calories: 450,
        logged_meal_type: 'LUNCH',
      },
    ],
  });
  const result = await collectMealDataForUser('user-abc', 'hi');
  assert.ok(result !== null);
  assert.equal(result.userId, 'user-abc');
  assert.equal(result.locale, 'hi');
  assert.equal(result.mealCount, 2);
  assert.ok(result.csv.includes('Oatmeal'));
  assert.ok(result.csv.includes('Dal Rice'));
});

test('collectMealDataForUser queries last 3 days of meals', async () => {
  resetQuery({ rows: [] });
  await collectMealDataForUser('user-xyz', 'en');
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes("INTERVAL '3 days'"));
  assert.equal(params[0], 'user-xyz');
});

test('collectMealDataForUser formats CSV with correct meal type abbreviations', async () => {
  resetQuery({
    rows: [
      {
        logged_at: new Date('2024-01-15T07:00:00Z'),
        logged_meal_name: 'Eggs',
        logged_calories: 150,
        logged_meal_type: 'BREAKFAST',
      },
      {
        logged_at: new Date('2024-01-15T19:00:00Z'),
        logged_meal_name: 'Salad',
        logged_calories: 200,
        logged_meal_type: 'DINNER',
      },
      {
        logged_at: new Date('2024-01-15T15:00:00Z'),
        logged_meal_name: 'Apple',
        logged_calories: 80,
        logged_meal_type: 'SNACK',
      },
    ],
  });
  const result = await collectMealDataForUser('user-1', 'en');
  assert.ok(result!.csv.includes(', B, '));
  assert.ok(result!.csv.includes(', D, '));
  assert.ok(result!.csv.includes(', S, '));
});

test('collectMealDataForUser truncates meal name to 40 chars in CSV', async () => {
  const longName = 'A'.repeat(60);
  resetQuery({
    rows: [
      {
        logged_at: new Date('2024-01-15T12:00:00Z'),
        logged_meal_name: longName,
        logged_calories: 500,
        logged_meal_type: 'LUNCH',
      },
    ],
  });
  const result = await collectMealDataForUser('user-1', 'en');
  // CSV line should not contain the full 60-char name
  const csvLine = result!.csv.split('\n')[0]!;
  assert.ok(!csvLine.includes(longName));
  assert.ok(csvLine.includes('A'.repeat(40)));
});

// ---------------------------------------------------------------------------
// submitBatch
// ---------------------------------------------------------------------------

test('submitBatch throws when given empty requests array', async () => {
  await assert.rejects(() => submitBatch([]), /No requests to batch/);
});

test('submitBatch calls openai files.create and batches.create', async () => {
  mockFilesCreate.mock.resetCalls();
  mockBatchesCreate.mock.resetCalls();
  mockBatchesCreate.mock.mockImplementation(async () => ({ id: 'batch-abc' }));

  const result = await submitBatch([
    { userId: 'user-1', locale: 'en', mealCount: 2, csv: '2024-01-15, B, Oats, 300 cal' },
  ]);

  assert.equal(mockFilesCreate.mock.calls.length, 1);
  assert.equal(mockBatchesCreate.mock.calls.length, 1);
  assert.equal(result.openAiBatchId, 'batch-abc');
  assert.equal(result.requestCount, 1);
});

test('submitBatch builds userData map keyed by userId', async () => {
  mockBatchesCreate.mock.mockImplementation(async () => ({ id: 'batch-xyz' }));

  const result = await submitBatch([
    { userId: 'user-a', locale: 'en', mealCount: 3, csv: 'csv-a' },
    { userId: 'user-b', locale: 'fr', mealCount: 1, csv: 'csv-b' },
  ]);

  assert.ok('user-a' in result.userData);
  assert.ok('user-b' in result.userData);
  assert.equal(result.userData['user-a']!.locale, 'en');
  assert.equal(result.userData['user-b']!.locale, 'fr');
  assert.equal(result.requestCount, 2);
});

// ---------------------------------------------------------------------------
// pollAndProcessBatch
// ---------------------------------------------------------------------------

test('pollAndProcessBatch returns submitted status when batch is still in progress', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-1',
    status: 'in_progress',
    output_file_id: null,
  }));

  const result = await pollAndProcessBatch('batch-1', {});
  assert.equal(result.status, 'processing');
  assert.equal(result.savedCount, 0);
  assert.equal(result.errorCount, 0);
});

test('pollAndProcessBatch returns failed when batch status is failed', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-2',
    status: 'failed',
    output_file_id: null,
  }));

  const result = await pollAndProcessBatch('batch-2', {});
  assert.equal(result.status, 'failed');
});

test('pollAndProcessBatch returns failed when output_file_id is missing on completed batch', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-3',
    status: 'completed',
    output_file_id: null,
  }));

  const result = await pollAndProcessBatch('batch-3', {});
  assert.equal(result.status, 'failed');
  assert.equal(result.savedCount, 0);
});

test('pollAndProcessBatch parses results and saves summaries for completed batch', async () => {
  resetQuery();
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-4',
    status: 'completed',
    output_file_id: 'file-out-1',
  }));

  const resultLine = JSON.stringify({
    custom_id: 'user-1',
    response: {
      status_code: 200,
      body: {
        choices: [{ message: { content: '{"summary": "You ate well today!"}' } }],
      },
    },
  });

  mockFilesContent.mock.mockImplementation(async () => ({
    text: async () => resultLine,
  }));

  const result = await pollAndProcessBatch('batch-4', {
    'user-1': { userId: 'user-1', locale: 'en', mealCount: 3 },
  });

  assert.equal(result.status, 'completed');
  assert.equal(result.savedCount, 1);
  assert.equal(result.errorCount, 0);
  // Verify query was called to save the summary
  const insertCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('INSERT INTO ai_summaries')
  );
  assert.ok(insertCall !== undefined);
});

test('pollAndProcessBatch increments errorCount for invalid JSON lines', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-5',
    status: 'completed',
    output_file_id: 'file-out-2',
  }));
  mockFilesContent.mock.mockImplementation(async () => ({
    text: async () => 'not valid json\n',
  }));

  const result = await pollAndProcessBatch('batch-5', {});
  assert.equal(result.errorCount, 1);
});

test('pollAndProcessBatch increments errorCount when custom_id not in userData', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-6',
    status: 'completed',
    output_file_id: 'file-out-3',
  }));
  const line = JSON.stringify({
    custom_id: 'unknown-user',
    response: { status_code: 200, body: { choices: [{ message: { content: '{"summary":"x"}' } }] } },
  });
  mockFilesContent.mock.mockImplementation(async () => ({ text: async () => line }));

  const result = await pollAndProcessBatch('batch-6', {});
  assert.equal(result.errorCount, 1);
  assert.equal(result.savedCount, 0);
});

test('pollAndProcessBatch increments errorCount when response status is not 200', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-7',
    status: 'completed',
    output_file_id: 'file-out-4',
  }));
  const line = JSON.stringify({
    custom_id: 'user-1',
    response: { status_code: 500, body: {} },
  });
  mockFilesContent.mock.mockImplementation(async () => ({ text: async () => line }));

  const result = await pollAndProcessBatch('batch-7', {
    'user-1': { userId: 'user-1', locale: 'en', mealCount: 1 },
  });
  assert.equal(result.errorCount, 1);
  assert.equal(result.savedCount, 0);
});

test('pollAndProcessBatch maps validating status to submitted', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-v',
    status: 'validating',
    output_file_id: null,
  }));
  const result = await pollAndProcessBatch('batch-v', {});
  assert.equal(result.status, 'submitted');
});

test('pollAndProcessBatch maps cancelling status to cancelled', async () => {
  mockBatchesRetrieve.mock.mockImplementation(async () => ({
    id: 'batch-c',
    status: 'cancelling',
    output_file_id: null,
  }));
  const result = await pollAndProcessBatch('batch-c', {});
  assert.equal(result.status, 'cancelled');
});

// ---------------------------------------------------------------------------
// saveAiSummary
// ---------------------------------------------------------------------------

test('saveAiSummary inserts into ai_summaries table', async () => {
  resetQuery();
  await saveAiSummary('user-save', 'Great job logging meals!', 'en', 5);
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('INSERT INTO ai_summaries'));
  assert.equal(params[0], 'user-save');
  assert.equal(params[1], 'Great job logging meals!');
  assert.equal(params[2], 'en');
  assert.equal(params[3], 5);
});

// ---------------------------------------------------------------------------
// saveBatchRecord
// ---------------------------------------------------------------------------

test('saveBatchRecord inserts batch row with submitted status', async () => {
  resetQuery();
  await saveBatchRecord({
    openAiBatchId: 'batch-rec-1',
    requestCount: 10,
    userData: { 'u1': { userId: 'u1', locale: 'en', mealCount: 2 } },
  });
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('INSERT INTO ai_summary_batches'));
  assert.ok(sql.includes("'submitted'"));
  assert.equal(params[0], 'batch-rec-1');
  assert.equal(params[1], 10);
});

// ---------------------------------------------------------------------------
// updateBatchStatus
// ---------------------------------------------------------------------------

test('updateBatchStatus updates batch row status', async () => {
  resetQuery();
  await updateBatchStatus('batch-upd-1', 'completed');
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('UPDATE ai_summary_batches'));
  assert.equal(params[0], 'batch-upd-1');
  assert.equal(params[1], 'completed');
  assert.equal(params[2], null);
});

test('updateBatchStatus includes error message when provided', async () => {
  resetQuery();
  await updateBatchStatus('batch-upd-2', 'failed', 'OpenAI timeout');
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[2], 'OpenAI timeout');
});

// ---------------------------------------------------------------------------
// getPendingBatches
// ---------------------------------------------------------------------------

test('getPendingBatches queries for submitted and processing batches', async () => {
  resetQuery({
    rows: [
      { openai_batch_id: 'b1', user_data: {} },
      { openai_batch_id: 'b2', user_data: {} },
    ],
  });
  const result = await getPendingBatches();
  assert.equal(result.length, 2);
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes("status IN ('submitted', 'processing')"));
});

test('getPendingBatches returns empty array when no pending batches', async () => {
  resetQuery({ rows: [] });
  const result = await getPendingBatches();
  assert.deepEqual(result, []);
});
