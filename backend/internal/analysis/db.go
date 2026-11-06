package analysis

import (
	"context"
	"encoding/json"
	"fmt"
	"log/slog"
	"time"

	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"

	"google.golang.org/protobuf/encoding/protojson"
)

func (s *Service) CreateNewAnalysis(ctx context.Context, userUid string, text string, image_base64 string, meta *api.MetaInfo) (string, error) {
	var id string
	var locale, countryCode, timezone *string
	var localCapturedAt *time.Time

	if meta != nil {
		if l := meta.GetLocale(); l != "" {
			locale = &l
		}
		if c := meta.GetCountryCode(); c != "" {
			countryCode = &c
		}
		if tz := meta.GetTimezone(); tz != "" {
			timezone = &tz
		}
		if ts := meta.GetTimestamp(); ts != nil && ts.IsValid() {
			t := ts.AsTime()
			localCapturedAt = &t
		}
	}

	const query = `
	INSERT INTO meal_analysis (
		user_uid, text, image_base64, locale, country_code, timezone, local_captured_at
	) VALUES (
		$1, $2, $3, $4, $5, $6, $7
	) RETURNING id`
	err := s.DB.QueryRow(ctx, query, userUid, text, image_base64, locale, countryCode, timezone, localCapturedAt).Scan(&id)
	if err != nil {
		return "", err
	}
	return id, nil
}

func (s *Service) SaveMealComponent(ctx context.Context, id string, pass1 *Pass1DTO) error {
	now := time.Now()
	data, err := json.Marshal(pass1)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET decomposed_component = $2, decomposed_component_at = $3, updated_at = $4, status = 'COMPONENT_DECOMPOSED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, data, now, now)
	if err != nil {
		return fmt.Errorf("failed to update meal component: %w", err)
	}
	return nil
}

func (s *Service) SaveMealIngredient(ctx context.Context, id string, pass2 *Pass2DTO) error {
	now := time.Now()
	data, err := json.Marshal(pass2)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET decomposed_ingredient = $2, decomposed_ingredient_at = $3, updated_at = $4, status = 'INGREDIENT_DECOMPOSED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, data, now, now)
	if err != nil {
		return fmt.Errorf("failed to update meal ingredient: %w", err)
	}
	return nil
}

func (s *Service) SaveUsdaEnriched(ctx context.Context, id string, enriched *server.UsdaEnriched) error {
	now := time.Now()
	json, err := protojson.Marshal(enriched)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET usda_enriched = $2, usda_enriched_at = $3, updated_at = $4, status = 'USDA_MACRO_HYDRATED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, json, now, now)
	if err != nil {
		return fmt.Errorf("failed to update usda enriched: %w", err)
	}
	return nil
}

