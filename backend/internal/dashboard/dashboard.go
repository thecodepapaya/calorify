package dashboard

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
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
	"fmtDateTime": func(ts *timestamppb.Timestamp) string {
		if ts == nil {
			return "-"
		}
		return ts.AsTime().Format("Jan 02, 2006 15:04:05")
	},
	"fmtMeasurement": func(m *common.Measurement) string {
		if m == nil {
			return "-"
		}
		if m.MinValue == 0 && m.MaxValue == 0 {
			return strconv.FormatInt(int64(m.Value), 10)
		}
		return strconv.Itoa(int(m.Value)) + " (" + strconv.Itoa(int(m.MinValue)) + "–" + strconv.Itoa(int(m.MaxValue)) + ")"
	},
	"fmtSim": func(s float32) string {
		return strconv.FormatFloat(float64(s)*100, 'f', 1, 64)
	},
	"simClass": func(s float32) string {
		switch {
		case s >= 0.9:
			return "sim-high"
		case s >= 0.8:
			return "sim-mid"
		default:
			return "sim-low"
		}
	},
	"likedState": func(b *bool) string {
		if b == nil {
			return ""
		}
		if *b {
			return "liked"
		}
		return "disliked"
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

type ImageProvider interface {
	GetAnalysisImage(ctx context.Context, id string) ([]byte, bool, error)
}

// ImageHandler serves the stored meal image for an analysis on demand, so the
// history list page never carries image bytes inline.
func ImageHandler(provider ImageProvider) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		id := r.PathValue("analysis_id")
		if id == "" {
			http.Error(w, "missing analysis id", http.StatusBadRequest)
			return
		}
		img, found, err := provider.GetAnalysisImage(r.Context(), id)
		if err != nil {
			slog.ErrorContext(r.Context(), "dashboard failed to fetch analysis image", "analysis_id", id, "error", err)
			http.Error(w, "Failed to load image", http.StatusInternalServerError)
			return
		}
		if !found {
			http.Error(w, "No image for this analysis", http.StatusNotFound)
			return
		}
		w.Header().Set("Content-Type", "image/webp")
		w.Header().Set("Cache-Control", "private, max-age=3600")
		if _, err := w.Write(img); err != nil {
			slog.WarnContext(r.Context(), "dashboard failed to write analysis image", "analysis_id", id, "error", err)
		}
	}
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
