# Suggested Calorie and Macro Targets

## Objective

Add a backend-owned engine that suggests daily calories, protein, carbohydrates,
fat, and fiber from the user's onboarding profile. The backend owns all policy
and formula constants so target behavior can change without an app release.

The result is informational, user-reviewable, and never silently replaces a
manual target.

## Agreed scope

- Use height, current weight, target weight, date of birth, gender, activity
  level, weight goal, and unit system already collected during onboarding.
- Calculate `Gender.OTHER` with the same BMR offset as `Gender.MALE`.
- Account for current and target weight in the macro split.
- Do not read weight, body-fat percentage, or other body composition from
  Health Connect.
- Keep target calculation on the backend.
- Support suggested and manually customized targets.
- Show the suggested targets near the end of onboarding.
- Recalculate only after user confirmation when relevant profile data changes.
- Replace the home screen's hardcoded macro percentages and implicit 2,000 kcal
  fallback.
- Do not add adaptive target tuning from meal or weight history.
- Do not add golden tests.

## Target calculation policy

The first production policy should be named and versioned, for example
`nutrition-targets-v1`. Constants belong in one backend module.

### Input normalization

- Convert height to centimeters.
- Convert current and target weight to kilograms.
- Calculate age from the date-of-birth calendar date.
- Reject incomplete, non-finite, or non-positive required inputs.
- A target weight is valid for macro calculation only when:
  - loss goal: target weight is below current weight;
  - gain goal: target weight is above current weight.
- Maintenance does not require target weight.

### Calories

Use Mifflin-St Jeor:

```text
base = 10 × weightKg + 6.25 × heightCm - 5 × age

male/other BMR = base + 5
female BMR     = base - 161
TDEE           = BMR × activityMultiplier
```

Initial activity multipliers:

| Activity | Multiplier |
| --- | ---: |
| Sedentary | 1.2 |
| Lightly active | 1.375 |
| Moderately active | 1.55 |
| Very active | 1.725 |
| Extremely active | 1.9 |

Initial goal adjustment:

```text
Lose weight:     max(TDEE - 500, BMR)
Maintain weight: TDEE
Gain weight:     TDEE + 500
```

These values are policy constants, not client behavior. A later backend deploy
may change them while preserving the same API contract and policy provenance.

### Macro reference weight

```text
Maintain: currentWeightKg
Valid loss/gain target: midpoint(currentWeightKg, targetWeightKg)
Invalid or missing target: currentWeightKg
```

The midpoint prevents a distant target from causing an abrupt macro target and
ensures both current and target weight influence the split.

### Macro split

Initial policy:

```text
Protein:
  maintenance = 1.2 g × referenceWeightKg
  loss/gain   = 1.6 g × referenceWeightKg
  cap         = 35% of target calories

Fat:
  30% of target calories

Carbohydrates:
  remaining calories after protein and fat

Fiber:
  14 g per 1,000 target calories
```

Protein and carbohydrate use 4 kcal/g; fat uses 9 kcal/g. Fiber is reported as
a separate target and is not subtracted a second time from carbohydrate
calories. Round displayed grams sensibly, while retaining decimal values in the
stored snapshot.

## API design

Add an authenticated endpoint:

```text
POST /api/v1/user/profile/nutrition-targets/suggest
```

Request:

```text
NutritionTargetSuggestionRequest
  profile: UserProfile
  optional calorie_override: int32
```

Response:

```text
NutritionTargets
  calories
  protein_grams
  carbs_grams
  fat_grams
  fiber_grams
  bmr
  tdee
  current_weight_kg
  target_weight_kg
  reference_weight_kg
  source: SUGGESTED | MANUAL
  policy_version
  calculated_at
```

Use a dedicated request message rather than overloading
`UserProfile.daily_calorie_goal`. A calorie override means the backend retains
that calorie value and recalculates macros around it with source `MANUAL`.

Return a validation error for incomplete profiles. Do not return a generic
2,000 kcal fallback.

## Persistence and synchronization

Add an optional `NutritionTargets` snapshot to `UserProfile` while retaining
`daily_calorie_goal` during compatibility migration.

### App database

- Store the complete protobuf snapshot in the profile row.
- Increment the Drift schema version and add a nullable target-snapshot column.
- Update `UserProfileMapper` in both directions.
- Continue using the existing profile outbox and revision handling.
- Expose a reactive provider for the complete target snapshot.

### Backend database

