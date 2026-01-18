package cron

import (
	"github.com/calorify/backend/internal/config"
	"github.com/calorify/backend/internal/services"
	"github.com/robfig/cron/v3"
	"github.com/rs/zerolog/log"
)

func InitScheduler(cfg *config.Config, ns *services.NotificationService, us *services.UserService) *cron.Cron {
	c := cron.New(cron.WithSeconds())
	jobs := NewCronJobs(ns, us)

	// Add jobs
	// Example: Every day at 8:00 AM
	_, err := c.AddFunc("0 0 8 * * *", jobs.SendMealReminders)
	if err != nil {
		log.Error().Err(err).Msg("Error adding SendMealReminders job")
	}

	// Example: Every day at midnight
	_, err = c.AddFunc("0 0 0 * * *", jobs.CleanupLogs)
	if err != nil {
		log.Error().Err(err).Msg("Error adding CleanupLogs job")
	}

	c.Start()
	log.Info().Msg("Cron scheduler started")

	return c
}
