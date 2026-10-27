package main

import (
	"archive/zip"
	"bytes"
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"sync/atomic"
	"time"

	"backend/internal/config"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
)

type RawFood struct {
	FdcID         int64           `json:"fdcId"`
	Description   string          `json:"description"`
	DataType      string          `json:"dataType"`
	FoodNutrients []*FoodNutrient `json:"foodNutrients"`
}

type FoodNutrient struct {
	Nutrient *Nutrient `json:"nutrient"`
	Amount   *float64  `json:"amount"`
}

type Nutrient struct {
	ID       int64  `json:"id"`
	Name     string `json:"name"`
	UnitName string `json:"unitName"`
}

type DatasetSpec struct {
	Name            string
	Pattern         string
	DefaultDataType string
	QualityScore    float32
}

var datasetSpecs = []DatasetSpec{
	{
		Name:            "Foundation Foods",
		Pattern:         "*foundation*.zip",
		DefaultDataType: "foundation_food",
		QualityScore:    0.95,
	},
	{
		Name:            "SR Legacy Foods",
		Pattern:         "*sr_legacy*.zip",
		DefaultDataType: "sr_legacy_food",
		QualityScore:    0.90,
	},
	{
		Name:            "Survey (FNDDS) Foods",
		Pattern:         "*survey*.zip",
		DefaultDataType: "survey_food",
		QualityScore:    0.85,
	},
	{
		Name:            "Branded Foods",
		Pattern:         "*branded*.zip",
		DefaultDataType: "branded_food",
		QualityScore:    0.70,
	},
}

type MacroValues struct {
	Kcal    float32
	Protein float32
	Carbs   float32
	Fat     float32
	Fiber   float32

	KcalPresent    bool
	ProteinPresent bool
	CarbsPresent   bool
	FatPresent     bool
	FiberPresent   bool
}

func normalizeName(s string) string {
	var b strings.Builder
	b.Grow(len(s))
	for _, r := range strings.ToLower(s) {
		if (r >= 'a' && r <= 'z') || (r >= '0' && r <= '9') || r == ' ' {
			b.WriteRune(r)
		}
	}
	return strings.Join(strings.Fields(b.String()), " ")
}

func extractMacros(nutrients []*FoodNutrient) MacroValues {
	var m MacroValues
	for _, fn := range nutrients {
		if fn == nil || fn.Nutrient == nil || fn.Amount == nil {
			continue
		}
		amt := float32(*fn.Amount)
		name := strings.ToLower(fn.Nutrient.Name)
		unit := strings.ToLower(fn.Nutrient.UnitName)
		id := fn.Nutrient.ID

		switch {
		case id == 1008 || (strings.Contains(name, "energy") && unit == "kcal"):
			m.Kcal = amt
			m.KcalPresent = true
		case id == 1003 || name == "protein":
			m.Protein = amt
			m.ProteinPresent = true
		case id == 1005 || strings.Contains(name, "carbohydrate, by difference"):
			m.Carbs = amt
			m.CarbsPresent = true
		case id == 1004 || strings.Contains(name, "total lipid"):
			m.Fat = amt
			m.FatPresent = true
		case id == 1079 || strings.Contains(name, "fiber, total dietary"):
			m.Fiber = amt
			m.FiberPresent = true
		}
	}
	return m
}

func findPath(candidates []string) (string, error) {
	for _, c := range candidates {
		if _, err := os.Stat(c); err == nil {
			return c, nil
		}
	}
	return "", fmt.Errorf("file not found in candidates: %v", candidates)
}

func findDataDir() (string, error) {
	candidates := []string{
		"usda_data_raw",
		"backend_go/usda_data_raw",
		"../../usda_data_raw",
	}
	for _, c := range candidates {
		if fi, err := os.Stat(c); err == nil && fi.IsDir() {
			return c, nil
		}
	}
	return "", fmt.Errorf("usda_data_raw directory not found in candidates: %v", candidates)
}

func resolveDataType(raw string, defaultType string) string {
	dt := strings.ToLower(strings.TrimSpace(raw))
	switch {
	case strings.Contains(dt, "foundation"):
		return "foundation_food"
	case strings.Contains(dt, "legacy"):
		return "sr_legacy_food"
	case strings.Contains(dt, "survey") || strings.Contains(dt, "fndds"):
		return "survey_food"
	case strings.Contains(dt, "branded"):
		return "branded_food"
	default:
		return defaultType
	}
}

