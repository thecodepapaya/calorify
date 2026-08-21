ALTER TABLE ai_summaries
  ADD COLUMN IF NOT EXISTS openai_batch_id VARCHAR(255),
  ADD COLUMN IF NOT EXISTS stats_snapshot JSONB;

CREATE UNIQUE INDEX IF NOT EXISTS idx_ai_summaries_batch_user
  ON ai_summaries(openai_batch_id, user_id)
  WHERE openai_batch_id IS NOT NULL;
