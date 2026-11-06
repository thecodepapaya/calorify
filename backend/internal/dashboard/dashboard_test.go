package dashboard

import (
	"backend/internal/gen_proto/api"
	"context"
	"net/http"
	"net/http/httptest"
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

	sampleItem := &api.AnalysisHistoryItem{
		Id:               "f47ac10b-58cc-4372-a567-0e02b2c3d479",
		UserUid:          "user_12345678",
		CreatedAt:        timestamppb.New(time.Date(2026, 11, 6, 14, 0, 0, 0, time.UTC)),
		Status:           "PRESENTED",
		Text:             "2 rotis with dal and salad",
		HasImage:         true,
		TotalDurationSec: &totalDur,
		Metadata: &api.MealMetadata{
			Name:           "Roti and Dal",
			Quantity:       "2 pieces",
			MealType:       "MEAL_TYPE_LUNCH",
			HealthScore:    "HEALTHY",
			ComponentCount: 3,
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
	expectedStrings := []string{
		"5.65s",
		"2.45s",
		"1.83s",
		"0.95s",
		"0.42s",
		"Roti and Dal",
		"LLM connection timeout",
		"at Pass 1 (Components)",
	}

	for _, s := range expectedStrings {
		if !strings.Contains(body, s) {
			t.Errorf("rendered HTML missing expected text: %q", s)
		}
	}
}
