package main

import (
	"os"

	v1 "github.com/calorify/backend/internal/api/v1"
	"github.com/calorify/backend/internal/auth"
	"github.com/calorify/backend/internal/config"
	"github.com/calorify/backend/internal/cron"
	"github.com/calorify/backend/internal/database"
	"github.com/calorify/backend/internal/handlers"
	"github.com/calorify/backend/internal/middleware"
	"github.com/calorify/backend/internal/services"
	"github.com/calorify/backend/pkg/logger"
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cors"
	"github.com/rs/zerolog/log"
)

func main() {
	env := os.Getenv("ENVIRONMENT")
	if env == "" {
		env = "development"
	}

	// Initialize logger
	logger.Init(env)

	// Load configuration
	cfg, err := config.LoadConfig(env)
	if err != nil {
		log.Fatal().Err(err).Msg("Failed to load configuration")
	}

	// Connect to database
	if err := database.Connect(cfg); err != nil {
		log.Fatal().Err(err).Msg("Failed to connect to database")
	}
	defer database.Close()

	// Initialize Firebase
	if err := auth.InitFirebase(cfg); err != nil {
		log.Fatal().Err(err).Msg("Failed to initialize Firebase")
	}

	// Initialize Services
	userService := services.NewUserService()
	foodService, err := services.NewFoodAnalysisService(cfg)
	if err != nil {
		log.Fatal().Err(err).Msg("Failed to initialize Food Analysis Service")
	}
	notificationService, err := services.NewNotificationService(cfg)
	if err != nil {
		log.Fatal().Err(err).Msg("Failed to initialize Notification Service")
	}

	// Initialize Handlers
	userHandler := handlers.NewUserHandler(userService)
	foodHandler := handlers.NewFoodHandler(foodService)

	// Initialize Scheduler
	scheduler := cron.InitScheduler(cfg, notificationService, userService)
	defer scheduler.Stop()

	// Create Fiber app
	app := fiber.New(fiber.Config{
		AppName: "Calorify Backend",
	})

	// Global middleware
	app.Use(cors.New())
	app.Use(middleware.RequestLogger())

	// Setup Routes
	v1.SetupRoutes(app, userHandler, foodHandler)

	log.Info().Msgf("Server starting on port %s in %s mode", cfg.Port, env)
	if err := app.Listen(":" + cfg.Port); err != nil {
		log.Fatal().Err(err).Msg("Server failed to start")
	}
}
