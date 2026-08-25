ALTER TABLE meal_analysis_session
    ADD COLUMN IF NOT EXISTS last_response_step VARCHAR(32),
    ADD COLUMN IF NOT EXISTS last_response_data JSONB;
