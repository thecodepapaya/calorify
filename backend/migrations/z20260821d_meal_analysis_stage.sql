-- Explicit durable state for the resumable V2 meal-analysis pipeline. NULL is
-- retained for rows created before this migration; the application infers and
-- validates their stage from the existing snapshot columns on first read.
ALTER TABLE meal_analysis_session
  ADD COLUMN IF NOT EXISTS stage VARCHAR(32);

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
     FROM pg_constraint
     WHERE conname = 'meal_analysis_session_stage_check'
       AND conrelid = 'meal_analysis_session'::regclass
  ) THEN
    ALTER TABLE meal_analysis_session
      ADD CONSTRAINT meal_analysis_session_stage_check
      CHECK (
        stage IS NULL OR stage IN (
          'PENDING_DECOMPOSITION',
          'DECOMPOSING',
          'DECOMPOSED',
          'RESOLVING_INGREDIENTS',
          'INGREDIENTS_RESOLVED',
          'FINALIZING_ANALYSIS',
          'AWAITING_CLARIFICATION',
          'APPLYING_CLARIFICATION',
          'AWAITING_MEAL_TYPE',
          'READY_FOR_PRESENTATION',
          'PRESENTING',
          'COMPLETED'
        )
      );
  END IF;
END $$;
