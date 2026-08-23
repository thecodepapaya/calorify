import test from 'node:test';
import assert from 'node:assert/strict';
import {
  closeDatabase,
  initializeDatabase,
  query,
} from './database.js';
import { runMigrations } from './migrate.js';
import {
  advanceMealAnalysisSession,
  claimMealAnalysisAutomaticStage,
  claimMealAnalysisPresentation,
  clearMealAnalysisLogged,
  confirmMealAnalysisLogged,
  createMealAnalysisSession,
} from './mealAnalysisStore.js';

const databaseEnabled = process.env.CALORIFY_POSTGRES_CONTRACT_TEST === 'true';

test(
  'leased analysis writes execute against PostgreSQL with contiguous typed parameters',
  { skip: !databaseEnabled },
  async () => {
    const automaticId = '00000000-0000-4000-8000-000000000801';
    const presentationId = '00000000-0000-4000-8000-000000000802';
    initializeDatabase();
    try {
      await runMigrations();
      await query(
        'DELETE FROM meal_analysis_session WHERE analysis_id = ANY($1::uuid[])',
        [[automaticId, presentationId]]
      );

      assert.deepEqual(
        await createMealAnalysisSession({
          analysisId: automaticId,
          userId: 'postgres-contract-user',
          source: 'text',
          locale: 'en',
          requestPayload: { textDescription: 'banana' },
        }),
        { status: 'created' }
      );
      const decompositionLease = await claimMealAnalysisAutomaticStage(
        automaticId,
        'DECOMPOSING'
      );
      assert.ok(decompositionLease);
      assert.equal(
        await advanceMealAnalysisSession(
          {
            analysisId: automaticId,
            userId: 'postgres-contract-user',
            source: 'text',
            locale: 'en',
            requestPayload: { textDescription: 'banana' },
            stage: 'DECOMPOSED',
            decompositionData: { analysisId: automaticId, mealName: 'Banana' },
          },
          decompositionLease
        ),
        true
      );

      await query(
        `INSERT INTO meal_analysis_session (
           analysis_id, user_id, source, locale, request_payload,
           decomposition_data, ingredients_data, uncertainty_data,
           selected_meal_type, selected_meal_type_source, stage
         ) VALUES ($1, $2, 'text', 'en', $3::jsonb, $4::jsonb, $5::jsonb,
           $6::jsonb, 'SNACK', 'model', 'READY_FOR_PRESENTATION')`,
        [
          presentationId,
          'postgres-contract-user',
          JSON.stringify({ textDescription: 'banana' }),
          JSON.stringify({ analysisId: presentationId, mealName: 'Banana' }),
          JSON.stringify({ analysisId: presentationId, ingredients: [] }),
          JSON.stringify({ needsClarification: false }),
        ]
      );
      const presentationLease = await claimMealAnalysisPresentation(
        presentationId,
        'READY_FOR_PRESENTATION',
        'SNACK',
        'model'
      );
      assert.ok(presentationLease);
      assert.equal(
        await advanceMealAnalysisSession(
          {
            analysisId: presentationId,
            userId: 'postgres-contract-user',
            source: 'text',
            locale: 'en',
            requestPayload: { textDescription: 'banana' },
            stage: 'COMPLETED',
            resultData: { analysisId: presentationId, mealName: 'Banana' },
          },
          presentationLease
        ),
        true
      );
      assert.equal(
        await confirmMealAnalysisLogged({
          analysisId: presentationId,
          loggedAt: '2026-08-24T12:00:00.000Z',
          mealName: 'Banana',
          calories: 107,
          protein: 1,
          carbs: 27,
          fat: 0,
          fiber: 3,
          mealType: 'SNACK',
          quantity: '1 serving',
        }),
        true
      );
      assert.equal(await clearMealAnalysisLogged(presentationId), true);
    } finally {
      try {
        await query(
          'DELETE FROM meal_analysis_session WHERE analysis_id = ANY($1::uuid[])',
          [[automaticId, presentationId]]
        );
      } finally {
        await closeDatabase();
      }
    }
  }
);
