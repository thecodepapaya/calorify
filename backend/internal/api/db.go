package api

import (
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"context"
	"errors"
	"time"

	"github.com/jackc/pgx/v5"
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
	var name, email *string
	if user != nil {
		name = user.Name
		email = user.Email
	}
	const query = `
	INSERT INTO users (
		uid, name, email
	) VALUES (
		$1, $2, $3
	) ON CONFLICT (uid) DO UPDATE SET
		uid = $1,
		name = COALESCE($2, users.name),
		email = COALESCE($3, users.email),
		last_active_at = CURRENT_TIMESTAMP`
	_, err := a.DB.Exec(ctx, query, userUid, name, email)
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
		if g, ok := common.Gender_value[*genderStr]; ok {
			gen := common.Gender(g)
			gender = &gen
		}
	}
	if weightGoalStr != nil {
		if wg, ok := common.WeightGoal_value[*weightGoalStr]; ok {
			goal := common.WeightGoal(wg)
			weightGoal = &goal
		}
	}
	if activityLevelStr != nil {
		if al, ok := common.ActivityLevel_value[*activityLevelStr]; ok {
			act := common.ActivityLevel(al)
			activityLevel = &act
		}
	}
	healthData := common.HealthData{
		Gender:        gender,
		DateOfBirth:   dob,
		WeightGoal:    weightGoal,
		ActivityLevel: activityLevel,
	}
	if height != nil && heightUnitStr != nil {
		if hu, ok := common.HeightUnit_value[*heightUnitStr]; ok {
			healthData.Height = &common.Height{
				Value: *height,
				Unit:  common.HeightUnit(hu),
			}
		}
	}
	if weight != nil && weightUnitStr != nil {
		if wu, ok := common.WeightUnit_value[*weightUnitStr]; ok {
			healthData.Weight = &common.Weight{
				Value: *weight,
				Unit:  common.WeightUnit(wu),
			}
		}
	}
	if targetWeight != nil && weightUnitStr != nil {
		if wu, ok := common.WeightUnit_value[*weightUnitStr]; ok {
			healthData.TargetWeight = &common.Weight{
				Value: *targetWeight,
				Unit:  common.WeightUnit(wu),
			}
		}
	}
	if calorie != nil || carb != nil || protein != nil || fat != nil || fiber != nil {
		macros := &common.Macros{}
		if calorie != nil {
			macros.Calorie = &common.Measurement{Value: *calorie}
		}
		if carb != nil {
			macros.Carb = &common.Measurement{Value: *carb}
		}
		if protein != nil {
			macros.Protein = &common.Measurement{Value: *protein}
		}
		if fat != nil {
			macros.Fat = &common.Measurement{Value: *fat}
		}
		if fiber != nil {
			macros.Fiber = &common.Measurement{Value: *fiber}
		}
		healthData.DailyMacroGoal = macros
	}
	return &healthData, nil
}

func (a *App) InsertHealthData(ctx context.Context, userUid string, healthData *common.HealthData) error {
	if healthData == nil {
		return errors.New("health data is required")
	}

	var height *float64
	var heightUnit *string
	if healthData.Height != nil {
		height = &healthData.Height.Value
		u := healthData.Height.Unit.String()
		heightUnit = &u
	}

	var weight *float64
	var weightUnit *string
	if healthData.Weight != nil {
		weight = &healthData.Weight.Value
		u := healthData.Weight.Unit.String()
		weightUnit = &u
	}

	var targetWeight *float64
	if healthData.TargetWeight != nil {
		targetWeight = &healthData.TargetWeight.Value
	}

	var gender *string
	if healthData.Gender != nil {
		g := healthData.Gender.String()
		gender = &g
	}

	var dateOfBirth *string
	if healthData.DateOfBirth != nil && *healthData.DateOfBirth != "" {
		dateOfBirth = healthData.DateOfBirth
	}

	var weightGoal *string
	if healthData.WeightGoal != nil {
		wg := healthData.WeightGoal.String()
		weightGoal = &wg
	}

	var activityLevel *string
	if healthData.ActivityLevel != nil {
		al := healthData.ActivityLevel.String()
		activityLevel = &al
	}

	var calorie, carb, protein, fat, fiber *int32
	if healthData.DailyMacroGoal != nil {
		if healthData.DailyMacroGoal.Calorie != nil {
			calorie = &healthData.DailyMacroGoal.Calorie.Value
		}
		if healthData.DailyMacroGoal.Carb != nil {
			carb = &healthData.DailyMacroGoal.Carb.Value
		}
		if healthData.DailyMacroGoal.Protein != nil {
			protein = &healthData.DailyMacroGoal.Protein.Value
		}
		if healthData.DailyMacroGoal.Fat != nil {
			fat = &healthData.DailyMacroGoal.Fat.Value
		}
		if healthData.DailyMacroGoal.Fiber != nil {
			fiber = &healthData.DailyMacroGoal.Fiber.Value
		}
	}

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
	_, err := a.DB.Exec(ctx, query, userUid, height, heightUnit, weight, weightUnit, targetWeight, gender, dateOfBirth, weightGoal, activityLevel, calorie, carb, protein, fat, fiber)
	if err != nil {
		return err
	}
	return nil
}

