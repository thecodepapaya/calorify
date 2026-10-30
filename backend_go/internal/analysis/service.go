package analysis

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/server"
	"context"
	"encoding/base64"
	"fmt"
	"time"

	"log"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/openai/openai-go"
	"github.com/openai/openai-go/option"
	"github.com/openai/openai-go/shared"
	"google.golang.org/protobuf/encoding/protojson"
)

type Service struct {
	DB        *pgxpool.Pool
	UsdaDB    *pgxpool.Pool
	LlmClient *openai.Client
	OllamaURL string
}

func New(db *pgxpool.Pool, usdaDB *pgxpool.Pool, apiKey string, ollamaURL string) *Service {
	client := openai.NewClient(option.WithAPIKey(apiKey))
	service := Service{
		DB:        db,
		UsdaDB:    usdaDB,
		LlmClient: &client,
		OllamaURL: ollamaURL,
	}

	return &service
}

func (s *Service) AnalyzeMeal(ctx context.Context, req *api.MealAnalysisRequest) (*api.MealAnalysisResponse, error) {
	err := validateInput(req)
	if err != nil {
		return &api.MealAnalysisResponse{}, err
	}
	id, err := s.initiateAnalysis(ctx, req)
	if err != nil {
		return &api.MealAnalysisResponse{}, err
	}

	go s.runPipeline(id, req)

	return &api.MealAnalysisResponse{
		AnalysisId: id,
	}, nil

	// generate clarification questions
	// store questions in analysis
	// send question to user
	// get answers and store in analysis
	// prepare final presentation
	// store in analysis
	// send to user

}

func (s *Service) runPipeline(id string, req *api.MealAnalysisRequest) {
	// TODO: make this pipeline idempotent
	bgCtx := context.Background()
	ctx, cancel := context.WithTimeout(bgCtx, 30*time.Second)
	defer cancel()
	defer func() {
		if r := recover(); r != nil {
			log.Printf("Analysis pipeline panicked for id %s: %v", id, r)
		}
	}()

	pass1, err := s.decomposeComponents(ctx, id, req)
	if err != nil {
		log.Printf("Failed to decompose to meal components %v", err)
		return
	}
	pass2, err := s.decomposeIngredients(ctx, id, pass1)
	if err != nil {
		log.Printf("Failed to decompose to meal ingredients %v", err)
		return
	}
	enriched, err := s.enrichUsdaMacro(ctx, id, pass2)
	if err != nil {
		log.Printf("Failed to hydrate macros from USDA DB %v", err)
		return
	}
	generateClarification()
	sendClarification()
	prepareFinalResponse(enriched)
}

func validateInput(req *api.MealAnalysisRequest) error {
	decodedSize := base64.StdEncoding.DecodedLen(len(req.GetImageBase64()))
	if decodedSize > 200*1024 { // 200KiB limit
		return ErrorLargeImage
	}
	if req.GetImageBase64() != "" || req.GetText() != "" {
		return nil
	}
	return ErrorInvalidInput
}

func (s *Service) initiateAnalysis(ctx context.Context, req *api.MealAnalysisRequest) (string, error) {
	userUid, _ := ctx.Value("user_uid").(string)
	id, err := s.CreateNewAnalysis(ctx, userUid, req.GetText(), req.GetImageBase64())
	if err != nil {
		return "", err
	}
	return id, nil
}

