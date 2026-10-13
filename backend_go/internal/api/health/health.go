package health

import (
	"backend/internal/gen_proto/server"
	"net/http"

	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/protobuf/encoding/protojson"
)

type HealthHandler struct {
	DB *pgxpool.Pool
}

func (h *HealthHandler) Ready(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	err := h.DB.Ping(r.Context())
	if err != nil {
		http.Error(w, "Database not ready", http.StatusServiceUnavailable)
		return
	}
	res := server.HealthResponse{Status: "ok"}
	data, err := protojson.Marshal(&res)
	if err != nil {
		http.Error(w, "Failed to respond", http.StatusInternalServerError)
		return
	}
	w.Write(data)
}
