package middleware

import (
	"time"

	"github.com/gofiber/fiber/v2"
	"github.com/rs/zerolog/log"
)

// RequestLogger logs the details of each HTTP request
func RequestLogger() fiber.Handler {
	return func(c *fiber.Ctx) error {
		start := time.Now()

		// Process request
		err := c.Next()

		duration := time.Since(start)

		userId := c.Locals("userId")
		if userId == nil {
			userId = "anonymous"
		}

		logger := log.Info().
			Str("method", c.Method()).
			Str("path", c.Path()).
			Int("status", c.Response().StatusCode()).
			Dur("duration", duration).
			Str("ip", c.IP()).
			Interface("userId", userId)

		if err != nil {
			logger.Err(err).Msg("Request failed")
		} else {
			logger.Msg("Request processed")
		}

		return err
	}
}
