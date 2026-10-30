package analysis

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"context"
	"encoding/base64"
	"fmt"
	"log/slog"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/openai/openai-go"
	"github.com/openai/openai-go/option"
	"github.com/openai/openai-go/shared"
	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
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

	userUid, _ := ctx.Value("user_uid").(string)
	go s.runPipeline(id, userUid, req)

	return &api.MealAnalysisResponse{
		AnalysisId: id,
	}, nil
}

func (s *Service) runPipeline(id string, userUid string, req *api.MealAnalysisRequest) {
	// TODO: make this pipeline idempotent
	bgCtx := context.Background()
	ctx, cancel := context.WithTimeout(bgCtx, 30*time.Second)
	defer cancel()

	tr := otel.Tracer("meal_analysis")
	ctx, span := tr.Start(ctx, "meal_analysis_pipeline", trace.WithAttributes(
		attribute.String("analysis.id", id),
		attribute.String("user.uid", userUid),
		attribute.String("input.text", req.GetText()),
		attribute.Bool("input.has_image", req.GetImageBase64() != ""),
	))
	defer span.End()

	defer func() {
		if r := recover(); r != nil {
			err := fmt.Errorf("pipeline panic: %v", r)
			span.RecordError(err)
			span.SetStatus(codes.Error, err.Error())
			slog.ErrorContext(ctx, "analysis pipeline panicked", "analysis_id", id, "panic", r)
		}
	}()

	pass1, err := s.decomposeComponents(ctx, id, req)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "decomposeComponents failed")
		slog.ErrorContext(ctx, "failed to decompose meal components", "analysis_id", id, "error", err)
		return
	}
	pass2, err := s.decomposeIngredients(ctx, id, pass1)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "decomposeIngredients failed")
		slog.ErrorContext(ctx, "failed to decompose meal ingredients", "analysis_id", id, "error", err)
		return
	}
	enriched, err := s.enrichUsdaMacro(ctx, id, pass2)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "enrichUsdaMacro failed")
		slog.ErrorContext(ctx, "failed to hydrate macros from USDA DB", "analysis_id", id, "error", err)
		return
	}
	generateClarification()
	sendClarification()
	_, err = s.prepareFinalResponse(ctx, id, req, pass1, enriched)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "prepareFinalResponse failed")
		slog.ErrorContext(ctx, "failed to prepare final response", "analysis_id", id, "error", err)
		return
	}
	span.SetStatus(codes.Ok, "completed")
	slog.InfoContext(ctx, "analysis pipeline completed successfully", "analysis_id", id)
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
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "decompose_components")
	defer span.End()

	var parts []openai.ChatCompletionContentPartUnionParam
	contextHeader := buildContextPrefix(req)
	if contextHeader != "" {
		parts = append(parts, openai.TextContentPart(contextHeader))
	}
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
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to call LLM for decomposed components", "analysis_id", id, "error", err)
		return nil, err
	}

	rawJson := res.Choices[0].Message.Content
	pass1, err := parsePass1Response(rawJson)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to parse pass1 response schema", "analysis_id", id, "error", err)
		return nil, err
	}
	span.SetAttributes(
		attribute.String("meal.name", pass1.Name),
		attribute.String("meal.type", pass1.GetMealType().String()),
		attribute.Int("components.count", len(pass1.Components)),
	)

	err = s.SaveMealComponent(ctx, id, pass1)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save decomposed components to DB", "analysis_id", id, "error", err)
		return nil, err
	}

	return pass1, nil
}

