# Suggested calorie and macro targets

Status: implementation plan  
Owner: backend policy with app review and persistence

## Objective and scope

Provide a deterministic, versioned suggestion for daily calories, protein,
carbohydrates, fat, and fiber from the onboarding profile. Suggestions are
informational and user-reviewable; they never silently replace a manual target.

Use height, current weight, target weight, date of birth, gender, activity,
weight goal, and units already collected by onboarding. Do not read body
composition from Health Connect, add adaptive tuning from history, or put policy
constants in client code.

## Policy v1

Normalize height to centimeters and weights to kilograms. Calculate age from the
date-of-birth calendar date. Reject incomplete, non-finite, or non-positive
required values. A loss target must be below current weight; a gain target must
be above it. Maintenance does not require a target weight.

```text
base = 10 × weightKg + 6.25 × heightCm - 5 × age
male/other BMR = base + 5
female BMR     = base - 161
TDEE           = BMR × activity multiplier
```

| Activity | Multiplier |
| --- | ---: |
| Sedentary | 1.2 |
| Lightly active | 1.375 |
| Moderately active | 1.55 |
| Very active | 1.725 |
| Extremely active | 1.9 |

Calories are `max(TDEE - 500, BMR)` for loss, `TDEE` for maintenance, and
`TDEE + 500` for gain. The reference weight is current weight for maintenance,
otherwise the midpoint of current and valid target weight (current weight when
the target is missing or invalid).

Protein is `1.2 g × reference weight` for maintenance and `1.6 g × reference
weight` for loss/gain, capped at 35% of target calories. Fat is 30% of target
calories. Carbohydrates use the remaining calories. Fiber is 14 g per 1,000
target calories. Protein and carbs use 4 kcal/g; fat uses 9 kcal/g. Store exact
decimal values in the snapshot and round only for display.

## Contract and persistence

Add an authenticated endpoint:

```text
POST /api/v1/user/profile/nutrition-targets/suggest
```

The request contains a `UserProfile` and an optional `calorie_override`. The
response contains calories, all four macro targets, BMR, TDEE, current/target/
reference weights, `SUGGESTED` or `MANUAL` source, policy version, and timestamp.
Invalid profiles return validation errors; there is no generic 2,000 kcal
fallback. An override returns a complete `MANUAL` snapshot, not calories alone.

Persist the optional snapshot in the app profile row and backend `user_profile`
JSONB column. Retain `daily_calorie_goal` during compatibility migration and
mirror it to snapshot calories for older clients. Preserve profile outbox,
revision, PUT/POST semantics, mapper round trips, and atomic calorie/macro saves.
Historical snapshots are never recalculated under a newer policy.

## User behavior

- Near onboarding completion, request and preview the suggestion. Accepting it
  stores the snapshot; a failed request lets onboarding continue without targets.
- Changing calories calls the same endpoint with an override and saves the full
  returned snapshot atomically.
- Changes to any relevant profile field prompt the user to use a new suggestion,
  keep manual calories with recalculated macros, or cancel. Never overwrite a
  manual target silently.
- Home, history reference lines, and profile display read the same snapshot.
  Missing targets show a recoverable setup state.

## Verification

Cover formula, units, age, target direction, gender equivalence, override,
validation, API serialization, database/Drift migrations, mapper round trips,
outbox revisions, onboarding retry, profile confirmation, and home rendering.
Run backend checks, Flutter tests/analyzers, protobuf checks, and migration
tests. Do not add golden tests.

Log only event names, policy version, validation category, and latency. Never
log date of birth, weights, or request bodies.