func runMigrations(ctx context.Context, pool *pgxpool.Pool) error {
	migrationPath, err := findPath([]string{
		"migrations/usda/000001_create_usda_tables.sql",
		"backend_go/migrations/usda/000001_create_usda_tables.sql",
		"../../migrations/usda/000001_create_usda_tables.sql",
	})
	if err != nil {
		return fmt.Errorf("unable to locate migration file: %w", err)
	}

	content, err := os.ReadFile(migrationPath)
	if err != nil {
		return fmt.Errorf("reading migration file %s: %w", migrationPath, err)
	}

	log.Printf("Executing migration from %s...", migrationPath)
	if _, err := pool.Exec(ctx, string(content)); err != nil {
		return fmt.Errorf("executing migration: %w", err)
	}
	log.Println("Database migration applied successfully.")
	return nil
}

func streamAndIngestZip(ctx context.Context, pool *pgxpool.Pool, zipPath string, spec DatasetSpec) (int, error) {
	zr, err := zip.OpenReader(zipPath)
	if err != nil {
		return 0, fmt.Errorf("opening zip %s: %w", zipPath, err)
	}
	defer zr.Close()

	var jsonFile *zip.File
	for _, f := range zr.File {
		if strings.HasSuffix(strings.ToLower(f.Name), ".json") {
			jsonFile = f
			break
		}
	}
	if jsonFile == nil {
		return 0, fmt.Errorf("no json file inside %s", zipPath)
	}

	rc, err := jsonFile.Open()
	if err != nil {
		return 0, fmt.Errorf("opening json file stream: %w", err)
	}
	defer rc.Close()

	log.Printf("[%s] Streaming %s (%d uncompressed MB)...", spec.Name, jsonFile.Name, jsonFile.UncompressedSize64/(1024*1024))

	dec := json.NewDecoder(rc)
	t, err := dec.Token()
	if err != nil {
		return 0, fmt.Errorf("reading start of json: %w", err)
	}

	const upsertSQL = `
INSERT INTO usda_foods (
    fdc_id, description, data_type, normalized_name,
    kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g,
    kcal_present, protein_present, carbs_present, fat_present, fiber_present,
    quality_score, quality_flags, updated_at
) VALUES (
    $1, $2, $3, $4,
    $5, $6, $7, $8, $9,
    $10, $11, $12, $13, $14,
    $15, $16, CURRENT_TIMESTAMP
)
ON CONFLICT (fdc_id) DO UPDATE SET
    description = EXCLUDED.description,
    data_type = EXCLUDED.data_type,
    normalized_name = EXCLUDED.normalized_name,
    kcal_per_100g = EXCLUDED.kcal_per_100g,
    protein_per_100g = EXCLUDED.protein_per_100g,
    carbs_per_100g = EXCLUDED.carbs_per_100g,
    fat_per_100g = EXCLUDED.fat_per_100g,
    fiber_per_100g = EXCLUDED.fiber_per_100g,
    kcal_present = EXCLUDED.kcal_present,
    protein_present = EXCLUDED.protein_present,
    carbs_present = EXCLUDED.carbs_present,
    fat_present = EXCLUDED.fat_present,
    fiber_present = EXCLUDED.fiber_present,
    quality_score = EXCLUDED.quality_score,
    quality_flags = EXCLUDED.quality_flags,
    updated_at = CURRENT_TIMESTAMP;`

	const batchSize = 2000
	batch := &pgx.Batch{}
	batchCount := 0
	totalIngested := 0
	lastLog := time.Now()

	flushBatch := func() error {
		if batchCount == 0 {
			return nil
		}
		br := pool.SendBatch(ctx, batch)
		for i := 0; i < batchCount; i++ {
			if _, err := br.Exec(); err != nil {
				br.Close()
				return fmt.Errorf("executing batch item %d: %w", i, err)
			}
		}
		if err := br.Close(); err != nil {
			return fmt.Errorf("closing batch: %w", err)
		}
		totalIngested += batchCount
		batch = &pgx.Batch{}
		batchCount = 0
		if time.Since(lastLog) >= 5*time.Second {
			log.Printf("  [%s] Ingested %d items so far...", spec.Name, totalIngested)
			lastLog = time.Now()
		}
		return nil
	}

	handleArray := func() error {
		for dec.More() {
			var food RawFood
			if err := dec.Decode(&food); err != nil {
				continue
			}
			if food.FdcID == 0 || strings.TrimSpace(food.Description) == "" {
				continue
			}

			macros := extractMacros(food.FoodNutrients)
			normName := normalizeName(food.Description)
			dataType := resolveDataType(food.DataType, spec.DefaultDataType)

			batch.Queue(
				upsertSQL,
				food.FdcID,
				strings.TrimSpace(food.Description),
				dataType,
				normName,
				macros.Kcal,
				macros.Protein,
				macros.Carbs,
				macros.Fat,
				macros.Fiber,
				macros.KcalPresent,
				macros.ProteinPresent,
				macros.CarbsPresent,
				macros.FatPresent,
				macros.FiberPresent,
				spec.QualityScore,
				[]string{},
			)
			batchCount++

			if batchCount >= batchSize {
				if err := flushBatch(); err != nil {
					return err
				}
			}
		}
		return nil
	}

	if delim, ok := t.(json.Delim); ok && delim == '[' {
		if err := handleArray(); err != nil {
			return totalIngested, err
		}
	} else if delim, ok := t.(json.Delim); ok && delim == '{' {
		for dec.More() {
			t, err := dec.Token()
			if err != nil {
				return totalIngested, err
			}
			key, ok := t.(string)
			if !ok {
				continue
			}
			t2, err := dec.Token()
			if err != nil {
				return totalIngested, err
			}
			if d2, ok := t2.(json.Delim); ok && d2 == '[' {
				log.Printf("[%s] Reading array under key '%s'...", spec.Name, key)
				if err := handleArray(); err != nil {
					return totalIngested, err
				}
				_, _ = dec.Token() // closing ']'
			} else {
				var discard json.RawMessage
				_ = dec.Decode(&discard)
			}
		}
	}

	if err := flushBatch(); err != nil {
		return totalIngested, err
	}

	datasetVer := strings.TrimSuffix(filepath.Base(zipPath), ".zip")
	const versionSQL = `
INSERT INTO usda_dataset_version (
    dataset_version, source_release_date, checksum, row_count, import_source,
    is_active, is_materialized, v3_nutrient_presence_materialized
) VALUES (
    $1, CURRENT_DATE, $2, $3, $2, FALSE, TRUE, TRUE
)
ON CONFLICT (dataset_version) DO UPDATE SET
    row_count = EXCLUDED.row_count,
    imported_at = CURRENT_TIMESTAMP,
    is_active = FALSE,
    is_materialized = TRUE,
    v3_nutrient_presence_materialized = TRUE;`

	sourceFile := filepath.Base(zipPath)
	_, _ = pool.Exec(ctx, versionSQL, datasetVer, sourceFile, totalIngested)

	log.Printf("FINISHED %s: Ingested %d items into usda_foods.", spec.Name, totalIngested)
	return totalIngested, nil
}

