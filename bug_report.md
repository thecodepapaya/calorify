# Bug Report: Proto Refactor Branch

This document contains all bugs found when comparing the `ashutosh/proto_refactor` branch with `main`.

## Critical Bugs

### 1. Type Mismatch in Sync Service
**Location:** `app/lib/core/services/sync_service.dart`

**Issue:**
- Line 37: `enqueueMealUpsert` accepts parameter of type `Meal`
- Line 162: `_buildSyncOp` tries to deserialize the payload as `LoggedMeal`

**Problem:**
When a `Meal` is enqueued for sync, it's serialized as a `Meal` proto. However, when building the sync operation, the code attempts to deserialize it as a `LoggedMeal`, which will cause a runtime error.

**Code:**
```dart
// Line 37
Future<void> enqueueMealUpsert(Meal meal) async {
  // ... serializes Meal
}

// Line 162
case SyncOpType.SYNC_OP_TYPE_UPSERT_MEAL:
  op.meal = LoggedMeal.fromBuffer(row.payload); // ❌ Wrong type!
  return op;
```

**Fix:** Either change `enqueueMealUpsert` to accept `LoggedMeal`, or change the deserialization to use `Meal.fromBuffer()` and then wrap it in a `LoggedMeal`.

---

### 2. Null Safety Bug: healthScore in meal_info_mapper.dart
**Location:** `app/lib/core/db/mappers/meal_info_mapper.dart`

**Issue:**
- Lines 79 and 104: `data.healthScore` is cast to `String` without null check, but the database column is nullable.

**Problem:**
The database schema defines `healthScore` as `TextColumn().nullable()`, meaning it can be `null`. However, the code casts it directly to `String` without checking for null first, which will cause a runtime error when `healthScore` is null.

**Code:**
```dart
// Line 78-81 (fromRow)
health: MealHealth(
  healthScore: healthScoreFromLegacyName(data.healthScore as String), // ❌ Can be null!
  healthScoreReason: data.healthScoreReason,
),

// Line 103-106 (fromDrift)
health: MealHealth(
  healthScore: healthScoreFromLegacyName(data.healthScore as String), // ❌ Can be null!
  healthScoreReason: data.healthScoreReason,
),
```

**Fix:** Add null check similar to `favorite_meal_mapper.dart`:
```dart
health: data.healthScore != null
    ? MealHealth(
        healthScore: healthScoreFromLegacyName(data.healthScore!),
        healthScoreReason: data.healthScoreReason,
      )
    : null,
```

---

### 3. Null Safety Bug: imageUrl in meal_info_mapper.dart
**Location:** `app/lib/core/db/mappers/meal_info_mapper.dart`

**Issue:**
- Line 91: `MealMetadata` is created even when `data.imageUrl` might be null
- This is inconsistent with `fromDrift` method (line 117) which properly checks for null

**Problem:**
The `fromRow` method always creates a `MealMetadata` object, even when `imageUrl` is null. This is inconsistent with the `fromDrift` method which properly handles null values.

**Code:**
```dart
// Line 90-91 (fromRow)
createdAt: dateTimeToIso8601String(data.timestamp),
metadata: MealMetadata(imageUrl: data.imageUrl), // ❌ imageUrl can be null!

// Line 116-117 (fromDrift) - Correct implementation
metadata:
    data.imageUrl != null ? MealMetadata(imageUrl: data.imageUrl) : null,
```

**Fix:** Make `fromRow` consistent with `fromDrift`:
```dart
metadata: data.imageUrl != null ? MealMetadata(imageUrl: data.imageUrl) : null,
```

---

### 4. Type Mismatch: Using `id` (int) for `clientId` (String)
**Location:** Multiple mapper files

**Issue:**
The database schema has:
- `id`: `IntColumn` (auto-increment integer) - the primary key
- `clientId`: `TextColumn` (nullable text) - the sync client ID

However, the mappers are using `data.id` (an integer) for `clientId` (which should be a String).

**Affected Files:**
- `app/lib/core/db/mappers/meal_info_mapper.dart` lines 73, 98
- `app/lib/core/db/mappers/favorite_meal_mapper.dart` lines 44, 70, 83, 111

