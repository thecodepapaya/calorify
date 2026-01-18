package handlers

import (
	"strconv"

	"github.com/calorify/backend/internal/models"
	"github.com/calorify/backend/internal/services"
	"github.com/gofiber/fiber/v2"
)

type UserHandler struct {
	userService *services.UserService
}

func NewUserHandler(us *services.UserService) *UserHandler {
	return &UserHandler{userService: us}
}

func (h *UserHandler) GetMe(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	user, err := h.userService.GetUser(c.Context(), userId)
	if err != nil {
		return c.Status(fiber.StatusNotFound).JSON(fiber.Map{"error": "User not found"})
	}
	return c.JSON(user)
}

func (h *UserHandler) UpdateProfile(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	var user models.User
	if err := c.BodyParser(&user); err != nil {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Invalid request body"})
	}
	user.ID = userId

	if err := h.userService.UpdateUser(c.Context(), &user); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to update profile"})
	}
	return c.JSON(user)
}

func (h *UserHandler) LogMeal(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	var meal models.Meal
	if err := c.BodyParser(&meal); err != nil {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Invalid request body"})
	}
	meal.UserID = userId

	if err := h.userService.LogMeal(c.Context(), &meal); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to log meal"})
	}
	return c.Status(fiber.StatusCreated).JSON(meal)
}

func (h *UserHandler) GetMeals(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	limit, _ := strconv.Atoi(c.Query("limit", "20"))
	offset, _ := strconv.Atoi(c.Query("offset", "0"))

	meals, err := h.userService.GetUserMeals(c.Context(), userId, limit, offset)
	if err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to fetch meals"})
	}
	return c.JSON(meals)
}

func (h *UserHandler) UpdateMeal(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	mealId, _ := strconv.Atoi(c.Params("id"))

	var meal models.Meal
	if err := c.BodyParser(&meal); err != nil {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Invalid request body"})
	}
	meal.ID = uint(mealId)
	meal.UserID = userId

	if err := h.userService.UpdateMeal(c.Context(), &meal); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to update meal"})
	}
	return c.JSON(meal)
}

func (h *UserHandler) DeleteMeal(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	mealId, _ := strconv.Atoi(c.Params("id"))

	if err := h.userService.DeleteMeal(c.Context(), userId, uint(mealId)); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to delete meal"})
	}
	return c.SendStatus(fiber.StatusNoContent)
}

func (h *UserHandler) SaveFCMToken(c *fiber.Ctx) error {
	userId := c.Locals("userId").(string)
	var body struct {
		Token string `json:"token"`
	}
	if err := c.BodyParser(&body); err != nil {
		return c.Status(fiber.StatusBadRequest).JSON(fiber.Map{"error": "Invalid request body"})
	}

	token := &models.FCMToken{
		UserID: userId,
		Token:  body.Token,
	}

	if err := h.userService.SaveFCMToken(c.Context(), token); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{"error": "Failed to save token"})
	}
	return c.JSON(token)
}
