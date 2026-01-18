package handlers

import (
	"github.com/calorify/backend/internal/services"
	"github.com/gofiber/fiber/v2"
	"github.com/rs/zerolog/log"
)

type FoodHandler struct {
	foodService *services.FoodAnalysisService
}

func NewFoodHandler(fs *services.FoodAnalysisService) *FoodHandler {
	return &FoodHandler{foodService: fs}
}

func (h *FoodHandler) AnalyzeDescription(c *fiber.Ctx) error {
	var body struct {
		Description string `json:"description"`
	}

	if err := c.BodyParser(&body); err != nil {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Invalid request body"})
	}

	if body.Description == "" {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Description is required"})
	}

	result, err := h.foodService.AnalyzeDescription(c.Context(), body.Description)
	if err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to analyze description"})
	}

	return c.JSON(result)
}

func (h *FoodHandler) AnalyzeImage(c *fiber.Ctx) error {
	file, err := c.FormFile("image")
	if err != nil {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Image is required"})
	}

	f, err := file.Open()
	if err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to open image"})
	}
	defer f.Close()

	imageBytes := make([]byte, file.Size)
	if _, err := f.Read(imageBytes); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to read image"})
	}

	result, err := h.foodService.AnalyzeImage(c.Context(), imageBytes)
	if err != nil {
		log.Error().Err(err).Msg("Failed to analyze image")
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to analyze image"})
	}

	return c.JSON(result)
}
