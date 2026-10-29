package api

import (
	"backend/internal/analysis"
	"backend/internal/gen_proto/api"
	"context"
	"errors"
	"net/http"
)

func (a *App) AnalyzeMeal(ctx context.Context, req *api.MealAnalysisRequest) (int, *api.MealAnalysisResponse, error) {
	res, err := a.Analysis.AnalyzeMeal(ctx, req)
	if errors.Is(err, analysis.ErrorInvalidInput) {
		return http.StatusBadRequest, &api.MealAnalysisResponse{}, err
	} else if errors.Is(err, analysis.ErrorLargeImage) {
		return http.StatusRequestEntityTooLarge, &api.MealAnalysisResponse{}, err
	} else if err != nil {
		return http.StatusInternalServerError, &api.MealAnalysisResponse{}, err
	}
	return http.StatusAccepted, res, nil
}
