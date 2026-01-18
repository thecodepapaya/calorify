package models

import (
	"time"
)

type FCMToken struct {
	ID        uint      `gorm:"primaryKey" json:"id"`
	UserID    string    `gorm:"index;uniqueIndex:idx_user_token" json:"user_id"`
	Token     string    `gorm:"uniqueIndex:idx_user_token" json:"token"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}