func ingestRawData(ctx context.Context, pool *pgxpool.Pool, skipBranded bool) {
	if err := runMigrations(ctx, pool); err != nil {
		log.Fatalf("Failed to run migrations: %v", err)
	}

	dataDir, err := findDataDir()
	if err != nil {
		log.Fatalf("Failed to find data dir: %v", err)
	}

	totalAll := 0
	for _, spec := range datasetSpecs {
		if skipBranded && spec.DefaultDataType == "branded_food" {
			log.Printf("Skipping branded foods as requested (-skip-branded).")
			continue
		}

		matches, err := filepath.Glob(filepath.Join(dataDir, spec.Pattern))
		if err != nil || len(matches) == 0 {
			log.Printf("No files found matching %s in %s (skipping %s)", spec.Pattern, dataDir, spec.Name)
			continue
		}

		zipPath := matches[0]
		log.Printf("Found %s: %s", spec.Name, zipPath)

		count, err := streamAndIngestZip(ctx, pool, zipPath, spec)
		if err != nil {
			log.Fatalf("Failed ingesting %s: %v", spec.Name, err)
		}
		totalAll += count
	}

	activeVersion := "usda-complete-2026-04-30"
	_, _ = pool.Exec(ctx, "UPDATE usda_dataset_version SET is_active = FALSE WHERE is_active = TRUE")
	const activeVerSQL = `
INSERT INTO usda_dataset_version (
    dataset_version, source_release_date, checksum, row_count, import_source,
    is_active, is_materialized, v3_nutrient_presence_materialized
) VALUES (
    $1, CURRENT_DATE, 'all_sources', $2, 'all_sources', TRUE, TRUE, TRUE
)
ON CONFLICT (dataset_version) DO UPDATE SET
    row_count = EXCLUDED.row_count,
    imported_at = CURRENT_TIMESTAMP,
    is_active = TRUE,
    is_materialized = TRUE,
    v3_nutrient_presence_materialized = TRUE;`

	if _, err := pool.Exec(ctx, activeVerSQL, activeVersion, totalAll); err != nil {
		log.Printf("Warning: failed setting active dataset version: %v", err)
	}

	log.Printf("SUCCESS: Ingestion complete. Ingested/updated a total of %d foods across all datasets.", totalAll)
}

