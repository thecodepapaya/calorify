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

CREATE INDEX IF NOT EXISTS usda_foods_base_embedding_hnsw_idx ON usda_foods USING hnsw (embedding vector_cosine_ops)
WHERE (data_type IS NULL OR data_type != 'branded_food');

CREATE INDEX IF NOT EXISTS usda_foods_branded_embedding_hnsw_idx ON usda_foods USING hnsw (embedding vector_cosine_ops)
WHERE data_type = 'branded_food';

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

-- Foundation and Survey records that USDA publishes without an energy value.
-- Ingestion stores them as 0 kcal, so a match on one silently adds no calories.
-- Each row below is completed from the SR Legacy record of the same food: values
-- the incomplete record does measure (for example butter's fat) are kept, and the
-- missing ones are taken from the reference. Re-running is a no-op; the block is
-- applied again after every ingest because ingestion rewrites these rows.
-- Not covered: the 17 "Beans, Dry, ... (0% moisture)" records and "Pawpaw, peeled,
-- seeded, raw", which have no like-for-like reference record.
UPDATE usda_foods AS f
SET
    kcal_per_100g = v.kcal,
    protein_per_100g = v.protein,
    carbs_per_100g = v.carbs,
    fat_per_100g = v.fat,
    fiber_per_100g = v.fiber,
    kcal_present = TRUE,
    protein_present = TRUE,
    carbs_present = TRUE,
    fat_present = TRUE,
    fiber_present = TRUE,
    quality_flags = array_append(f.quality_flags, 'macros_backfilled'),
    updated_at = CURRENT_TIMESTAMP
FROM (
    VALUES
        (748278, 884, 0, 0, 100, 0), -- Oil, canola; from 172336 Oil, canola
        (748323, 900, 0, 0, 100, 0), -- Oil, corn; from 171029 Oil, corn, industrial and retail, all purpose salad or cooking
        (1750351, 884, 0, 0, 100, 0), -- Oil, olive, extra light; from 171413 Oil, olive, salad or cooking
        (748608, 884, 0, 0, 100, 0), -- Oil, olive, extra virgin; from 171413 Oil, olive, salad or cooking
        (1750348, 884, 0, 0, 100, 0), -- Oil, peanut; from 171410 Oil, peanut, salad or cooking
        (1750350, 884, 0, 0, 100, 0), -- Oil, safflower; from 171027 Oil, safflower, salad or cooking, high oleic (primary safflower oil of commerce)
        (748366, 884, 0, 0, 100, 0), -- Oil, soybean; from 171411 Oil, soybean, salad or cooking
        (1750349, 884, 0, 0, 100, 0), -- Oil, sunflower; from 171025 Oil, sunflower, linoleic, (approx. 65%)
        (790508, 717, 0.85, 0.06, 82.2, 0), -- Butter, stick, salted; from 173410 Butter, salted
        (789828, 717, 0.85, 0.06, 81.5, 0), -- Butter, stick, unsalted; from 173430 Butter, without salt
        (2727581, 43, 1.53, 9.61, 0.49, 5.3), -- Blackberries, raw; from 173946 Blackberries, raw
        (2727583, 16, 1.06, 3.23, 0.2, 1.2), -- Cabbage, napa, leaf, destemmed, raw; from 169979 Cabbage, chinese (pe-tsai), raw
        (2727585, 32, 0.669, 7.34, 0.19, 2.3), -- Green onion, (scallion), bulb and greens, root removed, raw; from 170005 Onions, spring or scallions (includes tops and bulb), raw
        (2727588, 54, 0, 13.1, 0.29, 0.1), -- Juice, pomegranate, from concentrate, shelf-stable; from 167787 Pomegranate juice, bottled
        (2727587, 71, 0.423, 17.4, 0.03, 1), -- Juice, prune, shelf-stable; from 167753 Prune juice, canned
        (2727589, 59, 0.147, 13.7, 0.54, 0), -- Juice, tart cherry, from concentrate, shelf-stable; from 167807 Cherry juice, tart
        (2727584, 61, 1.47, 14.2, 0.3, 3), -- Leeks, bulb and greens, root removed, raw; from 169246 Leeks, (bulb and lower leaf-portion), raw
        (2727580, 37, 0.888, 8.62, 0.16, 2.9), -- Rutabaga, peeled, raw; from 168454 Rutabagas, raw
        (746775, 0, 0, 0, 0, 0), -- Salt, table, iodized; from 173468 Salt, table
        (2727586, 72, 1.38, 16.8, 0.1, 2.2), -- Shallots, bulb, peeled, root removed, raw; from 170499 Shallots, raw
        (2727578, 26, 0.854, 6.5, 0.1, 2.3), -- Squash, pie pumpkin, peeled, seeded, raw; from 168448 Pumpkin, raw
        (2727579, 31, 0.792, 6.91, 0.57, 1.4), -- Squash, spaghetti, peeled, seeded, raw; from 169298 Squash, winter, spaghetti, raw
        (2727582, 32, 1.06, 5.84, 1.02, 1.7), -- Tomatillos, dehusked, raw; from 168566 Tomatillos, raw
        (2747675, 30, 0.871, 7.55, 0.15, 0.4), -- Watermelon, seedless, flesh only, raw; from 167765 Watermelon, raw
        (2705383, 70, 1.03, 6.89, 4.38, 0)  -- Milk, human; from 171279 Milk, human, mature, fluid (For Reference Only)
) AS v (fdc_id, kcal, protein, carbs, fat, fiber)
WHERE
    f.fdc_id = v.fdc_id
    AND NOT ('macros_backfilled' = ANY (f.quality_flags));
