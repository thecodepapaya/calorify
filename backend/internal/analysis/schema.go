package analysis

import (
	"encoding/json"

	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
)

// Pass 1: Meal Component Decomposition Prompt
const pass1Prompt = `Decompose food input (text/image) into meal components, portions, and clinical health insights.

RULES:
1. Context & Localization (i18n):
   - Use Geographic Country for regional cuisine context.
   - Use Timezone/Capture Time for meal_type.
   - User Locale: When a non-English User Locale is specified, all user-facing text (meal 'name', 'quantity', 'tip', 'health_score_reason', and component 'name') MUST be translated into the language of that locale (e.g. 'es-ES' -> Spanish, 'zh-CN' -> Simplified Chinese, 'ja-JP' -> Japanese).
   - Database Aliases: Component 'aliases' MUST ALWAYS be in plain English containing USDA FoodData Central search terms (e.g. for Japanese "おにぎり", name="おにぎり", aliases=["rice ball", "onigiri", "steamed white rice"]).
2. Named Dish Boundaries:
   - Treat each complete named dish as ONE single component (e.g. "Spaghetti Carbonara", "Chipotle Burrito Bowl", "Chicken Pot Pie", "Mango Sticky Rice").
   - Do NOT decompose a composite dish into its constituent base ingredients (pasta, meat, cheese, rice, beans, etc.) during this pass. Base ingredients belong strictly to Pass 2.
   - Only separate items when they are distinct separate dishes, sides, or beverages (e.g. "Burger with fries and soda" -> 3 components: Burger, French fries, Soda).
3. Portions:
   - Discrete foods with countable units: kind=EXACT (value=count, per_unit_grams=weight per unit).
   - Continuous/measured foods (e.g. pasta, soups, curries, bowls, grams): kind=BULK (value=total grams, per_unit_grams=null).
   - Seasonings/pinches: kind=PINCH (1-5g, per_unit_grams=null).
   - If user explicitly stated the quantity/weight, set min_value = value = max_value and origin=USER_STATED. If estimated by model, provide realistic min/max range and origin=MODEL_INFERRED.
4. Health & Tip: Assign health_score (HEALTHY, NEUTRAL, UNHEALTHY) with a 1-sentence reason and a practical localized dietary tip.
5. NEVER output calories or macros.`

// Pass 2: Base Ingredient Decomposition Prompt
const pass2Prompt = `Decompose meal components into elemental base foods or branded items for USDA database matching.

RULES:
1. Context & User Input: Use regional country/cuisine context and the original meal text if provided to infer realistic cooking mediums (e.g. olive oil vs butter vs ghee) and ingredient proportions.
2. USDA Naming Format: USDA entries follow an inverted taxonomy: [Food Category/Head Noun], [Cut/Form], [Cooking State], [Modifiers] (e.g. "Chicken, breast, meat only, cooked, roasted" or "Egg, whole, cooked, scrambled" or "Rice, white, cooked"). For each ingredient, aliases MUST include search terms in this comma-separated format.
3. Ingredients & Types: Decompose into constituent foods classified as "BASE" (raw/cooked commodity) or "BRANDED" (commercial packaged product).
4. Cooking Mediums: Always allocate cooking fats/oils (5-15g) for cooked dishes according to preparation_method.
5. Portions: Split total component portions accurately with realistic min/max bounds in grams. Set origin to USER_STATED only if explicitly stated in the input text, otherwise MODEL_INFERRED. NEVER output calories or macros.`

// Pass 1 & Pass 2 JSON Schemas for OpenAI Structured Outputs generated from Go DTOs
var pass1Schema = GenerateSchema[Pass1DTO]()
var pass2Schema = GenerateSchema[Pass2DTO]()

// Intermediate Go DTO structs for JSON unmarshaling and OpenAI Schema generation.

type PortionDTO struct {
	Kind            string   `json:"kind" enum:"EXACT,BULK,PINCH"`
	Value           float64  `json:"value" description:"Count for EXACT, or grams for BULK/PINCH"`
	MinValue        float64  `json:"min_value" description:"Plausible lower bound: count for EXACT, or grams for BULK/PINCH"`
	MaxValue        float64  `json:"max_value" description:"Plausible upper bound: count for EXACT, or grams for BULK/PINCH"`
	PerUnitGrams    *float64 `json:"per_unit_grams" description:"Estimated weight in grams per single unit if kind is EXACT, else null"`
	PerUnitMinGrams *float64 `json:"per_unit_min_grams" description:"Plausible lower-bound grams per single unit if kind is EXACT, else null"`
	PerUnitMaxGrams *float64 `json:"per_unit_max_grams" description:"Plausible upper-bound grams per single unit if kind is EXACT, else null"`
	Origin          string   `json:"origin" enum:"MODEL_INFERRED,USER_STATED,USER_CLARIFICATION"`
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

type ComponentDTO struct {
	Name              string     `json:"name" description:"Name of the component dish or item"`
	Aliases           []string   `json:"aliases" item_description:"English keywords and synonyms for database matching"`
	PreparationMethod string     `json:"preparation_method" enum:"UNKNOWN,RAW,BOILED,SIMMERED,STEAMED,PRESSURE_COOKED,POACHED,BAKED,ROASTED,GRILLED,TOASTED,SAUTEED,STIR_FRIED,SHALLOW_FRIED,DEEP_FRIED,BLENDED"`
	Portion           PortionDTO `json:"portion"`
}

type MealHealthDTO struct {
	HealthScore       string `json:"health_score" enum:"NEUTRAL,HEALTHY,UNHEALTHY" description:"Clinical health assessment rating for this meal"`
	HealthScoreReason string `json:"health_score_reason" description:"Short justification for the assigned health rating based on macronutrient balance, processing, and ingredients"`
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
	Name       string         `json:"name" description:"Short, natural display name for the meal"`
	Quantity   string         `json:"quantity" description:"Natural language summary of portion size or count (e.g. '1 bowl', '2 slices', '1 plate')"`
	MealType   string         `json:"meal_type" enum:"UNKNOWN,BREAKFAST,LUNCH,DINNER,SNACK"`
	Tip        string         `json:"tip" description:"Concise, actionable nutritional or dietary coaching tip specific to this meal"`
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
	Name           string     `json:"name" description:"Clean English ingredient name"`
	Aliases        []string   `json:"aliases" item_description:"Synonyms and USDA catalog search terms"`
	IngredientType string     `json:"ingredient_type" enum:"BASE,BRANDED"`
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
