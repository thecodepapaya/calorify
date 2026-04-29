# Prompt Version 2 — Alias fix + compound-hint rule

**Date:** 2026-04-29
**Overall USDA hit rate:** 147/156 (94%) ← up from 131/149 (88%)

## Changes from v1
- `usdaLookup.ts` ALIASES: Fixed `roti/chapati/phulka/atta → 'whole wheat flour'` (was wrong `'wheat flour whole'`)
- `usdaLookup.ts` ALIASES: Fixed `tel/'cooking oil'/'vegetable oil' → 'vegetable oil'` (was `'oil vegetable'`)
- `usdaLookup.ts` ALIASES: Fixed `naan → 'naan'` (was `'wheat flour refined'`)
- `usdaLookup.ts` ALIASES: Added reverse aliases `'wheat flour whole' → 'whole wheat flour'` and `'oil vegetable' → 'vegetable oil'`
- `nutritionEngineV2.ts` DECOMPOSITION_SYSTEM_PROMPT rule 13: Fixed example terms and added strict no-compound rule

## Remaining misses (9 total)

| canonical_hint | Count | Reason |
|----------------|-------|--------|
| `green onion` | 3 | Not in USDA as simple term |
| `cumin seeds` | 2 | LIMIT 50 issue — match exists but not returned |
| `curry leaves` | 1 | Not in USDA |
| `green chili` | 1 | Not in USDA |
| `tamarind paste` | 1 | Should be "tamarind" |
| `red chili powder` | 1 | Needs alias |
| `rice and lentil batter` | 1 | No USDA entry for dosa batter |

## Per-input results

| Input | V1 | V2 |
|-------|----|----|
| 2 rotis with paneer sabzi | 7/8 (88%) | 8/8 (100%) |
| bowl of chicken fried rice | 5/6 (83%) | 7/8 (88%) |
| grilled chicken breast with steamed broccoli and brown rice | 3/3 (100%) | 3/3 (100%) |
| 2 scrambled eggs with toast | 3/4 (75%) | 3/3 (100%) |
| dal tadka with 3 chapatis | 6/8 (75%) | 6/7 (86%) |
| caesar salad with grilled chicken | 5/5 (100%) | 5/5 (100%) |
| spaghetti bolognese with beef | 7/8 (88%) | 8/8 (100%) |
| tuna sandwich on whole wheat bread | 5/5 (100%) | 5/5 (100%) |
| masala dosa with sambar and coconut chutney | 8/12 (67%) | 6/7 (86%) |
| avocado toast with 2 poached eggs | 4/5 (80%) | 5/5 (100%) |
| chicken tikka masala with naan | 3/3 (100%) | 6/6 (100%) |
| miso soup with tofu and seaweed | 5/6 (83%) | 5/5 (100%) |
| beef tacos with salsa and sour cream | 6/6 (100%) | 6/6 (100%) |
| oatmeal with banana and honey | 3/3 (100%) | 3/3 (100%) |
| palak paneer with 2 rotis | 7/9 (78%) | 9/9 (100%) |
| pad thai with shrimp | 10/11 (91%) | 8/11 (73%) |
| rajma chawal | 5/5 (100%) | 9/10 (90%) |
| hummus with pita bread and raw vegetables | 3/3 (100%) | 3/3 (100%) |
| idli with sambar | 3/4 (75%) | 5/5 (100%) |
| greek yogurt with almonds and honey | 3/3 (100%) | 3/3 (100%) |
| chole bhature | 8/8 (100%) | 6/6 (100%) |
| butter chicken with basmati rice | 5/5 (100%) | 7/7 (100%) |
| aloo gobi sabzi with 2 parathas | 6/6 (100%) | 7/7 (100%) |
| bibimbap with egg and mixed vegetables | 6/6 (100%) | 8/8 (100%) |
| upma with vegetables | 5/7 (71%) | 6/8 (75%) |
