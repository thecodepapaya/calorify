# Meal-analysis V3

Status: V3 app/backend cutover implemented

Last reviewed: 2026-08-31

## Objective

Meal analysis turns exactly one text description or image into a localized,
quantified meal. The workflow resolves nutrition-bearing ingredients against
trusted data, calculates five macro points and plausible ranges, asks only
material questions, and never chooses a silent answer for the user.

V3 is the only supported app/backend analysis contract.

## Public contract

The authenticated routes under `/api/v3/food` cover image upload, text and
image analysis, atomic answers, resume, feedback, and log confirmation. The
complete transport contract is documented in the
[V3 API reference](../../backend/docs/meal-analysis-v3-api.md).

Each request carries:

- a client-generated UUID analysis ID;
- exactly one text or opaque image input;
- locale and ISO country code;
- IANA time zone and capture timestamp; and
- image origin for image analysis.

Streams contain `STARTED` followed by one terminal event. `NEEDS_INPUT` is a
terminal response for that request and contains one revisioned bundle. The app
submits every answer in that bundle exactly once and sends `USE_ESTIMATE` only
when the question allows it.

## Processing stages

1. Normalize and validate input and context.
2. Interpret components and ingredients in two bounded model passes.
3. Expand deterministic recipe scenarios.
4. Resolve every nutrition-bearing leaf through the USDA resolver, with the
   bounded model fallback only after trusted lookup remains unresolved.
5. Rank material uncertainties and produce at most one question per component.
6. Apply one atomic answer bundle and recalculate from ingredient leaves.
7. Resolve meal type using explicit answer, explicit text, eligible camera
   context, or confident model evidence in that order.
8. Validate aggregation and range integrity, then build localized presentation.

The developer CLI uses the same core and is documented in the
[meal-analysis CLI guide](../../backend/docs/meal-analysis-cli.md).

## Result invariants

- Every active nutrition-bearing ingredient has calories, protein,
  carbohydrate, fat, and normalized fiber data.
- Each macro point lies inside its advertised inclusive range.
- Meal totals equal component totals and component totals equal ingredient
  totals within the calculation tolerance.
- Portion answers change scenario inputs; they never patch calories directly.
- Generated names and tips remain separate from deterministic serving text and
  macro calculation.
- Non-food, unusable input, unresolved nutrition, and provider failure remain
  explicit terminal outcomes.

## Persistence and ownership

`meal_analysis_v3_session` stores the validated input, digest, latest outcome,
accepted answers, feedback, and log state. All reads and mutations are scoped
by authenticated user ID plus analysis ID. Retrying an ID with different input
returns a conflict. Resume returns the latest durable outcome after a process
restart.

Uploaded image IDs are backend-generated and user-owned. The app never receives
the storage write credential or a read URL. Image upload and analysis have
separate admission limits.

## App behavior

The Flutter app has one V3 flow for text, camera, gallery, and Wear OS proxy
requests. It renders option and numeric questions sequentially while retaining
one atomic response bundle. Complete results preserve serving text, all five
macro ranges, receipt metadata, and the exact analysis ID used for feedback and
log synchronization.

The result sheet may adapt the V3 result into the app's canonical meal model
for existing logging and history UI. That conversion is internal UI state, not
an older network contract.

## Verification

Required checks for contract changes are:

- backend type checking, lint, and tests;
- Flutter static analysis and focused V3 widget/service tests;
- shared model parsing and invariant tests;
- translation generation, audit, analysis, and tests; and
- documentation link checks plus `git diff --check`.
