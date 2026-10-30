package firebase_app

import (
	"backend/internal/config"
	"context"
	"log/slog"
	"os"

	firebase "firebase.google.com/go/v4"
	"google.golang.org/api/option"
)

func Initialize(cfg config.Config) *firebase.App {
	opt := option.WithAuthCredentialsFile(option.ServiceAccount, cfg.FirebaseSdkPath)
	app, err := firebase.NewApp(context.Background(), nil, opt)
	if err != nil {
		slog.Error("failed to initialize firebase app", "path", cfg.FirebaseSdkPath, "error", err)
		os.Exit(1)
	}

	return app
}
