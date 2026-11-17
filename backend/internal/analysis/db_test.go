package analysis

import (
	"context"
	"os"
	"testing"
	"time"

	"backend/internal/database"
	"backend/internal/gen_proto/api"

	"google.golang.org/protobuf/types/known/timestamppb"
)

func TestCreateNewAnalysisMetadata(t *testing.T) {
	dbURL := os.Getenv("DATABASE_URL")
	if dbURL == "" {
		dbURL = "postgres://user:password@localhost:5434/calorify_db_dev?sslmode=disable"
	}

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	pool, err := database.Connect(ctx, dbURL)
	if err != nil {
		t.Skipf("Skipping test: Calorify DB not reachable at %s: %v", dbURL, err)
	}
	defer pool.Close()

	svc := &Service{DB: pool}

	testUID := "test_user_metadata"
	_, err = pool.Exec(ctx, "INSERT INTO users (uid, name) VALUES ($1, 'Test User') ON CONFLICT (uid) DO NOTHING", testUID)
	if err != nil {
		t.Fatalf("failed to insert test user: %v", err)
	}
	defer func() {
		_, _ = pool.Exec(context.Background(), "DELETE FROM users WHERE uid = $1", testUID)
	}()

	locale := "fr-FR"
	country := "FR"
	tz := "Europe/Paris"
	now := time.Now().Truncate(time.Microsecond)
	ts := timestamppb.New(now)

	meta := &api.MetaInfo{
		Locale:      &locale,
		CountryCode: &country,
		Timezone:    &tz,
		Timestamp:   ts,
	}

	id, err := svc.CreateNewAnalysis(ctx, testUID, "Croissant et café", "", meta)
	if err != nil {
		t.Fatalf("failed to create new analysis with metadata: %v", err)
	}
	defer func() {
		_, _ = pool.Exec(context.Background(), "DELETE FROM meal_analysis WHERE id = $1", id)
	}()

	var dbLocale, dbCountry, dbTz *string
	var dbCapturedAt *time.Time
	query := `SELECT locale, country_code, timezone, local_captured_at FROM meal_analysis WHERE id = $1`
	err = pool.QueryRow(ctx, query, id).Scan(&dbLocale, &dbCountry, &dbTz, &dbCapturedAt)
	if err != nil {
		t.Fatalf("failed to query inserted row: %v", err)
	}

	if dbLocale == nil || *dbLocale != locale {
		t.Errorf("expected locale %q, got %v", locale, dbLocale)
	}
	if dbCountry == nil || *dbCountry != country {
		t.Errorf("expected country_code %q, got %v", country, dbCountry)
	}
	if dbTz == nil || *dbTz != tz {
		t.Errorf("expected timezone %q, got %v", tz, dbTz)
	}
	if dbCapturedAt == nil || !dbCapturedAt.Equal(now) {
		t.Errorf("expected local_captured_at %v, got %v", now, dbCapturedAt)
	}
}