**Problem:**
```dart
// meal_info_mapper.dart line 73
clientId: data.id, // ❌ data.id is int, but clientId should be String

// favorite_meal_mapper.dart line 44
clientId: data.id, // ❌ Same issue
```

**Fix:** Should use `data.clientId` instead of `data.id`, or convert `data.id` to String:
```dart
clientId: data.clientId ?? data.id.toString(),
```

**Note:** Need to verify if the database actually stores `clientId` in the `clientId` column or if there's a migration issue.

---

### 5. Inconsistent Null Handling in favorite_meal_mapper.dart
**Location:** `app/lib/core/db/mappers/favorite_meal_mapper.dart`

**Issue:**
- Line 92: `data.healthScore` is cast to `String` without null check
- Line 50: `fromRow` method properly checks for null before using `healthScore`

**Problem:**
The `fromDrift` method has inconsistent null handling compared to `fromRow`. Both should handle null `healthScore` the same way.

**Code:**
```dart
// Line 49-55 (fromRow) - Correct
health:
    data.healthScore != null
        ? MealHealth(
            healthScore: healthScoreFromLegacyName(data.healthScore),
            healthScoreReason: data.healthScoreReason,
          )
        : null,

// Line 88-96 (fromDrift) - Has null check but still casts
health:
    data.healthScore != null
        ? MealHealth(
            healthScore: healthScoreFromLegacyName(
              data.healthScore as String, // ❌ Unnecessary cast after null check
            ),
            healthScoreReason: data.healthScoreReason,
          )
        : null,
```

**Fix:** Remove the unnecessary cast since we already checked for null:
```dart
healthScore: healthScoreFromLegacyName(data.healthScore!),
```

---

## Summary

| Bug # | Severity | File | Line(s) | Description |
|-------|----------|------|---------|-------------|
| 1 | Critical | `sync_service.dart` | 37, 162 | Type mismatch: `Meal` vs `LoggedMeal` |
| 2 | High | `meal_info_mapper.dart` | 79, 104 | Null safety: `healthScore` cast without null check |
| 3 | Medium | `meal_info_mapper.dart` | 91 | Null safety: `imageUrl` not checked in `fromRow` |
| 4 | Critical | Multiple mappers | Various | Type mismatch: `id` (int) used for `clientId` (String) |
| 5 | Low | `favorite_meal_mapper.dart` | 92 | Unnecessary cast after null check |
| 6 | Medium | `app_database.dart` | 195, 212 | Inconsistent mapper usage (`fromRow` vs `fromDrift`) |
| 7 | High | `meal_history_screen.dart`, `app_database.dart` | 61, 307 | Pagination offset double multiplication |
| 8 | Critical | `meal_info_mapper.dart`, `app_database.dart` | 40, 225 | Using `clientId` for database `id` in upsert |
| 9 | Critical | `favorite_meals.dart`, `app_database.dart` | 200, 285-288 | Wrong ID used in `updateFavoriteLastUsedAt` |
| 10 | Low | `favorite_meals.dart` | 197 | Unused variable `newMeal` |
| 11 | Medium | `legacy_json.dart` | 39-44 | Missing null check for `health_score` |
| 12 | Medium | `mock_database_adapter.dart` | 192 | Inconsistent date handling in `watchAllMealsForLast7Days` |
| 13 | High | `meal_info_mapper.dart` | 8-34 | Missing `clientId` column population in `MealToCompanion` |
| 14 | High | `meal_history_screen.dart`, `app_database.dart` | 61, 307 | Pagination offset double multiplication (duplicate) |
| 15 | Critical | `foodAnalysis.ts`, `openAIFoodAnalysis.ts` | 118-136, 113-131 | Wrong proto field names in backend services |
| 16 | Critical | `meal_info_mapper.dart`, `app_database.dart` | 40, 225 | Using `clientId` for database `id` in upsert (duplicate) |
| 17 | Critical | `app_database.dart` | 217-220 | Missing clientId generation in logMeal |
| 18 | Critical | `sync_service.dart` | 23 | Type mismatch: generateClientId() returns String but proto expects int |
| 19 | High | `app_database.dart`, `meal_tip_sheet.dart` | 229-230, 315 | Missing sync enqueue for meal deletions |
| 20 | High | `app_database.dart`, `database_service.dart` | 217-220, 32 | Missing sync enqueue for meal logging |
| 21 | Medium | `edit_meal_screen.dart` | 264 | Invalid clientId default value (0) |
| 22 | Medium | `sync_service.dart` | 143-144 | All pending rows marked failed on single error |
| 23 | High | `meal_info_mapper.dart` | 8-34 | Missing clientId column population in MealToCompanion (duplicate) |
| 24 | Low | `sync_service.dart` | 195 | Potential integer overflow in exponential backoff |
| 25 | Medium | `sync_service.dart` | 125 | Missing error handling in sync response parsing |

