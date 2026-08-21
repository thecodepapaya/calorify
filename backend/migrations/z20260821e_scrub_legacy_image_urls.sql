-- Older V2 image sessions persisted the full pre-authenticated object URL in
-- request_payload. It is a bearer credential, so remove it without attempting
-- to interpret or transform untrusted URL text. New sessions persist only the
-- user-scoped object key and reconstruct the configured download URL at use.
UPDATE meal_analysis_session
   SET request_payload = request_payload - 'imageUrl' - 'image_url',
       updated_at = CURRENT_TIMESTAMP
 WHERE source = 'image'
   AND (
     request_payload ? 'imageUrl'
     OR request_payload ? 'image_url'
   );
