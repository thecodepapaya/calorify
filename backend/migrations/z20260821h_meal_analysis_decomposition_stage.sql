-- Initial analysis IDs are now client-stable and persisted before the first
-- external LLM call. Extend the durable state machine with a pending state and
-- a fenced in-flight decomposition state.
ALTER TABLE meal_analysis_session
  DROP CONSTRAINT IF EXISTS meal_analysis_session_stage_check;

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
