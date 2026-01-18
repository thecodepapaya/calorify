package v1

import (
	"github.com/calorify/backend/internal/auth"
	"github.com/calorify/backend/internal/handlers"
	"github.com/gofiber/fiber/v2"
)

func SetupRoutes(router fiber.Router, userHandler *handlers.UserHandler, foodHandler *handlers.FoodHandler) {
	// Public routes
	router.Get("/health", handlers.HealthCheck)

	// Protected routes
	v1 := router.Group("/api/v1")
	v1.Use(auth.FirebaseAuthMiddleware())

	// User routes
	v1.Get("/users/me", userHandler.GetMe)
	v1.Put("/users/me", userHandler.UpdateProfile)
	v1.Post("/users/fcm-token", userHandler.SaveFCMToken)

	// Meal routes
	v1.Get("/users/meals", userHandler.GetMeals)
	v1.Post("/users/meals", userHandler.LogMeal)
	v1.Put("/users/meals/:id", userHandler.UpdateMeal)
	v1.Delete("/users/meals/:id", userHandler.DeleteMeal)

	// Food Analysis routes
	v1.Post("/food/analyze-description", foodHandler.AnalyzeDescription)
	v1.Post("/food/analyze-image", foodHandler.AnalyzeImage)
}