func (s *Service) decomposeComponents(ctx context.Context, id string, req *api.MealAnalysisRequest) (*server.Pass1, error) {
	var parts []openai.ChatCompletionContentPartUnionParam
	if req.GetText() != "" {
		parts = append(parts, openai.TextContentPart(req.GetText()))
	}
	if req.GetImageBase64() != "" {
		dataUrl := "data:image/webp;base64," + req.GetImageBase64()
		parts = append(parts, openai.ImageContentPart(openai.ChatCompletionContentPartImageImageURLParam{
			URL: dataUrl,
		}))
	}
	res, err := s.LlmClient.Chat.Completions.New(ctx, openai.ChatCompletionNewParams{
		ReasoningEffort: shared.ReasoningEffortLow,
		Model:           openai.ChatModel(llm_model),
		Messages: []openai.ChatCompletionMessageParamUnion{
			openai.SystemMessage(pass1Prompt),
			openai.UserMessage(parts),
		},
		ResponseFormat: openai.ChatCompletionNewParamsResponseFormatUnion{
			OfJSONSchema: &openai.ResponseFormatJSONSchemaParam{
				JSONSchema: openai.ResponseFormatJSONSchemaJSONSchemaParam{
					Name:   "pass1_decomposition",
					Strict: openai.Bool(true),
					Schema: pass1Schema,
				},
			},
		},
	})
	if err != nil {
		log.Printf("No response from provider for decomposed components")
		return nil, err
	}

	rawJson := res.Choices[0].Message.Content
	pass1, err := parsePass1Response(rawJson)
	if err != nil {
		log.Printf("Failed to parse response to schema")
		return nil, err
	}
	err = s.SaveMealComponent(ctx, id, pass1)
	if err != nil {
		log.Printf("Failed to save decomposed components to DB")
		return nil, err
	}

	return pass1, nil
}

func (s *Service) decomposeIngredients(ctx context.Context, id string, pass1 *server.Pass1) (*server.Pass2, error) {
	str, err := protojson.Marshal(pass1)
	if err != nil {
		log.Printf("Failed to parse pass1 input")
		return nil, err
	}
	res, err := s.LlmClient.Chat.Completions.New(ctx, openai.ChatCompletionNewParams{
		ReasoningEffort: shared.ReasoningEffortLow,
		Model:           openai.ChatModel(llm_model),
		Messages: []openai.ChatCompletionMessageParamUnion{
			openai.SystemMessage(pass2Prompt),
			openai.UserMessage(string(str)),
		},
		ResponseFormat: openai.ChatCompletionNewParamsResponseFormatUnion{
			OfJSONSchema: &openai.ResponseFormatJSONSchemaParam{
				JSONSchema: openai.ResponseFormatJSONSchemaJSONSchemaParam{
					Name:   "pass2_decomposition",
					Strict: openai.Bool(true),
					Schema: pass2Schema,
				},
			},
		},
	})
	if err != nil {
		log.Printf("No response from provider for decomposed ingredients")
		return nil, err
	}

	rawJson := res.Choices[0].Message.Content
	pass2, err := parsePass2Response(rawJson)
	if err != nil {
		log.Printf("Failed to parse response to schema")
		return nil, err
	}
	err = s.SaveMealIngredient(ctx, id, pass2)
	if err != nil {
		log.Printf("Failed to save decomposed components to DB")
		return nil, err
	}
	return pass2, nil
}

func (s *Service) enrichUsdaMacro(ctx context.Context, id string, pass2 *server.Pass2) (*server.UsdaEnriched, error) {
	var ingredients []string
	for _, ing := range pass2.Ingredients {
		ingredients = append(ingredients, "task: search result | query: "+ing.Name)
	}
	embeddings, err := s.getEmbeddings(ctx, ingredients)
	if err != nil {
		log.Printf("Failed to get embeddings: %v", err)
		return nil, err
	}

	enrichedIngredient := make([]*server.EnrichedIngredient, len(embeddings))
	for i := range embeddings {
		candidate, err := s.searchUsda(ctx, formatVector(embeddings[i]))
		if err != nil {
			log.Printf("Error in finding match for ingredient: %v", err)
			return nil, err
		} else if candidate == nil {
			log.Printf("failed to find match for ingredient: %v", err)
			return nil, fmt.Errorf("failed to find match for ingredient")
		}
		enrichedIngredient[i] = ingredientCandidateToEnriched(pass2.Ingredients[i], candidate)

	}
	enriched := server.UsdaEnriched{Ingredients: enrichedIngredient, TotalMacros: aggregateMacro(enrichedIngredient)}

	err = s.SaveUsdaEnriched(ctx, id, &enriched)
	if err != nil {
		log.Printf("Failed to save enriched json to DB %v", err)
		return nil, err
	}
	return &enriched, nil
}

func generateClarification() {
	// generate clarification questions
	// store questions in analysis
}

func sendClarification() {
	// skipped for now
	// send question to user
	// get answers and store in analysis
}

func prepareFinalResponse(enriched *server.UsdaEnriched) {
	// prepare final presentation
	// store in analysis
}
