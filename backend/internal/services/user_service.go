package services

import (
	"context"

	"github.com/calorify/backend/internal/database"
	"github.com/calorify/backend/internal/models"
	"gorm.io/gorm"
)

type UserService struct {
	db *gorm.DB
}

func NewUserService() *UserService {
	return &UserService{
		db: database.DB,
	}
}

func (s *UserService) GetUser(ctx context.Context, userId string) (*models.User, error) {
	var user models.User
	if err := s.db.WithContext(ctx).First(&user, "id = ?", userId).Error; err != nil {
		return nil, err
	}
	return &user, nil
}

func (s *UserService) UpdateUser(ctx context.Context, user *models.User) error {
	return s.db.WithContext(ctx).Save(user).Error
}

func (s *UserService) LogMeal(ctx context.Context, meal *models.Meal) error {
	return s.db.WithContext(ctx).Create(meal).Error
}

func (s *UserService) GetUserMeals(ctx context.Context, userId string, limit, offset int) ([]models.Meal, error) {
	var meals []models.Meal
	err := s.db.WithContext(ctx).
		Where("user_id = ?", userId).
		Order("timestamp desc").
		Limit(limit).
		Offset(offset).
		Find(&meals).Error
	return meals, err
}

func (s *UserService) UpdateMeal(ctx context.Context, meal *models.Meal) error {
	return s.db.WithContext(ctx).Save(meal).Error
}

func (s *UserService) DeleteMeal(ctx context.Context, userId string, mealId uint) error {
	return s.db.WithContext(ctx).
		Where("id = ? AND user_id = ?", mealId, userId).
		Delete(&models.Meal{}).Error
}

func (s *UserService) SaveFCMToken(ctx context.Context, token *models.FCMToken) error {
	return s.db.WithContext(ctx).
		Where(models.FCMToken{UserID: token.UserID}).
		Assign(models.FCMToken{Token: token.Token}).
		FirstOrCreate(token).Error
}
