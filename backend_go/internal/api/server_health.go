package api

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/server"
	"context"
	"log"
	"net/http"
)

func (a *App) Ready(ctx context.Context, req *api.Empty) (int, *server.HealthResponse, error) {
	err := a.DB.Ping(ctx)
	if err != nil {
		log.Println("Cannot ping DB!!")
		return http.StatusServiceUnavailable, &server.HealthResponse{}, err
	}
	return http.StatusOK, &server.HealthResponse{Status: "ok"}, nil
}
