CREATE TABLE IF NOT EXISTS ai_summaries (
  id             BIGSERIAL PRIMARY KEY,
  user_id        VARCHAR(255) NOT NULL,
  summary        TEXT NOT NULL,
  locale         VARCHAR(16) NOT NULL DEFAULT 'en',
  meal_count     INTEGER NOT NULL DEFAULT 0,
  generated_at   TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Fast lookup for GET /ai-summary (latest per user)
CREATE INDEX IF NOT EXISTS idx_ai_summaries_user_id
  ON ai_summaries(user_id);

CREATE INDEX IF NOT EXISTS idx_ai_summaries_user_generated
  ON ai_summaries(user_id, generated_at DESC);
