package dashboard

import (
	"backend/internal/gen_proto/api"
	"context"
	_ "embed"
	"html/template"
	"log/slog"
	"net/http"
	"strconv"
	"strings"

	"google.golang.org/protobuf/types/known/timestamppb"
)

//go:embed templates/analysis_history.html
var analysisHistoryHTML string

var historyTemplate = template.Must(template.New("analysis_history.html").Funcs(template.FuncMap{
	"add":      func(a, b int32) int32 { return a + b },
	"sub":      func(a, b int32) int32 { return a - b },
	"addFloat": func(a, b float64) float64 { return a + b },
	"fmtDuration": func(p *float64) string {
		if p == nil {
			return "-"
		}
		return strconv.FormatFloat(*p, 'f', 2, 64)
	},
	"fmtTimestamp": func(ts *timestamppb.Timestamp) string {
		if ts == nil {
			return "-"
		}
		return ts.AsTime().Format("Jan 02, 15:04:05")
	},
	"calcPercent": func(part, total float64) string {
		if total <= 0 {
			return "0"
		}
		pct := (part / total) * 100
		if pct > 100 {
			pct = 100
		}
		return strconv.FormatFloat(pct, 'f', 1, 64)
	},
}).Parse(analysisHistoryHTML))

type HistoryDataProvider interface {
	GetAnalysisHistoryData(ctx context.Context, req *api.AnalysisHistoryRequest) (*api.AnalysisHistoryResponse, error)
}

func Handler(provider HistoryDataProvider) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		q := r.URL.Query()
		timeRange := strings.ToUpper(strings.TrimSpace(q.Get("range")))
		if timeRange != "1D" && timeRange != "30D" {
			timeRange = "7D"
		}

		statusFilter := strings.ToUpper(strings.TrimSpace(q.Get("status")))
		if statusFilter != "FAILED" && statusFilter != "SUCCESS" {
			statusFilter = "ALL"
		}

		page := int32(1)
		if pStr := q.Get("page"); pStr != "" {
			if p, err := strconv.Atoi(pStr); err == nil && p > 0 {
				page = int32(p)
			}
		}

		pageSize := int32(10)
		req := &api.AnalysisHistoryRequest{
			TimeRange: &timeRange,
			Status:    &statusFilter,
			Page:      &page,
			PageSize:  &pageSize,
		}

		data, err := provider.GetAnalysisHistoryData(r.Context(), req)
		if err != nil {
			slog.ErrorContext(r.Context(), "dashboard failed to fetch analysis history", "error", err)
			http.Error(w, "Failed to load analysis history", http.StatusInternalServerError)
			return
		}

		w.Header().Set("Content-Type", "text/html; charset=utf-8")
		w.Header().Set("Cache-Control", "no-cache, must-revalidate")
		if err := historyTemplate.Execute(w, data); err != nil {
			slog.ErrorContext(r.Context(), "failed to render analysis history template", "error", err)
		}
	}
}
