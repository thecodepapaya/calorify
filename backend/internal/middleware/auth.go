package middleware

import (
	"context"
	"log/slog"
	"net/http"
	"strings"

	"firebase.google.com/go/v4/auth"
)

var publicRoutes = map[string]bool{
	"/ready": true,
}

func Auth(next http.Handler, authClient *auth.Client) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method == http.MethodOptions || publicRoutes[r.URL.Path] {
			next.ServeHTTP(w, r)
			return
		}

		authHeader := r.Header.Get("Authorization")
		if !strings.HasPrefix(authHeader, "Bearer ") {
			slog.WarnContext(r.Context(), "missing or invalid bearer token", "path", r.URL.Path)
			w.WriteHeader(http.StatusUnauthorized)
			return
		}
		idToken := strings.TrimPrefix(authHeader, "Bearer ")
		userId, err := validateToken(idToken, authClient, r.Context())
		if err != nil {
			slog.WarnContext(r.Context(), "failed to verify auth token", "path", r.URL.Path, "error", err)
			w.WriteHeader(http.StatusUnauthorized)
			return
		}
		ctx := context.WithValue(r.Context(), "user_uid", userId)
		slog.DebugContext(ctx, "authenticated request", "user_uid", userId)
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
