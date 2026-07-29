# Meal-decomposition evaluation history

These historical runs measure whether model-generated ingredient hints resolve to USDA rows. They are useful for prompt and lookup regression work, but a high match rate does not prove calorie accuracy; the end-to-end suite in `backend/evals/` also checks calories, portions, ingredient semantics, and completion.

| Iteration | USDA hit rate | Main change |
| --- | ---: | --- |
| v1 | 88% (131/149) | Initial prompt and alias lookup. |
| v2 | 94% (147/156) | Corrected alias targets and prohibited compound hints. |
| v3 | 98% (168/171) | Added multilingual/global-cuisine guidance. |
| v4 diverse set | 98% (178/181) | Added indexed `pg_trgm` candidates and qualifier handling. |
| v4 Indian set | 100% (151/151) | Re-ran the original cuisine-heavy set. |

The durable findings were:

- Model hints should be short, English database lookup terms even for multilingual input.
- Composite dishes should decompose into atomic ingredients rather than a duplicate dish row.
- Lexical similarity handles harmless spelling, plurality, and word-order differences.
- Semantic aliases remain necessary when cuisine terms, preparation state, or a common name cannot be inferred lexically.
- Raw/cooked/dry state must not be stripped because it materially changes nutrition.
- Exact-name matches must be deterministic and prefer trustworthy reference data over misleading generic branded rows.

The old per-version reports were merged here because their large per-prompt tables described superseded implementation states. For current behavior, rely on automated tests, `analysis:v2:cli`, and `eval:calories`.