func TestSaveLlmCallRecord(t *testing.T) {
	dbURL := os.Getenv("DATABASE_URL")
	if dbURL == "" {
		dbURL = "postgres://user:password@localhost:5434/calorify_db_dev?sslmode=disable"
	}

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	pool, err := database.Connect(ctx, dbURL)
	if err != nil {
		t.Skipf("Skipping test: Calorify DB not reachable at %s: %v", dbURL, err)
	}
	defer pool.Close()

	svc := &Service{DB: pool}

	testUID := "test_user_llm_call"
	_, err = pool.Exec(ctx, "INSERT INTO users (uid, name) VALUES ($1, 'Test User') ON CONFLICT (uid) DO NOTHING", testUID)
	if err != nil {
		t.Fatalf("failed to insert test user: %v", err)
	}
	defer func() {
		_, _ = pool.Exec(context.Background(), "DELETE FROM users WHERE uid = $1", testUID)
	}()

	id, err := svc.CreateNewAnalysis(ctx, testUID, "test meal", "", nil)
	if err != nil {
		t.Fatalf("failed to create analysis: %v", err)
	}
	defer func() {
		_, _ = pool.Exec(context.Background(), "DELETE FROM meal_analysis WHERE id = $1", id)
	}()

	componentID := int32(3)
	promptTokens := int64(120)
	cachedTokens := int64(0)
	completionTokens := int64(80)
	errText := "boom"
	reasoningTokens := int64(32)
	reasoningEffort := "none"
	finishReason := "stop"
	responseModel := "test-model-2026-01-01"
	serviceTier := "default"

	svc.saveLlmCallRecord(ctx, &api.LlmCallRecord{
		AnalysisId:       &id,
		Stage:            api.LlmCallRecord_PASS_2,
		Model:            "test-model",
		ComponentId:      &componentID,
		PromptTokens:     &promptTokens,
		CachedTokens:     &cachedTokens,
		CompletionTokens: &completionTokens,
		DurationMs:       1234,
		Error:            &errText,
		ReasoningTokens:  &reasoningTokens,
		ReasoningEffort:  &reasoningEffort,
		FinishReason:     &finishReason,
		ResponseModel:    &responseModel,
		ServiceTier:      &serviceTier,
	})
	svc.saveLlmCallRecord(ctx, &api.LlmCallRecord{
		AnalysisId: &id,
		Stage:      api.LlmCallRecord_PASS_1,
		Model:      "test-model",
		DurationMs: 500,
	})

	var stage, model string
	var dbComponentID *int32
	var dbPrompt, dbCached, dbCompletion *int64
	var durationMs int64
	var dbErr *string
	err = pool.QueryRow(ctx, `
		SELECT stage, model, component_id, prompt_tokens, cached_tokens, completion_tokens, duration_ms, error
		FROM llm_call WHERE analysis_id = $1 AND stage = 'PASS_2'`, id).
		Scan(&stage, &model, &dbComponentID, &dbPrompt, &dbCached, &dbCompletion, &durationMs, &dbErr)
	if err != nil {
		t.Fatalf("failed to query PASS_2 llm_call row: %v", err)
	}

	if stage != "PASS_2" || model != "test-model" {
		t.Errorf("unexpected stage/model: %q/%q", stage, model)
	}
	if dbComponentID == nil || *dbComponentID != componentID {
		t.Errorf("expected component_id %d, got %v", componentID, dbComponentID)
	}
	if dbPrompt == nil || *dbPrompt != promptTokens || dbCompletion == nil || *dbCompletion != completionTokens {
		t.Errorf("unexpected tokens: prompt=%v completion=%v", dbPrompt, dbCompletion)
	}
	if durationMs != 1234 {
		t.Errorf("expected duration 1234, got %d", durationMs)
	}
	if dbErr == nil || *dbErr != errText {
		t.Errorf("expected error %q, got %v", errText, dbErr)
	}

	var dbReasoning *int64
	var dbEffort, dbFinish, dbRespModel, dbTier *string
	err = pool.QueryRow(ctx, `
		SELECT reasoning_tokens, reasoning_effort, finish_reason, response_model, service_tier
		FROM llm_call WHERE analysis_id = $1 AND stage = 'PASS_2'`, id).
		Scan(&dbReasoning, &dbEffort, &dbFinish, &dbRespModel, &dbTier)
	if err != nil {
		t.Fatalf("failed to query PASS_2 llm_call metadata: %v", err)
	}
	if dbReasoning == nil || *dbReasoning != reasoningTokens {
		t.Errorf("expected reasoning_tokens %d, got %v", reasoningTokens, dbReasoning)
	}
	if dbEffort == nil || *dbEffort != reasoningEffort || dbFinish == nil || *dbFinish != finishReason {
		t.Errorf("unexpected reasoning_effort/finish_reason: %v/%v", dbEffort, dbFinish)
	}
	if dbRespModel == nil || *dbRespModel != responseModel || dbTier == nil || *dbTier != serviceTier {
		t.Errorf("unexpected response_model/service_tier: %v/%v", dbRespModel, dbTier)
	}

	var pass1Reasoning *int64
	err = pool.QueryRow(ctx, `SELECT reasoning_tokens FROM llm_call WHERE analysis_id = $1 AND stage = 'PASS_1'`, id).Scan(&pass1Reasoning)
	if err != nil {
		t.Fatalf("failed to query PASS_1 reasoning_tokens: %v", err)
	}
	if pass1Reasoning != nil {
		t.Errorf("expected PASS_1 reasoning_tokens NULL when unset, got %v", *pass1Reasoning)
	}

	var pass1ComponentID *int32
	err = pool.QueryRow(ctx, `SELECT component_id FROM llm_call WHERE analysis_id = $1 AND stage = 'PASS_1'`, id).Scan(&pass1ComponentID)
	if err != nil {
		t.Fatalf("failed to query PASS_1 llm_call row: %v", err)
	}
	if pass1ComponentID != nil {
		t.Errorf("expected PASS_1 component_id NULL, got %v", *pass1ComponentID)
	}
}
