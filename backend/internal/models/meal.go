package models

import (
	"time"

	"gorm.io/gorm"
)

type Meal struct {
	ID                uint           `gorm:"primaryKey" json:"id"`
	UserID            string         `gorm:"index" json:"user_id"`
	MealName          string         `json:"meal_name"`
	MealQuantity      string         `json:"meal_quantity"`
	MealType          string         `json:"meal_type"` // breakfast, lunch, dinner, snack
	Calories          int            `json:"calories"`
	Protein           float64        `json:"protein"`
	Carbs             float64        `json:"carbs"`
	Fat               float64        `json:"fat"`
	Fiber             float64        `json:"fiber"`
	Timestamp         time.Time      `json:"timestamp"`
	CalorieConfidence int            `json:"calorie_confidence"`
	Tip               string         `json:"tip"`
	HealthScore       string         `json:"health_score"`
	HealthReason      string         `json:"health_reason"`
	CreatedAt         time.Time      `json:"created_at"`
	UpdatedAt         time.Time      `json:"updated_at"`
	DeletedAt         gorm.DeletedAt `gorm:"index" json:"-"`
}
