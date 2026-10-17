package api

import (
	"backend/internal/gen_proto/api"
	"net/http"
)

func (a *App) User(w http.ResponseWriter, r *http.Request) {
	res := api.Empty{}
	a.RespondProto(http.StatusOK, &res, w)
}
