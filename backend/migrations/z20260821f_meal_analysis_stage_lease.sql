-- Fence resumable meal-analysis workers with a per-claim token. A worker may
-- only advance or release the busy stage that it currently owns; reclaiming a
-- stale stage replaces the token and makes every older worker harmless.
ALTER TABLE meal_analysis_session
  ADD COLUMN IF NOT EXISTS stage_lease_token UUID,
  ADD COLUMN IF NOT EXISTS pending_clarification_answers JSONB;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_constraint
     WHERE conname = 'meal_analysis_session_stage_lease_check'
       AND conrelid = 'meal_analysis_session'::regclass
  ) THEN
    ALTER TABLE meal_analysis_session
      ADD CONSTRAINT meal_analysis_session_stage_lease_check
      CHECK (
        stage_lease_token IS NULL OR stage IN (
          'DECOMPOSING',
          'RESOLVING_INGREDIENTS',
          'FINALIZING_ANALYSIS',
          'APPLYING_CLARIFICATION',
          'PRESENTING'
        )
      );
  END IF;
END $$;
