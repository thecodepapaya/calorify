package api

import (
	"backend/internal/analysis"
	"backend/internal/config"
	"backend/internal/dashboard"
	firebase_app "backend/internal/firebase"
	"backend/internal/middleware"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"log/slog"
	"net/http"
	"strconv"

	firebase "firebase.google.com/go/v4"
	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/proto"
)

type App struct {
	DB          *pgxpool.Pool
	Config      config.Config
	Router      *http.ServeMux
	FirebaseApp *firebase.App
	Analysis    *analysis.Service
}

func New(cfg config.Config, db *pgxpool.Pool, analysis *analysis.Service) *App {
	mux := http.NewServeMux()
	firebaseApp := firebase_app.Initialize(cfg)
	a := &App{
		DB:          db,
		Analysis:    analysis,
		Config:      cfg,
		Router:      mux,
		FirebaseApp: firebaseApp,
	}
	a.routes()
	return a
}

func (a *App) routes() {
	Register(a, "GET /ready", a.Ready)
	Register(a, "GET /users", a.GetUser)
	Register(a, "PUT /users", a.UpsertUser)
	Register(a, "GET /users/health-data", a.GetUserHealthData)
	Register(a, "POST /users/health-data", a.UpdateUserHealthData)
	Register(a, "GET /users/meals/{meal_id}", a.GetMeal)
	Register(a, "GET /users/meals", a.ListMeal)
	Register(a, "POST /users/meals", a.LogMeal)
	Register(a, "PUT /users/meals/{meal_id}", a.UpdateMeal)
	Register(a, "DELETE /users/meals/{meal_id}", a.DeleteMeal)
	Register(a, "POST /users/meals/analysis", a.AnalyzeMeal)
	Register(a, "GET /users/meals/analysis/{analysis_id}", a.GetMealAnalysisStatus)
	Register(a, "POST /users/meals/analysis/{analysis_id}/feedback", a.SubmitAnalysisFeedback)
	Register(a, "GET /internal/analysis-history", a.GetAnalysisHistory)
	a.Router.HandleFunc("GET /analysis-history", dashboard.Handler(a))
}

func (a *App) Start() error {
	authClient, err := a.FirebaseApp.Auth(context.Background())
	if err != nil {
		return fmt.Errorf("failed to initialize Firebase Auth client: %w", err)
	}
	auth := middleware.Auth(a.Router, authClient)
	cors := middleware.Cors(auth)
	logging := middleware.Logging(cors)
	return http.ListenAndServe(a.Config.Port, logging)
}

func respondProto(status int, msg proto.Message, w http.ResponseWriter) {
	w.Header().Set("Content-Type", "application/json")
	data, err := protojson.Marshal(msg)
	if err != nil {
		slog.Error("failed to marshal proto response", "error", err)
		http.Error(w, "Failed to respond", http.StatusInternalServerError)
		return
	}
	w.WriteHeader(status)
	w.Write(data)
}

func decodeProto(msg proto.Message, r *http.Request) (proto.Message, error) {
	body, err := io.ReadAll(r.Body)
	defer r.Body.Close()
	if err != nil {
		return nil, err
	}
	if len(body) == 0 {
		return msg, nil
	}
	opts := protojson.UnmarshalOptions{DiscardUnknown: true}
	err = opts.Unmarshal(body, msg)
	if err != nil {
		return nil, err
	}

	return msg, nil
}

func decodeQueryParams(msg proto.Message, r *http.Request) error {
	q := r.URL.Query()
	if len(q) == 0 {
		return nil
	}
	data := make(map[string]any, len(q))
	for k, v := range q {
		if len(v) > 0 {
			val := v[0]
			if intVal, err := strconv.Atoi(val); err == nil {
				data[k] = intVal
			} else {
				data[k] = val
			}
		}
	}
	b, err := json.Marshal(data)
	if err != nil {
		return err
	}
	opts := protojson.UnmarshalOptions{DiscardUnknown: true}
	return opts.Unmarshal(b, msg)
}

func Register[Req any, Ptr interface {
	*Req
	proto.Message
}, Res proto.Message](
	a *App,
	pattern string,
	handler func(ctx context.Context, req Ptr) (int, Res, error),
) {
	handlerFunc := func(w http.ResponseWriter, r *http.Request) {
		ctx := r.Context()
		if meal_id := r.PathValue("meal_id"); meal_id != "" {
			ctx = context.WithValue(ctx, "meal_id", meal_id)
		}
		if analysis_id := r.PathValue("analysis_id"); analysis_id != "" {
			ctx = context.WithValue(ctx, "analysis_id", analysis_id)
		}
		var req Req
		ptr := Ptr(&req)
		var err error
		if r.Method == http.MethodGet {
			err = decodeQueryParams(ptr, r)
		} else {
			_, err = decodeProto(ptr, r)
		}
		if err != nil {
			slog.WarnContext(ctx, "failed to parse request", "endpoint", pattern, "error", err)
			w.WriteHeader(http.StatusBadRequest)
			return
		}
		status, res, err := handler(ctx, ptr)
		if err != nil {
			slog.ErrorContext(ctx, "endpoint handler returned error", "endpoint", pattern, "status", status, "error", err)
			w.WriteHeader(status)
			// TODO: w.Write() with err as response body
			return
		}
		respondProto(status, res, w)
	}

	a.Router.HandleFunc(pattern, handlerFunc)
}
