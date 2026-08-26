import test from 'node:test';
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import {
  closeDatabase,
  initializeDatabase,
  query,
} from '../infrastructure/database.js';
import { runMigrations } from '../infrastructure/migrate.js';
import {
  advanceMealAnalysisSession,
  claimMealAnalysisAutomaticStage,
  claimMealAnalysisPresentation,
  clearMealAnalysisLogged,
  confirmMealAnalysisLogged,
  createMealAnalysisSession,
} from './store.js';

const databaseEnabled = process.env.CALORIFY_POSTGRES_CONTRACT_TEST === 'true';
const noFoodMigration = new URL(
  '../../../migrations/z20260825_meal_analysis_no_food_stage.sql',
  import.meta.url
);

test(
  'leased analysis writes execute against PostgreSQL with contiguous typed parameters',
  { skip: !databaseEnabled },
  async () => {
    const automaticId = '00000000-0000-4000-8000-000000000801';
    const presentationId = '00000000-0000-4000-8000-000000000802';
    const legacyNullStageId = '00000000-0000-4000-8000-000000000803';
    initializeDatabase();
    try {
      await runMigrations();
      await query(
        'DELETE FROM meal_analysis_session WHERE analysis_id = ANY($1::uuid[])',
        [[automaticId, presentationId, legacyNullStageId]]
      );

      await query(`
        ALTER TABLE meal_analysis_session
          DROP CONSTRAINT IF EXISTS meal_analysis_session_stage_check,
          ALTER COLUMN stage DROP NOT NULL
      `);
      await query(
        `INSERT INTO meal_analysis_session (
           analysis_id, user_id, source, locale, request_payload, stage
         ) VALUES ($1, 'postgres-contract-user', 'text', 'en', $2::jsonb, NULL)`,
        [legacyNullStageId, JSON.stringify({ textDescription: 'banana' })]
      );
      await query(await readFile(noFoodMigration, 'utf8'));
      const migrated = await query<{ stage: string; is_nullable: string }>(
        `SELECT session.stage, column_info.is_nullable
         FROM meal_analysis_session session
         CROSS JOIN information_schema.columns column_info
         WHERE session.analysis_id = $1
           AND column_info.table_name = 'meal_analysis_session'
           AND column_info.column_name = 'stage'`,
        [legacyNullStageId]
      );
      assert.deepEqual(migrated.rows, [{
        stage: 'PENDING_DECOMPOSITION',
        is_nullable: 'NO',
      }]);
      assert.ok(await claimMealAnalysisAutomaticStage(
        legacyNullStageId,
        'DECOMPOSING'
      ));

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
          [[automaticId, presentationId, legacyNullStageId]]
        );
      } finally {
        await closeDatabase();
      }
    }
  }
);
