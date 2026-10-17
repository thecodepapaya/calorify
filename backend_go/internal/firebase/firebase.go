package firebase_app

import (
	"context"
	"log"

	firebase "firebase.google.com/go/v4"
)

func Initialize() *firebase.App {
	defaultApp, err := firebase.NewApp(context.Background(), nil)
	if err != nil {
		log.Fatalf("Error initializing app: %v\n", err)
	}

	return defaultApp
}
