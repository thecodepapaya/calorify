package api

import (
	"backend/internal/gen_proto/common"
	"context"
	"time"

	"google.golang.org/protobuf/types/known/timestamppb"
)

func (a *App) GetUserByUid(ctx context.Context, uid string) (*common.User, error) {
	const query = "SELECT id, name, email, created_at, last_active_at FROM users WHERE uid = $1"
	var id *int
	var name, email *string
	var createdAt, lastActiveAt time.Time
	err := a.DB.QueryRow(ctx, query, uid).Scan(&id, &name, &email, &createdAt, &lastActiveAt)
	if err != nil {
		return nil, err
	}
	user := common.User{
		Name:         name,
		Email:        email,
		CreatedAt:    timestamppb.New(createdAt),
		LastActiveAt: timestamppb.New(lastActiveAt),
	}
	return &user, nil
}

func (a *App) UpsertUserByUid(ctx context.Context, userUid string, user *common.User) error {
	const query = "INSERT INTO users (uid, name, email) VALUES ($1, $2, $3) ON CONFLICT (uid) DO UPDATE SET uid = $1, name = $2, email = $3"
	_, err := a.DB.Exec(ctx, query, userUid, user.Name, user.Email)
	if err != nil {
		return err
	}
	return nil
}

func (a *App) GetHealthData(ctx context.Context, userUid string) (*common.HealthData, error) {
	const query = "SELECT height, height_unit, weight, weight_unit, target_weight, gender, date_of_birth, weight_goal, activity_level, daily_calorie_goal, daily_carb_goal, daily_protein_goal, daily_fat_goal, daily_fiber_goal FROM health_data WHERE user_uid = $1"
	var height, weight, targetWeight *float64
	var heightUnit *common.HeightUnit
	var weightUnit *common.WeightUnit
	var calorie, carb, fat, protein, fiber *int32
	var gender *common.Gender
	var dob *string
	var weightGoal *common.WeightGoal
	var activityLevel *common.ActivityLevel
	err := a.DB.QueryRow(ctx, query, userUid).Scan(&height, &heightUnit, &weight, &weightUnit, &targetWeight, &gender, &dob, &weightGoal, &activityLevel, &calorie, &carb, &protein, &fat, &fiber)
	if err != nil {
		return nil, err
	}
	healthData := common.HealthData{
		Height: &common.Height{
			Value: *height,
			Unit:  *heightUnit,
		},
		Weight: &common.Weight{
			Value: *weight,
			Unit:  *weightUnit,
		},
		TargetWeight: &common.Weight{
			Value: *targetWeight,
			Unit:  *weightUnit,
		},
		Gender:        gender,
		DateOfBirth:   dob,
		WeightGoal:    weightGoal,
		ActivityLevel: activityLevel,
		DailyMacroGoal: &common.Macros{
			Calorie: &common.Measurement{
				Value: *calorie,
			},
			Carb: &common.Measurement{
				Value: *carb,
			},
			Protein: &common.Measurement{
				Value: *protein,
			},
			Fat: &common.Measurement{
				Value: *fat,
			},
			Fiber: &common.Measurement{
				Value: *fiber,
			},
		},
	}
	return &healthData, nil
}

func (a *App) UpsertHealthData(ctx context.Context, userUid string, user *common.HealthData) error {
	const query = "INSERT INTO health_data (uid, name, email) VALUES ($1, $2, $3) ON CONFLICT (uid) DO UPDATE SET uid = $1, name = $2, email = $3"
	_, err := a.DB.Exec(ctx, query, userUid, user.Name, user.Email)
	if err != nil {
		return err
	}
	return nil
}