func (s *Service) decomposeIngredients(ctx context.Context, id string, pass1 *server.Pass1) (*server.Pass2, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "decompose_ingredients")
	defer span.End()

	str, err := protojson.Marshal(pass1)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to marshal pass1 for decomposition", "analysis_id", id, "error", err)
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
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to call LLM for decomposed ingredients", "analysis_id", id, "error", err)
		return nil, err
	}

	rawJson := res.Choices[0].Message.Content
	pass2, err := parsePass2Response(rawJson)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to parse pass2 response schema", "analysis_id", id, "error", err)
		return nil, err
	}
	span.SetAttributes(
		attribute.Int("ingredients.count", len(pass2.Ingredients)),
	)

	err = s.SaveMealIngredient(ctx, id, pass2)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save decomposed ingredients to DB", "analysis_id", id, "error", err)
		return nil, err
	}
	return pass2, nil
}

func (s *Service) enrichUsdaMacro(ctx context.Context, id string, pass2 *server.Pass2) (*server.UsdaEnriched, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "enrich_usda_macro")
	defer span.End()

	var ingredients []string
	for _, ing := range pass2.Ingredients {
		ingredients = append(ingredients, "task: search result | query: "+ing.Name)
	}
	embeddings, err := s.getEmbeddings(ctx, ingredients)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to get embeddings from ollama", "analysis_id", id, "error", err)
		return nil, err
	}

	enrichedIngredient := make([]*server.EnrichedIngredient, len(embeddings))
	for i := range embeddings {
		candidate, err := s.searchUsda(ctx, formatVector(embeddings[i]))
		if err != nil {
			span.RecordError(err)
			span.SetStatus(codes.Error, err.Error())
			slog.ErrorContext(ctx, "failed to search usda database", "analysis_id", id, "ingredient", pass2.Ingredients[i].Name, "error", err)
			return nil, err
		} else if candidate == nil {
			err = fmt.Errorf("failed to find match for ingredient")
			span.RecordError(err)
			span.SetStatus(codes.Error, err.Error())
			slog.WarnContext(ctx, "no usda candidate found for ingredient", "analysis_id", id, "ingredient", pass2.Ingredients[i].Name)
			return nil, err
		}
		enrichedIngredient[i] = ingredientCandidateToEnriched(pass2.Ingredients[i], candidate)
	}
	enriched := server.UsdaEnriched{Ingredients: enrichedIngredient, TotalMacros: aggregateMacro(enrichedIngredient)}

	if enriched.TotalMacros != nil && enriched.TotalMacros.Calorie != nil {
		span.SetAttributes(
			attribute.Int64("macro.energy_kcal", int64(enriched.TotalMacros.Calorie.Value)),
		)
	}
	span.SetAttributes(attribute.Int("enriched.ingredients_count", len(enriched.Ingredients)))

	err = s.SaveUsdaEnriched(ctx, id, &enriched)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save usda enriched data to DB", "analysis_id", id, "error", err)
		return nil, err
	}
	return &enriched, nil
}

func generateClarification() {
	// generate clarification questions
	// store questions in analysis
	slog.Debug("clarifications generation skipped")

}

func sendClarification() {
	// skipped for now
	// send question to user
	// get answers and store in analysis
	slog.Debug("clarifications sending skipped")
}

func (s *Service) prepareFinalResponse(ctx context.Context, id string, req *api.MealAnalysisRequest, pass1 *server.Pass1, enriched *server.UsdaEnriched) (*common.Meal, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "prepare_final_response")
	defer span.End()

	mealTime := time.Now().UTC().Format(time.RFC3339)
	meal := common.Meal{
		Name:     pass1.Name,
		Quantity: pass1.Quantity,
		Type:     pass1.GetMealType(),
		Macros:   enriched.TotalMacros,
		Health:   pass1.MealHealth,
		Metadata: &common.MealMetadata{
			ImageBase64:     req.ImageBase64,
			MealDescription: req.Text,
			Tip:             &pass1.Tip,
			Timestamp:       &mealTime,
		},
	}

	span.SetAttributes(
		attribute.String("final.meal_name", meal.Name),
	)

	err := s.SaveFinalResponse(ctx, id, &meal)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save final response to DB", "analysis_id", id, "error", err)
		return nil, err
	}
	return &meal, nil
}
