package main

import (
	"backend/internal/config"
	"backend/internal/database"
	"backend/internal/http"
	"context"
	"log"
)

func main() {
	cfg := config.Load()
	log.Printf("Running server at %v", cfg.Port)

	ctx := context.Background()
	dbPool, dbErr := database.Connect(ctx, cfg.DatabaseURL)
	if dbErr != nil {
		log.Fatalf("Failed to connect to DB: %v", dbErr)
	}
	defer dbPool.Close()

	app := http.New(cfg, dbPool)
	app.Start()

}
