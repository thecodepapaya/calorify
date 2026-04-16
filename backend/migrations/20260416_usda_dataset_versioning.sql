CREATE TABLE IF NOT EXISTS usda_dataset_version (
    dataset_version TEXT PRIMARY KEY,
    source_release_date DATE,
    checksum TEXT NOT NULL,
    row_count INTEGER NOT NULL,
    imported_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    import_source TEXT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS usda_dataset_version_active_idx
    ON usda_dataset_version(is_active);

CREATE UNIQUE INDEX IF NOT EXISTS usda_dataset_version_single_active_idx
    ON usda_dataset_version((is_active))
    WHERE is_active = TRUE;

CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE INDEX IF NOT EXISTS usda_foods_normalized_name_trgm_idx
    ON usda_foods USING gin (normalized_name gin_trgm_ops);

CREATE INDEX IF NOT EXISTS usda_foods_description_trgm_idx
    ON usda_foods USING gin (description gin_trgm_ops);
