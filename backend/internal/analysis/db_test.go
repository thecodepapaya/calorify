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
