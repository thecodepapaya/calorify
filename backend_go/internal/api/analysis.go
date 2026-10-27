package api

import (
	"backend/internal/gen_proto/api"
	"context"
	"net/http"
)

func (a *App) AnalyzeMeal(ctx context.Context, req *api.MealAnalysisRequest) (int, *api.MealAnalysisResponse, error) {
	// validate text/image input
	// log a "analysis" with analysis id
	// do LLM pass 1
	// store update (response) in analysis
	// do LLM pass 2
	// store response in analysis
	// usda db query
	// store enriched json in analysis
	// generate clarification questions
	// store questions in analysis
	// send question to user
	// get answers and store in analysis
	// prepare final presentation
	// store in analysis
	// send to user
	a.Analysis.AnalyzeMeal()
	return http.StatusNotImplemented, &api.MealAnalysisResponse{}, nil
}
