package api

import (
	"backend/internal/gen_proto/api"
	"context"
	"net/http"
)

func (a *App) AnalyzeMeal(ctx context.Context, req *api.MealAnalysisRequest) (int, *api.MealAnalysisResponse, error) {
	return http.StatusNotImplemented, &api.MealAnalysisResponse{}, nil
}
