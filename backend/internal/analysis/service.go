package analysis

import (
	"context"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"log/slog"
	"slices"
	"time"

	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/openai/openai-go/v3"
	"github.com/openai/openai-go/v3/option"
	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
	"golang.org/x/sync/errgroup"
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
	clarifications, err := s.generateClarification(ctx, id, pass1, enriched, req.GetMetaInfo().GetLocale())
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
	id, err := s.CreateNewAnalysis(ctx, userUid, req.GetText(), req.GetImageBase64(), req.GetMetaInfo())
	if err != nil {
		return "", err
	}
	return id, nil
}

func (s *Service) decomposeComponents(ctx context.Context, id string, req *api.MealAnalysisRequest) (*Pass1DTO, error) {
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

	reasoningEffort := string(llmReasoningEffort)
	llmStart := time.Now()
	res, err := s.LlmClient.Chat.Completions.New(ctx, openai.ChatCompletionNewParams{
		ReasoningEffort: llmReasoningEffort,
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
	llmCallData := api.LlmCallRecord{
		AnalysisId:      &id,
		Stage:           api.LlmCallRecord_PASS_1,
		Model:           llm_model,
		DurationMs:      time.Since(llmStart).Milliseconds(),
		ReasoningEffort: &reasoningEffort,
	}
	if err != nil {
		errAdd := err.Error()
		llmCallData.Error = &errAdd
		s.saveLlmCallRecord(ctx, &llmCallData)

		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to call LLM for decomposed components", "analysis_id", id, "error", err)
		return nil, err
	}
	if len(res.Choices) == 0 {
		err := fmt.Errorf("pass 1 returned no choices")
		errAdd := err.Error()
		llmCallData.Error = &errAdd
		s.saveLlmCallRecord(ctx, &llmCallData)
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		return nil, err
	}
	recordLlmUsage(&llmCallData, res)
	s.saveLlmCallRecord(ctx, &llmCallData)

	rawJson := res.Choices[0].Message.Content
	pass1, err := ParsePass1(rawJson)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to parse pass1 response schema", "analysis_id", id, "error", err)
		return nil, err
	}
	if len(pass1.Components) == 0 {
		err := fmt.Errorf("pass 1 returned no components")
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "pass 1 returned no components", "analysis_id", id)
		return nil, err
	}
	span.SetAttributes(
		attribute.String("meal.name", pass1.Name),
		attribute.String("meal.type", pass1.MealType),
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

func (s *Service) decomposeIngredients(ctx context.Context, id string, req *api.MealAnalysisRequest, pass1 *Pass1DTO) (*Pass2DTO, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "decompose_ingredients")
	defer span.End()
	ingredientCount := 0

	results := make([]Pass2ComponentDTO, len(pass1.Components))
	reasoningEffort := string(llmReasoningEffort)
	g, gCtx := errgroup.WithContext(ctx)
	g.SetLimit(10)

	for i := range pass1.Components {
		i := i
		comp := pass1.Components[i]
		compId := int32(i)
		g.Go(func() error {
			data, err := json.Marshal(comp)
			if err != nil {
				span.RecordError(err)
				span.SetStatus(codes.Error, err.Error())
				slog.ErrorContext(ctx, "failed to marshal pass1 for decomposition", "analysis_id", id, "error", err)
				return err
			}

			userContent := string(data)
			if prefix := buildContextPrefix(req); prefix != "" {
				userContent = prefix + "\n\n" + userContent
			}

			res, err, dur := s.fanOutPass2CallReq(gCtx, userContent)
			llmCallData := api.LlmCallRecord{
				AnalysisId:      &id,
				Stage:           api.LlmCallRecord_PASS_2,
				Model:           llm_model,
				DurationMs:      dur,
				ComponentId:     &compId,
				ReasoningEffort: &reasoningEffort,
			}
			if err != nil {
				errAdd := err.Error()
				llmCallData.Error = &errAdd
				s.saveLlmCallRecord(ctx, &llmCallData)

				span.RecordError(err)
				span.SetStatus(codes.Error, err.Error())
				slog.ErrorContext(ctx, "failed to call LLM for decomposed ingredients", "analysis_id", id, "error", err)
				return err
			}
			if len(res.Choices) == 0 {
				err := fmt.Errorf("pass 2 returned no choices")
				errAdd := err.Error()
				llmCallData.Error = &errAdd
				s.saveLlmCallRecord(ctx, &llmCallData)
				span.RecordError(err)
				span.SetStatus(codes.Error, err.Error())
				return err
			}
			recordLlmUsage(&llmCallData, res)
			s.saveLlmCallRecord(ctx, &llmCallData)

			rawJson := res.Choices[0].Message.Content
			pass2Call, err := ParsePass2Call(rawJson)
			if err != nil {
				span.RecordError(err)
				span.SetStatus(codes.Error, err.Error())
				slog.ErrorContext(ctx, "failed to parse pass2 response schema", "analysis_id", id, "error", err)
				return err
			}
			for iIdx := range pass2Call.Ingredients {
				if err := pass2Call.Ingredients[iIdx].Portion.Validate(); err != nil {
					err = fmt.Errorf("component %q ingredient %q: %w", comp.Name, pass2Call.Ingredients[iIdx].Name, err)
					span.RecordError(err)
					span.SetStatus(codes.Error, err.Error())
					slog.ErrorContext(ctx, "invalid pass2 portion", "analysis_id", id, "component", comp.Name, "ingredient", pass2Call.Ingredients[iIdx].Name, "error", err)
					return err
				}
			}
			results[i] = Pass2ComponentDTO{
				Name:          comp.Name,
				CanonicalName: comp.CanonicalName,
				Ingredients:   pass2Call.Ingredients,
			}
			return nil
		})
	}

	if err := g.Wait(); err != nil {
		return nil, err
	}

	pass2 := &Pass2DTO{
		Components: results,
	}

	for _, comp := range results {
		ingredientCount += len(comp.Ingredients)
	}
	span.SetAttributes(
		attribute.Int("components.count", len(pass2.Components)),
		attribute.Int("ingredients.count", ingredientCount),
	)

	err := s.SaveMealIngredient(ctx, id, pass2)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save decomposed ingredients to DB", "analysis_id", id, "error", err)
		return nil, err
	}
	return pass2, nil
}

