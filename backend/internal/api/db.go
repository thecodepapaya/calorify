package api

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"context"
	"database/sql"
	"errors"
	"fmt"
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
		generated_clarification::text, generated_clarification_at,
		final_response::text, final_response_at,
		created_at, updated_at, failure_reason
	FROM meal_analysis
	WHERE id = $1 AND user_uid = $2
	`
	var id, uid string
	var text, statusStr, failureReason *string
	var decomposedComponent, decomposedIngredient, usdaEnriched, generatedClarification, finalResponse *string
	var decomposedComponentAt, decomposedIngredientAt, usdaEnrichedAt, generatedClarificationAt, finalResponseAt *time.Time
	var createdAt, updatedAt time.Time

	err := a.DB.QueryRow(ctx, query, analysisId, userUid).Scan(
		&id, &uid, &text, &statusStr,
		&decomposedComponent, &decomposedComponentAt,
		&decomposedIngredient, &decomposedIngredientAt,
		&usdaEnriched, &usdaEnrichedAt,
		&generatedClarification, &generatedClarificationAt,
		&finalResponse, &finalResponseAt,
		&createdAt, &updatedAt, &failureReason,
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
		Id:                     id,
		UserUid:                uid,
		Text:                   text,
		Status:                 status,
		DecomposedComponent:    decomposedComponent,
		DecomposedIngredient:   decomposedIngredient,
		UsdaEnriched:           usdaEnriched,
		GeneratedClarification: generatedClarification,
		FinalResponse:          finalResponse,
		FailureReason:          failureReason,
		CreatedAt:              timestamppb.New(createdAt),
		UpdatedAt:              timestamppb.New(updatedAt),
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
	if generatedClarificationAt != nil {
		result.GeneratedClarificationAt = timestamppb.New(*generatedClarificationAt)
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

func parseTimeRange(tr string) string {
	switch tr {
	case "1D":
		return "1 day"
	case "30D":
		return "30 days"
	default:
		return "7 days"
	}
}

// GetAnalysisHistoryData queries summary statistics and paginated meal analyses.
func (a *App) GetAnalysisHistoryData(ctx context.Context, req *api.AnalysisHistoryRequest) (*api.AnalysisHistoryResponse, error) {
	timeRange := "7D"
	if req != nil && req.TimeRange != nil {
		if *req.TimeRange == "1D" || *req.TimeRange == "30D" {
			timeRange = *req.TimeRange
		}
	}

	statusFilter := "ALL"
	if req != nil && req.Status != nil {
		if *req.Status == "FAILED" || *req.Status == "SUCCESS" {
			statusFilter = *req.Status
		}
	}

	page := int32(1)
	if req != nil && req.Page != nil && *req.Page > 0 {
		page = *req.Page
	}

	pageSize := int32(10)
	if req != nil && req.PageSize != nil && *req.PageSize > 0 {
		pageSize = *req.PageSize
	}

	intervalStr := parseTimeRange(timeRange)

	summaryQuery := fmt.Sprintf(`
	WITH scoped AS (
		SELECT
			id,
			status,
			failure_reason,
			created_at,
			updated_at,
			decomposed_component_at,
			decomposed_ingredient_at,
			usda_enriched_at,
			generated_clarification_at,
			final_response_at,
			-- Step 1: Pass 1 (Components)
			CASE
				WHEN decomposed_component_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (decomposed_component_at - created_at)))
				ELSE NULL
			END as pass1_sec,
			-- Step 2: Pass 2 (Ingredients)
			CASE
				WHEN decomposed_ingredient_at IS NOT NULL AND decomposed_component_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (decomposed_ingredient_at - decomposed_component_at)))
				ELSE NULL
			END as pass2_sec,
			-- Step 3: USDA Hydration
			CASE
				WHEN usda_enriched_at IS NOT NULL AND decomposed_ingredient_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (usda_enriched_at - decomposed_ingredient_at)))
				ELSE NULL
			END as usda_sec,
			-- Step 4: Clarification
			CASE
				WHEN generated_clarification_at IS NOT NULL AND usda_enriched_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (generated_clarification_at - usda_enriched_at)))
				ELSE NULL
			END as clarif_sec,
			-- Step 5: Finalization
			CASE
				WHEN final_response_at IS NOT NULL AND generated_clarification_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (final_response_at - generated_clarification_at)))
				WHEN final_response_at IS NOT NULL AND usda_enriched_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (final_response_at - usda_enriched_at)))
				ELSE NULL
			END as final_sec,
			-- Total Duration
			CASE
				WHEN final_response_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (final_response_at - created_at)))
				WHEN status = 'FAILED' AND updated_at IS NOT NULL
				THEN GREATEST(0, EXTRACT(EPOCH FROM (updated_at - created_at)))
				ELSE NULL
			END as total_sec,
			-- Failed At Step attribution
			CASE
				WHEN status = 'FAILED' AND decomposed_component_at IS NULL THEN 'Pass 1 (Components)'
				WHEN status = 'FAILED' AND decomposed_ingredient_at IS NULL THEN 'Pass 2 (Ingredients)'
				WHEN status = 'FAILED' AND usda_enriched_at IS NULL THEN 'USDA Hydration'
				WHEN status = 'FAILED' AND generated_clarification_at IS NULL THEN 'Clarification'
				WHEN status = 'FAILED' AND final_response_at IS NULL THEN 'Finalization'
				WHEN status = 'FAILED' THEN 'Unknown'
				ELSE NULL
			END as failed_step
		FROM meal_analysis
		WHERE created_at >= NOW() - INTERVAL '%s'
	)
	SELECT
		COUNT(*) as total_reqs,
		COUNT(*) FILTER (WHERE status = 'PRESENTED') as success_count,
		COUNT(*) FILTER (WHERE status = 'FAILED') as failed_count,
		COALESCE(AVG(total_sec) FILTER (WHERE status = 'PRESENTED'), 0) as avg_total_sec,
		COALESCE(AVG(pass1_sec) FILTER (WHERE pass1_sec IS NOT NULL), 0) as avg_pass1_sec,
		COALESCE(AVG(pass2_sec) FILTER (WHERE pass2_sec IS NOT NULL), 0) as avg_pass2_sec,
		COALESCE(AVG(usda_sec) FILTER (WHERE usda_sec IS NOT NULL), 0) as avg_usda_sec,
		COALESCE(AVG(clarif_sec) FILTER (WHERE clarif_sec IS NOT NULL), 0) as avg_clarif_sec,
		COALESCE(AVG(final_sec) FILTER (WHERE final_sec IS NOT NULL), 0) as avg_final_sec,
		COUNT(*) FILTER (WHERE failed_step = 'Pass 1 (Components)') as fail_p1,
		COUNT(*) FILTER (WHERE failed_step = 'Pass 2 (Ingredients)') as fail_p2,
		COUNT(*) FILTER (WHERE failed_step = 'USDA Hydration') as fail_usda,
		COUNT(*) FILTER (WHERE failed_step = 'Clarification') as fail_clarif,
		COUNT(*) FILTER (WHERE failed_step = 'Finalization') as fail_final
	FROM scoped;
	`, intervalStr)

	summary := &api.AnalysisHistorySummary{
		TimeRange:           timeRange,
		AvgStepDurationsSec: make(map[string]float64),
		FailuresByStep:      make(map[string]int32),
	}

	var avgTotalSec, avgP1, avgP2, avgUsda, avgClarif, avgFinal float64
	var failP1, failP2, failUsda, failClarif, failFinal int32

	err := a.DB.QueryRow(ctx, summaryQuery).Scan(
		&summary.TotalRequests,
		&summary.SuccessCount,
		&summary.FailedCount,
		&avgTotalSec,
		&avgP1,
		&avgP2,
		&avgUsda,
		&avgClarif,
		&avgFinal,
		&failP1,
		&failP2,
		&failUsda,
		&failClarif,
		&failFinal,
	)
	if err != nil {
		return nil, fmt.Errorf("failed to query analysis history summary: %w", err)
	}

	if summary.TotalRequests > 0 {
		summary.FailureRatePct = float64(summary.FailedCount) * 100.0 / float64(summary.TotalRequests)
	}
	summary.AvgTotalDurationSec = avgTotalSec
	summary.AvgStepDurationsSec["Pass 1 (Components)"] = avgP1
	summary.AvgStepDurationsSec["Pass 2 (Ingredients)"] = avgP2
	summary.AvgStepDurationsSec["USDA Hydration"] = avgUsda
	summary.AvgStepDurationsSec["Clarification"] = avgClarif
	summary.AvgStepDurationsSec["Finalization"] = avgFinal

	llmSummaryQuery := fmt.Sprintf(`
	WITH per_analysis AS (
		SELECT
			lc.analysis_id,
			lc.stage,
			SUM(lc.prompt_tokens) AS prompt_tokens,
			SUM(lc.cached_tokens) AS cached_tokens,
			SUM(lc.completion_tokens) AS completion_tokens
		FROM llm_call lc
		JOIN meal_analysis ma ON ma.id = lc.analysis_id
		WHERE ma.created_at >= NOW() - INTERVAL '%s'
		  AND ma.status = 'PRESENTED'
		GROUP BY lc.analysis_id, lc.stage
	)
	SELECT
		stage,
		COUNT(*)::int,
		COALESCE(AVG(prompt_tokens), 0),
		COALESCE(AVG(cached_tokens), 0),
		COALESCE(AVG(completion_tokens), 0)
	FROM per_analysis
	GROUP BY stage
	ORDER BY stage;
	`, intervalStr)

	llmSummaryRows, err := a.DB.Query(ctx, llmSummaryQuery)
	if err != nil {
		return nil, fmt.Errorf("failed to query llm call summary: %w", err)
	}
	defer llmSummaryRows.Close()

	for llmSummaryRows.Next() {
		stat := &api.LlmCallSummary{}
		if err := llmSummaryRows.Scan(
			&stat.Stage,
			&stat.AnalysisCount,
			&stat.AvgPromptTokens,
			&stat.AvgCachedTokens,
			&stat.AvgCompletionTokens,
		); err != nil {
			return nil, fmt.Errorf("failed to scan llm call summary: %w", err)
		}
		summary.LlmCalls = append(summary.LlmCalls, stat)
	}
	if err := llmSummaryRows.Err(); err != nil {
		return nil, fmt.Errorf("failed to read llm call summary: %w", err)
	}

	// Duration is the stage wall time, not the sum of the parallel P2 calls.
	wallQuery := fmt.Sprintf(`
	SELECT
		COALESCE(AVG(GREATEST(0, EXTRACT(EPOCH FROM (decomposed_component_at - created_at)))), 0),
		COALESCE(AVG(GREATEST(0, EXTRACT(EPOCH FROM (decomposed_ingredient_at - decomposed_component_at)))), 0)
	FROM meal_analysis
	WHERE status = 'PRESENTED'
	  AND created_at >= NOW() - INTERVAL '%s'
	  AND decomposed_component_at IS NOT NULL
	  AND decomposed_ingredient_at IS NOT NULL;
	`, intervalStr)

	var p1WallSec, p2WallSec float64
	if err := a.DB.QueryRow(ctx, wallQuery).Scan(&p1WallSec, &p2WallSec); err != nil {
		return nil, fmt.Errorf("failed to query stage wall time: %w", err)
	}
	for _, stat := range summary.LlmCalls {
		switch stat.Stage {
		case "PASS_1":
			stat.AvgDurationMs = p1WallSec * 1000
		case "PASS_2":
			stat.AvgDurationMs = p2WallSec * 1000
		}
	}

	// P2 wall-time series: one point per analysis on 1D, daily average otherwise.
	seriesBucket := "date_trunc('day', created_at)"
	if timeRange == "1D" {
		seriesBucket = "created_at"
	}
	seriesQuery := fmt.Sprintf(`
	SELECT
		%s AS bucket,
		AVG(GREATEST(0, EXTRACT(EPOCH FROM (decomposed_ingredient_at - decomposed_component_at)))) AS duration_sec
	FROM meal_analysis
	WHERE status = 'PRESENTED'
	  AND created_at >= NOW() - INTERVAL '%s'
	  AND decomposed_component_at IS NOT NULL
	  AND decomposed_ingredient_at IS NOT NULL
	GROUP BY 1
	ORDER BY 1;
	`, seriesBucket, intervalStr)

	seriesRows, err := a.DB.Query(ctx, seriesQuery)
	if err != nil {
		return nil, fmt.Errorf("failed to query p2 wall time series: %w", err)
	}
	defer seriesRows.Close()

	for seriesRows.Next() {
		var bucket time.Time
		var durationSec float64
		if err := seriesRows.Scan(&bucket, &durationSec); err != nil {
			return nil, fmt.Errorf("failed to scan p2 wall time point: %w", err)
		}
		summary.P2WallTimeSeries = append(summary.P2WallTimeSeries, &api.LlmCallPoint{
			At:          timestamppb.New(bucket),
			DurationSec: durationSec,
		})
	}
	if err := seriesRows.Err(); err != nil {
		return nil, fmt.Errorf("failed to read p2 wall time series: %w", err)
	}

	if failP1 > 0 {
		summary.FailuresByStep["Pass 1 (Components)"] = failP1
	}
	if failP2 > 0 {
		summary.FailuresByStep["Pass 2 (Ingredients)"] = failP2
	}
	if failUsda > 0 {
		summary.FailuresByStep["USDA Hydration"] = failUsda
	}
	if failClarif > 0 {
		summary.FailuresByStep["Clarification"] = failClarif
	}
	if failFinal > 0 {
		summary.FailuresByStep["Finalization"] = failFinal
	}

	whereClause := fmt.Sprintf("WHERE created_at >= NOW() - INTERVAL '%s'", intervalStr)
	switch statusFilter {
	case "FAILED":
		whereClause += " AND status = 'FAILED'"
	case "SUCCESS":
		whereClause += " AND status = 'PRESENTED'"
	}

	countQuery := fmt.Sprintf("SELECT COUNT(*) FROM meal_analysis %s", whereClause)
	var filteredTotal int32
	if err := a.DB.QueryRow(ctx, countQuery).Scan(&filteredTotal); err != nil {
		return nil, fmt.Errorf("failed to count filtered analyses: %w", err)
	}

	offset := (page - 1) * pageSize

	listQuery := fmt.Sprintf(`
	SELECT
		id,
		COALESCE(user_uid, '') as user_uid,
		created_at,
		status,
		COALESCE(text, '') as text,
		(image_base64 IS NOT NULL AND image_base64 != '') as has_image,
		failure_reason,
		COALESCE(decomposed_component->>'name', '') as meta_name,
		COALESCE(decomposed_component->>'quantity', '') as meta_quantity,
		COALESCE(decomposed_component->>'meal_type', '') as meta_meal_type,
		COALESCE(decomposed_component->'meal_health'->>'health_score', '') as meta_health_score,
		COALESCE(jsonb_array_length(decomposed_component->'components'), 0) as meta_comp_count,
		decomposed_component_at,
		decomposed_ingredient_at,
		usda_enriched_at,
		generated_clarification_at,
		final_response_at,
		updated_at,
		locale,
		country_code,
		timezone,
		local_captured_at,
		decomposed_component,
		decomposed_ingredient,
		usda_enriched,
		generated_clarification,
		final_response,
		is_liked
	FROM meal_analysis
	%s
	ORDER BY created_at DESC
	LIMIT $1 OFFSET $2
	`, whereClause)

	rows, err := a.DB.Query(ctx, listQuery, pageSize, offset)
	if err != nil {
		return nil, fmt.Errorf("failed to list meal analyses: %w", err)
	}
	defer rows.Close()

	var items []*api.AnalysisHistoryItem
	for rows.Next() {
		item := &api.AnalysisHistoryItem{
			Metadata: &api.HistoryMetadata{},
		}
		var failReason, locale, countryCode, timezone sql.NullString
		var pass1Raw, pass2Raw, enrichedRaw, clarifRaw, finalRaw sql.NullString
		var isLiked sql.NullBool
		var p1At, p2At, usdaAt, clarifAt, finalAt, updated, localCapturedAt sql.NullTime
		var createdAt time.Time

		err := rows.Scan(
			&item.Id,
			&item.UserUid,
			&createdAt,
			&item.Status,
			&item.Text,
			&item.HasImage,
			&failReason,
			&item.Metadata.Name,
			&item.Metadata.Quantity,
			&item.Metadata.MealType,
			&item.Metadata.HealthScore,
			&item.Metadata.ComponentCount,
			&p1At,
			&p2At,
			&usdaAt,
			&clarifAt,
			&finalAt,
			&updated,
			&locale,
			&countryCode,
			&timezone,
			&localCapturedAt,
			&pass1Raw,
			&pass2Raw,
			&enrichedRaw,
			&clarifRaw,
			&finalRaw,
			&isLiked,
		)
		if err != nil {
			return nil, fmt.Errorf("failed to scan meal analysis row: %w", err)
		}
		item.CreatedAt = timestamppb.New(createdAt)

		if failReason.Valid && failReason.String != "" {
			item.FailureReason = &failReason.String
		}
		if locale.Valid && locale.String != "" {
			item.Locale = &locale.String
		}
		if countryCode.Valid && countryCode.String != "" {
			item.CountryCode = &countryCode.String
		}
		if timezone.Valid && timezone.String != "" {
			item.Timezone = &timezone.String
		}
		if localCapturedAt.Valid {
			item.LocalCapturedAt = timestamppb.New(localCapturedAt.Time)
		}

		steps := make([]*api.StepTiming, 0, 5)

		// Step 1: Pass 1 (Components)
		s1 := &api.StepTiming{Name: "Pass 1 (Components)"}
		if p1At.Valid {
			sec := max(0, p1At.Time.Sub(createdAt).Seconds())
			s1.DurationSec = &sec
			s1.Status = "COMPLETED"
			tStr := p1At.Time.Format("15:04:05")
			s1.CompletedAt = &tStr
		} else if item.Status == "FAILED" {
			s1.Status = "FAILED"
			failedStep := "Pass 1 (Components)"
			item.FailedAtStep = &failedStep
		} else {
			s1.Status = "IN_PROGRESS"
		}
		steps = append(steps, s1)

		// Step 2: Pass 2 (Ingredients)
		s2 := &api.StepTiming{Name: "Pass 2 (Ingredients)"}
		if p2At.Valid && p1At.Valid {
			sec := max(0, p2At.Time.Sub(p1At.Time).Seconds())
			s2.DurationSec = &sec
			s2.Status = "COMPLETED"
			tStr := p2At.Time.Format("15:04:05")
			s2.CompletedAt = &tStr
		} else if item.Status == "FAILED" && p1At.Valid && !p2At.Valid {
			s2.Status = "FAILED"
			failedStep := "Pass 2 (Ingredients)"
			item.FailedAtStep = &failedStep
		} else if p1At.Valid && item.Status != "FAILED" {
			s2.Status = "IN_PROGRESS"
		} else {
			s2.Status = "PENDING"
		}
		steps = append(steps, s2)

		// Step 3: USDA Hydration
		s3 := &api.StepTiming{Name: "USDA Hydration"}
		if usdaAt.Valid && p2At.Valid {
			sec := max(0, usdaAt.Time.Sub(p2At.Time).Seconds())
			s3.DurationSec = &sec
			s3.Status = "COMPLETED"
			tStr := usdaAt.Time.Format("15:04:05")
			s3.CompletedAt = &tStr
		} else if item.Status == "FAILED" && p2At.Valid && !usdaAt.Valid {
			s3.Status = "FAILED"
			failedStep := "USDA Hydration"
			item.FailedAtStep = &failedStep
		} else if p2At.Valid && item.Status != "FAILED" {
			s3.Status = "IN_PROGRESS"
		} else {
			s3.Status = "PENDING"
		}
		steps = append(steps, s3)

		// Step 4: Clarification
		s4 := &api.StepTiming{Name: "Clarification"}
		if clarifAt.Valid && usdaAt.Valid {
			sec := max(0, clarifAt.Time.Sub(usdaAt.Time).Seconds())
			s4.DurationSec = &sec
			s4.Status = "COMPLETED"
			tStr := clarifAt.Time.Format("15:04:05")
			s4.CompletedAt = &tStr
		} else if item.Status == "FAILED" && usdaAt.Valid && !clarifAt.Valid {
			s4.Status = "FAILED"
			failedStep := "Clarification"
			item.FailedAtStep = &failedStep
		} else if usdaAt.Valid && item.Status != "FAILED" {
			s4.Status = "IN_PROGRESS"
		} else {
			s4.Status = "PENDING"
		}
		steps = append(steps, s4)

		// Step 5: Finalization
		s5 := &api.StepTiming{Name: "Finalization"}
		lastCompleted := usdaAt
		if clarifAt.Valid {
			lastCompleted = clarifAt
		}
		if finalAt.Valid && lastCompleted.Valid {
			sec := max(0, finalAt.Time.Sub(lastCompleted.Time).Seconds())
			s5.DurationSec = &sec
			s5.Status = "COMPLETED"
			tStr := finalAt.Time.Format("15:04:05")
			s5.CompletedAt = &tStr
		} else if item.Status == "FAILED" && lastCompleted.Valid && !finalAt.Valid {
			s5.Status = "FAILED"
			failedStep := "Finalization"
			item.FailedAtStep = &failedStep
		} else if lastCompleted.Valid && item.Status != "FAILED" {
			s5.Status = "IN_PROGRESS"
		} else {
			s5.Status = "PENDING"
		}
		steps = append(steps, s5)

		item.Steps = steps

		// Total duration
		if finalAt.Valid {
			tot := max(0, finalAt.Time.Sub(createdAt).Seconds())
			item.TotalDurationSec = &tot
		} else if item.Status == "FAILED" && updated.Valid {
			tot := max(0, updated.Time.Sub(createdAt).Seconds())
			item.TotalDurationSec = &tot
		}

		if updated.Valid {
			item.UpdatedAt = timestamppb.New(updated.Time)
		}
		if isLiked.Valid {
			liked := isLiked.Bool
			item.IsLiked = &liked
		}
		attachStageArtifacts(item, pass1Raw.String, pass2Raw.String, enrichedRaw.String, clarifRaw.String, finalRaw.String)

		items = append(items, item)
	}

	if len(items) > 0 {
		ids := make([]string, 0, len(items))
		for _, item := range items {
			ids = append(ids, item.Id)
		}

		llmQuery := `
		SELECT
			id,
			analysis_id,
			created_at,
			stage,
			model,
			prompt_tokens,
			cached_tokens,
			completion_tokens,
			duration_ms,
			error,
			component_id,
			reasoning_tokens,
			reasoning_effort,
			finish_reason,
			response_model,
			service_tier
		FROM llm_call
		WHERE analysis_id = ANY($1::uuid[])
		ORDER BY analysis_id, id`

		llmRows, err := a.DB.Query(ctx, llmQuery, ids)
		if err != nil {
			return nil, fmt.Errorf("failed to query llm calls for analyses: %w", err)
		}
		defer llmRows.Close()

		byAnalysis := make(map[string][]*api.LlmCallRecord, len(items))
		for llmRows.Next() {
			var analysisID, stage string
			var createdAt time.Time
			var promptTokens, cachedTokens, completionTokens sql.NullInt64
			var componentID sql.NullInt32
			var errText sql.NullString
			rec := &api.LlmCallRecord{}
			if err := llmRows.Scan(
				&rec.Id,
				&analysisID,
				&createdAt,
				&stage,
				&rec.Model,
				&promptTokens,
				&cachedTokens,
				&completionTokens,
				&rec.DurationMs,
				&errText,
				&componentID,
				&rec.ReasoningTokens,
				&rec.ReasoningEffort,
				&rec.FinishReason,
				&rec.ResponseModel,
				&rec.ServiceTier,
			); err != nil {
				return nil, fmt.Errorf("failed to scan llm call row: %w", err)
			}
			rec.AnalysisId = &analysisID
			rec.CreatedAt = timestamppb.New(createdAt)
			rec.Stage = api.LlmCallRecord_Stage(api.LlmCallRecord_Stage_value[stage])
			if componentID.Valid {
				rec.ComponentId = &componentID.Int32
			}
			if promptTokens.Valid {
				rec.PromptTokens = &promptTokens.Int64
			}
			if cachedTokens.Valid {
				rec.CachedTokens = &cachedTokens.Int64
			}
			if completionTokens.Valid {
				rec.CompletionTokens = &completionTokens.Int64
			}
			if errText.Valid && errText.String != "" {
				rec.Error = &errText.String
			}
			byAnalysis[analysisID] = append(byAnalysis[analysisID], rec)
		}
		if err := llmRows.Err(); err != nil {
			return nil, fmt.Errorf("failed to read llm calls: %w", err)
		}

		for _, item := range items {
			item.LlmCalls = byAnalysis[item.Id]
		}
	}

	totalPages := (filteredTotal + pageSize - 1) / pageSize
	if totalPages == 0 {
		totalPages = 1
	}

	return &api.AnalysisHistoryResponse{
		Summary:      summary,
		Items:        items,
		Page:         page,
		PageSize:     pageSize,
		TotalItems:   filteredTotal,
		TotalPages:   totalPages,
		FilterRange:  timeRange,
		FilterStatus: statusFilter,
	}, nil
}
