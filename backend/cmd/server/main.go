package main

import (
	"backend/internal/analysis"
	"backend/internal/api"
	"backend/internal/config"
	"backend/internal/database"
	"backend/internal/telemetry"
	"context"
	"log/slog"
	"os"
)

func main() {
	handler := slog.NewTextHandler(os.Stdout, &slog.HandlerOptions{
		Level: slog.LevelInfo,
	})
	slog.SetDefault(slog.New(handler))

	cfg := config.Load()
	slog.Info("starting API server", "port", cfg.Port)

	ctx := context.Background()
	shutdownTelemetry, err := telemetry.Init(ctx, cfg.AppName, cfg.OtelEndpoint)
	if err != nil {
		slog.Warn("failed to initialize telemetry", "error", err)
	} else {
		defer func() {
			if err := shutdownTelemetry(context.Background()); err != nil {
				slog.Error("failed to flush telemetry", "error", err)
			}
		}()
	}
	dbPool, dbErr := database.Connect(ctx, cfg.DatabaseURL)
	if dbErr != nil {
		slog.Error("failed to connect to DB", "error", dbErr)
		os.Exit(1)
	}
	defer dbPool.Close()

	if err := database.MigrateCalorify(ctx, dbPool); err != nil {
		slog.Error("failed to apply database migrations", "error", err)
		os.Exit(1)
	}

	usdaDbPool, dbErr := database.Connect(ctx, cfg.UsdaDatabaseURL)
	if dbErr != nil {
		slog.Error("failed to connect to USDA DB", "error", dbErr)
		os.Exit(1)
	}
	defer usdaDbPool.Close()

	analysis := analysis.New(dbPool, usdaDbPool, cfg.OpenAiApiKey, cfg.OllamaURL)
	app := api.New(cfg, dbPool, analysis)
	if err := app.Start(); err != nil {
		slog.Error("server stopped with error", "error", err)
		os.Exit(1)
	}
}
