-- Tracks OpenAI Batch API jobs submitted by the AI summary CRON.
-- Each row represents one batch covering N users processed at the same 3am window.
CREATE TABLE IF NOT EXISTS ai_summary_batches (
  id               BIGSERIAL PRIMARY KEY,
  openai_batch_id  VARCHAR(255) NOT NULL UNIQUE,
  status           VARCHAR(50)  NOT NULL DEFAULT 'submitted',
  request_count    INTEGER      NOT NULL DEFAULT 0,
  -- JSONB map of custom_id -> { userId, locale, mealCount }
  -- Lets us resolve results back to users without a join table.
  user_data        JSONB        NOT NULL DEFAULT '{}',
  submitted_at     TIMESTAMPTZ  NOT NULL DEFAULT CURRENT_TIMESTAMP,
  completed_at     TIMESTAMPTZ,
  error            TEXT
);

CREATE INDEX IF NOT EXISTS idx_ai_summary_batches_status
  ON ai_summary_batches(status)
  WHERE status IN ('submitted', 'processing');
