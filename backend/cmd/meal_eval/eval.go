package main

import (
	"encoding/json"
	"fmt"
	"strings"
	"unicode"

	"golang.org/x/text/unicode/norm"
)

// ---------------------------------------------------------------------------
// Dataset
// ---------------------------------------------------------------------------

type dataset struct {
	Version     int        `json:"version"`
	Description string     `json:"description"`
	Cases       []evalCase `json:"cases"`
}

type evalCase struct {
	ID                        string               `json:"id"`
	Input                     evalInput            `json:"input"`
	ExpectedComponents        []expectedComponent  `json:"expectedComponents"`
	ForbiddenIngredientGroups [][]string           `json:"forbiddenIngredientGroups"`
}

type evalInput struct {
	Text        string `json:"text"`
	Locale      string `json:"locale"`
	CountryCode string `json:"countryCode"`
	TimeZone    string `json:"timeZone"`
	CapturedAt  string `json:"capturedAt"`
}

type expectedComponent struct {
	Key                        string          `json:"key"`
	Aliases                    []string        `json:"aliases"`
	Portion                    expectedPortion `json:"portion"`
	RequiredIngredientGroups   [][]string      `json:"requiredIngredientGroups"`
	DiagnosticIngredientGroups [][]string      `json:"diagnosticIngredientGroups"`
}

type expectedPortion struct {
	Kind         string           `json:"kind"` // AMOUNT | COUNT
	Exact        *float64         `json:"exact"`
	EstimateMin  *float64         `json:"estimateMin"`
	EstimateMax  *float64         `json:"estimateMax"`
	Origin       string           `json:"origin"`
	PerUnitGrams *expectedPerUnit `json:"perUnitGrams"`
}

type expectedPerUnit struct {
	EstimateMin float64 `json:"estimateMin"`
	EstimateMax float64 `json:"estimateMax"`
	Origin      string  `json:"origin"`
}

func parseDataset(raw []byte) (*dataset, error) {
	var parsed dataset
	if err := json.Unmarshal(raw, &parsed); err != nil {
		return nil, fmt.Errorf("parse dataset: %w", err)
	}
	if parsed.Version <= 0 {
		return nil, fmt.Errorf("dataset requires a positive integer version")
	}
	if len(parsed.Cases) == 0 {
		return nil, fmt.Errorf("dataset requires a non-empty cases array")
	}
	seen := make(map[string]bool, len(parsed.Cases))
	for index, evalCase := range parsed.Cases {
		if strings.TrimSpace(evalCase.ID) == "" {
			return nil, fmt.Errorf("case %d requires a non-empty id", index+1)
		}
		if seen[evalCase.ID] {
			return nil, fmt.Errorf("duplicate case id: %s", evalCase.ID)
		}
		seen[evalCase.ID] = true
		if strings.TrimSpace(evalCase.Input.Text) == "" {
			return nil, fmt.Errorf("case %s requires input text", evalCase.ID)
		}
		for _, component := range evalCase.ExpectedComponents {
			if component.Portion.Kind != "AMOUNT" && component.Portion.Kind != "COUNT" {
				return nil, fmt.Errorf("case %s component %s has unsupported portion kind %q", evalCase.ID, component.Key, component.Portion.Kind)
			}
		}
	}
	return &parsed, nil
}

// ---------------------------------------------------------------------------
// Raw model output
//
// The harness validates the model's raw JSON rather than the parsed proto so
// that a missing or null field is observable. The production parser unmarshals
// into the same shape, so anything that passes here also parses in production.
// ---------------------------------------------------------------------------

type rawPortion struct {
	Kind            *string  `json:"kind"`
	Value           *float64 `json:"value"`
	MinValue        *float64 `json:"min_value"`
	MaxValue        *float64 `json:"max_value"`
	PerUnitGrams    *float64 `json:"per_unit_grams"`
	PerUnitMinGrams *float64 `json:"per_unit_min_grams"`
	PerUnitMaxGrams *float64 `json:"per_unit_max_grams"`
	Origin          *string  `json:"origin"`
}

type rawComponent struct {
	Name              *string     `json:"name"`
	Aliases           *[]string   `json:"aliases"`
	PreparationMethod *string     `json:"preparation_method"`
	Portion           *rawPortion `json:"portion"`
}

