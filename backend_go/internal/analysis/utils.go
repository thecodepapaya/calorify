package analysis

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"math"
	"net/http"
	"strconv"
	"strings"
	"time"
)

var ErrorInvalidInput = errors.New("Either text or imageUrl must be provided")
var ErrorLargeImage = errors.New("Max supported image size 200KiB")

const llm_model = "gpt-6-luna"
const EmbeddingModel = "embeddinggemma-2"

func (s *Service) getEmbeddings(ctx context.Context, texts []string) ([][]float32, error) {
	payload := map[string]any{
		"model": EmbeddingModel,
		"input": texts,
	}
	bodyBytes, err := json.Marshal(payload)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal ollama payload: %w", err)
	}

	req, err := http.NewRequestWithContext(ctx, "POST", s.OllamaURL+"/api/embed", bytes.NewReader(bodyBytes))
	if err != nil {
		return nil, fmt.Errorf("failed to create ollama request: %w", err)
	}
	req.Header.Set("Content-Type", "application/json")
	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		return nil, fmt.Errorf("failed to get embeddings from ollama: %w", err)
	}
	defer resp.Body.Close()
	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("ollama returned status %d", resp.StatusCode)
	}
	body, err := io.ReadAll(resp.Body)
	if err != nil || len(body) == 0 {
		return nil, fmt.Errorf("ollama response body empty or unreadable: %w", err)
	}
	var res ollamaEmbedResponse
	err = json.Unmarshal(body, &res)
	if err != nil {
		return nil, fmt.Errorf("failed to unmarshal ollama response: %w", err)
	}
	return res.Embeddings, nil
}

type ollamaEmbedResponse struct {
	Embeddings [][]float32 `json:"embeddings"`
}

func formatVector(vec []float32) string {
	parts := make([]string, len(vec))
	for i, v := range vec {
		parts[i] = strconv.FormatFloat(float64(v), 'f', 6, 32)
	}
	return "[" + strings.Join(parts, ",") + "]"
}

func ingredientCandidateToEnriched(ingredient *server.MealIngredient, candidate *UsdaCandidate) *server.EnrichedIngredient {
	var minGram, maxGram, gram int32
	switch portion := ingredient.GetPortion().(type) {
	case *server.MealIngredient_Bulk:
		minGram = portion.Bulk.Value.MinValue
		gram = portion.Bulk.Value.Value
		maxGram = portion.Bulk.Value.MaxValue
	case *server.MealIngredient_Exact:
		minGram = portion.Exact.PerUnitGram.MinValue * portion.Exact.Value
		gram = portion.Exact.PerUnitGram.Value * portion.Exact.Value
		maxGram = portion.Exact.PerUnitGram.MaxValue * portion.Exact.Value
	case *server.MealIngredient_Pinch:
		minGram = 0
		gram = 0
		maxGram = 0
	}

	minCalories := scaleNutrient(candidate.KcalPer100g, minGram)
	calories := scaleNutrient(candidate.KcalPer100g, gram)
	maxCalories := scaleNutrient(candidate.KcalPer100g, maxGram)

	minCarbs := scaleNutrient(candidate.CarbsPer100g, minGram)
	carbs := scaleNutrient(candidate.CarbsPer100g, gram)
	maxCarbs := scaleNutrient(candidate.CarbsPer100g, maxGram)

	minProtein := scaleNutrient(candidate.ProteinPer100g, minGram)
	protein := scaleNutrient(candidate.ProteinPer100g, gram)
	maxProtein := scaleNutrient(candidate.ProteinPer100g, maxGram)

	minFat := scaleNutrient(candidate.FatPer100g, minGram)
	fat := scaleNutrient(candidate.FatPer100g, gram)
	maxFat := scaleNutrient(candidate.FatPer100g, maxGram)

	minFiber := scaleNutrient(candidate.FiberPer100g, minGram)
	fiber := scaleNutrient(candidate.FiberPer100g, gram)
	maxFiber := scaleNutrient(candidate.FiberPer100g, maxGram)

	enrichedIngredient := &server.EnrichedIngredient{
		Name:        ingredient.Name,
		Description: candidate.Description,
		FdcId:       candidate.FdcID,
		Similarity:  candidate.Similarity,
		Grams: &common.Measurement{
			MinValue: minGram,
			Value:    gram,
			MaxValue: maxGram,
		},
		Macros: &common.Macros{
			Calorie: &common.Measurement{
				MinValue: minCalories,
				Value:    calories,
				MaxValue: maxCalories,
			},
			Carb: &common.Measurement{
				MinValue: minCarbs,
				Value:    carbs,
				MaxValue: maxCarbs,
			},
			Protein: &common.Measurement{
				MinValue: minProtein,
				Value:    protein,
				MaxValue: maxProtein,
			},
			Fat: &common.Measurement{
				MinValue: minFat,
				Value:    fat,
				MaxValue: maxFat,
			},
			Fiber: &common.Measurement{
				MinValue: minFiber,
				Value:    fiber,
				MaxValue: maxFiber,
			},
		},
	}
	return enrichedIngredient
}

func scaleNutrient(per100g float32, grams int32) int32 {
	return int32(math.Round(float64(per100g) * float64(grams) / 100.0))
}

func aggregateMacro(enrichedIngredients []*server.EnrichedIngredient) *common.Macros {
	calories := common.Measurement{}
	carbs := common.Measurement{}
	protein := common.Measurement{}
	fat := common.Measurement{}
	fiber := common.Measurement{}

	for i := range enrichedIngredients {
		addMeasurement(enrichedIngredients[i].Macros.Calorie, &calories)
		addMeasurement(enrichedIngredients[i].Macros.Carb, &carbs)
		addMeasurement(enrichedIngredients[i].Macros.Protein, &protein)
		addMeasurement(enrichedIngredients[i].Macros.Fat, &fat)
		addMeasurement(enrichedIngredients[i].Macros.Fiber, &fiber)
	}

	return &common.Macros{
		Calorie: &calories,
		Carb:    &carbs,
		Protein: &protein,
		Fat:     &fat,
		Fiber:   &fiber,
	}
}

func addMeasurement(src, dst *common.Measurement) {
	if src == nil || dst == nil {
		return
	}
	dst.MinValue += src.MinValue
	dst.Value += src.Value
	dst.MaxValue += src.MaxValue
}

func buildContextPrefix(req *api.MealAnalysisRequest) string {
	meta := req.GetMetaInfo()
	if meta == nil {
		return ""
	}
	var sb strings.Builder
	hasMeta := false
	if meta.GetCountryCode() != "" {
		sb.WriteString(fmt.Sprintf("- Geographic Country: %s\n", meta.GetCountryCode()))
		hasMeta = true
	}
	if meta.GetLocale() != "" {
		sb.WriteString(fmt.Sprintf("- User Locale: %s\n", meta.GetLocale()))
		hasMeta = true
	}
	if meta.GetTimezone() != "" {
		sb.WriteString(fmt.Sprintf("- Timezone: %s\n", meta.GetTimezone()))
		hasMeta = true
	}
	if ts := meta.GetTimestamp(); ts != nil {
		sb.WriteString(fmt.Sprintf("- Capture Time: %s\n", ts.AsTime().Format(time.RFC3339)))
		hasMeta = true
	}
	if !hasMeta {
		return ""
	}
	return "CONTEXT METADATA:\n" + sb.String()
}
