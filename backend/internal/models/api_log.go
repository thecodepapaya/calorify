package models

import (
	"time"
)

type APILog struct {
	ID        uint      `gorm:"primaryKey" json:"id"`
	UserID    string    `gorm:"index" json:"user_id"`
	Method    string    `json:"method"`
	Path      string    `json:"path"`
	Status    int       `json:"status"`
	Duration  int64     `json:"duration_ms"`
	IP        string    `json:"ip"`
	CreatedAt time.Time `json:"created_at"`
}
