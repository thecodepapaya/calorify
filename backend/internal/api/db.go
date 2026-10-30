package api

import (
	"backend/internal/gen_proto/common"
	"context"
	"time"

	"google.golang.org/protobuf/types/known/timestamppb"
)

func (a *App) GetUserByUid(ctx context.Context, uid string) (*common.User, error) {
	const query = `
	SELECT 
		id, name, 
		email, created_at, 
		last_active_at 
	FROM users 
	WHERE uid = $1`
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
	const query = `
	INSERT INTO users (
		uid, name, email
	) VALUES (
		$1, $2, $3
	) ON CONFLICT (uid) DO UPDATE SET uid = $1, name = $2, email = $3`
	_, err := a.DB.Exec(ctx, query, userUid, user.Name, user.Email)
	if err != nil {
		return err
	}
	return nil
}

func (a *App) GetHealthData(ctx context.Context, userUid string) (*common.HealthData, error) {
	const query = `
	SELECT 
		height, height_unit, 
		weight, weight_unit, 
		target_weight, gender, 
		date_of_birth, weight_goal, 
		activity_level, daily_calorie_goal, 
		daily_carb_goal, daily_protein_goal, 
		daily_fat_goal, daily_fiber_goal 
	FROM health_data 
	WHERE user_uid = $1 
	ORDER BY created_at DESC 
	LIMIT 1`
	var height, weight, targetWeight *float64
	var heightUnitStr *string
	var weightUnitStr *string
	var calorie, carb, fat, protein, fiber *int32
	var genderStr *string
	var gender *common.Gender
	var dob *string
	var weightGoalStr *string
	var weightGoal *common.WeightGoal
	var activityLevelStr *string
	var activityLevel *common.ActivityLevel
	err := a.DB.QueryRow(ctx, query, userUid).Scan(&height, &heightUnitStr, &weight, &weightUnitStr, &targetWeight, &genderStr, &dob, &weightGoalStr, &activityLevelStr, &calorie, &carb, &protein, &fat, &fiber)
	if err != nil {
		return nil, err
	}
	if genderStr != nil {
		g := common.Gender(common.Gender_value[*genderStr])
		gender = &g
	}
	if weightGoalStr != nil {
		wg := common.WeightGoal(common.WeightGoal_value[*weightGoalStr])
		weightGoal = &wg
	}
	if activityLevelStr != nil {
		al := common.ActivityLevel(common.ActivityLevel_value[*activityLevelStr])
		activityLevel = &al
	}
	healthData := common.HealthData{
		Height: &common.Height{
			Value: *height,
			Unit:  common.HeightUnit(common.HeightUnit_value[*heightUnitStr]),
		},
		Weight: &common.Weight{
			Value: *weight,
			Unit:  common.WeightUnit(common.WeightUnit_value[*weightUnitStr]),
		},
		TargetWeight: &common.Weight{
			Value: *targetWeight,
			Unit:  common.WeightUnit(common.WeightUnit_value[*weightUnitStr]),
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

func (a *App) InsertHealthData(ctx context.Context, userUid string, healthData *common.HealthData) error {
	const query = `
	INSERT INTO health_data (
		user_uid, height, 
		height_unit, weight, 
		weight_unit, target_weight, 
		gender, date_of_birth, 
		weight_goal, activity_level, 
		daily_calorie_goal, daily_carb_goal, 
		daily_protein_goal, daily_fat_goal, 
		daily_fiber_goal
	) VALUES (
		$1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15
	)`
	// TODO: Use DTO later to prevent nil access errors
	_, err := a.DB.Exec(ctx, query, userUid, healthData.Height.Value, healthData.Height.Unit.String(), healthData.Weight.Value, healthData.Weight.Unit.String(), healthData.TargetWeight.Value, healthData.Gender.String(), healthData.DateOfBirth, healthData.WeightGoal.String(), healthData.ActivityLevel.String(), healthData.DailyMacroGoal.Calorie.Value, healthData.DailyMacroGoal.Carb.Value, healthData.DailyMacroGoal.Protein.Value, healthData.DailyMacroGoal.Fat.Value, healthData.DailyMacroGoal.Fiber.Value)
	if err != nil {
		return err
	}
	return nil
}