const normalizationSystemPrompt = `You are a food ontology normalization engine for Calorify, an AI nutritional tracking system.

CONTEXT & PURPOSE:
Users log everyday meals (e.g. "pan dulce", "grilled chicken breast", "olive oil blend", "mashed potatoes").
To ground these user logs against USDA nutritional databases, we normalize bureaucratic, inverted USDA descriptions into a clean, searchable 4-slot canonical ontology:
[Food & Variety] | [Cut / Part / Form] | [Cooking State] | [Modifiers]

USDA TITLES STRUCTURE & HEAD-FIRST RULE:
USDA descriptions are structured hierarchically: [Primary Food], [Variety / Style], [Form / Cut], [Cooking Method], [Brand / Ingredients / Notes].
- The primary food ALWAYS appears at the beginning of the title (e.g., "Pan Dulce...", "Oil...", "Chicken...").
- NEVER select a trailing ingredient or allergen note from the end of the description as the primary food (e.g., for "Pan Dulce, La Ricura, Salpora de Arroz con Azucar, cookie-like, contains wheat flour and rice flour", the food is "pan dulce, salpora de arroz", NEVER "rice"!).

SLOT DEFINITIONS:
1. food_and_variety:
   - The primary food and its specific variety or blend from the start of the title.
   - Retain full variety and multi-source blends (e.g., "oil, corn, peanut, and olive", "pan dulce, salpora de arroz", "chicken, broiler or fryers", "beans, snap, green", "tomatoes, grape", "apple, fuji").
   - NEVER drop varieties or reduce a blend to a single generic word.
2. cut_part_form:
   - Cut, anatomical part, form factor, or packaging (e.g., "breast, boneless, skinless", "cookie-like", "subcutaneous fat, blubber", "liver", "canned, drained", "fillet", "liquid", "powder").
   - Leave empty string "" ONLY if the food is whole, natural form, or has no distinct cut/form.
3. cooking_state:
   - The thermal / preparation state. Must be one of:
     * "raw": fresh produce, raw meat/poultry/fish
     * "unheated": ambient pantry items eaten without cooking (oils, dressings, candies, syrups, dry mixes, powders)
     * "baked": baked goods (bread, pan dulce, cookies, cakes, rolls, crackers)
     * "cooked": general cooked, boiled, canned (canned goods are cooked), steamed
     * "roasted", "grilled", "fried", "braised", "pasteurized", "dried", "smoked"
   - MUST NEVER be empty string. Every food has a thermal/preparation state.
4. modifiers:
   - Brand names, macro notes, seasonings, sweeteners, or ingredient claims (e.g., "la ricura, contains wheat and rice flour", "with salt added", "light", "meat only", "2% milkfat", "unsweetened").
   - Leave empty string "" if none.`

type ChatCompletionRequest struct {
	Model          string          `json:"model"`
	Messages       []ChatMessage   `json:"messages"`
	Temperature    float32         `json:"temperature"`
	MaxTokens      int             `json:"max_tokens"`
	Thinking       bool            `json:"thinking"`
	ResponseFormat *ResponseFormat `json:"response_format,omitempty"`
}

type ResponseFormat struct {
	Type       string      `json:"type"`
	JSONSchema *JSONSchema `json:"json_schema,omitempty"`
}

