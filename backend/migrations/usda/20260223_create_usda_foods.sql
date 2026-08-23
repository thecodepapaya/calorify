CREATE TABLE IF NOT EXISTS usda_foods (
  fdc_id BIGINT PRIMARY KEY,
  description TEXT NOT NULL,
  data_type TEXT,
  normalized_name TEXT NOT NULL,
  kcal_per_100g REAL NOT NULL DEFAULT 0,
  protein_per_100g REAL NOT NULL DEFAULT 0,
  carbs_per_100g REAL NOT NULL DEFAULT 0,
  fat_per_100g REAL NOT NULL DEFAULT 0,
  fiber_per_100g REAL NOT NULL DEFAULT 0,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS usda_foods_normalized_name_idx ON usda_foods(normalized_name);
CREATE INDEX IF NOT EXISTS usda_foods_description_idx ON usda_foods(description);
