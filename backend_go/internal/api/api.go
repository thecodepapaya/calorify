package api

import (
	"backend/internal/config"
	firebase_app "backend/internal/firebase"
	"backend/internal/middleware"
	"context"
	"io"
	"log"
	"net/http"

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
}

func New(cfg config.Config, db *pgxpool.Pool) *App {
	mux := http.NewServeMux()
	firebaseApp := firebase_app.Initialize(cfg)
	a := &App{
		DB:          db,
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
}

func (a *App) Start() error {
	authClient, err := a.FirebaseApp.Auth(context.Background())
	if err != nil {
		log.Fatalf("Failed to initialize Firebase Auth client: %v\n", err)
	}
	auth := middleware.Auth(a.Router, authClient)
	logging := middleware.Logging(auth)
	return http.ListenAndServe(a.Config.Port, logging)
}

func respondProto(status int, msg proto.Message, w http.ResponseWriter) {
	w.Header().Set("Content-Type", "application/json")
	data, err := protojson.Marshal(msg)
	if err != nil {
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
	err = protojson.Unmarshal(body, msg)
	if err != nil {
		return nil, err
	}

	return msg, nil
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
		var req Req
		ptr := Ptr(&req)
		_, err := decodeProto(ptr, r)
		if err != nil {
			log.Printf("Error parsing proto body: %v\n", err)
			w.WriteHeader(http.StatusBadRequest)
			return
		}
		status, res, err := handler(ctx, ptr)
		if err != nil {
			log.Printf("Error executing logic for endpoint %v: %v\n", pattern, err)
			w.WriteHeader(status)
			return
		}
		respondProto(status, res, w)
	}

	a.Router.HandleFunc(pattern, handlerFunc)
}
