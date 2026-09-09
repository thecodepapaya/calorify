-- Stores the nutrition-resolved interpretation and planned question bundle for
-- sessions that pause on NEEDS_INPUT, so /answer can replay deterministically
-- from the stored snapshot instead of re-running the model interpretation.
ALTER TABLE meal_analysis_v3_session
  ADD COLUMN IF NOT EXISTS interpretation_snapshot JSONB;
