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
	a.Router.HandleFunc("GET /ready", a.Ready)
	a.Router.HandleFunc("GET /users", a.GetUser)
	a.Router.HandleFunc("PUT /users", a.UpsertUser)
	a.Router.HandleFunc("GET /users/health-data", a.GetUserHealthData)
	a.Router.HandleFunc("PUT /users/health-data", a.UpsertUserHealthData)
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

func (a *App) RespondProto(status int, msg proto.Message, w http.ResponseWriter) {
	w.Header().Set("Content-Type", "application/json")
	data, err := protojson.Marshal(msg)
	if err != nil {
		http.Error(w, "Failed to respond", http.StatusInternalServerError)
		return
	}
	w.WriteHeader(status)
	w.Write(data)
}

func (a *App) DecodeProto(msg proto.Message, w http.ResponseWriter, r *http.Request) (proto.Message, error) {
	body, err := io.ReadAll(r.Body)
	defer r.Body.Close()
	if err != nil {
		return nil, err
	}
	err = protojson.Unmarshal(body, msg)
	if err != nil {
		return nil, err
	}

	return msg, nil
}

// func Register[Req any, Ptr interface { *Req; proto.Message }, Res proto.Message](<
//     a *App,
//     pattern string,
//     handler func(ctx context.Context, req Ptr>) (Res, error),
// )