func (s *Service) enrichUsdaMacro(ctx context.Context, id string, pass2 *Pass2DTO) (*server.UsdaEnriched, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "enrich_usda_macro")
	defer span.End()

	enrichedComponents := make([]*server.EnrichedComponent, len(pass2.Components))
	ingRef := []IngredientRef{}
	var ingredients []string
	for cIdx, comp := range pass2.Components {
		enrichedComponents[cIdx] = &server.EnrichedComponent{
			ComponentId:   int32(cIdx),
			Name:          comp.Name,
			CanonicalName: comp.CanonicalName,
			Ingredients:   make([]*server.EnrichedIngredient, len(comp.Ingredients)),
		}
		for iIdx, ing := range comp.Ingredients {
			ingRef = append(ingRef, IngredientRef{int32(cIdx), int32(iIdx), &comp.Ingredients[iIdx]})
			ingredients = append(ingredients, "task: search result | query: "+ing.CanonicalName)
		}
	}

	embeddings, err := s.getEmbeddings(ctx, ingredients)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to get embeddings from ollama", "analysis_id", id, "error", err)
		return nil, err
	}

	g, gCtx := errgroup.WithContext(ctx)
	// Bound concurrency to avoid exhausting the database connection pool
	g.SetLimit(10)

	for i := range embeddings {
		i := i
		g.Go(func() error {
			candidate, err := s.searchUsda(gCtx, formatVector(embeddings[i]), ingRef[i].ingredient.ServerIngredientType())
			if err != nil {
				span.RecordError(err)
				span.SetStatus(codes.Error, err.Error())
				slog.ErrorContext(gCtx, "failed to search usda database", "analysis_id", id, "ingredient", ingRef[i].ingredient.CanonicalName, "error", err)
				return err
			} else if candidate == nil {
				err = fmt.Errorf("failed to find match for ingredient: %s", ingRef[i].ingredient.CanonicalName)
				span.RecordError(err)
				span.SetStatus(codes.Error, err.Error())
				slog.WarnContext(gCtx, "no usda candidate found for ingredient", "analysis_id", id, "ingredient", ingRef[i].ingredient.CanonicalName)
				return err
			}
			enrichedComponents[ingRef[i].componentIdx].Ingredients[ingRef[i].ingredientIdx] = ingredientCandidateToEnriched(&ingRef[i], candidate)
			return nil
		})
	}

	if err := g.Wait(); err != nil {
		return nil, err
	}

	aggMacro := []*common.Macros{}
	for i, comp := range enrichedComponents {
		macros := []*common.Macros{}
		for _, ing := range comp.Ingredients {
			macros = append(macros, ing.Macros)
		}
		enrichedComponents[i].Macros = aggregateMacro(macros)
		aggMacro = append(aggMacro, enrichedComponents[i].Macros)
	}
	enriched := server.UsdaEnriched{Components: enrichedComponents, Macros: aggregateMacro(aggMacro)}

	if enriched.Macros != nil && enriched.Macros.Calorie != nil {
		span.SetAttributes(
			attribute.Int64("macro.energy_kcal", int64(enriched.Macros.Calorie.Value)),
		)
	}
	span.SetAttributes(
		attribute.Int("enriched.components_count", len(enriched.Components)),
		attribute.Int("enriched.ingredients_count", len(ingredients)),
	)

	err = s.SaveUsdaEnriched(ctx, id, &enriched)
	if err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save usda enriched data to DB", "analysis_id", id, "error", err)
		return nil, err
	}
	return &enriched, nil
}