- Add a nullable `nutrition_targets JSONB` column to `user_profile`.
- Accept and validate the snapshot in profile PUT/POST operations.
- Preserve POST patch semantics and PUT replacement semantics.
- Keep `daily_calorie_goal` mirrored to `NutritionTargets.calories` while old
  app versions remain supported.

The snapshot records the exact policy result the user accepted. Rendering the
home screen must not recalculate old snapshots with the latest policy.

## App behavior

### Onboarding

Near the end of onboarding:

1. Send the completed profile to the suggestion endpoint.
2. Show calories and all four macro targets.
3. Explain that values are estimates based on the supplied profile.
4. Let the user accept or continue without targets if the request fails.
5. Persist accepted targets locally; normal onboarding completion syncs them.

Do not block onboarding permanently on network availability. A failed request
leaves targets unset and the home screen should offer retry/setup rather than a
fabricated default.

### Manual calorie changes

When the user changes calories:

1. Send the profile plus `calorie_override` to the backend.
2. Receive a complete macro snapshot with source `MANUAL`.
3. Save calories and macros atomically.

This prevents calorie and macro targets from drifting out of sync.

### Profile changes

Changes to height, weight, target weight, date of birth, gender, activity, goal,
or units make the existing suggestion potentially stale.

Before saving, offer:

- `Use suggested`: fetch and save a new suggested snapshot.
- `Keep my calories`: preserve the manual calorie value and ask the backend to
  recalculate its macros.
- Cancel: return to editing.

Never silently overwrite a manual calorie target.

### Home screen

- `MacroSplit` consumes `NutritionTargets` directly.
- Daily calorie widgets continue to use the mirrored calorie goal during the
  migration, then can migrate to the snapshot.
- If targets are absent, show an empty/setup state.
- Remove fixed macro percentages and the 2,000 kcal fallback.
- Use the same snapshot for home, history reference lines, and profile display.

## Failure handling

- Suggestion timeout/server failure: keep the previous accepted snapshot.
- First-time onboarding failure: continue without targets and offer retry.
- Manual calorie update failure: do not save a calorie-only state.
- Invalid target direction: calculate macros from current weight and return a
  response flag or warning code that the client may display.
- Unknown future enum values: reject safely rather than choosing a silent
  activity or goal default.

## Analytics and observability

Track without logging raw health/profile values:

- suggestion requested/succeeded/failed;
- suggestion accepted;
- manual calorie override accepted;
- recalculation prompted/accepted/declined;
- policy version;
- validation failure category and request latency.

Backend logs must not include date of birth, weight, target weight, or the full
request body.

## Implementation sequence

### 1. Contract and backend engine

- Add protobuf request/response models and regenerate Dart/TypeScript output.
- Update the repository's pinned protoc version only if required by the chosen
  build environment; keep local and CI versions identical.
- Implement the pure backend calculation module.
- Add the authenticated suggestion endpoint and validation.
- Add focused formula, unit-conversion, target-direction, and route tests.

### 2. Persistence and sync

- Add backend JSONB migration and route persistence.
- Add Drift migration and mapper support.
- Extend profile repository methods for suggestion, manual override, and atomic
  snapshot saving.
- Test mapper round trips, migration, outbox revisions, and API serialization.

### 3. Onboarding and profile UX

- Add the onboarding target preview and acceptance path.
- Add profile-change confirmation and manual override behavior.
- Add translations through `en.i18n.json` and the repository translation
  regeneration script.
- Add focused widget tests for success, retry, missing target, and confirmation
  flows.

### 4. Home integration and verification

- Replace hardcoded macro calculations with the persisted snapshot.
- Remove the 2,000 kcal fallback.
- Verify home, history, and profile use the same target values.
- Run backend tests, Flutter unit/widget tests, analyzers, protobuf contract
  checks, and migration tests.

## Acceptance criteria

- A complete onboarding profile receives a deterministic, versioned target
  snapshot from the backend.
- `Gender.OTHER` produces the same BMR result as `Gender.MALE` for identical
  remaining inputs.
- Valid loss/gain targets use the current/target midpoint for macro protein.
- Manual calories return a newly calculated complete macro snapshot.
- No app code contains production macro policy constants.
- No Health Connect body-composition permission is added.
- Existing manual targets are never overwritten without confirmation.
- Home has no fixed macro percentages or implicit 2,000 kcal target.
- Missing network/targets produces a clear recoverable state.
- Tests are focused unit, API, persistence, and widget tests; no golden tests are
  added.
