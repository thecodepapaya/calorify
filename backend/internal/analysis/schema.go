package analysis

import (
	"encoding/json"

	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
)

// Reusable prompt rules interpolated into the pass prompts.
const (
	// ruleContext grounds both passes in the request's regional cuisine context.
	ruleContext = `Use Geographic Country code for regional cuisine context`
	// ruleLc defines the [lc] localization convention used across passes.
	ruleLc = `Fields marked [lc] are localized. When the User Locale is non-English, write them in that locale's language (e.g. 'es-ES' -> Spanish, 'zh-CN' -> Simplified Chinese, 'ja-JP' -> Japanese).`
	// ruleCanonicalFormat defines the uniform 'canonical_name' format shared by both passes.
	ruleCanonicalFormat = `Canonical Names: Format 'canonical_name' as a single USDA Food Central inverted-taxonomy search term: [Food], [Cut/Form], [Cooking State] (e.g. "Chicken, breast, meat only, cooked, roasted"; "Rice, white, cooked")`
)

// Pass 1: Meal Component Decomposition Prompt
const pass1Prompt = `Decompose food input (text/image) into meal components, portions, and clinical health insights.

RULES:
1. Context: ` + ruleContext + `. ` + ruleLc + `
2. ` + ruleCanonicalFormat + `.
3. Components: Treat each named dish as ONE component (e.g. "Spaghetti Carbonara", "Mango Sticky Rice"); separate only distinct dishes, sides, or beverages (e.g. "Burger with fries and soda" -> Burger, French fries, Soda). Do NOT split dishes into base ingredients (e.g. pasta, rice, cheese).`

// Pass 2: Base Ingredient Decomposition Prompt
const pass2Prompt = `Decompose meal components into elemental base foods or branded items for USDA database matching.

RULES:
1. Context: ` + ruleContext + ` to infer cooking mediums and ingredient proportions (e.g. olive oil vs butter vs ghee).
2. Component Linking: Every ingredient MUST derive from exactly one of the provided components.
3. ` + ruleCanonicalFormat + `. ` + ruleLc + `
4. Cooking Fats: Allocate cooking fats/oils only when preparation_method implies them (e.g. 5-15g oil for SAUTEED/STIR_FRIED; none for BOILED, STEAMED, or RAW).
5. Portions: Split total component portions across ingredients with realistic min/max bounds in grams.`

// Pass 1 & Pass 2 JSON Schemas for OpenAI Structured Outputs generated from Go DTOs
var pass1Schema = GenerateSchema[Pass1DTO]()
var pass2Schema = GenerateSchema[Pass2DTO]()

// Intermediate Go DTO structs for JSON unmarshaling and OpenAI Schema generation.

type PortionDTO struct {
	Kind            string   `json:"kind" enum:"EXACT,BULK,PINCH" description:"EXACT for countable foods (e.g. 2 idli), BULK for continuous foods (e.g. dal, soup), PINCH for seasonings (1-5g)"`
	Value           float64  `json:"value" description:"Count for EXACT, or grams for BULK/PINCH"`
	MinValue        float64  `json:"min_value" description:"Plausible lower bound: count for EXACT, or grams for BULK/PINCH"`
	MaxValue        float64  `json:"max_value" description:"Plausible upper bound: count for EXACT, or grams for BULK/PINCH"`
	PerUnitGrams    *float64 `json:"per_unit_grams" description:"Estimated weight in grams per single unit if kind is EXACT, else null"`
	PerUnitMinGrams *float64 `json:"per_unit_min_grams" description:"Plausible lower-bound grams per single unit if kind is EXACT, else null"`
	PerUnitMaxGrams *float64 `json:"per_unit_max_grams" description:"Plausible upper-bound grams per single unit if kind is EXACT, else null"`
	Origin          string   `json:"origin" enum:"MODEL_INFERRED,USER_STATED" description:"USER_STATED only if the user explicitly stated the quantity/weight (set min_value = value = max_value); otherwise MODEL_INFERRED with an estimated min/max range"`
}

// Grams resolves the min, nominal, and max gram weights from the portion model.
func (p *PortionDTO) Grams() (minGram, gram, maxGram int32) {
	switch p.Kind {
	case "EXACT":
		perUnit := float64(0)
		if p.PerUnitGrams != nil {
			perUnit = *p.PerUnitGrams
		}
		minPerUnit := perUnit
		if p.PerUnitMinGrams != nil && *p.PerUnitMinGrams > 0 {
			minPerUnit = *p.PerUnitMinGrams
		}
		maxPerUnit := perUnit
		if p.PerUnitMaxGrams != nil && *p.PerUnitMaxGrams > 0 {
			maxPerUnit = *p.PerUnitMaxGrams
		}
		return int32(minPerUnit * p.Value), int32(perUnit * p.Value), int32(maxPerUnit * p.Value)
	case "PINCH":
		return 0, 0, 0
	default: // BULK
		val := int32(p.Value)
		minVal := int32(p.MinValue)
		maxVal := int32(p.MaxValue)
		if minVal == 0 || minVal > val {
			minVal = val
		}
		if maxVal == 0 || maxVal < val {
			maxVal = val
		}
		return minVal, val, maxVal
	}
}