**Total Bugs Found: 25** (including some duplicates that need consolidation)

## Recommendations

1. **Fix Bug #1 immediately** - This will cause sync operations to fail at runtime.
2. **Fix Bug #4** - This is a fundamental type mismatch that could cause data corruption or runtime errors.
3. **Fix Bugs #2 and #3** - These will cause crashes when reading meals with null health scores or image URLs.
4. **Fix Bug #5** - Minor cleanup for code consistency.

### 6. Inconsistent Mapper Usage in app_database.dart
**Location:** `app/lib/core/db/app_database.dart`

**Issue:**
- Line 195: `watchAllMealsForToday()` uses `MealInfoMapper.fromRow(row)`
- Line 212: `watchAllMealsForLast7Days()` uses `MealInfoMapper.fromDrift(row)`
- Line 310: `paginatedMealsHistory()` uses `MealInfoMapper.fromRow(row)`

**Problem:**
Inconsistent use of `fromRow` vs `fromDrift` methods. Both methods should handle the same data type (`MealInfoTableData`), but using different methods could lead to subtle bugs if they diverge in behavior.

**Fix:** Use the same method consistently. Since `fromRow` is the typed version and `fromDrift` is for dynamic data, prefer `fromRow` when you have typed data.

---

### 7. Missing clientId Column Population
**Location:** `app/lib/core/db/mappers/meal_info_mapper.dart` and `favorite_meal_mapper.dart`

**Issue:**
- The database schema has a `clientId` column as `TextColumn().nullable()`
- The mappers set `id: Value(clientId)` but never set the `clientId` column itself
- The `clientId` column will always be `null` in the database

**Problem:**
```dart
// meal_info_mapper.dart line 40
id: Value(clientId),  // Sets the auto-increment id field
// But clientId column is never set!
```

The `clientId` column exists in the schema but is never populated, making it useless. If the intention is to store the sync client ID separately from the database primary key, it should be set.

**Fix:** Add `clientId: Value(clientId.toString())` to the companion objects, or remove the `clientId` column if it's not needed.

---

### 8. Type Mismatch: clientId (int) vs Database clientId (String)
**Location:** Multiple mapper files

**Issue:**
- Proto defines `clientId` as `int32`
- Database defines `clientId` as `TextColumn` (String)
- Mappers use `data.id` (int) for `clientId` field in LoggedMeal/FavoriteMeal

**Problem:**
```dart
// meal_info_mapper.dart line 73
clientId: data.id,  // data.id is int, but should match proto type
```

The proto expects `clientId` to be an `int`, but the database stores it as a `String`. When reading from the database, `data.clientId` would be a `String?`, but it's being assigned to an `int` field.

**Fix:** Either:
1. Convert: `clientId: int.tryParse(data.clientId ?? '') ?? 0`
2. Or use `data.id` if that's the intended mapping (but then why have a separate `clientId` column?)

---

### 9. Wrong ID Used in updateFavoriteLastUsedAt
**Location:** `app/lib/features/home/widgets/favorite_meals.dart` and `app/lib/core/db/app_database.dart`

**Issue:**
- Line 200 in `favorite_meals.dart`: `favoriteMeal.loggedMeal.clientId` is passed to `updateFavoriteLastUsedAt`
- Line 285-288 in `app_database.dart`: `updateFavoriteLastUsedAt` uses `tbl.id.equals(favoriteMealId)`

**Problem:**
The method receives a `clientId` (from the logged meal), but uses it to query by the database `id` (auto-increment primary key). These are different values:
- `clientId` is the sync client ID (int from proto, stored as String in DB)
- `id` is the database auto-increment primary key

**Fix:** Either:
1. Pass the favorite meal's database `id` instead of the logged meal's `clientId`
2. Or change the query to use `tbl.clientId` or `tbl.sourceMealId` instead

