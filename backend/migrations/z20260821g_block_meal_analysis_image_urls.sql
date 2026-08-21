-- Preserve the credential scrub across application rollback. Older binaries
-- write the full Oracle PAR under imageUrl; strip both historical spellings at
-- the database boundary before the row can reach WAL, backups, or readers.
CREATE OR REPLACE FUNCTION scrub_meal_analysis_request_payload_image_urls()
RETURNS TRIGGER AS $$
BEGIN
  NEW.request_payload := NEW.request_payload - 'imageUrl' - 'image_url';
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS scrub_meal_analysis_request_payload_image_urls
  ON meal_analysis_session;

CREATE TRIGGER scrub_meal_analysis_request_payload_image_urls
  BEFORE INSERT OR UPDATE OF request_payload, source
  ON meal_analysis_session
  FOR EACH ROW
  EXECUTE FUNCTION scrub_meal_analysis_request_payload_image_urls();

-- Close any gap between the one-time scrub and this invariant migration before
-- validating the constraint. The trigger above protects concurrent writers.
UPDATE meal_analysis_session
   SET request_payload = request_payload - 'imageUrl' - 'image_url'
 WHERE request_payload ? 'imageUrl'
    OR request_payload ? 'image_url';

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
      FROM pg_constraint
     WHERE conname = 'meal_analysis_session_request_payload_no_image_url'
       AND conrelid = 'meal_analysis_session'::regclass
  ) THEN
    ALTER TABLE meal_analysis_session
      ADD CONSTRAINT meal_analysis_session_request_payload_no_image_url
      CHECK (
        NOT (request_payload ? 'imageUrl')
        AND NOT (request_payload ? 'image_url')
      );
  END IF;
END $$;
