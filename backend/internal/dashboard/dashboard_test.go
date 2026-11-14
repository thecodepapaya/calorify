package dashboard

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"context"
	"errors"
	"net/http"
	"net/http/httptest"
	"os"
	"strings"
	"testing"
	"time"

	"google.golang.org/protobuf/types/known/timestamppb"
)

type mockHistoryProvider struct {
	res *api.AnalysisHistoryResponse
	err error
}

func (m *mockHistoryProvider) GetAnalysisHistoryData(ctx context.Context, req *api.AnalysisHistoryRequest) (*api.AnalysisHistoryResponse, error) {
	return m.res, m.err
}

type mockImageProvider struct {
	img   []byte
	found bool
	err   error
}

func (m *mockImageProvider) GetAnalysisImage(ctx context.Context, id string) ([]byte, bool, error) {
	return m.img, m.found, m.err
}

func TestImageHandler(t *testing.T) {
	t.Run("serves stored webp", func(t *testing.T) {
		provider := &mockImageProvider{img: []byte{0x52, 0x49, 0x46, 0x46}, found: true}
		req := httptest.NewRequest(http.MethodGet, "/analysis-history/image/abc", nil)
		req.SetPathValue("analysis_id", "abc")
		rec := httptest.NewRecorder()

		ImageHandler(provider)(rec, req)

		if rec.Code != http.StatusOK {
			t.Fatalf("expected 200 OK, got %d", rec.Code)
		}
		if got := rec.Header().Get("Content-Type"); got != "image/webp" {
			t.Errorf("expected image/webp content type, got %q", got)
		}
		if rec.Body.Len() != 4 {
			t.Errorf("expected 4 image bytes, got %d", rec.Body.Len())
		}
	})

	t.Run("404 when no image", func(t *testing.T) {
		provider := &mockImageProvider{found: false}
		req := httptest.NewRequest(http.MethodGet, "/analysis-history/image/abc", nil)
		req.SetPathValue("analysis_id", "abc")
		rec := httptest.NewRecorder()

		ImageHandler(provider)(rec, req)

		if rec.Code != http.StatusNotFound {
			t.Fatalf("expected 404, got %d", rec.Code)
		}
	})

	t.Run("500 on provider error", func(t *testing.T) {
		provider := &mockImageProvider{err: errors.New("db down")}
		req := httptest.NewRequest(http.MethodGet, "/analysis-history/image/abc", nil)
		req.SetPathValue("analysis_id", "abc")
		rec := httptest.NewRecorder()

		ImageHandler(provider)(rec, req)

		if rec.Code != http.StatusInternalServerError {
			t.Fatalf("expected 500, got %d", rec.Code)
		}
	})
}