---

### 10. Potential Null Reference in favorite_meals.dart
**Location:** `app/lib/features/home/widgets/favorite_meals.dart`

**Issue:**
- Line 197: `final newMeal = favoriteMeal.loggedMeal.deepCopy();`
- Line 198: `newMeal.clearClientId();`
- Line 199: `await logMeal(context, meal);` - uses `meal` not `newMeal.meal`

**Problem:**
The code creates `newMeal` but then doesn't use it. It uses `meal` which is `favoriteMeal.loggedMeal.meal`. This might be intentional, but the unused variable suggests a logic error.

**Fix:** Either use `newMeal.meal` or remove the unused code.

---

### 11. Missing Null Check for healthScore in legacy_json.dart
**Location:** `shared_packages/models/lib/src/legacy_json.dart`

**Issue:**
- Line 39-44: Creates `MealHealth` even when `health_score` might be null

**Problem:**
```dart
health: MealHealth(
  healthScore: healthScoreFromLegacyName(
    normalized['health_score'] as String?,  // Can be null
  ),
  healthScoreReason: normalized['health_score_reason'] as String?,
),
```

If `health_score` is null, `healthScoreFromLegacyName` might return a default value, but it's better to be explicit.

**Fix:** Add null check similar to other mappers:
```dart
health: normalized['health_score'] != null
    ? MealHealth(
        healthScore: healthScoreFromLegacyName(normalized['health_score'] as String),
        healthScoreReason: normalized['health_score_reason'] as String?,
      )
    : null,
```

---

### 12. Inconsistent Date Handling in watchAllMealsForLast7Days
**Location:** `app/lib/core/db/mock_database_adapter.dart`

**Issue:**
- Line 192: Uses `now.subtract(const Duration(days: 7))` 
- But `app_database.dart` line 202 uses `now.subtract(const Duration(days: 6))`

**Problem:**
The real database adapter uses "last 7 days" as 6 days ago to today (7 days total), but the mock adapter uses 7 days ago, which would be 8 days total. This inconsistency could cause different behavior between mock and real data.

**Fix:** Make them consistent - use `days: 6` in mock adapter to match real adapter.

---

### 13. Missing clientId in MealToCompanion Extension
**Location:** `app/lib/core/db/mappers/meal_info_mapper.dart`

**Issue:**
- `MealToCompanion.toCompanion()` accepts `clientId` parameter but doesn't set the `clientId` column
- Only sets the `id` field

**Problem:**
```dart
MealInfoTableCompanion toCompanion({
  int? clientId,  // Parameter exists
  // ...
}) {
  return MealInfoTableCompanion(
    id: clientId != null ? Value(clientId) : const Value.absent(),
    // clientId column is never set!
  );
}
```

**Fix:** Add `clientId: clientId != null ? Value(clientId.toString()) : const Value.absent(),`

---

### 14. Pagination Offset Calculation Issue
**Location:** `app/lib/features/history/meal_history_screen.dart` and `app/lib/core/db/app_database.dart`

**Issue:**
- Line 61 in `meal_history_screen.dart`: `offset: currentPage * _mealsPerPage`
- Line 307 in `app_database.dart`: `..limit(mealsPerPage, offset: offset * mealsPerPage)`

**Problem:**
The pagination calculation is incorrect. In `meal_history_screen.dart`, the offset is calculated as `currentPage * _mealsPerPage`, but then in `app_database.dart`, it's multiplied again by `mealsPerPage`:
```dart
// meal_history_screen.dart line 61
offset: currentPage * _mealsPerPage  // e.g., page 0 = 0, page 1 = 30

// app_database.dart line 307
..limit(mealsPerPage, offset: offset * mealsPerPage)  // e.g., offset 30 * 30 = 900!
```

This double multiplication will cause incorrect pagination - page 1 will skip 900 records instead of 30.

**Fix:** Remove the multiplication in `app_database.dart`:
```dart
..limit(mealsPerPage, offset: offset)
```

---

### 15. Backend Services Using Wrong Proto Field Names
**Location:** `backend/src/services/foodAnalysis.ts` and `openAIFoodAnalysis.ts`

**Issue:**
The backend services are building `Meal` objects using old field names that don't match the new proto structure.

