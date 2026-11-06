package api

import (
	"context"
	"os"
	"testing"
	"time"

	"backend/internal/database"
	"backend/internal/gen_proto/api"
)

func TestGetAnalysisHistoryDataMetadata(t *testing.T) {
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

	app := &App{DB: pool}

	locale := "ja-JP"
	country := "JP"
	tz := "Asia/Tokyo"
	capturedAt := time.Date(2026, 11, 7, 10, 30, 0, 0, time.UTC)

	var id string
	insertQuery := `
	INSERT INTO meal_analysis (
		text, status, locale, country_code, timezone, local_captured_at
	) VALUES (
		'Ramen bowl', 'PRESENTED', $1, $2, $3, $4
	) RETURNING id`
	err = pool.QueryRow(ctx, insertQuery, locale, country, tz, capturedAt).Scan(&id)
	if err != nil {
		t.Fatalf("failed to insert test analysis: %v", err)
	}
	defer func() {
		_, _ = pool.Exec(context.Background(), "DELETE FROM meal_analysis WHERE id = $1", id)
	}()

	timeRange := "1D"
	status := "ALL"
	page := int32(1)
	pageSize := int32(50)
	req := &api.AnalysisHistoryRequest{
		TimeRange: &timeRange,
		Status:    &status,
		Page:      &page,
		PageSize:  &pageSize,
	}

	res, err := app.GetAnalysisHistoryData(ctx, req)
	if err != nil {
		t.Fatalf("GetAnalysisHistoryData failed: %v", err)
	}

	var found *api.AnalysisHistoryItem
	for _, item := range res.Items {
		if item.Id == id {
			found = item
			break
		}
	}

	if found == nil {
		t.Fatalf("did not find inserted item %s in history response", id)
	}

	if found.GetLocale() != locale {
		t.Errorf("expected locale %q, got %q", locale, found.GetLocale())
	}
	if found.GetCountryCode() != country {
		t.Errorf("expected country_code %q, got %q", country, found.GetCountryCode())
	}
	if found.GetTimezone() != tz {
		t.Errorf("expected timezone %q, got %q", tz, found.GetTimezone())
	}
	if found.GetLocalCapturedAt() == nil || !found.GetLocalCapturedAt().AsTime().Equal(capturedAt) {
		t.Errorf("expected local_captured_at %v, got %v", capturedAt, found.GetLocalCapturedAt())
	}
}
