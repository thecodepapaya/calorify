# Backend Changes Changelog

## Schema Synchronization System

**Problem**: API documentation could become outdated when proto definitions changed.

**Solution**: Centralized schema generator ensures API docs stay in sync with proto definitions.

**Files**: `src/utils/schema-generator.ts`, `src/utils/validate-schemas.ts`, `SCHEMA_SYNC.md`

**Features**: Single source of truth, automatic updates, validation script (`npm run validate-schemas`)

See [SCHEMA_SYNC.md](./SCHEMA_SYNC.md) for details.

---

## New API Endpoints

### POST `/api/v1/food/detect-image`
- Detect meal from image URL (OpenAI)
- Request: `{ "imageUrl": "https://...", "mimeType": "image/jpeg" }`
- Response: `MealDetectionResponse` with `result` and `variations`
- Single LLM call, variations when confidence is LOW/MEDIUM

### POST `/api/v1/food/detect-text`
- Detect meal from text description (OpenAI)
- Request: `{ "textDescription": "grilled chicken with rice" }`
- Response: Same as `/detect-image`
- Single LLM call, clarifications when confidence is LOW/MEDIUM

**Note**: Authentication currently disabled on all endpoints.

---

## Service Updates

### OpenAI Food Analysis Service
- Updated `SYSTEM_PROMPT` to match proto schema exactly
- `calorie_confidence` is enum string ("LOW", "MEDIUM", "HIGH", "UNSPECIFIED")
- New: `analyzeTextDescription()` method
- Updated: `analyzeImageFromUrl()` returns `MealDetectionResponse`
- Enhanced validation: Required fields, integer rounding, variation structure

### Food Analysis Service
- Fixed imports to use correct proto file paths
- Maps calorie confidence number (0-100) to enum (LOW/MEDIUM/HIGH)
- Enhanced validation and integer rounding

---

## Authentication Changes

**Status**: Temporarily disabled on all endpoints

**Changes**: Commented out `preHandler: [authenticateUser]` and `getCurrentUserId()` calls

**To Re-enable**: Uncomment auth middleware, remove placeholder user IDs

---

## Sync Service Removal

**Status**: Disabled in app

**Changes**: Commented out `SyncService.instance.initialize()` in app initialization

---

## Testing & Scripts

- `npm run validate-schemas` - Validate OpenAPI schemas match proto definitions
- `npm run test:openai-key` - Test OpenAI API key (if script exists)

---

## Configuration

**New Environment Variables**:
- `OPENAI_API_KEY` - Required for new endpoints
- `GOOGLE_API_KEY` - Still used for legacy endpoints

---

## Migration Guide

### For Developers

**Adding New Endpoints**: Use schema generator functions, run `npm run validate-schemas` before committing

**When Protos Change**:
1. Regenerate types: `cd ../scripts && ./generate_protos.sh`
2. Update schema generator functions
3. Run validation: `npm run validate-schemas`
4. Routes automatically update

**Re-enabling Authentication**: Uncomment `preHandler: [authenticateUser]` and `getCurrentUserId()` calls

### For API Consumers

**New Endpoints**: `/api/v1/food/detect-image`, `/api/v1/food/detect-text`

**Response Format**: `MealDetectionResponse` with `result` and `variations`. `calorieConfidence` is enum string.

**Authentication**: Currently disabled (no auth headers needed)

---

## Breaking Changes

None - new endpoints are additive. Legacy endpoints unchanged.

---

## Files Modified

**Backend**:
- `src/routes/v1/food.ts` - New endpoints, updated schemas, disabled auth
- `src/routes/v1/user.ts` - Disabled auth
- `src/services/openAIFoodAnalysis.ts` - Updated prompt, new methods, validation
- `src/services/foodAnalysis.ts` - Fixed imports, updated structure
- `src/utils/schema-generator.ts` - **NEW**
- `src/utils/validate-schemas.ts` - **NEW**
- `package.json` - Added validation script

**App**:
- `app/lib/core/services/app_initialization.dart` - Disabled sync service
- `app/lib/core/services/sync_service.dart` - Disabled initialize method

---

## Notes

- Authentication temporarily disabled for testing
- Sync service disabled but code remains
- Schema generator ensures documentation stays accurate
- New endpoints use OpenAI (not Gemini)
- Single LLM call per request (includes variations when needed)