// ToCommon converts the portion model into the shared proto representation.
func (p *PortionDTO) ToCommon() *common.Portion {
	return &common.Portion{
		Kind:     p.Kind,
		Value:    p.Value,
		MinValue: p.MinValue,
		MaxValue: p.MaxValue,
		Origin:   p.Origin,
	}
}

type ComponentDTO struct {
	Name              string     `json:"name" description:"[lc] Short display name of the component dish or item"`
	CanonicalName     string     `json:"canonical_name" description:"Canonical name for USDA Food Central database matching; ALWAYS plain English even when the [lc] name is localized (e.g. for \"おにぎり\", canonical_name=\"Rice, white, steamed\")"`
	PreparationMethod string     `json:"preparation_method" enum:"UNKNOWN,RAW,BOILED,SIMMERED,STEAMED,PRESSURE_COOKED,POACHED,BAKED,ROASTED,GRILLED,TOASTED,SAUTEED,STIR_FRIED,SHALLOW_FRIED,DEEP_FRIED,BLENDED"`
	Portion           PortionDTO `json:"portion"`
}

type MealHealthDTO struct {
	HealthScore       string `json:"health_score" enum:"NEUTRAL,HEALTHY,UNHEALTHY" description:"Clinical health assessment rating for this meal"`
	HealthScoreReason string `json:"health_score_reason" description:"[lc] Short justification for the assigned health rating based on macronutrient balance, processing, and ingredients, max 50 chars"`
}

func (m *MealHealthDTO) ToCommon() *common.MealHealth {
	var healthScore common.HealthScore
	if val, ok := common.HealthScore_value[m.HealthScore]; ok {
		healthScore = common.HealthScore(val)
	}
	return &common.MealHealth{
		HealthScore:       &healthScore,
		HealthScoreReason: &m.HealthScoreReason,
	}
}

type Pass1DTO struct {
	Name       string         `json:"name" description:"[lc] Short, natural display name for the meal, max 30 chars"`
	Quantity   string         `json:"quantity" description:"[lc] Natural language summary of portion size or count (e.g. '1 bowl', '1 serving', '1 plate' etc), max 30 chars"`
	MealType   string         `json:"meal_type" enum:"UNKNOWN,BREAKFAST,LUNCH,DINNER,SNACK" description:"Derived from Timezone/Capture Time in the context metadata"`
	Tip        string         `json:"tip" description:"[lc] Concise, interesting tip specific to this meal, max 100 chars"`
	MealHealth MealHealthDTO  `json:"meal_health"`
	Components []ComponentDTO `json:"components"`
}

func (d *Pass1DTO) MealTypeEnum() common.MealType {
	if val, ok := common.MealType_value[d.MealType]; ok {
		return common.MealType(val)
	}
	return common.MealType_UNKNOWN
}

type IngredientDTO struct {
	ComponentName  string     `json:"component_name" description:"Canonical name of the component this ingredient belongs to"`
	Name           string     `json:"name" description:"[lc] Display name for this ingredient"`
	CanonicalName  string     `json:"canonical_name" description:"Canonical name for USDA Food Central database matching; ALWAYS plain English even when the [lc] name is localized"`
	IngredientType string     `json:"ingredient_type" enum:"BASE,BRANDED" description:"BASE for raw/cooked commodities (e.g. rice, egg), BRANDED for commercial packaged products (e.g. Nutella)"`
	Portion        PortionDTO `json:"portion"`
}

func (i *IngredientDTO) ServerIngredientType() server.IngredientType {
	if i.IngredientType == "BRANDED" {
		return server.IngredientType_BRANDED
	}
	return server.IngredientType_BASE
}

type Pass2DTO struct {
	Ingredients []IngredientDTO `json:"ingredients"`
}

// ParsePass1 parses a raw pass-1 structured-output response into Pass1DTO.
func ParsePass1(rawJson string) (*Pass1DTO, error) {
	var dto Pass1DTO
	if err := json.Unmarshal([]byte(rawJson), &dto); err != nil {
		return nil, err
	}
	return &dto, nil
}

// ParsePass2 parses a raw pass-2 structured-output response into Pass2DTO.
func ParsePass2(rawJson string) (*Pass2DTO, error) {
	var dto Pass2DTO
	if err := json.Unmarshal([]byte(rawJson), &dto); err != nil {
		return nil, err
	}
	return &dto, nil
}

type UsdaCandidate struct {
	FdcID          int64   `json:"fdc_id"`
	Description    string  `json:"description"`
	KcalPer100g    float32 `json:"kcal_per_100g"`
	ProteinPer100g float32 `json:"protein_per_100g"`
	CarbsPer100g   float32 `json:"carbs_per_100g"`
	FatPer100g     float32 `json:"fat_per_100g"`
	FiberPer100g   float32 `json:"fiber_per_100g"`
	Similarity     float32 `json:"similarity"`
}