type JSONSchema struct {
	Name   string      `json:"name"`
	Strict bool        `json:"strict"`
	Schema interface{} `json:"schema"`
}

type FoodSlots struct {
	FoodAndVariety string `json:"food_and_variety"`
	CutPartForm    string `json:"cut_part_form"`
	CookingState   string `json:"cooking_state"`
	Modifiers      string `json:"modifiers"`
}

var foodNormalizationJSONSchema = &ResponseFormat{
	Type: "json_schema",
	JSONSchema: &JSONSchema{
		Name:   "food_normalization",
		Strict: true,
		Schema: map[string]interface{}{
			"type": "object",
			"properties": map[string]interface{}{
				"food_and_variety": map[string]string{"type": "string"},
				"cut_part_form":    map[string]string{"type": "string"},
				"cooking_state": map[string]interface{}{
					"type": "string",
					"enum": []string{
						"raw", "unheated", "baked", "cooked", "boiled",
						"roasted", "grilled", "fried", "braised", "pasteurized", "dried", "smoked",
					},
				},
				"modifiers": map[string]string{"type": "string"},
			},
			"required":             []string{"food_and_variety", "cut_part_form", "cooking_state", "modifiers"},
			"additionalProperties": false,
		},
	},
}

type ChatMessage struct {
	Role    string `json:"role"`
	Content string `json:"content"`
}

type ChatCompletionResponse struct {
	Choices []struct {
		Message struct {
			Content          string `json:"content"`
			ReasoningContent string `json:"reasoning_content,omitempty"`
		} `json:"message"`
	} `json:"choices"`
}

func callLMStudioOnce(client *http.Client, baseURL string, description string) (string, error) {
	endpoint := strings.TrimRight(baseURL, "/") + "/chat/completions"

	reqBody := ChatCompletionRequest{
		Model: "default",
		Messages: []ChatMessage{
			{Role: "system", Content: normalizationSystemPrompt},
			{Role: "user", Content: "Input: " + description},
		},
		Thinking:       false,
		Temperature:    0.0,
		MaxTokens:      200,
		ResponseFormat: foodNormalizationJSONSchema,
	}

	payload, err := json.Marshal(reqBody)
	if err != nil {
		return "", err
	}

	req, err := http.NewRequest("POST", endpoint, bytes.NewBuffer(payload))
	if err != nil {
		return "", err
	}
	req.Header.Set("Content-Type", "application/json")

	resp, err := client.Do(req)
	if err != nil {
		return "", err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		body, _ := io.ReadAll(resp.Body)
		return "", fmt.Errorf("status %d: %s", resp.StatusCode, string(body))
	}

	var chatResp ChatCompletionResponse
	if err := json.NewDecoder(resp.Body).Decode(&chatResp); err != nil {
		return "", err
	}

	if len(chatResp.Choices) == 0 {
		return "", fmt.Errorf("no choice returned")
	}

	raw := strings.TrimSpace(chatResp.Choices[0].Message.Content)
	if raw == "" && chatResp.Choices[0].Message.ReasoningContent != "" {
		rc := chatResp.Choices[0].Message.ReasoningContent
		start := strings.LastIndex(rc, "{")
		end := strings.LastIndex(rc, "}")
		if start != -1 && end != -1 && end > start {
			raw = rc[start : end+1]
		}
	}

	// Attempt structured JSON unmarshal
	var slots FoodSlots
	if err := json.Unmarshal([]byte(raw), &slots); err == nil && slots.FoodAndVariety != "" {
		canonical := fmt.Sprintf("%s | %s | %s | %s",
			strings.ToLower(strings.TrimSpace(slots.FoodAndVariety)),
			strings.ToLower(strings.TrimSpace(slots.CutPartForm)),
			strings.ToLower(strings.TrimSpace(slots.CookingState)),
			strings.ToLower(strings.TrimSpace(slots.Modifiers)),
		)
		return canonical, nil
	}

	// Fallback to pipe parsing if plain text returned
	for _, line := range strings.Split(raw, "\n") {
		line = strings.TrimSpace(line)
		line = strings.Trim(line, "\"`*")
		if strings.Count(line, "|") == 3 {
			return strings.ToLower(line), nil
		}
	}

	return "", fmt.Errorf("unable to parse canonical name: %s", raw)
}

