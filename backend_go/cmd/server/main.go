package main

import (
	"backend/internal/analysis"
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

	usdaDbPool, dbErr := database.Connect(ctx, cfg.UsdaDatabaseURL)
	if dbErr != nil {
		log.Fatalf("Failed to connect to USDA DB: %v\n", dbErr)
	}
	defer usdaDbPool.Close()

	analysis := analysis.New(usdaDbPool, cfg.OpenAiApiKey)
	app := api.New(cfg, dbPool, analysis)
	app.Start()
}