func (s *Service) generateClarification(ctx context.Context, id string, pass1 *Pass1DTO, enriched *server.UsdaEnriched, locale string) (*common.Clarifications, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "generate_clarification")
	defer span.End()

	const (
		maxQuestions        = 2
		componentThreshold  = 80 // kcal
		ingredientThreshold = 80 // kcal
	)

	var clarifications []*common.Clarification
	clarifiedComponents := make(map[int32]bool)

	// Tier 1: components whose portion is model-inferred and whose calorie
	// variance is over the threshold.
	type componentCandidate struct {
		component *server.EnrichedComponent
		variance  int32
	}
	var componentCandidates []componentCandidate
	for _, comp := range enriched.Components {
		portion := componentPortion(pass1, comp.GetComponentId())
		if portion == nil || portion.GetOrigin() != "MODEL_INFERRED" || portion.GetKind() == "PINCH" {
			continue
		}
		variance := calorieVariance(comp.GetMacros())
		if variance <= componentThreshold {
			continue
		}
		componentCandidates = append(componentCandidates, componentCandidate{comp, variance})
	}
	slices.SortFunc(componentCandidates, func(a, b componentCandidate) int {
		return int(b.variance - a.variance)
	})
	for i := 0; i < len(componentCandidates) && len(clarifications) < maxQuestions; i++ {
		comp := componentCandidates[i].component
		clarifications = append(clarifications, buildComponentQuantityClarification(int32(len(clarifications)), comp, locale))
		clarifiedComponents[comp.GetComponentId()] = true
	}

	// Tier 2: ingredients in components not clarified above.
	type ingredientCandidate struct {
		ingredient    *server.EnrichedIngredient
		componentName string
		variance      int32
	}
	var ingredientCandidates []ingredientCandidate
	for _, comp := range enriched.Components {
		if clarifiedComponents[comp.GetComponentId()] {
			continue
		}
		for _, ing := range comp.Ingredients {
			// A committed count is already the answer to a quantity question.
			if ing.GetPortion().GetKind() == "EXACT" {
				continue
			}
			variance := calorieVariance(ing.GetMacros())
			if variance <= ingredientThreshold {
				continue
			}
			ingredientCandidates = append(ingredientCandidates, ingredientCandidate{ing, comp.GetName(), variance})
		}
	}
	slices.SortFunc(ingredientCandidates, func(a, b ingredientCandidate) int {
		return int(b.variance - a.variance)
	})
	for i := 0; i < len(ingredientCandidates) && len(clarifications) < maxQuestions; i++ {
		candidate := ingredientCandidates[i]
		clarifications = append(clarifications, buildQuantityClarification(int32(len(clarifications)), candidate.ingredient, candidate.componentName, locale))
	}

	span.SetAttributes(
		attribute.Int("clarifications.count", len(clarifications)),
		attribute.Int("components.count", len(enriched.Components)),
	)

	mealClarification := &common.Clarifications{
		Clarification: clarifications,
	}
	if err := s.SaveGeneratedClarification(ctx, id, mealClarification); err != nil {
		span.RecordError(err)
		span.SetStatus(codes.Error, err.Error())
		slog.ErrorContext(ctx, "failed to save generated clarification", "analysis_id", id, "error", err)
		return nil, err
	}
	return mealClarification, nil
}