type rawMealHealth struct {
	HealthScore       *string `json:"health_score"`
	HealthScoreReason *string `json:"health_score_reason"`
}

type rawPass1 struct {
	Name       *string         `json:"name"`
	Quantity   *string         `json:"quantity"`
	MealType   *string         `json:"meal_type"`
	Tip        *string         `json:"tip"`
	MealHealth *rawMealHealth  `json:"meal_health"`
	Components *[]rawComponent `json:"components"`
}

type rawIngredient struct {
	Name           *string     `json:"name"`
	Aliases        *[]string   `json:"aliases"`
	IngredientType *string     `json:"ingredient_type"`
	Portion        *rawPortion `json:"portion"`
}

type rawPass2 struct {
	Ingredients *[]rawIngredient `json:"ingredients"`
}

var (
	mealTypes = map[string]bool{
		"MEAL_TYPE_UNKNOWN": true, "MEAL_TYPE_BREAKFAST": true,
		"MEAL_TYPE_LUNCH": true, "MEAL_TYPE_DINNER": true, "MEAL_TYPE_SNACK": true,
	}
	preparationMethods = map[string]bool{
		"UNKNOWN": true, "RAW": true, "BOILED": true, "SIMMERED": true, "STEAMED": true,
		"PRESSURE_COOKED": true, "POACHED": true, "BAKED": true, "ROASTED": true,
		"GRILLED": true, "TOASTED": true, "SAUTEED": true, "STIR_FRIED": true,
		"SHALLOW_FRIED": true, "DEEP_FRIED": true, "BLENDED": true, "JUICED": true,
		"FERMENTED": true, "PICKLED": true, "DRIED": true, "SMOKED": true,
		"COOKED_UNKNOWN": true, "OTHER": true,
	}
	portionKinds = map[string]bool{"EXACT": true, "BULK": true, "PINCH": true}
	origins      = map[string]bool{
		"MODEL_INFERRED": true, "USER_STATED": true, "USER_CLARIFICATION": true,
	}
	ingredientTypes = map[string]bool{"BASE": true, "BRANDED": true}
)

func validatePortion(portion *rawPortion, path string, issues *[]string) {
	if portion == nil {
		*issues = append(*issues, path+" is missing")
		return
	}
	if portion.Kind == nil || !portionKinds[*portion.Kind] {
		*issues = append(*issues, path+".kind is missing or invalid")
	}
	if portion.Value == nil {
		*issues = append(*issues, path+".value is missing")
	}
	if portion.MinValue == nil {
		*issues = append(*issues, path+".min_value is missing")
	}
	if portion.MaxValue == nil {
		*issues = append(*issues, path+".max_value is missing")
	}
	if portion.Origin == nil || !origins[*portion.Origin] {
		*issues = append(*issues, path+".origin is missing or invalid")
	}
}

func validatePass1(pass1 *rawPass1) []string {
	var issues []string
	if pass1 == nil {
		return []string{"response is not valid JSON for the pass-1 contract"}
	}
	if pass1.Name == nil {
		issues = append(issues, "name is missing")
	}
	if pass1.Quantity == nil {
		issues = append(issues, "quantity is missing")
	}
	if pass1.MealType == nil || !mealTypes[*pass1.MealType] {
		issues = append(issues, "meal_type is missing or invalid")
	}
	if pass1.Tip == nil {
		issues = append(issues, "tip is missing")
	}
	if pass1.MealHealth == nil {
		issues = append(issues, "meal_health is missing")
	} else {
		if pass1.MealHealth.HealthScore == nil {
			issues = append(issues, "meal_health.health_score is missing")
		}
		if pass1.MealHealth.HealthScoreReason == nil {
			issues = append(issues, "meal_health.health_score_reason is missing")
		}
	}
	if pass1.Components == nil {
		issues = append(issues, "components is missing")
		return issues
	}
	for index, component := range *pass1.Components {
		path := fmt.Sprintf("components[%d]", index)
		if component.Name == nil {
			issues = append(issues, path+".name is missing")
		}
		if component.Aliases == nil {
			issues = append(issues, path+".aliases is missing")
		}
		if component.PreparationMethod == nil || !preparationMethods[*component.PreparationMethod] {
			issues = append(issues, path+".preparation_method is missing or invalid")
		}
		validatePortion(component.Portion, path+".portion", &issues)
	}
	return issues
}

