package analysis

import (
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
	"context"
	"encoding/base64"
	"fmt"
	"log/slog"
	"slices"
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

func (s *Service) runPipeline(id string, userUid string, req *api.MealAnalysisRequest) (pipelineErr error) {
	// TODO: make this pipeline idempotent
	bgCtx := context.Background()
	ctx, cancel := context.WithTimeout(bgCtx, 20*time.Second)
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
		var reason string
		if r := recover(); r != nil {
			panicErr := fmt.Errorf("pipeline panic: %v", r)
			span.RecordError(panicErr)
			span.SetStatus(codes.Error, panicErr.Error())
			slog.ErrorContext(ctx, "analysis pipeline panicked", "analysis_id", id, "panic", r)
			reason = panicErr.Error()
		} else if pipelineErr != nil {
			reason = pipelineErr.Error()
		}

		failCtx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
		defer cancel()
		if err := s.MarkAnalysisFailed(failCtx, id, reason); err != nil {
			slog.ErrorContext(ctx, "failed to mark analysis as failed in db", "analysis_id", id, "error", err)
		}
	}()

	pass1, err := s.decomposeComponents(ctx, id, req)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "decomposeComponents failed")
		slog.ErrorContext(ctx, "failed to decompose meal components", "analysis_id", id, "error", err)
		return err
	}
	pass2, err := s.decomposeIngredients(ctx, id, req, pass1)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "decomposeIngredients failed")
		slog.ErrorContext(ctx, "failed to decompose meal ingredients", "analysis_id", id, "error", err)
		return err
	}
	enriched, err := s.enrichUsdaMacro(ctx, id, pass2)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "enrichUsdaMacro failed")
		slog.ErrorContext(ctx, "failed to hydrate macros from USDA DB", "analysis_id", id, "error", err)
		return err
	}
	clarifications, err := s.generateClarification(ctx, id, enriched, req.GetMetaInfo().GetLocale())
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "clarification generation failed")
		slog.ErrorContext(ctx, "failed to generate clarifications", "analysis_id", id, "error", err)
		return err
	}
	_, err = s.prepareFinalResponse(ctx, id, req, pass1, enriched, clarifications)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, "prepareFinalResponse failed")
		slog.ErrorContext(ctx, "failed to prepare final response", "analysis_id", id, "error", err)
		return err
	}
	span.SetStatus(codes.Ok, "completed")
	slog.InfoContext(ctx, "analysis pipeline completed successfully", "analysis_id", id)
	return nil
}

func validateInput(req *api.MealAnalysisRequest) error {
	decodedSize := base64.StdEncoding.DecodedLen(len(req.GetImageBase64()))
	if decodedSize > 500*1024 { // 500KiB limit
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

func (s *Service) decomposeIngredients(ctx context.Context, id string, req *api.MealAnalysisRequest, pass1 *server.Pass1) (*server.Pass2, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "decompose_ingredients")
	defer span.End()

	str, err := protojson.Marshal(pass1)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to marshal pass1 for decomposition", "analysis_id", id, "error", err)
		return nil, err
	}

	userContent := string(str)
	if prefix := buildContextPrefix(req); prefix != "" {
		userContent = prefix + "\n\n" + userContent
	}

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
		candidate, err := s.searchUsda(ctx, formatVector(embeddings[i]), pass2.Ingredients[i].IngredientType)
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

func (s *Service) generateClarification(ctx context.Context, id string, enriched *server.UsdaEnriched, locale string) (*common.Clarifications, error) {
	var clarifications []*common.Clarification
	// Sort by largest calorie variance
	slices.SortFunc(enriched.Ingredients, func(a *server.EnrichedIngredient, b *server.EnrichedIngredient) int {
		varA := int(a.Macros.Calorie.MaxValue) - int(a.Macros.Calorie.MinValue)
		varB := int(b.Macros.Calorie.MaxValue) - int(b.Macros.Calorie.MinValue)
		return varB - varA
	})
	var filteredIng []*server.EnrichedIngredient
	for i := range enriched.Ingredients {
		cal := enriched.Ingredients[i].GetMacros().GetCalorie()
		if cal.GetMaxValue()-cal.GetMinValue() > 80 {
			filteredIng = append(filteredIng, enriched.Ingredients[i])
		}
	}

	limit := min(2, len(filteredIng))
	topK := filteredIng[:limit]
	for i := range topK {
		c := buildQuantityClarification(int32(i), topK[i], locale)
		clarifications = append(clarifications, c)
	}
	mealClarification := &common.Clarifications{
		Clarification: clarifications,
	}
	s.SaveGeneratedClarification(ctx, id, mealClarification)
	return mealClarification, nil
}

func (s *Service) prepareFinalResponse(ctx context.Context, id string, req *api.MealAnalysisRequest, pass1 *server.Pass1, enriched *server.UsdaEnriched, clarifications *common.Clarifications) (*common.MealPackage, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "prepare_final_response")
	defer span.End()

	captureTime := time.Now().UTC()
	if ts := req.GetMetaInfo().GetTimestamp(); ts != nil {
		captureTime = ts.AsTime().UTC()
	}
	mealTime := captureTime.Format(time.RFC3339)

	mealType := selectMealTypeByTimezone(captureTime, req.GetMetaInfo().GetTimezone(), pass1.GetMealType())

	meal := &common.Meal{
		Name:     pass1.Name,
		Quantity: pass1.Quantity,
		Type:     mealType,
		Macros:   enriched.TotalMacros,
		Health:   pass1.MealHealth,
		Metadata: &common.MealMetadata{
			ImageBase64:     req.ImageBase64,
			MealDescription: req.Text,
			Tip:             &pass1.Tip,
			Timestamp:       &mealTime,
		},
	}
	mealPackage := &common.MealPackage{
		Meal:           meal,
		Clarifications: clarifications,
	}

	span.SetAttributes(
		attribute.String("final.meal_name", meal.Name),
		attribute.String("final.meal_type", meal.Type.String()),
	)

	err := s.SaveFinalResponse(ctx, id, mealPackage)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save final response to DB", "analysis_id", id, "error", err)
		return nil, err
	}
	return mealPackage, nil
}

func selectMealTypeByTimezone(t time.Time, timezone string, fallback common.MealType) common.MealType {
	if timezone != "" {
		if loc, err := time.LoadLocation(timezone); err == nil {
			t = t.In(loc)
		}
	}
	hour := t.Hour()
	switch {
	case hour >= 5 && hour < 11:
		return common.MealType_BREAKFAST
	case hour >= 11 && hour < 16:
		return common.MealType_LUNCH
	case hour >= 16 && hour < 18:
		return common.MealType_SNACK
	case hour >= 18 && hour < 23:
		return common.MealType_DINNER
	default:
		if fallback != common.MealType_UNKNOWN {
			return fallback
		}
		return common.MealType_SNACK
	}
}
