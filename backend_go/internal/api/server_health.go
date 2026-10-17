package api

import (
	"backend/internal/gen_proto/server"
	"net/http"
)

func (a *App) Ready(w http.ResponseWriter, r *http.Request) {
	err := a.DB.Ping(r.Context())
	if err != nil {
		http.Error(w, "Database not ready", http.StatusServiceUnavailable)
		return
	}
	res := server.HealthResponse{Status: "ok"}
	a.RespondProto(http.StatusOK, &res, w)
}