func validatePass2(pass2 *rawPass2) []string {
	var issues []string
	if pass2 == nil {
		return []string{"response is not valid JSON for the pass-2 contract"}
	}
	if pass2.Ingredients == nil {
		return []string{"ingredients is missing"}
	}
	for index, ingredient := range *pass2.Ingredients {
		path := fmt.Sprintf("ingredients[%d]", index)
		if ingredient.Name == nil {
			issues = append(issues, path+".name is missing")
		}
		if ingredient.Aliases == nil {
			issues = append(issues, path+".aliases is missing")
		}
		if ingredient.IngredientType == nil || !ingredientTypes[*ingredient.IngredientType] {
			issues = append(issues, path+".ingredient_type is missing or invalid")
		}
		validatePortion(ingredient.Portion, path+".portion", &issues)
	}
	return issues
}

// ---------------------------------------------------------------------------
// Text matching (ported from the TypeScript evaluator so scores stay comparable)
// ---------------------------------------------------------------------------

func normalized(value string) string {
	return strings.ToLower(strings.TrimSpace(norm.NFKC.String(value)))
}

func matchableText(value string) string {
	decomposed := norm.NFD.String(normalized(value))
	var builder strings.Builder
	for _, r := range decomposed {
		if unicode.Is(unicode.Mn, r) {
			continue
		}
		if (r >= 'a' && r <= 'z') || (r >= '0' && r <= '9') {
			builder.WriteRune(r)
		} else {
			builder.WriteRune(' ')
		}
	}
	return strings.Join(strings.Fields(builder.String()), " ")
}

var genericAliasTokens = map[string]bool{
	"prepared": true, "cooked": true, "fresh": true, "food": true,
	"meal": true, "dish": true, "served": true, "style": true,
}

func aliasTokenRoot(token string) string {
	if len(token) > 3 && strings.HasSuffix(token, "s") {
		return token[:len(token)-1]
	}
	return token
}

func includesAlias(value string, aliases []string) bool {
	matchable := matchableText(value)
	if matchable == "" {
		return false
	}
	valueTokens := make(map[string]bool)
	for _, token := range strings.Fields(matchable) {
		valueTokens[aliasTokenRoot(token)] = true
	}
	for _, alias := range aliases {
		normalizedAlias := matchableText(alias)
		if normalizedAlias == "" {
			continue
		}
		if strings.Contains(matchable, normalizedAlias) {
			return true
		}
		var aliasTokens []string
		for _, token := range strings.Fields(normalizedAlias) {
			root := aliasTokenRoot(token)
			if len(root) >= 4 && !genericAliasTokens[root] {
				aliasTokens = append(aliasTokens, root)
			}
		}
		if len(aliasTokens) == 0 {
			continue
		}
		all := true
		for _, token := range aliasTokens {
			if !valueTokens[token] {
				all = false
				break
			}
		}
		if all {
			return true
		}
	}
	return false
}

func containsIngredientTerm(corpus string, term string) bool {
	normalizedTerm := matchableText(term)
	return normalizedTerm != "" && strings.Contains(" "+corpus+" ", " "+normalizedTerm+" ")
}

// ---------------------------------------------------------------------------
// Scoring
// ---------------------------------------------------------------------------

type assertion struct {
	ID     string `json:"id"`
	Kind   string `json:"kind"` // hard | diagnostic
	Passed bool   `json:"passed"`
	Detail string `json:"detail"`
}

type runResult struct {
	CaseID     string      `json:"caseId"`
	Run        int         `json:"run"`
	Passed     bool        `json:"passed"`
	HardPassed int         `json:"hardPassed"`
	HardTotal  int         `json:"hardTotal"`
	DurationMS int64       `json:"durationMs"`
	Error      string      `json:"error,omitempty"`
	Assertions []assertion `json:"assertions"`
}

func componentValue(component rawComponent) string {
	var parts []string
	if component.Name != nil {
		parts = append(parts, *component.Name)
	}
	if component.Aliases != nil {
		parts = append(parts, *component.Aliases...)
	}
	return strings.Join(parts, " ")
}

func ingredientValue(ingredient rawIngredient) string {
	var parts []string
	if ingredient.Name != nil {
		parts = append(parts, *ingredient.Name)
	}
	if ingredient.Aliases != nil {
		parts = append(parts, *ingredient.Aliases...)
	}
	return strings.Join(parts, " ")
}

