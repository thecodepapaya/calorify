DROP TABLE IF EXISTS ai_summary_batches;

ALTER TABLE ai_summaries DROP COLUMN IF EXISTS openai_batch_id;
