package main

import (
	"backend/internal/api"
	"backend/internal/config"
	"backend/internal/database"
	"context"
	"log"
)

func main() {
	cfg := config.Load()
	log.Printf("Starting API server at %v\n", cfg.Port)

	ctx := context.Background()
	dbPool, dbErr := database.Connect(ctx, cfg.DatabaseURL)
	if dbErr != nil {
		log.Fatalf("Failed to connect to DB: %v\n", dbErr)
	}
	defer dbPool.Close()

	app := api.New(cfg, dbPool)
	app.Start()
}
