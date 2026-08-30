-- FTS expands retrieval only. Resolver identity, preparation, nutrient, and
-- ambiguity gates remain mandatory before a USDA record can be selected.
CREATE INDEX CONCURRENTLY IF NOT EXISTS usda_foods_english_fts_idx
  ON usda_foods
  USING GIN (to_tsvector('english', normalized_name || ' ' || description));
