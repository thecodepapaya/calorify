ALTER TABLE ai_summaries
  ALTER COLUMN summary DROP NOT NULL,
  ALTER COLUMN generated_at DROP NOT NULL,
  ALTER COLUMN generated_at DROP DEFAULT,
  ADD COLUMN IF NOT EXISTS summary_local_date DATE,
  ADD COLUMN IF NOT EXISTS status VARCHAR(16),
  ADD COLUMN IF NOT EXISTS request_snapshot JSONB,
  ADD COLUMN IF NOT EXISTS requested_at TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS requested_locale VARCHAR(16),
  ADD COLUMN IF NOT EXISTS provider VARCHAR(32),
  ADD COLUMN IF NOT EXISTS model VARCHAR(255),
  ADD COLUMN IF NOT EXISTS provider_request_id VARCHAR(255),
  ADD COLUMN IF NOT EXISTS attempt_count INTEGER NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS last_error_code VARCHAR(64),
  ADD COLUMN IF NOT EXISTS processing_started_at TIMESTAMPTZ;

UPDATE ai_summaries
SET status = 'completed', requested_at = COALESCE(requested_at, generated_at)
WHERE status IS NULL;

ALTER TABLE ai_summaries
  ALTER COLUMN status SET DEFAULT 'completed',
  ALTER COLUMN status SET NOT NULL;

ALTER TABLE ai_summaries
  DROP CONSTRAINT IF EXISTS ai_summaries_status_check,
  ADD CONSTRAINT ai_summaries_status_check CHECK (status IN ('processing', 'completed', 'failed')),
  DROP CONSTRAINT IF EXISTS ai_summaries_attempt_count_check,
  ADD CONSTRAINT ai_summaries_attempt_count_check CHECK (attempt_count BETWEEN 0 AND 3);

CREATE UNIQUE INDEX IF NOT EXISTS idx_ai_summaries_user_local_date
  ON ai_summaries(user_id, summary_local_date)
  WHERE summary_local_date IS NOT NULL;
