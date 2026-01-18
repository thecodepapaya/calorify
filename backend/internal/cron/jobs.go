package cron

import (
	"context"
	"time"

	"github.com/calorify/backend/internal/database"
	"github.com/calorify/backend/internal/models"
	"github.com/calorify/backend/internal/services"
	"github.com/rs/zerolog/log"
)

type CronJobs struct {
	notificationService *services.NotificationService
	userService         *services.UserService
}

func NewCronJobs(ns *services.NotificationService, us *services.UserService) *CronJobs {
	return &CronJobs{
		notificationService: ns,
		userService:         us,
	}
}

// SendMealReminders example job to send push notifications
func (j *CronJobs) SendMealReminders() {
	start := time.Now()
	log.Info().Msg("Starting SendMealReminders job")

	// In a real app, you'd fetch users who need reminders
	// and their FCM tokens from the database.
	// For this example, we'll just log the action.

	ctx := context.Background()
	_ = ctx // Use ctx if needed

	// Example: Send notification to all users who haven't logged a meal today
	// This is just a placeholder for the logic

	status := "success"
	message := "Reminders sent successfully"

	duration := time.Since(start).Milliseconds()

	// Log job execution to database
	jobLog := models.CronJob{
		JobName:   "SendMealReminders",
		Status:    status,
		Message:   message,
		Duration:  duration,
		CreatedAt: time.Now(),
	}
	database.DB.Create(&jobLog)

	log.Info().Int64("duration_ms", duration).Msg("SendMealReminders job completed")
}

// CleanupLogs example job to delete old logs
func (j *CronJobs) CleanupLogs() {
	start := time.Now()
	log.Info().Msg("Starting CleanupLogs job")

	// Delete logs older than 30 days
	thirtyDaysAgo := time.Now().AddDate(0, 0, -30)
	result := database.DB.Where("created_at < ?", thirtyDaysAgo).Delete(&models.APILog{})

	status := "success"
	message := "Cleaned up old logs"
	if result.Error != nil {
		status = "failure"
		message = result.Error.Error()
	}

	duration := time.Since(start).Milliseconds()

	jobLog := models.CronJob{
		JobName:   "CleanupLogs",
		Status:    status,
		Message:   message,
		Duration:  duration,
		CreatedAt: time.Now(),
	}
	database.DB.Create(&jobLog)

	log.Info().Int64("duration_ms", duration).Msg("CleanupLogs job completed")
}
