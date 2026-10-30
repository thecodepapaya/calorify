package analysis

import (
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"context"
	"log"
	"time"

	"google.golang.org/protobuf/encoding/protojson"
)

func (s *Service) CreateNewAnalysis(ctx context.Context, userUid string, text string, image_base64 string) (string, error) {
	var id string
	const query = `
	INSERT INTO meal_analysis (
		user_uid, text, image_base64
	) VALUES (
		$1, $2, $3
	) RETURNING id`
	err := s.DB.QueryRow(ctx, query, userUid, text, image_base64).Scan(&id)
	if err != nil {
		return "", err
	}
	return id, nil
}

func (s *Service) SaveMealComponent(ctx context.Context, id string, pass1 *server.Pass1) error {
	now := time.Now()
	json, err := protojson.Marshal(pass1)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET decomposed_component = $2, decomposed_component_at = $3, updated_at = $4, status = 'COMPONENT_DECOMPOSED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, json, now, now)
	if err != nil {
		log.Printf("Failed to update meal component in DB")
		return err
	}
	return nil
}

func (s *Service) SaveMealIngredient(ctx context.Context, id string, pass2 *server.Pass2) error {
	now := time.Now()
	json, err := protojson.Marshal(pass2)
	if err != nil {
		return err
	}
	const query = `
	UPDATE meal_analysis 
	SET decomposed_ingredient = $2, decomposed_ingredient_at = $3, updated_at = $4, status = 'INGREDIENT_DECOMPOSED'
	WHERE id = $1
	`
	_, err = s.DB.Exec(ctx, query, id, json, now, now)
	if err != nil {
		log.Printf("Failed to update meal component in DB")
		return err
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
		log.Printf("Failed to update usda enriched in DB: %v", err)
		return err
	}
	return nil
}

func (s *Service) searchUsda(ctx context.Context, vectorStr string) (*UsdaCandidate, error) {
	const query = `
	SELECT 
    	fdc_id, 
    	description, 
    	kcal_per_100g, 
    	protein_per_100g, 
    	carbs_per_100g, 
    	fat_per_100g, 
    	fiber_per_100g,
    	1 - (embedding <=> $1::vector) AS similarity
	FROM usda_foods
	WHERE embedding IS NOT NULL
	ORDER BY embedding <=> $1::vector ASC
	LIMIT 1;
	`
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
			log.Printf("Cannot read row to struct")
			continue
		}
		rowsData = append(rowsData, &r)
	}
	err = rows.Err()
	if err != nil {
		log.Printf("Failed to iterate through rows: %v", err)
		return nil, err
	}

	if len(rowsData) == 0 {
		return nil, nil
	}

	return rowsData[0], nil
}

func (s *Service) SaveFinalResponse(ctx context.Context, id string, meal *common.Meal) error {
	now := time.Now()
	json, err := protojson.Marshal(meal)
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
		log.Printf("Failed to update final response in DB: %v", err)
		return err
	}
	return nil
}
