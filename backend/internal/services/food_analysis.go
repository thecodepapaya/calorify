package services

import (
	"context"
	"encoding/json"
	"fmt"

	"github.com/calorify/backend/internal/config"
	"github.com/calorify/backend/internal/models"
	"github.com/google/generative-ai-go/genai"
	"github.com/rs/zerolog/log"
	"google.golang.org/api/option"
)

type FoodAnalysisService struct {
	client *genai.Client
	model  *genai.GenerativeModel
}

func NewFoodAnalysisService(cfg *config.Config) (*FoodAnalysisService, error) {
	ctx := context.Background()
	client, err := genai.NewClient(ctx, option.WithAPIKey(cfg.GeminiAPIKey))
	if err != nil {
		return nil, err
	}

	model := client.GenerativeModel("gemini-1.5-flash")
	model.ResponseMIMEType = "application/json"

	return &FoodAnalysisService{
		client: client,
		model:  model,
	}, nil
}

func (s *FoodAnalysisService) AnalyzeDescription(ctx context.Context, description string) (*models.Meal, error) {
	prompt := fmt.Sprintf("Analyze this food description and return a JSON object with meal_name, meal_quantity, meal_type, calories, protein, carbs, fat, fiber, calorie_confidence (1-10), tip, health_score, and health_reason. Description: %s", description)

	resp, err := s.model.GenerateContent(ctx, genai.Text(prompt))
	if err != nil {
		log.Error().Err(err).Msg("Error generating content from Gemini")
		return nil, err
	}

	if len(resp.Candidates) == 0 {
		return nil, fmt.Errorf("no candidates returned from Gemini")
	}

	var result models.Meal
	// Note: In a real app, you'd want to be more robust with the JSON parsing
	// particularly since Gemini might return a slightly different structure.
	// This assumes the prompt and response schema match.

	// Accessing the response text (simplified)
	for _, part := range resp.Candidates[0].Content.Parts {
		if text, ok := part.(genai.Text); ok {
			err = json.Unmarshal([]byte(text), &result)
			if err != nil {
				log.Error().Err(err).Str("text", string(text)).Msg("Error unmarshaling Gemini response")
				return nil, err
			}
			break
		}
	}

	return &result, nil
}

func (s *FoodAnalysisService) AnalyzeImage(ctx context.Context, imageBytes []byte) (*models.Meal, error) {
	prompt := []genai.Part{
		genai.ImageData("jpeg", imageBytes),
		genai.Text("Analyze this food image and return a JSON object with meal_name, meal_quantity, meal_type, calories, protein, carbs, fat, fiber, calorie_confidence (1-10), tip, health_score, and health_reason."),
	}

	resp, err := s.model.GenerateContent(ctx, prompt...)
	if err != nil {
		log.Error().Err(err).Msg("Error generating content from Gemini")
		return nil, err
	}

	if len(resp.Candidates) == 0 {
		return nil, fmt.Errorf("no candidates returned from Gemini")
	}

	var result models.Meal
	for _, part := range resp.Candidates[0].Content.Parts {
		if text, ok := part.(genai.Text); ok {
			err = json.Unmarshal([]byte(text), &result)
			if err != nil {
				log.Error().Err(err).Str("text", string(text)).Msg("Error unmarshaling Gemini response")
				return nil, err
			}
			break
		}
	}

	return &result, nil
}