**Problem:**
```typescript
// foodAnalysis.ts line 118-130 - WRONG structure
const mealInfo: Meal = {
  mealName: resultDict.meal_info.meal_name,  // ❌ Should be 'name'
  mealQuantity: resultDict.meal_info.meal_quantity ?? '',  // ❌ Should be 'quantity'
  mealType: this.parseMealType(resultDict.meal_info.meal_type),
  calories: resultDict.meal_info.calories,  // ❌ Should be in 'macros' object
  protein: resultDict.meal_info.protein,  // ❌ Should be in 'macros' object
  carbs: resultDict.meal_info.carbs,  // ❌ Should be in 'macros' object
  fat: resultDict.meal_info.fat,  // ❌ Should be in 'macros' object
  fiber: resultDict.meal_info.fiber,  // ❌ Should be in 'macros' object
  timestamp: Date.now(),  // ❌ Field doesn't exist in Meal proto
  healthScore: this.parseHealthScore(...),  // ❌ Should be in 'health' object
  healthScoreReason: resultDict.meal_info.health_score_reason,  // ❌ Should be in 'health' object
};

// Line 136 - WRONG field name
mealInfo,  // ❌ Should be 'meal' not 'mealInfo'
```

**Correct Structure:**
```typescript
const meal: Meal = {
  name: resultDict.meal_info.meal_name,
  quantity: resultDict.meal_info.meal_quantity ?? '',
  type: this.parseMealType(resultDict.meal_info.meal_type),
  macros: {
    calories: resultDict.meal_info.calories,
    protein: resultDict.meal_info.protein,
    carbs: resultDict.meal_info.carbs,
    fat: resultDict.meal_info.fat,
    fiber: resultDict.meal_info.fiber,
  },
  health: {
    healthScore: this.parseHealthScore(resultDict.meal_info.health_score),
    healthScoreReason: resultDict.meal_info.health_score_reason,
  },
};

const result: MealDetectionResult = {
  mealIdentified: resultDict.meal_identified,
  calorieConfidence: resultDict.calorie_confidence,
  tip: resultDict.tip,
  meal,  // ✅ Correct field name
};
```

**Fix:** Update both `foodAnalysis.ts` and `openAIFoodAnalysis.ts` to use the correct proto structure.

---

### 16. Potential Upsert Conflict: Using clientId for Database id
**Location:** `app/lib/core/db/mappers/meal_info_mapper.dart` and `app_database.dart`

**Issue:**
- `LoggedMeal.toCompanion()` sets `id: Value(clientId)` where `clientId` is an int
- `upsertMeal` uses `insertOnConflictUpdate` which will conflict on the `id` field
- If a meal with the same `clientId` but different database `id` exists, it will create a duplicate instead of updating

**Problem:**
```dart
// meal_info_mapper.dart line 40
id: Value(clientId),  // Uses clientId as the database id

// app_database.dart line 225
return into(mealInfoTable).insertOnConflictUpdate(mealInfo.toCompanion());
```

The `id` field is the auto-increment primary key. Using `clientId` (which is a sync identifier) as the database `id` means:
1. If `clientId` doesn't match any existing `id`, a new row is created
2. If `clientId` matches an existing `id`, that row is updated
3. But `clientId` should be stored in the `clientId` column, not the `id` column

**Fix:** 
- Don't set `id` when upserting - let the database handle it or use a proper conflict resolution
- Store `clientId` in the `clientId` column
- Use `clientId` for conflict resolution, not `id`

---

## Summary

