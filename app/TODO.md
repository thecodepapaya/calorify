# App Roadmap & Pruned Features Status

This document tracks features and protobuf contracts that have been pruned or disabled during the consolidation of `protos_go` and `protos` into the unified `protos/` directory. These features will be re-designed and re-enabled once the Go backend stabilizes.

---

## 1. Pruned / Temporarily Disabled Features

### 1.1 Offline Batch Synchronization (`protos/app/sync.proto`)
- **Pruned Messages**: `SyncOp`, `SyncBatch`, `SyncResult`, `SyncAck`, `SyncOpType` (`UPSERT_MEAL`, `DELETE_MEAL`, `UPSERT_PROFILE`, `FCM_TOKEN`).
- **Previous Implementation**: Client queued local mutations into a durable SQLite sync queue, and `meal_log_sync_service.dart` drained batches over `/api/v1/sync`.
- **Current State**: Disabled. Mobile directly logs/deletes meals via `POST /users/meals` and `DELETE /users/meals/{meal_id}`, and updates profile via `POST /users/health-data`.
- **To Re-enable**:
  - Author a unified sync proto under `protos/app/sync.proto`.
  - Implement batch sync receiver in `backend/internal/api/sync.go`.
  - Wire sync worker in Flutter `app/calorify/lib/core/services/`.

### 1.2 Daily AI Nutrition Summary & Coaching (`protos/calorify/ai_meal_summary_trend.proto`)
- **Pruned Messages**: `AiMealSummaryResponse`, `AiMealSummarySnapshot`, `AiMealSummaryTrend`, `AiSummaryLanguage`.
- **Previous Implementation**: `BackendAiSummaryGenerator` sent daily food snapshots to `/api/v1/food/ai-summary/generate`.
- **Current State**: Disabled. Endpoint `POST /users/ai-summary/generate` is on the roadmap (`backend/TODO.md:65`).
- **To Re-enable**:
  - Define `DailySummaryRequest` and `DailySummaryResponse` in `protos/api/`.
  - Implement rolling 7-day nutritional stats engine in `backend`.
  - Reconnect `aiSummaryGeneratorProvider` in Flutter.

### 1.3 Legacy HTTP API & NDJSON Streaming Contracts (`protos/calorify/http_api.proto`)
- **Pruned Messages**: `V3AnalyzeRequest`, `V3AnalysisProgress`, `V3AnalysisResponse`, `V3ResumeRequest`, `V3FoodFeedbackRequest`.
- **Previous Implementation**: Fastify-specific REST routes with NDJSON event streaming (`STARTED`, `PROGRESS`, `NEEDS_INPUT`, `COMPLETE`, `ERROR`).
- **Current State**: Superseded. Analysis intake uses `POST /users/meals/analysis` with `MealAnalysisRequest` / `MealAnalysisResponse` (`protos/api/meal_api.proto`), and progress is checked by polling `GET /users/meals/analysis/{analysis_id}` with `MealAnalysisStatus` (`protos/server/analysis.proto`).

### 1.4 LangGraph Pipeline Session State Machine (`protos/calorify/meal_analysis_pipeline.proto`)
- **Pruned Messages**: `MealAnalysisPipelineSessionContext`, `PipelineResultData`, session stage leases, decomposition stages.
- **Previous Implementation**: Node.js LangGraph state-graph checkpoints and session serialization.
- **Current State**: Superseded. Native Go pipeline stages (`decomposeComponents` -> `decomposeIngredients` -> `enrichUsdaMacro` -> `prepareFinalResponse`) run asynchronously in background goroutines in `backend/internal/analysis`.

### 1.5 Legacy Meal Detection & Food Recognition Data Contracts (`protos/calorify/meal_detection.proto`)
- **Pruned Messages**: `MealDetectionResult`, `DetectedFoodItem`, `SegmentedRegion`, `VisualConfidence`.
- **Previous Implementation**: Bounding boxes and confidence scores from older v1/v2 image detection endpoints.
- **Current State**: Superseded by 2-pass structured LLM decomposition and USDA vector search in the Go backend.

### 1.6 Device Token Registration (`protos/calorify/common.proto`)
- **Pruned Messages**: `FcmToken`, `DeviceId`, `PlatformInfo`.
- **Current State**: Partially superseded by `protos/server/notifications.proto` (`Fcm`) and `protos/api/user_api.proto` (`UpdateFcmTokenRequest`). Endpoint `POST /users/fcm-token` is pending implementation in `backend`.

### 1.7 Monolithic Meal & User Profile Models (`protos/meal/meal.proto` & `protos/user/user.proto`)
- **Pruned Messages**: Legacy `meal.Meal`, `MealMacro`, `MealHealth`, `user.UserProfile`.
- **Current State**: Normalized into:
  - `protos/common/meal.proto`: `common.Meal`, `common.Macros`, `common.Measurement`, `common.MealHealth`.
  - `protos/common/user.proto`: `common.User`, `common.HealthData`, `Height`, `Weight`, `Gender`, `WeightGoal`, `ActivityLevel`.
  - `protos/app/meal.proto`: `app.LoggedMeal`, `app.FavoriteMeal`.

---

## 2. Next Steps to Re-enable Features
1. **Clarification Workflow**:
   - Once `backend` implements clarification question generation and submission (`POST /users/meals/analysis/{analysis_id}/answers`), enable interactive question sheets in `meal_analysis_v3_flow.dart`.
2. **Meal History CSV Export**:
   - Once `backend` implements `GET /users/meals/export`, enable `exportMealHistoryCsv` in settings.
3. **Daily Nutrition Summary**:
   - Re-enable AI summary cards on the home screen when backend advisory locking and OpenAI summary prompts are merged.