func (a *App) GetAnalysisStatusById(ctx context.Context, analysisId string, userUid string) (*server.MealAnalysisStatus, error) {
	const query = `
	SELECT
		id, user_uid, text, status,
		decomposed_component::text, decomposed_component_at,
		decomposed_ingredient::text, decomposed_ingredient_at,
		usda_enriched::text, usda_enriched_at,
		final_response::text, final_response_at,
		created_at, updated_at
	FROM meal_analysis
	WHERE id = $1 AND user_uid = $2
	`
	var id, uid string
	var text, statusStr *string
	var decomposedComponent, decomposedIngredient, usdaEnriched, finalResponse *string
	var decomposedComponentAt, decomposedIngredientAt, usdaEnrichedAt, finalResponseAt *time.Time
	var createdAt, updatedAt time.Time

	err := a.DB.QueryRow(ctx, query, analysisId, userUid).Scan(
		&id, &uid, &text, &statusStr,
		&decomposedComponent, &decomposedComponentAt,
		&decomposedIngredient, &decomposedIngredientAt,
		&usdaEnriched, &usdaEnrichedAt,
		&finalResponse, &finalResponseAt,
		&createdAt, &updatedAt,
	)
	if err != nil {
		return nil, err
	}

	status := server.MealAnalysisStatus_INITIATED
	if statusStr != nil {
		if val, ok := server.MealAnalysisStatus_AnalysisStatus_value[*statusStr]; ok {
			status = server.MealAnalysisStatus_AnalysisStatus(val)
		}
	}

	result := &server.MealAnalysisStatus{
		Id:                    id,
		UserUid:               uid,
		Text:                  text,
		Status:                status,
		DecomposedComponent:   decomposedComponent,
		DecomposedIngredient:  decomposedIngredient,
		UsdaEnriched:          usdaEnriched,
		FinalResponse:         finalResponse,
		CreatedAt:             timestamppb.New(createdAt),
		UpdatedAt:             timestamppb.New(updatedAt),
	}
	if decomposedComponentAt != nil {
		result.DecomposedComponentAt = timestamppb.New(*decomposedComponentAt)
	}
	if decomposedIngredientAt != nil {
		result.DecomposedIngredientAt = timestamppb.New(*decomposedIngredientAt)
	}
	if usdaEnrichedAt != nil {
		result.UsdaEnrichedAt = timestamppb.New(*usdaEnrichedAt)
	}
	if finalResponseAt != nil {
		result.FinalResponseAt = timestamppb.New(*finalResponseAt)
	}

	return result, nil
}

func (a *App) UpdateAnalysisFeedback(ctx context.Context, analysisId string, userUid string, isLiked *bool) error {
	const query = `
	UPDATE meal_analysis
	SET is_liked = $3, updated_at = CURRENT_TIMESTAMP
	WHERE id = $1 AND user_uid = $2
	`
	cmdTag, err := a.DB.Exec(ctx, query, analysisId, userUid, isLiked)
	if err != nil {
		return err
	}
	if cmdTag.RowsAffected() == 0 {
		return pgx.ErrNoRows
	}
	return nil
}
