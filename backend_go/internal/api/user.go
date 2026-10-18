package api

import (
	"backend/internal/gen_proto/api"
	"errors"
	"log"
	"net/http"

	"github.com/jackc/pgx/v5"
)

func (a *App) GetUser(w http.ResponseWriter, r *http.Request) {
	userUid, _ := r.Context().Value("user_uid").(string)
	user, err := a.GetUserByUid(r.Context(), userUid)
	res := api.UserDetailsResponse{
		User: user,
	}
	if errors.Is(err, pgx.ErrNoRows) {
		log.Printf("No user found with uid: %v\n", userUid)
		a.RespondProto(http.StatusOK, &res, w)
		return
	} else if err != nil {
		log.Printf("Error querying user uid : %v\n", err)
		w.WriteHeader(http.StatusInternalServerError)
		return
	}

	a.RespondProto(http.StatusOK, &res, w)
}

func (a *App) UpsertUser(w http.ResponseWriter, r *http.Request) {
	userUid, _ := r.Context().Value("user_uid").(string)
	var req api.UpdateUserRequest
	_, err := a.DecodeProto(&req, w, r)
	if err != nil {
		log.Printf("Error querying user uid : %v\n", err)
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	err = a.UpsertUserByUid(r.Context(), userUid, req.User)
	if err != nil {
		log.Printf("Error upsert user: %v\n", err)
		w.WriteHeader(http.StatusInternalServerError)
		return
	}

	a.RespondProto(http.StatusOK, &req, w)
}

func (a *App) GetUserHealthData(w http.ResponseWriter, r *http.Request) {
	userUid, _ := r.Context().Value("user_uid").(string)
	healthData, err := a.GetHealthData(r.Context(), userUid)
	res := api.HealthDataResponse{
		HealthData: healthData,
	}
	if errors.Is(err, pgx.ErrNoRows) {
		log.Printf("No user found with uid: %v\n", userUid)
		a.RespondProto(http.StatusOK, &res, w)
		return
	} else if err != nil {
		log.Printf("Error querying user uid : %v\n", err)
		w.WriteHeader(http.StatusInternalServerError)
		return
	}
	a.RespondProto(http.StatusOK, &res, w)
}

func (a *App) UpsertUserHealthData(w http.ResponseWriter, r *http.Request) {
	userUid, _ := r.Context().Value("user_uid").(string)
	var req api.HealthDataRequest
	_, err := a.DecodeProto(&req, w, r)
	if err != nil {
		log.Printf("Error querying user uid : %v\n", err)
		w.WriteHeader(http.StatusBadRequest)
		return
	}
	err = a.UpsertHealthData(r.Context(), userUid, req.HealthData)
	if err != nil {
		log.Printf("Error upsert user: %v\n", err)
		w.WriteHeader(http.StatusInternalServerError)
		return
	}

	a.RespondProto(http.StatusOK, &req, w)
}
