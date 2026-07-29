# Prompt Version 1 — Baseline

**Date:** 2026-04-29
**Overall USDA hit rate:** 131/149 (88%)

## Key failure patterns

| Pattern | Count | Example |
|---------|-------|---------|
| `oil vegetable` hint → MISS (non-deterministic) | ~5 | "paneer sabzi (oil/ghee)" |
| `wheat flour whole` hint → MISS (non-deterministic) | ~3 | "roti (whole wheat flour)" |
| Compound canonical hints | ~4 | `curry powder or garam masala`, `oil vegetable or butter`, `oil vegetable and spices` |
| `bread slice` → MISS | 1 | "bread (slice)" |
| `green onion` → MISS | 2 | green onions/scallions |

## Per-input results

| Input | Hit rate |
|-------|----------|
| 2 rotis with paneer sabzi | 7/8 (88%) |
| bowl of chicken fried rice | 5/6 (83%) |
| grilled chicken breast with steamed broccoli and brown rice | 3/3 (100%) |
| 2 scrambled eggs with toast | 3/4 (75%) |
| dal tadka with 3 chapatis | 6/8 (75%) |
| caesar salad with grilled chicken | 5/5 (100%) |
| spaghetti bolognese with beef | 7/8 (88%) |
| tuna sandwich on whole wheat bread | 5/5 (100%) |
| masala dosa with sambar and coconut chutney | 8/12 (67%) |
| avocado toast with 2 poached eggs | 4/5 (80%) |
| chicken tikka masala with naan | 3/3 (100%) |
| miso soup with tofu and seaweed | 5/6 (83%) |
| beef tacos with salsa and sour cream | 6/6 (100%) |
| oatmeal with banana and honey | 3/3 (100%) |
| palak paneer with 2 rotis | 7/9 (78%) |
| pad thai with shrimp | 10/11 (91%) |
| rajma chawal | 5/5 (100%) |
| hummus with pita bread and raw vegetables | 3/3 (100%) |
| idli with sambar | 3/4 (75%) |
| greek yogurt with almonds and honey | 3/3 (100%) |
| chole bhature | 8/8 (100%) |
| butter chicken with basmati rice | 5/5 (100%) |
| aloo gobi sabzi with 2 parathas | 6/6 (100%) |
| bibimbap with egg and mixed vegetables | 6/6 (100%) |
| upma with vegetables | 5/7 (71%) |

## Prompt snapshot (rule 13 and example)

Rule 13: `canonical_hint MUST be a simple food database lookup term. Use terms like "wheat flour whole", "ghee", "butter", "oil vegetable"...`

Example uses: `canonical_hint "wheat flour whole"`, `canonical_hint "oil vegetable" or "ghee"`
