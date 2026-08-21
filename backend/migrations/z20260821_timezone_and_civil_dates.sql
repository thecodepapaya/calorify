ALTER TABLE meal_analysis_session
  ADD COLUMN IF NOT EXISTS time_zone VARCHAR(64);

ALTER TABLE user_profile
  ALTER COLUMN date_of_birth TYPE DATE
  USING date_of_birth::date;
