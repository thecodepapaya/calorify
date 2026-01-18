package models

import (
	"time"

	"gorm.io/gorm"
)

type User struct {
	ID            string         `gorm:"primaryKey" json:"id"` // Firebase UID
	Email         string         `gorm:"unique" json:"email"`
	Height        float64        `json:"height"`
	Weight        float64        `json:"weight"`
	Gender        string         `json:"gender"`
	DateOfBirth   *time.Time     `json:"dob"`
	WeightGoal    string         `json:"weight_goal"`
	ActivityLevel string         `json:"activity_level"`
	CreatedAt     time.Time      `json:"created_at"`
	UpdatedAt     time.Time      `json:"updated_at"`
	DeletedAt     gorm.DeletedAt `gorm:"index" json:"-"`
}