// calorieVariance returns the calorie range width for a macro set.
func calorieVariance(m *common.Macros) int32 {
	cal := m.GetCalorie()
	return cal.GetMaxValue() - cal.GetMinValue()
}

// componentPortion returns the pass-1 portion for a component id, or nil when
// the id is out of range.
func componentPortion(pass1 *Pass1DTO, componentID int32) *common.Portion {
	if pass1 == nil || componentID < 0 || int(componentID) >= len(pass1.Components) {
		return nil
	}
	return pass1.Components[componentID].Portion.ToCommon()
}

// buildComponentQuantityClarification builds a quantity question for a component.
func buildComponentQuantityClarification(id int32, component *server.EnrichedComponent, locale string) *common.Clarification {
	loc := getClarificationLocale(locale)
	return &common.Clarification{
		Id:       id,
		Type:     common.Clarification_QUANTITY,
		Question: fmt.Sprintf(loc.QuantityQuestion, component.GetName()),
		Options: []*common.Option{
			{Text: loc.OptionSmall, MacroDelta: macroDelta(component.GetMacros(), false)},
			{Text: loc.OptionMedium, MacroDelta: &common.MacroDelta{}},
			{Text: loc.OptionLarge, MacroDelta: macroDelta(component.GetMacros(), true)},
		},
	}
}

// macroDelta returns the macro change from the nominal value to the min or max.
func macroDelta(m *common.Macros, max bool) *common.MacroDelta {
	cal := m.GetCalorie()
	carb := m.GetCarb()
	protein := m.GetProtein()
	fat := m.GetFat()
	fiber := m.GetFiber()
	if max {
		return &common.MacroDelta{
			Calorie: cal.GetMaxValue() - cal.GetValue(),
			Carb:    carb.GetMaxValue() - carb.GetValue(),
			Protein: protein.GetMaxValue() - protein.GetValue(),
			Fat:     fat.GetMaxValue() - fat.GetValue(),
			Fiber:   fiber.GetMaxValue() - fiber.GetValue(),
		}
	}
	return &common.MacroDelta{
		Calorie: cal.GetMinValue() - cal.GetValue(),
		Carb:    carb.GetMinValue() - carb.GetValue(),
		Protein: protein.GetMinValue() - protein.GetValue(),
		Fat:     fat.GetMinValue() - fat.GetValue(),
		Fiber:   fiber.GetMinValue() - fiber.GetValue(),
	}
}

func (s *Service) prepareFinalResponse(ctx context.Context, id string, req *api.MealAnalysisRequest, pass1 *Pass1DTO, enriched *server.UsdaEnriched, clarifications *common.Clarifications) (*common.MealPackage, error) {
	ctx, span := otel.Tracer("meal_analysis").Start(ctx, "prepare_final_response")
	defer span.End()

	captureTime := time.Now().UTC()
	if ts := req.GetMetaInfo().GetTimestamp(); ts != nil {
		captureTime = ts.AsTime().UTC()
	}
	mealTime := captureTime.Format(time.RFC3339)

	mealType := selectMealTypeByTimezone(captureTime, req.GetMetaInfo().GetTimezone(), pass1.MealTypeEnum())

	meal := &common.Meal{
		Name:     pass1.Name,
		Quantity: pass1.Quantity,
		Type:     mealType,
		Macros:   enriched.Macros,
		Health:   pass1.MealHealth.ToCommon(),
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
