package auth

import (
	"context"
	"strings"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/auth"
	"github.com/calorify/backend/internal/config"
	"github.com/gofiber/fiber/v2"
	"github.com/rs/zerolog/log"
	"google.golang.org/api/option"
)

var FirebaseAuth *auth.Client

// InitFirebase initializes the Firebase Admin SDK
func InitFirebase(cfg *config.Config) error {
	ctx := context.Background()
	opt := option.WithCredentialsFile(cfg.FirebaseKeyPath)
	app, err := firebase.NewApp(ctx, nil, opt)
	if err != nil {
		log.Error().Err(err).Msg("Error initializing Firebase App")
		return err
	}

	FirebaseAuth, err = app.Auth(ctx)
	if err != nil {
		log.Error().Err(err).Msg("Error initializing Firebase Auth client")
		return err
	}

	log.Info().Msg("Firebase Auth initialized")
	return nil
}

// FirebaseAuthMiddleware verifies the Firebase ID Token in the Authorization header
func FirebaseAuthMiddleware() fiber.Handler {
	return func(c *fiber.Ctx) error {
		authHeader := c.Get("Authorization")
		if authHeader == "" || !strings.HasPrefix(authHeader, "Bearer ") {
			return c.Status(fiber.StatusUnauthorized).JSON(fiber.Map{
				"error": "Missing or invalid authorization header",
			})
		}

		idToken := strings.TrimPrefix(authHeader, "Bearer ")
		token, err := FirebaseAuth.VerifyIDToken(context.Background(), idToken)
		if err != nil {
			log.Warn().Err(err).Msg("Invalid Firebase ID Token")
			return c.Status(fiber.StatusUnauthorized).JSON(fiber.Map{
				"error": "Unauthorized",
			})
		}

		// Store user ID in context
		c.Locals("userId", token.UID)
		return c.Next()
	}
}
