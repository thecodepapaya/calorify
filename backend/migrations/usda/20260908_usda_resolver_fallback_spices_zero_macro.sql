-- The generic spices fallback now reports zero macros. Spice servings are
-- grams and contribute negligibly, so a zero profile is safer than
-- attributing curry-powder macros to every unmatched spice blend. Replaces
-- the curry-powder profile inserted 2026-08-31; the row keeps its
-- normalized head noun so the local-fallback head-noun reduction keeps
-- matching every spice blend.
UPDATE usda_resolver_fallback_foods
   SET description = 'Spices, nfs',
       kcal_per_100g = 0,
       protein_per_100g = 0,
       carbs_per_100g = 0,
       fat_per_100g = 0,
       fiber_per_100g = 0,
       updated_at = CURRENT_TIMESTAMP
 WHERE fdc_id = -1000001;
