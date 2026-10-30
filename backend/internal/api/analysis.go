package api

import (
	"backend/internal/analysis"
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/server"
	"context"
	"errors"
	"net/http"

	"github.com/jackc/pgx/v5"
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

func (a *App) GetMealAnalysisStatus(ctx context.Context, req *api.Empty) (int, *server.MealAnalysisStatus, error) {
	analysisId, _ := ctx.Value("analysis_id").(string)
	if analysisId == "" {
		return http.StatusBadRequest, &server.MealAnalysisStatus{}, errors.New("missing analysis_id")
	}
	userUid, _ := ctx.Value("user_uid").(string)

	status, err := a.GetAnalysisStatusById(ctx, analysisId, userUid)
	if errors.Is(err, pgx.ErrNoRows) {
		return http.StatusNotFound, &server.MealAnalysisStatus{}, err
	} else if err != nil {
		return http.StatusInternalServerError, &server.MealAnalysisStatus{}, err
	}
	return http.StatusOK, status, nil
}

func (a *App) SubmitAnalysisFeedback(ctx context.Context, req *api.MealFeedbackRequest) (int, *api.Empty, error) {
	analysisId, _ := ctx.Value("analysis_id").(string)
	if analysisId == "" {
		return http.StatusBadRequest, &api.Empty{}, errors.New("missing analysis_id")
	}
	userUid, _ := ctx.Value("user_uid").(string)

	var isLiked *bool
	if req.IsLiked != nil {
		isLiked = req.IsLiked
	}

	err := a.UpdateAnalysisFeedback(ctx, analysisId, userUid, isLiked)
	if errors.Is(err, pgx.ErrNoRows) {
		return http.StatusNotFound, &api.Empty{}, err
	} else if err != nil {
		return http.StatusInternalServerError, &api.Empty{}, err
	}
	return http.StatusOK, &api.Empty{}, nil
}
