-- Match the read patterns used by meal history/export, AI summaries, and
-- latest-session lookup. CONCURRENTLY avoids blocking production reads/writes
-- while these indexes are built by the non-transactional migration runner.
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_meal_analysis_session_logged_user_time
  ON meal_analysis_session(user_id, logged_at DESC)
  WHERE logged_at IS NOT NULL;
