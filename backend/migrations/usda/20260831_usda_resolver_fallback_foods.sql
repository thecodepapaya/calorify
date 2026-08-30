-- Resolver-owned fallback foods remain outside usda_foods because USDA imports
-- atomically replace that table on every source release refresh.
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

-- The explicit generic-spices fallback uses USDA FDC 170924's curry-powder
-- profile. It is a resolver-owned default, not a fabricated USDA record.
INSERT INTO usda_resolver_fallback_foods (
  fdc_id,
  description,
  data_type,
  normalized_name,
  kcal_per_100g,
  protein_per_100g,
  carbs_per_100g,
  fat_per_100g,
  fiber_per_100g
) VALUES (
  -1000001,
  'Spices, unspecified (curry-powder profile)',
  'local_fallback',
  'spices',
  325,
  14.29,
  55.83,
  14.01,
  53.2
)
ON CONFLICT (fdc_id) DO UPDATE SET
  description = EXCLUDED.description,
  data_type = EXCLUDED.data_type,
  normalized_name = EXCLUDED.normalized_name,
  kcal_per_100g = EXCLUDED.kcal_per_100g,
  protein_per_100g = EXCLUDED.protein_per_100g,
  carbs_per_100g = EXCLUDED.carbs_per_100g,
  fat_per_100g = EXCLUDED.fat_per_100g,
  fiber_per_100g = EXCLUDED.fiber_per_100g,
  updated_at = CURRENT_TIMESTAMP;
