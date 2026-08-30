# Meal-analysis V3 API

V3 is the only supported meal-analysis transport. Every route is authenticated,
and every analysis ID is scoped to the authenticated user.

## Routes

- `POST /api/v3/food/image-upload` accepts a bounded static WebP body and
  returns an opaque, user-owned `imageId`.
- `POST /api/v3/food/analyze-text` starts text analysis.
- `POST /api/v3/food/analyze-image` starts image analysis from an opaque ID.
- `POST /api/v3/food/answer` submits every answer in the current bundle as one
  atomic request.
- `POST /api/v3/food/resume` returns the last durable outcome.
- `POST /api/v3/food/feedback` records an up/down signal for a completed run.
- `POST /api/v3/food/confirm-log` records a log confirmation or deletion.

Analysis responses use newline-delimited JSON. Every line contains `event`,
`analysisId`, and `data`. A stream begins with `STARTED` and ends with exactly
one of `NEEDS_INPUT`, `COMPLETE`, `NO_FOOD`, `UNRESOLVED`, or `ERROR`.

## Questions

`NEEDS_INPUT` contains one revisioned bundle. The client must answer each
question exactly once. Option IDs must come from the supplied options; numeric
answers must satisfy the inclusive range, integer rule, and step. The
`USE_ESTIMATE` answer is accepted only when that question explicitly allows it.

## Session behavior

The backend stores validated input, the latest result, accepted answers,
feedback, and log state in `meal_analysis_v3_session`. Retrying an analysis ID
with different input returns a conflict. Resume and mutations remain scoped to
the original authenticated user.
