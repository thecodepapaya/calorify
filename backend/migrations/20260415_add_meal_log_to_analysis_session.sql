-- Add meal log confirmation columns to meal_analysis_session.
-- logged_at = NULL means the analysis was discarded.
-- logged_at IS NOT NULL means the user saved the meal to their log.
ALTER TABLE meal_analysis_session
  ADD COLUMN IF NOT EXISTS logged_at          TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS logged_meal_name   TEXT,
  ADD COLUMN IF NOT EXISTS logged_calories    INTEGER,
  ADD COLUMN IF NOT EXISTS logged_protein     REAL,
  ADD COLUMN IF NOT EXISTS logged_carbs       REAL,
  ADD COLUMN IF NOT EXISTS logged_fat         REAL,
  ADD COLUMN IF NOT EXISTS logged_fiber       REAL,
  ADD COLUMN IF NOT EXISTS logged_meal_type   VARCHAR(20),
  ADD COLUMN IF NOT EXISTS logged_quantity    TEXT;

-- Sparse index: only indexes rows where a meal was actually logged.
-- Keeps the CRON query fast: WHERE user_id = $1 AND logged_at IS NOT NULL
CREATE INDEX IF NOT EXISTS idx_meal_analysis_session_logged_at
  ON meal_analysis_session(logged_at)
  WHERE logged_at IS NOT NULL;
