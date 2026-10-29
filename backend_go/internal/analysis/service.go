package analysis

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/server"
	"context"
	"encoding/base64"
	"time"

	"log"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/openai/openai-go"
	"github.com/openai/openai-go/option"
	"github.com/openai/openai-go/shared"
)

type Service struct {
	DB        *pgxpool.Pool
	UsdaDB    *pgxpool.Pool
	LlmClient *openai.Client
}

func New(db *pgxpool.Pool, usdaDB *pgxpool.Pool, apiKey string) *Service {
	client := openai.NewClient(option.WithAPIKey(apiKey))
	service := Service{
		DB:        db,
		UsdaDB:    usdaDB,
		LlmClient: &client,
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

	// do LLM pass 2
	// store response in analysis
	// usda db query
	// store enriched json in analysis
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
	pass2, err := decomposeIngredients(ctx, id, pass1)
	enrichUsdaMacro(ctx, id, pass2)
	generateClarification()
	sendClarification()
	prepareFinalResponse()
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
		Temperature:     openai.Float(0),
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

func decomposeIngredients(ctx context.Context, id string, pass1 *server.Pass1) (*server.Pass2, error) {
	// do LLM pass 2
	// store response in analysis
	return &server.Pass2{}, nil
}

func enrichUsdaMacro(ctx context.Context, id string, pass2 *server.Pass2) {
	// usda db query
	// store enriched json in analysis
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

func prepareFinalResponse() {
	// prepare final presentation
	// store in analysis
}
