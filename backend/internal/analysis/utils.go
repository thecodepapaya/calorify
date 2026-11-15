package analysis

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"bytes"
	"context"
	_ "embed"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"math"
	"net/http"
	"strconv"
	"strings"
	"time"

	"github.com/openai/openai-go"
	"github.com/openai/openai-go/shared"
)

var ErrorInvalidInput = errors.New("Either text or imageUrl must be provided")
var ErrorLargeImage = errors.New("Max supported image size 500KiB")

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

func ingredientCandidateToEnriched(ingredientRef *IngredientRef, candidate *UsdaCandidate) *server.EnrichedIngredient {
	minGram, gram, maxGram := ingredientRef.ingredient.Portion.Grams()

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
		IngredientId:   ingredientRef.ingredientIdx,
		ComponentId:    ingredientRef.componentIdx,
		Name:           ingredientRef.ingredient.Name,
		CanonicalName:  ingredientRef.ingredient.CanonicalName,
		Description:    candidate.Description,
		FdcId:          candidate.FdcID,
		Similarity:     candidate.Similarity,
		Portion:        ingredientRef.ingredient.Portion.ToCommon(),
		IngredientType: ingredientRef.ingredient.ServerIngredientType(),
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

func aggregateMacro(macros []*common.Macros) *common.Macros {
	calories := common.Measurement{}
	carbs := common.Measurement{}
	protein := common.Measurement{}
	fat := common.Measurement{}
	fiber := common.Measurement{}

	for i := range macros {
		addMeasurement(macros[i].Calorie, &calories)
		addMeasurement(macros[i].Carb, &carbs)
		addMeasurement(macros[i].Protein, &protein)
		addMeasurement(macros[i].Fat, &fat)
		addMeasurement(macros[i].Fiber, &fiber)
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
		t := ts.AsTime()
		if meta.GetTimezone() != "" {
			if loc, err := time.LoadLocation(meta.GetTimezone()); err == nil {
				t = t.In(loc)
			}
		}
		sb.WriteString(fmt.Sprintf("- Capture Time: %s\n", t.Format(time.RFC3339)))
		hasMeta = true
	}
	if !hasMeta {
		return ""
	}
	return "CONTEXT METADATA:\n" + sb.String()
}

//go:embed clarifications_i18n.json
var clarificationI18nRaw []byte

type clarificationLocale struct {
	QuantityQuestion           string `json:"quantity_question"`
	IngredientQuantityQuestion string `json:"ingredient_quantity_question"`
	OptionSmall                string `json:"option_small"`
	OptionMedium               string `json:"option_medium"`
	OptionLarge                string `json:"option_large"`
}
type clarificationI18nFile struct {
	Version int                            `json:"version"`
	Locales map[string]clarificationLocale `json:"locales"`
}

var clarificationTranslations map[string]clarificationLocale

func init() {
	var file clarificationI18nFile
	if err := json.Unmarshal(clarificationI18nRaw, &file); err != nil {
		clarificationTranslations = make(map[string]clarificationLocale)
		return
	}
	clarificationTranslations = file.Locales
}

func getClarificationLocale(locale string) clarificationLocale {
	norm := strings.ToLower(strings.TrimSpace(locale))
	norm = strings.ReplaceAll(norm, "_", "-")
	lang, _, _ := strings.Cut(norm, "-")

	if entry, ok := clarificationTranslations[norm]; ok {
		return entry
	}
	if entry, ok := clarificationTranslations[lang]; ok {
		return entry
	}
	return clarificationTranslations["en"]
}

func buildQuantityClarification(id int32, ingredient *server.EnrichedIngredient, componentName, locale string) *common.Clarification {
	loc := getClarificationLocale(locale)
	return &common.Clarification{
		Id:       id,
		Type:     common.Clarification_QUANTITY,
		Question: fmt.Sprintf(loc.IngredientQuantityQuestion, ingredient.GetName(), componentName),
		Options: []*common.Option{
			{Text: loc.OptionSmall, MacroDelta: macroDelta(ingredient.GetMacros(), false)},
			{Text: loc.OptionMedium, MacroDelta: &common.MacroDelta{}},
			{Text: loc.OptionLarge, MacroDelta: macroDelta(ingredient.GetMacros(), true)},
		},
	}
}

func (s *Service) fanOutPass2CallReq(ctx context.Context, userContent string) (*openai.ChatCompletion, error, int64) {
	llmStart := time.Now()
	res, err := s.LlmClient.Chat.Completions.New(ctx, openai.ChatCompletionNewParams{
		ReasoningEffort: shared.ReasoningEffortLow,
		Model:           openai.ChatModel(llm_model),
		Messages: []openai.ChatCompletionMessageParamUnion{
			openai.SystemMessage(pass2Prompt),
			openai.UserMessage(userContent),
		},
		ResponseFormat: openai.ChatCompletionNewParamsResponseFormatUnion{
			OfJSONSchema: &openai.ResponseFormatJSONSchemaParam{
				JSONSchema: openai.ResponseFormatJSONSchemaJSONSchemaParam{
					Name:   "pass2_decomposition",
					Strict: openai.Bool(true),
					Schema: pass2CallSchema,
				},
			},
		},
	})
	return res, err, time.Since(llmStart).Milliseconds()
}

type IngredientRef struct {
	componentIdx  int32
	ingredientIdx int32
	ingredient    *IngredientDTO
}