func callLMStudio(client *http.Client, baseURL string, description string) (string, error) {
	res, err := callLMStudioOnce(client, baseURL, description)
	if err != nil {
		time.Sleep(300 * time.Millisecond)
		return callLMStudioOnce(client, baseURL, description)
	}
	return res, nil
}

type FoodToNormalize struct {
	FdcID       int64
	Description string
}

func runNormalization(ctx context.Context, pool *pgxpool.Pool, lmStudioURL string, numWorkers int, limit int, overwrite bool, delay time.Duration) {
	client := &http.Client{Timeout: 60 * time.Second}

	log.Printf("Connecting to LM Studio at %s...", lmStudioURL)
	testURL := strings.TrimRight(lmStudioURL, "/") + "/models"
	testReq, _ := http.NewRequestWithContext(ctx, "GET", testURL, nil)
	testResp, err := client.Do(testReq)
	if err != nil || testResp.StatusCode != http.StatusOK {
		log.Fatalf("Cannot connect to LM Studio at %s. Please make sure LM Studio's Local Server is running! (Error: %v)", lmStudioURL, err)
	}
	testResp.Body.Close()
	log.Println("LM Studio server is online and ready.")

	whereConditions := []string{"data_type != 'branded_food'"}
	if !overwrite {
		whereConditions = append(whereConditions, "canonical_name IS NULL")
	}

	whereClause := "WHERE " + strings.Join(whereConditions, " AND ")

	query := fmt.Sprintf(`
		SELECT fdc_id, description
		  FROM usda_foods
		 %s
		 ORDER BY fdc_id
	`, whereClause)

	if limit > 0 {
		query += fmt.Sprintf(" LIMIT %d", limit)
	}

	rows, err := pool.Query(ctx, query)
	if err != nil {
		log.Fatalf("Querying foods to normalize: %v", err)
	}
	defer rows.Close()

	var foods []FoodToNormalize
	for rows.Next() {
		var f FoodToNormalize
		if err := rows.Scan(&f.FdcID, &f.Description); err != nil {
			log.Fatalf("Scanning row: %v", err)
		}
		foods = append(foods, f)
	}

	if len(foods) == 0 {
		log.Println("No non-branded foods matching criteria need canonical_name populated.")
		return
	}

	modeStr := "missing only"
	if overwrite {
		modeStr = "overwrite existing"
	}
	log.Printf("Starting normalization of %d non-branded foods (%s) using %d worker(s) (delay: %v)...", len(foods), modeStr, numWorkers, delay)

	jobs := make(chan FoodToNormalize, len(foods))
	for _, f := range foods {
		jobs <- f
	}
	close(jobs)

	var (
		wg        sync.WaitGroup
		processed int64
		success   int64
		startTime = time.Now()
	)

	for w := 0; w < numWorkers; w++ {
		wg.Add(1)
		go func(workerID int) {
			defer wg.Done()
			for food := range jobs {
				canonical, err := callLMStudio(client, lmStudioURL, food.Description)
				count := atomic.AddInt64(&processed, 1)

				if err != nil {
					log.Printf("[%d/%d] ERROR '%s': %v (setting canonical_name = NULL)", count, len(foods), food.Description, err)
					_, _ = pool.Exec(ctx, `UPDATE usda_foods SET canonical_name = NULL, updated_at = CURRENT_TIMESTAMP WHERE fdc_id = $1`, food.FdcID)
				} else {
					_, dbErr := pool.Exec(ctx, `UPDATE usda_foods SET canonical_name = $1, updated_at = CURRENT_TIMESTAMP WHERE fdc_id = $2`, canonical, food.FdcID)
					if dbErr != nil {
						log.Printf("[%d/%d] DB ERROR: %v", count, len(foods), dbErr)
					} else {
						atomic.AddInt64(&success, 1)
						log.Printf("[%d/%d] %s -> %s", count, len(foods), food.Description, canonical)
					}
				}

				if delay > 0 {
					time.Sleep(delay)
				}
			}
		}(w + 1)
	}

	wg.Wait()
	duration := time.Since(startTime)
	log.Printf("COMPLETE: Normalized %d/%d foods in %v (%.1f foods/sec).", success, len(foods), duration, float64(success)/duration.Seconds())
}