func portionKindMatches(expected string, actual *string) bool {
	if actual == nil {
		return false
	}
	switch expected {
	case "COUNT":
		return *actual == "EXACT"
	case "AMOUNT":
		return *actual == "BULK" || *actual == "PINCH"
	}
	return false
}

func originMatches(expected string, actual *string) bool {
	return actual != nil && strings.EqualFold(expected, *actual)
}

func portionOrdered(portion *rawPortion) bool {
	if portion == nil || portion.Kind == nil || portion.Value == nil {
		return false
	}
	switch *portion.Kind {
	case "EXACT", "BULK":
		if portion.MinValue == nil || portion.MaxValue == nil {
			return false
		}
		return *portion.MinValue <= *portion.Value && *portion.Value <= *portion.MaxValue
	case "PINCH":
		return *portion.Value > 0
	}
	return false
}

func perUnitOrdered(portion *rawPortion) bool {
	if portion == nil || portion.PerUnitGrams == nil {
		return false
	}
	if portion.PerUnitMinGrams == nil || portion.PerUnitMaxGrams == nil {
		return false
	}
	return *portion.PerUnitMinGrams <= *portion.PerUnitGrams && *portion.PerUnitGrams <= *portion.PerUnitMaxGrams
}

// portionGrams reports the estimated total grams a portion represents.
func portionGrams(portion *rawPortion) (float64, bool) {
	if portion == nil || portion.Kind == nil || portion.Value == nil {
		return 0, false
	}
	switch *portion.Kind {
	case "EXACT":
		if portion.PerUnitGrams == nil {
			return 0, false
		}
		return *portion.Value * *portion.PerUnitGrams, true
	case "BULK", "PINCH":
		return *portion.Value, true
	}
	return 0, false
}

func formatFloat(value *float64) string {
	if value == nil {
		return "missing"
	}
	return fmt.Sprintf("%g", *value)
}

