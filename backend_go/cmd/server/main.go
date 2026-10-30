package main

import (
	"backend/internal/analysis"
	"backend/internal/api"
	"backend/internal/config"
	"backend/internal/database"
	"backend/internal/telemetry"
	"context"
	"log"
)

func main() {
	cfg := config.Load()
	log.Printf("Starting API server at %v\n", cfg.Port)

	ctx := context.Background()
	shutdownTelemetry, err := telemetry.Init(ctx, cfg.AppName, cfg.OtelEndpoint)
	if err != nil {
		log.Printf("Warning: failed to initialize telemetry: %v\n", err)
	} else {
		defer func() {
			if err := shutdownTelemetry(context.Background()); err != nil {
				log.Printf("Failed to flush telemetry: %v\n", err)
			}
		}()
	}
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

	analysis := analysis.New(dbPool, usdaDbPool, cfg.OpenAiApiKey, cfg.OllamaURL)
	app := api.New(cfg, dbPool, analysis)
	app.Start()
}
