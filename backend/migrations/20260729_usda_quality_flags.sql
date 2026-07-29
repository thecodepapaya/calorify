ALTER TABLE usda_foods
  ADD COLUMN IF NOT EXISTS quality_score REAL NOT NULL DEFAULT 0.5,
  ADD COLUMN IF NOT EXISTS quality_flags TEXT[] NOT NULL DEFAULT '{}';

-- Existing rows continue to be assessed at the read boundary. The importer
-- fills these columns on the next versioned refresh, avoiding a large locking
-- update of the production reference table during application startup.
