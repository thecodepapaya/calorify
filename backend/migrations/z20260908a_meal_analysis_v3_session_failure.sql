-- A V3 session that fails after its durable row is created (model provider
-- error, timeout, crash) previously stayed result-less forever, which every
-- client read as "still processing". failure_data records the terminal
-- public error so /resume can replay it instead of re-running the analysis.
ALTER TABLE meal_analysis_v3_session
    ADD COLUMN IF NOT EXISTS failure_data JSONB;

DO $$ BEGIN
    ALTER TABLE meal_analysis_v3_session
        ADD CONSTRAINT meal_analysis_v3_failure_excludes_result
        CHECK (failure_data IS NULL OR result_data IS NULL);
EXCEPTION
    WHEN duplicate_object THEN NULL;
END $$;
