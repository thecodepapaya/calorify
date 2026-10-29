package analysis

import (
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

func (s *Service) searchUsda(ctx context.Context, text string) error {
	const query = `
	SELECT 
    	fdc_id, 
    	description, 
    	kcal_per_100g, 
    	protein_per_100g, 
    	carbs_per_100g, 
    	fat_per_100g, 
    	fiber_per_100g,
    	similarity(normalized_name, $1) AS sim
	FROM usda_foods
	WHERE normalized_name % $1
	ORDER BY (similarity(normalized_name, $1) * 0.7 + quality_score * 0.3) DESC
	LIMIT 1;
	`
	return nil
}
