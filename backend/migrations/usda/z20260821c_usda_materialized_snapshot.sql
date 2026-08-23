-- usda_foods stores exactly one materialized release. Existing version rows
-- predate that invariant, so they remain active but are not trusted as a
-- complete snapshot until the importer atomically replaces the table. The
-- existing active rows remain readable during that background replacement;
-- PostgreSQL switches readers to the new snapshot only at commit.
ALTER TABLE usda_dataset_version
  ADD COLUMN IF NOT EXISTS is_materialized BOOLEAN NOT NULL DEFAULT FALSE;

CREATE UNIQUE INDEX IF NOT EXISTS usda_dataset_version_single_materialized_idx
  ON usda_dataset_version((is_materialized))
  WHERE is_materialized = TRUE;
