CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS usda_foods (
    fdc_id BIGINT PRIMARY KEY,
    description TEXT NOT NULL,
    data_type TEXT,
    normalized_name TEXT NOT NULL,
    embedding vector (768),
    kcal_per_100g REAL NOT NULL DEFAULT 0,
    protein_per_100g REAL NOT NULL DEFAULT 0,
    carbs_per_100g REAL NOT NULL DEFAULT 0,
    fat_per_100g REAL NOT NULL DEFAULT 0,
    fiber_per_100g REAL NOT NULL DEFAULT 0,
    kcal_present BOOLEAN NOT NULL DEFAULT FALSE,
    protein_present BOOLEAN NOT NULL DEFAULT FALSE,
    carbs_present BOOLEAN NOT NULL DEFAULT FALSE,
    fat_present BOOLEAN NOT NULL DEFAULT FALSE,
    fiber_present BOOLEAN NOT NULL DEFAULT FALSE,
    quality_score REAL NOT NULL DEFAULT 0.5,
    quality_flags TEXT [] NOT NULL DEFAULT '{}',
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS usda_foods_normalized_name_idx ON usda_foods (normalized_name);

CREATE INDEX IF NOT EXISTS usda_foods_description_idx ON usda_foods (description);

CREATE INDEX IF NOT EXISTS usda_foods_normalized_name_trgm_idx ON usda_foods USING gin (normalized_name gin_trgm_ops);

CREATE INDEX IF NOT EXISTS usda_foods_description_trgm_idx ON usda_foods USING gin (description gin_trgm_ops);

CREATE INDEX IF NOT EXISTS usda_foods_english_fts_idx ON usda_foods USING gin (
    to_tsvector(
        'english',
        normalized_name || ' ' || description
    )
);

CREATE INDEX IF NOT EXISTS usda_foods_embedding_hnsw_idx ON usda_foods USING hnsw (embedding vector_cosine_ops);

CREATE TABLE IF NOT EXISTS usda_dataset_version (
    dataset_version TEXT PRIMARY KEY,
    source_release_date DATE,
    checksum TEXT NOT NULL,
    row_count INTEGER NOT NULL,
    imported_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    import_source TEXT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT FALSE,
    is_materialized BOOLEAN NOT NULL DEFAULT FALSE,
    v3_nutrient_presence_materialized BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS usda_dataset_version_active_idx ON usda_dataset_version (is_active);

CREATE UNIQUE INDEX IF NOT EXISTS usda_dataset_version_single_active_idx ON usda_dataset_version ((is_active))
WHERE
    is_active = TRUE;

CREATE UNIQUE INDEX IF NOT EXISTS usda_dataset_version_single_materialized_idx ON usda_dataset_version ((is_materialized))
WHERE
    is_materialized = TRUE;

CREATE TABLE IF NOT EXISTS usda_resolver_fallback_foods (
    fdc_id BIGINT PRIMARY KEY CHECK (fdc_id < 0),
    description TEXT NOT NULL,
    data_type TEXT NOT NULL CHECK (data_type = 'local_fallback'),
    normalized_name TEXT NOT NULL,
    kcal_per_100g REAL NOT NULL,
    protein_per_100g REAL NOT NULL,
    carbs_per_100g REAL NOT NULL,
    fat_per_100g REAL NOT NULL,
    fiber_per_100g REAL NOT NULL,
    kcal_present BOOLEAN NOT NULL DEFAULT TRUE,
    protein_present BOOLEAN NOT NULL DEFAULT TRUE,
    carbs_present BOOLEAN NOT NULL DEFAULT TRUE,
    fat_present BOOLEAN NOT NULL DEFAULT TRUE,
    fiber_present BOOLEAN NOT NULL DEFAULT TRUE,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    usda_resolver_fallback_foods (
        fdc_id,
        description,
        data_type,
        normalized_name,
        kcal_per_100g,
        protein_per_100g,
        carbs_per_100g,
        fat_per_100g,
        fiber_per_100g
    )
VALUES (
        -1000001,
        'Spices, nfs',
        'local_fallback',
        'spices',
        0,
        0,
        0,
        0,
        0
    )
ON CONFLICT (fdc_id) DO
UPDATE
SET
    description = EXCLUDED.description,
    data_type = EXCLUDED.data_type,
    normalized_name = EXCLUDED.normalized_name,
    kcal_per_100g = EXCLUDED.kcal_per_100g,
    protein_per_100g = EXCLUDED.protein_per_100g,
    carbs_per_100g = EXCLUDED.carbs_per_100g,
    fat_per_100g = EXCLUDED.fat_per_100g,
    fiber_per_100g = EXCLUDED.fiber_per_100g,
    updated_at = CURRENT_TIMESTAMP;