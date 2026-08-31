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
`analysisId`, and `data`. A stream begins with `STARTED`, can include bounded
`PROGRESS` events, and ends with exactly one of `NEEDS_INPUT`, `COMPLETE`,
`NO_FOOD`, `UNRESOLVED`, or `ERROR`.

`PROGRESS.data` contains a `phase` (`UNDERSTAND`, `MATCH`, `CHECK`, or
`FINISH`) and a `progress` value from zero to one. Values are monotonic within
one HTTP stream. It can also contain a bounded meal name and ingredient-name
list after interpretation. Progress is derived from completed pipeline stages;
private model responses, resolver candidates, and database details never cross
this boundary. Clients retain the latest non-empty copy fields.

`NEEDS_INPUT` closes the initial stream. The current answer adapter reruns the
pipeline and therefore its new stream reports early stage values again. A UI
must keep one analysis-scoped high-water mark across both streams: ignore a
numeric/phase regression while still accepting newer non-empty meal and
ingredient copy. The app normally pauses at `0.80` and resumes visible progress
at `0.82`. This client rule avoids a second visual fill; it does not mean the
backend has checkpointed the repeated work. The complete stage/value mapping
and checkpointing roadmap are in the
[cross-component architecture](../../docs/plans/meal-analysis-reliability.md#8-progress-and-rich-loading-ui).

`ERROR.data.code` is a bounded public category, never a raw exception message:

- `UNUSABLE_INPUT` means the submitted description or image could not be
  interpreted and should be edited rather than retried unchanged.
- `PROVIDER_UNAVAILABLE` means the configured model provider could not complete
  the request.
- `INVALID_MODEL_OUTPUT` means a provider response failed structural or semantic
  validation.
- `NUTRITION_DATA_UNAVAILABLE` means trusted nutrition resolution failed.
- `ANALYSIS_UNAVAILABLE` is the fallback for other internal analysis failures.

The four transient failure categories use `retryable: true` and
`recoveryAction: "RETRY"`; `UNUSABLE_INPUT` uses `EDIT_INPUT`.
Operational logs include the public category and a separate redacted internal
error kind for correlation by `analysisId`.

## Questions

`NEEDS_INPUT` contains one revisioned bundle. The client must answer each
question exactly once. Option IDs must come from the supplied options; numeric
answers must satisfy the inclusive range, integer rule, and step. The
`USE_ESTIMATE` answer is accepted only when that question explicitly allows it.

## Session behavior

The backend stores validated input, the latest result, accepted answers,
feedback, and log state in `meal_analysis_v3_session`. Retrying an analysis ID
with different input returns a conflict. Resume and mutations remain scoped to
the original authenticated user. This is result-level persistence: it does not
yet persist interpretation and resolution checkpoints, so answering can repeat
provider and USDA work.
