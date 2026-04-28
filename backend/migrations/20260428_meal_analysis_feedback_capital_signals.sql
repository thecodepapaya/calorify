-- Align meal_analysis_feedback.signal with API proto JSON ("UP" | "DOWN").
UPDATE meal_analysis_feedback
SET signal = UPPER(signal)
WHERE signal IN ('up', 'down');

ALTER TABLE meal_analysis_feedback
  DROP CONSTRAINT IF EXISTS meal_analysis_feedback_signal_check;

ALTER TABLE meal_analysis_feedback
  ADD CONSTRAINT meal_analysis_feedback_signal_check
  CHECK (signal IN ('UP', 'DOWN'));
