package http

import (
	"backend/internal/api/health"
	"backend/internal/config"
	"backend/internal/middleware"
	"net/http"

	"github.com/jackc/pgx/v5/pgxpool"
)

type App struct {
	DB     *pgxpool.Pool
	Config config.Config
	Router *http.ServeMux
}

func New(cfg config.Config, db *pgxpool.Pool) *App {
	mux := http.NewServeMux()
	s := &App{
		DB:     db,
		Config: cfg,
		Router: mux,
	}
	s.routes()
	return s
}

func (s *App) routes() {
	healthHandler := health.HealthHandler{DB: s.DB}
	s.Router.HandleFunc("/ready", healthHandler.Ready)
}

func (s *App) Start() error {
	wrapped := middleware.Logging(s.Router)
	return http.ListenAndServe(s.Config.Port, wrapped)
}
