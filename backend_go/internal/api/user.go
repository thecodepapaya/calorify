package api

import (
	"backend/internal/gen_proto/api"
	"context"
	"errors"
	"net/http"

	"github.com/jackc/pgx/v5"
)

func (a *App) GetUser(ctx context.Context, req *api.Empty) (int, *api.UserDetailsResponse, error) {
	userUid, _ := ctx.Value("user_uid").(string)
	user, err := a.GetUserByUid(ctx, userUid)
	res := &api.UserDetailsResponse{
		User: user,
	}
	if errors.Is(err, pgx.ErrNoRows) {
		return http.StatusNotFound, res, err
	} else if err != nil {
		return http.StatusInternalServerError, res, err
	}
	return http.StatusOK, res, nil
}

func (a *App) UpsertUser(ctx context.Context, req *api.UpdateUserRequest) (int, *api.Empty, error) {
	userUid, _ := ctx.Value("user_uid").(string)
	err := a.UpsertUserByUid(ctx, userUid, req.User)
	if err != nil {
		return http.StatusInternalServerError, &api.Empty{}, err
	}
	return http.StatusOK, &api.Empty{}, nil
}

func (a *App) GetUserHealthData(ctx context.Context, req *api.Empty) (int, *api.HealthDataResponse, error) {
	userUid, _ := ctx.Value("user_uid").(string)
	healthData, err := a.GetHealthData(ctx, userUid)
	res := &api.HealthDataResponse{
		HealthData: healthData,
	}
	if errors.Is(err, pgx.ErrNoRows) {
		return http.StatusOK, res, err
	} else if err != nil {
		return http.StatusInternalServerError, res, err
	}
	return http.StatusOK, res, nil
}

func (a *App) UpdateUserHealthData(ctx context.Context, req *api.HealthDataRequest) (int, *api.Empty, error) {
	userUid, _ := ctx.Value("user_uid").(string)
	err := a.InsertHealthData(ctx, userUid, req.HealthData)
	if err != nil {
		return http.StatusInternalServerError, &api.Empty{}, err
	}
	return http.StatusOK, &api.Empty{}, nil
}