func TestDashboardHandler(t *testing.T) {
	durP1 := 2.45
	durP2 := 1.83
	durUsda := 0.95
	durFinal := 0.42
	totalDur := 5.65

	p1Time := "15:04:05"
	p2Time := "15:04:07"
	usdaTime := "15:04:08"
	finalTime := "15:04:08"

	sampleLocale := "en-US"
	sampleCountry := "US"
	sampleTz := "America/New_York"
	sampleCaptured := timestamppb.New(time.Date(2026, 11, 6, 9, 58, 0, 0, time.UTC))
	sampleLiked := true
	finalTip := "Pair rotis with dal for complete protein"
	mk := func(v, min, max int32) *common.Measurement {
		return &common.Measurement{Value: v, MinValue: min, MaxValue: max}
	}

	sampleItem := &api.AnalysisHistoryItem{
		Id:               "f47ac10b-58cc-4372-a567-0e02b2c3d479",
		UserUid:          "user_12345678",
		CreatedAt:        timestamppb.New(time.Date(2026, 11, 6, 14, 0, 0, 0, time.UTC)),
		UpdatedAt:        timestamppb.New(time.Date(2026, 11, 6, 14, 0, 7, 0, time.UTC)),
		Status:           "PRESENTED",
		Text:             "2 rotis with dal and salad",
		HasImage:         true,
		TotalDurationSec: &totalDur,
		Locale:           &sampleLocale,
		CountryCode:      &sampleCountry,
		Timezone:         &sampleTz,
		LocalCapturedAt:  sampleCaptured,
		IsLiked:          &sampleLiked,
		Metadata: &api.HistoryMetadata{
			Name:           "Roti and Dal",
			Quantity:       "2 pieces",
			MealType:       "MEAL_TYPE_LUNCH",
			HealthScore:    "HEALTHY",
			ComponentCount: 2,
		},
		Components: []*api.HistoryComponent{
			{
				Name:              "Roti",
				CanonicalName:     "Wheat flour, whole-grain",
				PreparationMethod: "ROASTED",
				Portion: &common.Portion{
					Kind: "BULK", Value: 70, MinValue: 60, MaxValue: 80, Origin: "MODEL_INFERRED",
				},
			},
			{
				Name:          "Dal",
				CanonicalName: "Lentils, mature seeds, cooked, boiled",
				Portion: &common.Portion{
					Kind: "BULK", Value: 200, MinValue: 180, MaxValue: 220, Origin: "USER_STATED",
				},
			},
		},
		Ingredients: []*server.EnrichedIngredient{
			{
				Name:           "Whole wheat roti",
				CanonicalName:  "Wheat flour, whole-grain",
				ComponentName:  "Roti",
				IngredientType: server.IngredientType_BASE,
				Portion:        &common.Portion{Kind: "BULK", Value: 70, MinValue: 60, MaxValue: 80},
				Grams:          mk(70, 60, 80),
				Macros: &common.Macros{
					Calorie: mk(238, 204, 272),
					Carb:    mk(46, 39, 53),
					Protein: mk(8, 7, 9),
					Fat:     mk(2, 2, 2),
					Fiber:   mk(7, 6, 8),
				},
				Description: "Wheat flour, whole-grain",
				FdcId:       168893,
				Similarity:  0.91,
			},
			{
				Name:           "Cooked dal",
				CanonicalName:  "Lentils, mature seeds, cooked, boiled, without salt",
				ComponentName:  "Dal",
				IngredientType: server.IngredientType_BASE,
				Portion:        &common.Portion{Kind: "BULK", Value: 200, MinValue: 180, MaxValue: 220},
				Grams:          mk(200, 180, 220),
				Macros: &common.Macros{
					Calorie: mk(232, 208, 255),
					Carb:    mk(40, 36, 44),
					Protein: mk(16, 14, 18),
					Fat:     mk(1, 1, 1),
					Fiber:   mk(16, 14, 18),
				},
				Description: "Lentils, mature seeds, cooked, boiled, without salt",
				FdcId:       172421,
				Similarity:  0.95,
			},
		},
		Clarifications: []*common.Clarification{
			{
				Id:       0,
				Type:     common.Clarification_QUANTITY,
				Question: "How many rotis were in your meal?",
				Options: []*common.Option{
					{Text: "1 roti"},
					{Text: "2 rotis"},
					{Text: "3 rotis"},
				},
			},
		},
		Final: &common.Meal{
			Macros: &common.Macros{
				Calorie: mk(470, 412, 527),
				Carb:    mk(86, 75, 97),
				Protein: mk(24, 21, 27),
				Fat:     mk(3, 3, 3),
				Fiber:   mk(23, 20, 26),
			},
			Metadata: &common.MealMetadata{
				Tip: &finalTip,
			},
		},
		Steps: []*api.StepTiming{
			{Name: "Pass 1 (Components)", DurationSec: &durP1, Status: "COMPLETED", CompletedAt: &p1Time},
			{Name: "Pass 2 (Ingredients)", DurationSec: &durP2, Status: "COMPLETED", CompletedAt: &p2Time},
			{Name: "USDA Hydration", DurationSec: &durUsda, Status: "COMPLETED", CompletedAt: &usdaTime},
			{Name: "Finalization", DurationSec: &durFinal, Status: "COMPLETED", CompletedAt: &finalTime},
		},
	}

	failReason := "LLM connection timeout"
	failedStep := "Pass 1 (Components)"
	failedItem := &api.AnalysisHistoryItem{
		Id:            "a11ac10b-58cc-4372-a567-0e02b2c3d999",
		UserUid:       "user_99999999",
		CreatedAt:     timestamppb.New(time.Date(2026, 11, 6, 14, 5, 0, 0, time.UTC)),
		Status:        "FAILED",
		Text:          "Oatmeal with almonds",
		HasImage:      false,
		FailureReason: &failReason,
		FailedAtStep:  &failedStep,
		Steps: []*api.StepTiming{
			{Name: "Pass 1 (Components)", Status: "FAILED"},
			{Name: "Pass 2 (Ingredients)", Status: "PENDING"},
			{Name: "USDA Hydration", Status: "PENDING"},
			{Name: "Finalization", Status: "PENDING"},
		},
	}

	mockRes := &api.AnalysisHistoryResponse{
		Summary: &api.AnalysisHistorySummary{
			TimeRange:           "7D",
			TotalRequests:       2,
			SuccessCount:        1,
			FailedCount:         1,
			FailureRatePct:      50.0,
			AvgTotalDurationSec: 5.65,
			AvgStepDurationsSec: map[string]float64{
				"Pass 1 (Components)":  2.45,
				"Pass 2 (Ingredients)": 1.83,
				"USDA Hydration":       0.95,
				"Finalization":         0.42,
			},
			FailuresByStep: map[string]int32{
				"Pass 1 (Components)": 1,
			},
		},
		Items:        []*api.AnalysisHistoryItem{sampleItem, failedItem},
		Page:         1,
		PageSize:     10,
		TotalItems:   2,
		TotalPages:   1,
		FilterRange:  "7D",
		FilterStatus: "ALL",
	}

	provider := &mockHistoryProvider{res: mockRes}
	handler := Handler(provider)

	req := httptest.NewRequest(http.MethodGet, "/analysis-history?range=7D&status=ALL", nil)
	rec := httptest.NewRecorder()

	handler(rec, req)

	if rec.Code != http.StatusOK {
		t.Fatalf("expected 200 OK, got %d", rec.Code)
	}

	body := rec.Body.String()

	if out := os.Getenv("DASHBOARD_DUMP_HTML"); out != "" {
		if err := os.WriteFile(out, []byte(body), 0o644); err != nil {
			t.Fatalf("failed to dump rendered HTML to %s: %v", out, err)
		}
	}

	expectedStrings := []string{
		"5.65s",
		"2.45s",
		"1.83s",
		"0.95s",
		"0.42s",
		"Roti and Dal",
		"LLM connection timeout",
		"at Pass 1 (Components)",
		"en-US",
		"US",
		"America/New_York",
		"Captured: Nov 06, 09:58:00",
		// Feedback + timestamps
		"👍 Liked",
		"👍 User liked result",
		"Nov 06, 2026 14:00:07",
		// Drawer: components (pass 1)
		"Wheat flour, whole-grain",
		"Lentils, mature seeds, cooked, boiled",
		"ROASTED",
		"MODEL_INFERRED",
		"USER_STATED",
		// Drawer: ingredients + USDA matches (pass 2 + hydration)
		"Whole wheat roti",
		"Roti",
		"Wheat flour, whole-grain",
		"fdc 168893",
		"91.0%",
		"Lentils, mature seeds, cooked, boiled, without salt",
		"fdc 172421",
		"95.0%",
		// Drawer: clarifications
		"How many rotis were in your meal?",
		"1 roti",
		"3 rotis",
		// Drawer: final macros + tip
		"470 (412–527)",
		"24 (21–27)",
		"Pair rotis with dal for complete protein",
		// Image endpoint wiring
		"/analysis-history/image/f47ac10b-58cc-4372-a567-0e02b2c3d479",
	}

	for _, s := range expectedStrings {
		if !strings.Contains(body, s) {
			t.Errorf("rendered HTML missing expected text: %q", s)
		}
	}
}
