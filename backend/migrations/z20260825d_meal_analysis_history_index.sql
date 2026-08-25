CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_meal_analysis_session_created_at_desc
    ON meal_analysis_session(created_at DESC, analysis_id DESC);
