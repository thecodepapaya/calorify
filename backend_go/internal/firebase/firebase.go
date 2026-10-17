package firebase_app

import (
	"backend/internal/config"
	"context"
	"log"

	firebase "firebase.google.com/go/v4"
	"google.golang.org/api/option"
)

func Initialize(cfg config.Config) *firebase.App {
	opt := option.WithAuthCredentialsFile(option.ServiceAccount, cfg.FirebaseSdkPath)
	app, err := firebase.NewApp(context.Background(), nil, opt)
	if err != nil {
		log.Fatalf("Error initializing app: %v\n", err)
	}

	return app
}
