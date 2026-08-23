ALTER TABLE meal_analysis_session
  ADD COLUMN IF NOT EXISTS time_zone VARCHAR(64);

DO $$
BEGIN
  IF EXISTS (
    SELECT 1
      FROM information_schema.columns
     WHERE table_schema = current_schema()
       AND table_name = 'user_profile'
       AND column_name = 'date_of_birth'
       AND data_type <> 'date'
  ) THEN
    ALTER TABLE user_profile
      ALTER COLUMN date_of_birth TYPE DATE
      USING NULLIF(LEFT(BTRIM(date_of_birth::text), 10), '')::date;
  END IF;
END $$;
