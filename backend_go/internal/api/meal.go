package api

import (
	"backend/internal/gen_proto/api"
	"context"
	"net/http"
)

func (a *App) GetMeal(ctx context.Context, req *api.GetMealRequest) (int, *api.GetMealResponse, error) {
	return http.StatusNotImplemented, &api.GetMealResponse{}, nil
}

func (a *App) ListMeal(ctx context.Context, req *api.Empty) (int, *api.GetMealResponse, error) {
	return http.StatusNotImplemented, &api.GetMealResponse{}, nil
}

func (a *App) LogMeal(ctx context.Context, req *api.LogMealRequest) (int, *api.LogMealResponse, error) {
	return http.StatusNotImplemented, &api.LogMealResponse{}, nil
}

func (a *App) UpdateMeal(ctx context.Context, req *api.UpdateMealRequest) (int, *api.UpdateMealResponse, error) {
	return http.StatusNotImplemented, &api.UpdateMealResponse{}, nil
}

func (a *App) DeleteMeal(ctx context.Context, req *api.GetMealRequest) (int, *api.Empty, error) {
	return http.StatusNotImplemented, &api.Empty{}, nil
}