func (s *Service) searchUsda(ctx context.Context, vectorStr string, ingredientType server.IngredientType) (*UsdaCandidate, error) {
	var query string
	if ingredientType == server.IngredientType_BASE {
		// Prefer foundation, SR legacy, and survey foods over branded products
		query = `
		WITH base_matches AS (
			SELECT
				fdc_id,
				description,
				kcal_per_100g,
				protein_per_100g,
				carbs_per_100g,
				fat_per_100g,
				fiber_per_100g,
				1 - (embedding <=> $1::vector) AS similarity,
				0 AS priority
			FROM usda_foods
			WHERE (data_type IS NULL OR data_type != 'branded_food') AND embedding IS NOT NULL
			ORDER BY embedding <=> $1::vector ASC
			LIMIT 1
		),
		branded_matches AS (
			SELECT
				fdc_id,
				description,
				kcal_per_100g,
				protein_per_100g,
				carbs_per_100g,
				fat_per_100g,
				fiber_per_100g,
				1 - (embedding <=> $1::vector) AS similarity,
				1 AS priority
			FROM usda_foods
			WHERE data_type = 'branded_food' AND embedding IS NOT NULL
			ORDER BY embedding <=> $1::vector ASC
			LIMIT 1
		)
		SELECT
			fdc_id,
			description,
			kcal_per_100g,
			protein_per_100g,
			carbs_per_100g,
			fat_per_100g,
			fiber_per_100g,
			similarity
		FROM (
			SELECT * FROM base_matches
			UNION ALL
			SELECT * FROM branded_matches
		) combined
		ORDER BY priority ASC, similarity DESC
		LIMIT 1;
		`
	} else {
		// Prefer branded foods if tagged as BRANDED
		query = `
		WITH branded_matches AS (
			SELECT
				fdc_id,
				description,
				kcal_per_100g,
				protein_per_100g,
				carbs_per_100g,
				fat_per_100g,
				fiber_per_100g,
				1 - (embedding <=> $1::vector) AS similarity,
				0 AS priority
			FROM usda_foods
			WHERE data_type = 'branded_food' AND embedding IS NOT NULL
			ORDER BY embedding <=> $1::vector ASC
			LIMIT 1
		),
		base_matches AS (
			SELECT
				fdc_id,
				description,
				kcal_per_100g,
				protein_per_100g,
				carbs_per_100g,
				fat_per_100g,
				fiber_per_100g,
				1 - (embedding <=> $1::vector) AS similarity,
				1 AS priority
			FROM usda_foods
			WHERE (data_type IS NULL OR data_type != 'branded_food') AND embedding IS NOT NULL
			ORDER BY embedding <=> $1::vector ASC
			LIMIT 1
		)
		SELECT
			fdc_id,
			description,
			kcal_per_100g,
			protein_per_100g,
			carbs_per_100g,
			fat_per_100g,
			fiber_per_100g,
			similarity
		FROM (
			SELECT * FROM branded_matches
			UNION ALL
			SELECT * FROM base_matches
		) combined
		ORDER BY priority ASC, similarity DESC
		LIMIT 1;
		`
	}
	rows, err := s.UsdaDB.Query(ctx, query, vectorStr)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var rowsData []*UsdaCandidate
	for rows.Next() {
		var r UsdaCandidate
		err := rows.Scan(&r.FdcID,
			&r.Description,
			&r.KcalPer100g,
			&r.ProteinPer100g,
			&r.CarbsPer100g,
			&r.FatPer100g,
			&r.FiberPer100g,
			&r.Similarity)
		if err != nil {
			slog.WarnContext(ctx, "failed to scan usda candidate row", "error", err)
			continue
		}
		rowsData = append(rowsData, &r)
	}
	err = rows.Err()
	if err != nil {
		return nil, fmt.Errorf("failed to iterate usda rows: %w", err)
	}

	if len(rowsData) == 0 {
		return nil, nil
	}

	return rowsData[0], nil
}

func (s *Service) SaveGeneratedClarification(ctx context.Context, id string, clarification *common.Clarifications) error {
	now := time.Now()
	json, err := protojson.Marshal(clarification)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET generated_clarification = $2, generated_clarification_at = $3, updated_at = $4, status = 'CLARIFICATION_GENERATED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, json, now, now)
	if err != nil {
		return fmt.Errorf("failed to save generated clarification: %w", err)
	}
	return nil
}

func (s *Service) SaveFinalResponse(ctx context.Context, id string, mealPackage *common.MealPackage) error {
	now := time.Now()
	json, err := protojson.Marshal(mealPackage)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET final_response = $2, final_response_at = $3, updated_at = $4, status = 'PRESENTED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, json, now, now)
	if err != nil {
		return fmt.Errorf("failed to update final response: %w", err)
	}
	return nil
}

func (s *Service) MarkAnalysisFailed(ctx context.Context, id string, reason string) error {
	now := time.Now()
	const query = `
	UPDATE meal_analysis
	SET updated_at = $2, failure_reason = $3, status = 'FAILED'
	WHERE id = $1 AND status != 'PRESENTED'
	`
	_, err := s.DB.Exec(ctx, query, id, now, reason)
	if err != nil {
		return fmt.Errorf("failed to update failed status for analysis: %w", err)
	}
	return nil
}
