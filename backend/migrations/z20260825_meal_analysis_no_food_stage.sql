ALTER TABLE meal_analysis_session
  DROP CONSTRAINT IF EXISTS meal_analysis_session_stage_check;

UPDATE meal_analysis_session
SET stage = CASE
  WHEN result_data ->> 'result_kind' = 'NO_FOOD' THEN 'NO_FOOD_DETECTED'
  WHEN result_data IS NOT NULL AND result_data <> 'null'::jsonb THEN 'COMPLETED'
  WHEN meal_type_question_data IS NOT NULL AND meal_type_question_data <> 'null'::jsonb THEN 'AWAITING_MEAL_TYPE'
  WHEN uncertainty_data ->> 'needsClarification' = 'true' THEN 'AWAITING_CLARIFICATION'
  WHEN uncertainty_data IS NOT NULL AND uncertainty_data <> 'null'::jsonb
       AND selected_meal_type IS NOT NULL THEN 'READY_FOR_PRESENTATION'
  WHEN ingredients_data IS NOT NULL AND ingredients_data <> 'null'::jsonb THEN 'INGREDIENTS_RESOLVED'
  WHEN decomposition_data IS NOT NULL AND decomposition_data <> 'null'::jsonb THEN 'DECOMPOSED'
  ELSE 'PENDING_DECOMPOSITION'
END
WHERE stage IS NULL;

ALTER TABLE meal_analysis_session
  ALTER COLUMN stage SET DEFAULT 'PENDING_DECOMPOSITION',
  ALTER COLUMN stage SET NOT NULL,
  ADD CONSTRAINT meal_analysis_session_stage_check
  CHECK (stage IN (
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
    'NO_FOOD_DETECTED',
    'COMPLETED'
  ));