| Bug # | Severity | File | Line(s) | Description |
|-------|----------|------|---------|-------------|
| 1 | Critical | `sync_service.dart` | 37, 162 | Type mismatch: `Meal` vs `LoggedMeal` |
| 2 | High | `meal_info_mapper.dart` | 79, 104 | Null safety: `healthScore` cast without null check |
| 3 | Medium | `meal_info_mapper.dart` | 91 | Null safety: `imageUrl` not checked in `fromRow` |
| 4 | Critical | Multiple mappers | Various | Type mismatch: `id` (int) used for `clientId` (String) |
| 5 | Low | `favorite_meal_mapper.dart` | 92 | Unnecessary cast after null check |
| 6 | Medium | `app_database.dart` | 195, 212 | Inconsistent mapper usage (`fromRow` vs `fromDrift`) |
| 7 | High | Multiple mappers | Various | Missing `clientId` column population |
| 8 | Critical | Multiple mappers | Various | Type mismatch: `clientId` int vs String |
| 9 | High | `favorite_meals.dart`, `app_database.dart` | 200, 285 | Wrong ID used in `updateFavoriteLastUsedAt` |
| 10 | Low | `favorite_meals.dart` | 197-199 | Unused variable `newMeal` |
| 11 | Medium | `legacy_json.dart` | 39-44 | Missing null check for `health_score` |
| 12 | Low | `mock_database_adapter.dart` | 192 | Inconsistent date range calculation |
| 13 | Medium | `meal_info_mapper.dart` | 8-33 | Missing `clientId` column in `toCompanion` |
| 14 | High | `meal_history_screen.dart`, `app_database.dart` | 61, 307 | Pagination offset double multiplication |
| 15 | Critical | `foodAnalysis.ts`, `openAIFoodAnalysis.ts` | 118-136, 113-131 | Wrong proto field names in backend services |
| 16 | Critical | `meal_info_mapper.dart`, `app_database.dart` | 40, 225 | Using `clientId` for database `id` in upsert |
| 17 | Critical | `app_database.dart` | 217-220 | Missing clientId generation in logMeal |
| 18 | Critical | `sync_service.dart` | 23 | Type mismatch: generateClientId() returns String but proto expects int |
| 19 | High | `app_database.dart`, `meal_tip_sheet.dart` | 229-230, 315 | Missing sync enqueue for meal deletions |
| 20 | High | `app_database.dart`, `database_service.dart` | 217-220, 32 | Missing sync enqueue for meal logging |
| 21 | Medium | `edit_meal_screen.dart` | 264 | Invalid clientId default value (0) |
| 22 | Medium | `sync_service.dart` | 143-144 | All pending rows marked failed on single error |
| 23 | High | `meal_info_mapper.dart` | 8-34 | Missing clientId column population in MealToCompanion |
| 24 | Low | `sync_service.dart` | 195 | Potential integer overflow in exponential backoff |
| 25 | Medium | `sync_service.dart` | 125 | Missing error handling in sync response parsing |
| 17 | Critical | `app_database.dart` | 217-220 | Missing clientId generation in logMeal |
| 18 | Critical | `sync_service.dart` | 23 | Type mismatch: generateClientId() returns String but proto expects int |
| 19 | High | `app_database.dart`, `meal_tip_sheet.dart` | 229-230, 315 | Missing sync enqueue for meal deletions |
| 20 | High | `app_database.dart`, `database_service.dart` | 217-220, 32 | Missing sync enqueue for meal logging |
| 21 | Medium | `edit_meal_screen.dart` | 264 | Invalid clientId default value (0) |
| 22 | Medium | `sync_service.dart` | 143-144 | All pending rows marked failed on single error |
| 23 | High | `meal_info_mapper.dart` | 8-34 | Missing clientId column population in MealToCompanion |
| 24 | Low | `sync_service.dart` | 195 | Potential integer overflow in exponential backoff |
| 25 | Medium | `sync_service.dart` | 125 | Missing error handling in sync response parsing |

## Testing Recommendations

After fixing these bugs, test:
1. Syncing meals to the server (Bug #1)
2. Reading meals from database with null `healthScore` (Bugs #2, #11)
3. Reading meals from database with null `imageUrl` (Bug #3)
4. Verifying `clientId` is correctly stored and retrieved (Bugs #4, #7, #8, #13)
5. Updating favorite meal last used time (Bug #9)
6. Consistency between mock and real database adapters (Bug #12)
7. All mapper methods return consistent results (Bug #6)
8. Pagination works correctly across all pages (Bug #14)
9. Backend services return correctly structured proto messages (Bug #15)
10. Upsert operations correctly handle existing meals (Bug #16)
11. Meals have valid clientIds for sync operations (Bugs #17, #18, #21, #23)
12. Meal deletions are synced to the server (Bug #19)
13. Meal logging triggers sync operations (Bug #20)
14. Sync error handling is robust and doesn't affect unrelated operations (Bugs #22, #25)
15. Exponential backoff doesn't overflow (Bug #24)
