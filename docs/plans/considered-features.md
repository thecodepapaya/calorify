# Considered Features (cross-component)

Status: reference inventory, not commitments
Provenance: condensed 2026-11-14 from the retired TS-era V3 reliability plan; each entry keeps its original preconditions so a future pickup starts from the recorded reasoning, not from scratch.

Directions the product has considered for meal analysis. None of these are implemented in the Go backend unless `TODO.md` says otherwise. When one is picked up, create a decision record: the original plan required a separate record for anything changing privacy, persistence, calculation, provider, or public API contracts.

## Accuracy

- **Semantic USDA recall**: embeddings retrieve candidates but never prove identity or preparation state. Open accuracy gaps (similarity floor, prep-state filtering, unresolved-ingredient fallback) are tracked in `backend/TODO.md` section 3.
- **Barcode and label OCR**: use packaged facts with source/provenance and a correction UI; keep recipe inference as fallback.
- **Restaurant/brand integrations**: improve proprietary food coverage without presenting inferred recipes as verified.
- **Calibrated household measures**: version and sync a user's bowl, plate, or glass sizes with clear applicability rules.
- **Image plus caption**: define precedence and contradiction handling so text does not silently override image evidence.
- **Micronutrients**: add only after per-nutrient source coverage, missing-value, interval, storage, and UI policy exists.
- **Corrections/personalization**: require consent, provenance, expiration, reset, and bias evaluation; never silently change another meal.
- **Multiple question rounds**: add only if evidence outweighs abandonment and state-machine complexity.
- **On-device assistance**: may reduce latency but must not fork the authoritative server calculation.

## Reliability

- **Persist interpretation checkpoints**: store validated decomposition snapshots so clarification answers avoid repeating model/USDA work. Partially tracked in `backend/TODO.md` (clarification answers route + snapshot resume).
- **Client resume**: persist unfinished analysis ids locally, distinguish retry (new work) from resume (same work), reopen identical bundles after process death.
- **Watch/phone handoff**: deep-link `requires_phone` cases to the exact bundle and return the terminal result to the watch.
- **Uncertainty calibration**: expand multilingual, image, household-measure, hidden-fat, and restaurant fixtures; measure interval coverage and sharpness before changing estimation floors.
- **Retention**: session/image expiry, orphan reconciliation, feedback/log retention, read-PAR rotation.

## Presentation and product

- display ranges for protein, carbohydrates, fat, and fiber;
- expose component ranges and provenance in "how this was estimated" details;
- edit through a new analysis revision rather than mutating a stored result;
- explicit reanalysis with a parent analysis locator;
- progress accessibility announcements and reduced motion;
- clear retry/resume/edit actions derived from terminal recovery state.
