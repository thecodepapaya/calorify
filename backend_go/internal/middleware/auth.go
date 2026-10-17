package middleware

import (
	"context"
	"log"
	"net/http"
	"strings"

	"firebase.google.com/go/v4/auth"
)

var publicRoutes = map[string]bool{
	"/ready": true,
}

func Auth(next http.Handler, authClient *auth.Client) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if publicRoutes[r.URL.Path] {
			next.ServeHTTP(w, r)
			return
		}

		auth := r.Header.Get("Authorization")
		if !strings.HasPrefix(auth, "Bearer ") {
			w.WriteHeader(http.StatusUnauthorized)
			return
		}
		idToken := strings.TrimPrefix(auth, "Bearer ")
		userId, err := validateToken(idToken, authClient, r.Context())
		if err != nil {
			w.WriteHeader(http.StatusUnauthorized)
			return
		}
		ctx := context.WithValue(r.Context(), "user_id", userId)
		log.Printf("User %v\n", userId)
		next.ServeHTTP(w, r.WithContext(ctx))
	})
}

func validateToken(idToken string, authClient *auth.Client, ctx context.Context) (string, error) {

	token, err := authClient.VerifyIDToken(ctx, idToken)
	if err != nil {
		return "", err
	}

	return token.UID, nil
}
