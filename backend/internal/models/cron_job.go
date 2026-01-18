package models

import (
	"time"
)

type CronJob struct {
	ID        uint      `gorm:"primaryKey" json:"id"`
	JobName   string    `json:"job_name"`
	Status    string    `json:"status"` // success, failure
	Message   string    `json:"message"`
	Duration  int64     `json:"duration_ms"`
	CreatedAt time.Time `json:"created_at"`
}
