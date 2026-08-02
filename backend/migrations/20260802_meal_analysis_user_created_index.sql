-- Supports latest-session lookup and per-user observability without sorting
-- every historical analysis row. Kept in its own migration because PostgreSQL
-- requires each concurrent index build to run outside a transaction block.
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_meal_analysis_session_user_created
  ON meal_analysis_session(user_id, created_at DESC)
  WHERE user_id IS NOT NULL;