func main() {
	var (
		ingestFlag          = flag.Bool("ingest", false, "Ingest raw USDA data from zip files into usda_foods")
		skipBrandedFlag     = flag.Bool("skip-branded", false, "Skip ingesting branded foods during ingestion")
		normalizeFlag       = flag.Bool("normalize", false, "Normalize non-branded USDA food names via LM Studio into canonical_name")
		overwriteFlag       = flag.Bool("overwrite", false, "Overwrite existing canonical_name values during normalization")
		populateMissingFlag = flag.Bool("populate_missing", false, "Only normalize foods where canonical_name is NULL (default: true)")
		populateMissingDash = flag.Bool("populate-missing", false, "Alias for -populate_missing")
		missingFlag         = flag.Bool("missing", false, "Alias for -populate_missing")
		allFlag             = flag.Bool("all", false, "Run both ingestion and normalization")
		lmStudioURL         = flag.String("lmstudio", "http://localhost:1234/v1", "LM Studio OpenAI-compatible base URL")
		workers             = flag.Int("workers", 1, "Concurrent worker routines for LM Studio calls")
		limit               = flag.Int("limit", 0, "Maximum number of rows to normalize (0 = unlimited)")
		delay               = flag.Duration("delay", 2*time.Second, "Delay between LLM calls per worker to reduce load/heat (default: 2s)")
		resetCanonicalFlag  = flag.Bool("reset-canonical", false, "Reset all canonical_name entries in usda_foods to NULL")
		resetFlag           = flag.Bool("reset", false, "Alias for -reset-canonical")
	)
	flag.Parse()

	overwrite := *overwriteFlag
	if *populateMissingFlag || *populateMissingDash || *missingFlag {
		overwrite = false
	}

	ctx := context.Background()
	cfg := config.Load()

	log.Printf("Connecting to USDA Database at %s...", cfg.UsdaDatabaseURL)
	pool, err := pgxpool.New(ctx, cfg.UsdaDatabaseURL)
	if err != nil {
		log.Fatalf("Failed to connect to USDA database: %v", err)
	}
	defer pool.Close()

	if err := pool.Ping(ctx); err != nil {
		log.Fatalf("USDA database ping failed (is docker running?): %v", err)
	}

	if *resetCanonicalFlag || *resetFlag {
		log.Println("Resetting all canonical_name entries in usda_foods to NULL...")
		res, err := pool.Exec(ctx, "UPDATE usda_foods SET canonical_name = NULL, updated_at = CURRENT_TIMESTAMP WHERE canonical_name IS NOT NULL")
		if err != nil {
			log.Fatalf("Failed to reset canonical_name values: %v", err)
		}
		log.Printf("SUCCESS: Reset %d canonical_name entries to NULL.", res.RowsAffected())
		if !*normalizeFlag && !*allFlag && !*ingestFlag {
			return
		}
	}

	if !*ingestFlag && !*normalizeFlag && !*allFlag {
		var totalCount, nonBrandedCount, unnormalizedNonBranded int
		_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods").Scan(&totalCount)
		_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods WHERE data_type != 'branded_food'").Scan(&nonBrandedCount)
		_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods WHERE data_type != 'branded_food' AND canonical_name IS NULL").Scan(&unnormalizedNonBranded)

		if totalCount == 0 {
			log.Println("usda_foods table is empty. Running initial ingestion...")
			ingestRawData(ctx, pool, *skipBrandedFlag)
		} else {
			log.Printf("Status: usda_foods contains %d records (%d non-branded, %d awaiting normalization).", totalCount, nonBrandedCount, unnormalizedNonBranded)
			log.Println("To ingest all datasets: go run cmd/usda/main.go -ingest")
			log.Println("To ingest non-branded only: go run cmd/usda/main.go -ingest -skip-branded")
			log.Println("To normalize (missing only, default): go run cmd/usda/main.go -normalize")
			log.Println("To normalize (overwrite existing): go run cmd/usda/main.go -normalize -overwrite")
			log.Println("To reset all canonical names: go run cmd/usda/main.go -reset-canonical")
			log.Println("To test on a subset: go run cmd/usda/main.go -normalize -limit 5")
			return
		}
	}

	if *ingestFlag || *allFlag {
		ingestRawData(ctx, pool, *skipBrandedFlag)
	}

	if *normalizeFlag || *allFlag {
		runNormalization(ctx, pool, *lmStudioURL, *workers, *limit, overwrite, *delay)
	}
}
