# Prompt Version 3 — Multilingual + global cuisine guidance

**Date:** 2026-04-29
**Overall USDA hit rate:** 168/171 (98%) ← up from 147/156 (94%) in v2

## Changes from v2
- Prompt opening: "Inputs may be in any language; handle all world cuisines."
- Rule 13: Added "always in English regardless of input language", expanded USDA-friendly term examples, removed "cumin seeds" (not reliably in USDA) in favour of more reliable terms.
- Removed dish-context duplication rule 14 restructure for clarity.
- Portion references: added noodles, soy sauce, tortilla references for global cuisines.
- Example: cleaned up raw_names (removed context-prefix pattern from simpler meals).
- Added 5 multilingual test inputs: Arabic, Chinese, German, French, Spanish.

## Multilingual results (all 5/5 passed)

| Input | Language | USDA hit rate |
|-------|----------|---------------|
| `2 روتي مع سبزي البانير` | Arabic | 8/8 (100%) |
| `鸡蛋炒饭` | Chinese | 5/5 (100%) |
| `Hähnchenbrust mit Brokkoli und Reis` | German | 3/3 (100%) |
| `riz au poulet grillé et légumes` | French | 5/5 (100%) |
| `pollo con arroz y frijoles negros` | Spanish | 3/3 (100%) |

## Remaining misses (3 total)

| canonical_hint | Reason | Fix |
|----------------|--------|-----|
| `rice and urad dal` (dosa batter) | No USDA entry for batter mix | Inherent — decompose into rice + urad dal rows instead |
| `green onion` | Not in USDA; LIMIT 50 non-determinism | Minor garnish, low impact |
| `fermented chili paste` (gochujang) | Model chose generic term | Should use "gochujang" which IS in USDA |

## Per-input v1 → v2 → v3

| Input | V1 | V2 | V3 |
|-------|----|----|-----|
| 2 rotis with paneer sabzi | 88% | 100% | 100% |
| bowl of chicken fried rice | 83% | 88% | 100% |
| grilled chicken breast + broccoli + brown rice | 100% | 100% | 100% |
| 2 scrambled eggs with toast | 75% | 100% | 100% |
| dal tadka with 3 chapatis | 75% | 86% | 100% |
| caesar salad with grilled chicken | 100% | 100% | 100% |
| spaghetti bolognese with beef | 88% | 100% | 100% |
| tuna sandwich on whole wheat bread | 100% | 100% | 100% |
| masala dosa with sambar + coconut chutney | 67% | 86% | 86% |
| avocado toast with 2 poached eggs | 80% | 100% | 100% |
| chicken tikka masala with naan | 100% | 100% | 100% |
| miso soup with tofu and seaweed | 83% | 100% | 83% |
| beef tacos with salsa and sour cream | 100% | 100% | 100% |
| oatmeal with banana and honey | 100% | 100% | 100% |
| palak paneer with 2 rotis | 78% | 100% | 100% |
| pad thai with shrimp | 91% | 73% | 100% |
| rajma chawal | 100% | 90% | 100% |
| hummus with pita bread + raw vegetables | 100% | 100% | 100% |
| idli with sambar | 75% | 100% | 100% |
| greek yogurt with almonds and honey | 100% | 100% | 100% |
| chole bhature | 100% | 100% | 100% |
| butter chicken with basmati rice | 100% | 100% | 100% |
| aloo gobi sabzi with 2 parathas | 100% | 100% | 100% |
| bibimbap with egg + mixed vegetables | 100% | 100% | 83% |
| upma with vegetables | 71% | 75% | 100% |
