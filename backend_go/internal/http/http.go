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

func (a *App) routes() {
	healthHandler := health.HealthHandler{DB: a.DB}
	a.Router.HandleFunc("/ready", healthHandler.Ready)
}

func (a *App) Start() error {
	loggingWrapped := middleware.Logging(a.Router)
	return http.ListenAndServe(a.Config.Port, loggingWrapped)
}