func evaluateRun(evalCase evalCase, pass1 *rawPass1, pass2 *rawPass2, runErr error) runResult {
	assertions := make([]assertion, 0, 64)
	add := func(id string, kind string, passed bool, detail string) {
		assertions = append(assertions, assertion{ID: id, Kind: kind, Passed: passed, Detail: detail})
	}

	expectsFood := len(evalCase.ExpectedComponents) > 0

	pass1Issues := validatePass1(pass1)
	add("pass1.schema", "hard", len(pass1Issues) == 0, strings.Join(pass1Issues, "; "))

	var components []rawComponent
	if pass1 != nil && pass1.Components != nil {
		components = *pass1.Components
	}
	add("pass1.food-detected", "hard", (len(components) > 0) == expectsFood,
		fmt.Sprintf("expected food=%t, received %d components", expectsFood, len(components)))
	add("pass1.component-count", "hard", len(components) == len(evalCase.ExpectedComponents),
		fmt.Sprintf("expected %d, received %d", len(evalCase.ExpectedComponents), len(components)))

	findComponent := func(aliases []string) *rawComponent {
		for index := range components {
			if includesAlias(componentValue(components[index]), aliases) {
				return &components[index]
			}
		}
		return nil
	}

	for _, expected := range evalCase.ExpectedComponents {
		prefix := "pass1." + expected.Key
		component := findComponent(expected.Aliases)
		add(prefix+".present", "hard", component != nil, "aliases: "+strings.Join(expected.Aliases, ", "))

		var portion *rawPortion
		if component != nil {
			portion = component.Portion
		}
		actualKind := "missing"
		if portion != nil && portion.Kind != nil {
			actualKind = *portion.Kind
		}
		add(prefix+".portion-kind", "hard", portionKindMatches(expected.Portion.Kind, portionKind(portion)),
			fmt.Sprintf("expected %s, received %s", expected.Portion.Kind, actualKind))

		var actualOrigin *string
		if portion != nil {
			actualOrigin = portion.Origin
		}
		actualOriginText := "missing"
		if actualOrigin != nil {
			actualOriginText = *actualOrigin
		}
		add(prefix+".portion-origin", "hard", originMatches(expected.Portion.Origin, actualOrigin),
			fmt.Sprintf("expected %s, received %s", expected.Portion.Origin, actualOriginText))

		add(prefix+".range-ordered", "hard", portionOrdered(portion), "min <= value <= max")

		if expected.Portion.Exact != nil {
			exact := *expected.Portion.Exact
			passed := portion != nil && portion.Value != nil && portion.MinValue != nil && portion.MaxValue != nil &&
				*portion.MinValue == exact && *portion.Value == exact && *portion.MaxValue == exact
			detail := "missing"
			if portion != nil {
				detail = fmt.Sprintf("%s/%s/%s", formatFloat(portion.MinValue), formatFloat(portion.Value), formatFloat(portion.MaxValue))
			}
			add(prefix+".exact-value", "hard", passed, fmt.Sprintf("expected %g, received %s", exact, detail))
		} else {
			grams, ok := portionGrams(portion)
			passed := ok
			if passed {
				if expected.Portion.EstimateMin != nil && grams < *expected.Portion.EstimateMin {
					passed = false
				}
				if expected.Portion.EstimateMax != nil && grams > *expected.Portion.EstimateMax {
					passed = false
				}
			}
			detail := "missing"
			if ok {
				detail = fmt.Sprintf("%.0f g", grams)
			}
			add(prefix+".estimate-plausible", "hard", passed,
				fmt.Sprintf("expected %s-%s g, received %s",
					formatFloat(expected.Portion.EstimateMin), formatFloat(expected.Portion.EstimateMax), detail))
		}

		if expected.Portion.PerUnitGrams != nil {
			perUnit := expected.Portion.PerUnitGrams
			present := portion != nil && portion.Kind != nil && *portion.Kind == "EXACT" && portion.PerUnitGrams != nil
			add(prefix+".per-unit-present", "hard", present, "per_unit_grams is required for EXACT portions")
			add(prefix+".per-unit-range-ordered", "hard", perUnitOrdered(portion), "min <= value <= max")

			plausible := false
			if present {
				plausible = *portion.PerUnitGrams >= perUnit.EstimateMin && *portion.PerUnitGrams <= perUnit.EstimateMax
			}
			var perUnitValue *float64
			if portion != nil {
				perUnitValue = portion.PerUnitGrams
			}
			add(prefix+".per-unit-estimate-plausible", "hard", plausible,
				fmt.Sprintf("expected %g-%g g, received %s", perUnit.EstimateMin, perUnit.EstimateMax, formatFloat(perUnitValue)))

			var perUnitOrigin *string
			if portion != nil {
				perUnitOrigin = portion.Origin
			}
			perUnitOriginText := "missing"
			if perUnitOrigin != nil {
				perUnitOriginText = *perUnitOrigin
			}
			add(prefix+".per-unit-origin", "hard", originMatches(perUnit.Origin, perUnitOrigin),
				fmt.Sprintf("expected %s, received %s", perUnit.Origin, perUnitOriginText))
		}
	}

	// A no-food case has no second pass at all, so pass-2 assertions are
	// vacuously satisfied, matching the TypeScript evaluator.
	pass2Issues := validatePass2(pass2)
	add("pass2.schema", "hard", !expectsFood || len(pass2Issues) == 0, strings.Join(pass2Issues, "; "))

	var ingredients []rawIngredient
	if pass2 != nil && pass2.Ingredients != nil {
		ingredients = *pass2.Ingredients
	}

	originsValid := len(ingredients) > 0
	var seenOrigins []string
	for _, ingredient := range ingredients {
		origin := "missing"
		if ingredient.Portion != nil && ingredient.Portion.Origin != nil {
			origin = *ingredient.Portion.Origin
		}
		seenOrigins = append(seenOrigins, origin)
		if origin != "USER_STATED" && origin != "MODEL_INFERRED" {
			originsValid = false
		}
	}
	add("pass2.amount-origins", "hard", !expectsFood || originsValid,
		"received: "+strings.Join(seenOrigins, ", "))

	usefulAliases := 0
	for _, ingredient := range ingredients {
		if ingredient.Aliases == nil || len(*ingredient.Aliases) == 0 {
			continue
		}
		if ingredient.Name != nil && matchableText(*ingredient.Name) == "water" {
			continue
		}
		usefulAliases++
	}
	add("pass2.lookup-alias-coverage", "diagnostic", !expectsFood || usefulAliases > 0,
		fmt.Sprintf("%d non-water ingredients include lookup aliases", usefulAliases))

	corpusParts := make([]string, 0, len(ingredients))
	for _, ingredient := range ingredients {
		corpusParts = append(corpusParts, ingredientValue(ingredient))
	}
	corpus := matchableText(strings.Join(corpusParts, " "))

	for index, group := range evalCase.ForbiddenIngredientGroups {
		forbidden := false
		for _, term := range group {
			if containsIngredientTerm(corpus, term) {
				forbidden = true
				break
			}
		}
		add(fmt.Sprintf("pass2.forbidden-ingredient-%d", index+1), "hard", pass2 != nil && !forbidden,
			"forbade: "+strings.Join(group, ", "))
	}

	// The Go second pass is a flat ingredient list with no per-component
	// grouping, so required-ingredient groups are checked against the whole
	// meal corpus rather than a single component's recipe.
	for _, expected := range evalCase.ExpectedComponents {
		for index, group := range expected.RequiredIngredientGroups {
			matched := false
			for _, term := range group {
				if containsIngredientTerm(corpus, term) {
					matched = true
					break
				}
			}
			add(fmt.Sprintf("pass2.%s.required-ingredient-%d", expected.Key, index+1), "hard", matched,
				"expected one of: "+strings.Join(group, ", "))
		}
		for index, group := range expected.DiagnosticIngredientGroups {
			matched := false
			for _, term := range group {
				if containsIngredientTerm(corpus, term) {
					matched = true
					break
				}
			}
			add(fmt.Sprintf("pass2.%s.diagnostic-ingredient-%d", expected.Key, index+1), "diagnostic", matched,
				"looked for one of: "+strings.Join(group, ", "))
		}
	}

	// Mass coherence is meal-level for the same reason: pass 2 does not
	// attribute ingredients to components.
	var ingredientTotal float64
	ingredientTotalKnown := len(ingredients) > 0
	for _, ingredient := range ingredients {
		grams, ok := portionGrams(ingredient.Portion)
		if !ok {
			ingredientTotalKnown = false
			break
		}
		ingredientTotal += grams
	}
	var componentTotal float64
	componentTotalKnown := len(components) > 0
	for _, component := range components {
		grams, ok := portionGrams(component.Portion)
		if !ok {
			componentTotalKnown = false
			break
		}
		componentTotal += grams
	}
	coherent := false
	detail := "unavailable"
	if ingredientTotalKnown && componentTotalKnown && componentTotal > 0 {
		ratio := ingredientTotal / componentTotal
		coherent = ratio >= 0.5 && ratio <= 2.5
		detail = fmt.Sprintf("ingredient/component ratio %.2f", ratio)
	}
	add("pass2.mass-coherence", "diagnostic", !expectsFood || coherent, detail)

	hardPassed, hardTotal := 0, 0
	for _, item := range assertions {
		if item.Kind != "hard" {
			continue
		}
		hardTotal++
		if item.Passed {
			hardPassed++
		}
	}

	result := runResult{
		CaseID:     evalCase.ID,
		Passed:     hardPassed == hardTotal,
		HardPassed: hardPassed,
		HardTotal:  hardTotal,
		Assertions: assertions,
	}
	if runErr != nil {
		result.Error = runErr.Error()
	}
	return result
}

func portionKind(portion *rawPortion) *string {
	if portion == nil {
		return nil
	}
	return portion.Kind
}

type assertionRate struct {
	ID       string  `json:"id"`
	Kind     string  `json:"kind"`
	Passed   int     `json:"passed"`
	Total    int     `json:"total"`
	PassRate float64 `json:"passRate"`
}

func assertionPassRates(results []runResult) []assertionRate {
	type bucket struct {
		kind   string
		passed int
		total  int
	}
	groups := make(map[string]*bucket)
	order := make([]string, 0, 64)
	for _, result := range results {
		for _, item := range result.Assertions {
			group, ok := groups[item.ID]
			if !ok {
				group = &bucket{kind: item.Kind}
				groups[item.ID] = group
				order = append(order, item.ID)
			}
			group.total++
			if item.Passed {
				group.passed++
			}
		}
	}
	rates := make([]assertionRate, 0, len(order))
	for _, id := range order {
		group := groups[id]
		rate := 0.0
		if group.total > 0 {
			rate = float64(group.passed) / float64(group.total)
		}
		rates = append(rates, assertionRate{ID: id, Kind: group.kind, Passed: group.passed, Total: group.total, PassRate: rate})
	}
	return rates
}
