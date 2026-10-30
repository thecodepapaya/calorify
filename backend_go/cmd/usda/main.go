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
	"strconv"
	"strings"
	"time"

	"backend/internal/analysis"
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

type EmbedRequest struct {
	Model string   `json:"model"`
	Input []string `json:"input"`
}

type EmbedResponse struct {
	Model      string      `json:"model"`
	Embeddings [][]float32 `json:"embeddings"`
}

func formatVector(vec []float32) string {
	var b strings.Builder
	b.WriteByte('[')
	for i, v := range vec {
		if i > 0 {
			b.WriteByte(',')
		}
		b.WriteString(strconv.FormatFloat(float64(v), 'f', 6, 32))
	}
	b.WriteByte(']')
	return b.String()
}

func embedBatchOllama(client *http.Client, ollamaURL string, model string, texts []string) ([][]float32, error) {
	reqBody := EmbedRequest{
		Model: model,
		Input: texts,
	}
	payload, err := json.Marshal(reqBody)
	if err != nil {
		return nil, err
	}

	endpoint := strings.TrimRight(ollamaURL, "/") + "/api/embed"
	resp, err := client.Post(endpoint, "application/json", bytes.NewBuffer(payload))
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		body, _ := io.ReadAll(resp.Body)
		return nil, fmt.Errorf("status %d: %s", resp.StatusCode, string(body))
	}

	var res EmbedResponse
	if err := json.NewDecoder(resp.Body).Decode(&res); err != nil {
		return nil, err
	}
	if len(res.Embeddings) != len(texts) {
		return nil, fmt.Errorf("expected %d embeddings, got %d", len(texts), len(res.Embeddings))
	}
	return res.Embeddings, nil
}

type FoodToEmbed struct {
	FdcID       int64
	Description string
}

func runEmbedding(ctx context.Context, pool *pgxpool.Pool, ollamaURL string, model string, batchSize int, limit int, overwrite bool, includeBranded bool) {
	client := &http.Client{Timeout: 120 * time.Second}

	log.Printf("Connecting to Ollama at %s (model: %s)...", ollamaURL, model)
	testReq, err := http.NewRequestWithContext(ctx, "GET", strings.TrimRight(ollamaURL, "/")+"/api/tags", nil)
	if err == nil {
		if testResp, err := client.Do(testReq); err == nil {
			testResp.Body.Close()
		} else {
			log.Fatalf("Cannot connect to Ollama at %s. Please make sure Ollama is running! (%v)", ollamaURL, err)
		}
	}

	var conditions []string
	if !includeBranded {
		conditions = append(conditions, "data_type != 'branded_food'")
	}
	if !overwrite {
		conditions = append(conditions, "embedding IS NULL")
	}

	whereClause := ""
	if len(conditions) > 0 {
		whereClause = "WHERE " + strings.Join(conditions, " AND ")
	}

	query := fmt.Sprintf(`SELECT fdc_id, description FROM usda_foods %s ORDER BY fdc_id`, whereClause)
	if limit > 0 {
		query += fmt.Sprintf(" LIMIT %d", limit)
	}

	rows, err := pool.Query(ctx, query)
	if err != nil {
		log.Fatalf("Querying foods to embed: %v", err)
	}
	defer rows.Close()

	var foods []FoodToEmbed
	for rows.Next() {
		var f FoodToEmbed
		if err := rows.Scan(&f.FdcID, &f.Description); err != nil {
			log.Fatalf("Scanning row: %v", err)
		}
		foods = append(foods, f)
	}

	total := len(foods)
	if total == 0 {
		log.Println("No foods awaiting embedding.")
		return
	}

	targetDesc := "non-branded foods"
	if includeBranded {
		targetDesc = "foods (including branded)"
	}
	log.Printf("Starting embedding for %d %s (batch size: %d, model: %s)...", total, targetDesc, batchSize, model)
	startTime := time.Now()
	processed := 0

	for i := 0; i < total; i += batchSize {
		end := i + batchSize
		if end > total {
			end = total
		}
		chunk := foods[i:end]

		texts := make([]string, len(chunk))
		for j, f := range chunk {
			texts[j] = "title: none | content: " + f.Description
		}

		embeddings, err := embedBatchOllama(client, ollamaURL, model, texts)
		if err != nil {
			log.Fatalf("Embedding batch [%d-%d] failed: %v", i, end, err)
		}

		dbBatch := &pgx.Batch{}
		for j, f := range chunk {
			vecStr := formatVector(embeddings[j])
			dbBatch.Queue("UPDATE usda_foods SET embedding = $1::vector, updated_at = CURRENT_TIMESTAMP WHERE fdc_id = $2", vecStr, f.FdcID)
		}

		br := pool.SendBatch(ctx, dbBatch)
		for range chunk {
			if _, err := br.Exec(); err != nil {
				_ = br.Close()
				log.Fatalf("Failed updating database embedding: %v", err)
			}
		}
		if err := br.Close(); err != nil {
			log.Fatalf("Failed closing db batch: %v", err)
		}

		processed += len(chunk)
		elapsed := time.Since(startTime)
		rate := float64(processed) / elapsed.Seconds()
		pct := float64(processed) / float64(total) * 100
		log.Printf("[%d/%d] (%.1f%%) Embedded in %v (%.1f foods/sec)", processed, total, pct, elapsed.Round(time.Second), rate)
	}

	totalDuration := time.Since(startTime)
	log.Printf("SUCCESS: Completed embedding %d foods in %v (%.1f foods/sec).", total, totalDuration.Round(time.Second), float64(total)/totalDuration.Seconds())
}

func main() {
	var (
		ingestFlag      = flag.Bool("ingest", false, "Ingest raw USDA data from zip files into usda_foods")
		skipBrandedFlag = flag.Bool("skip-branded", false, "Skip ingesting branded foods during ingestion")
		embedFlag          = flag.Bool("embed", false, "Generate embeddings for foods missing embedding via Ollama")
		embedAllFlag       = flag.Bool("embed-all", false, "Overwrite existing embeddings for all non-branded foods (or all foods if -include-branded is set)")
		includeBrandedFlag = flag.Bool("include-branded", false, "Include branded foods during embedding")
		ollamaURL          = flag.String("ollama", "http://localhost:11434", "Ollama base URL")
		model              = flag.String("model", analysis.EmbeddingModel, "Embedding model name in Ollama")
		batchSize          = flag.Int("batch", 64, "Batch size for embedding requests")
		limit              = flag.Int("limit", 0, "Limit number of foods to embed (0 = unlimited)")
	)
	flag.Parse()

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

	if *ingestFlag {
		ingestRawData(ctx, pool, *skipBrandedFlag)
		return
	}

	if *embedFlag || *embedAllFlag {
		runEmbedding(ctx, pool, *ollamaURL, *model, *batchSize, *limit, *embedAllFlag, *includeBrandedFlag)
		return
	}

	var totalCount, nonBrandedCount, unEmbeddedCount, unEmbeddedTotal int
	_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods").Scan(&totalCount)
	_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods WHERE data_type != 'branded_food'").Scan(&nonBrandedCount)
	_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods WHERE data_type != 'branded_food' AND embedding IS NULL").Scan(&unEmbeddedCount)
	_ = pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods WHERE embedding IS NULL").Scan(&unEmbeddedTotal)

	if totalCount == 0 {
		log.Println("usda_foods table is empty. Running initial ingestion...")
		ingestRawData(ctx, pool, *skipBrandedFlag)
	} else {
		log.Printf("Status: usda_foods contains %d records (%d non-branded, %d non-branded missing embeddings, %d total missing embeddings).", totalCount, nonBrandedCount, unEmbeddedCount, unEmbeddedTotal)
		log.Println("To re-ingest all datasets: go run cmd/usda/main.go -ingest")
		log.Println("To re-ingest non-branded only: go run cmd/usda/main.go -ingest -skip-branded")
		log.Println("To generate embeddings (missing non-branded): go run cmd/usda/main.go -embed")
		log.Println("To generate embeddings (including branded): go run cmd/usda/main.go -embed -include-branded")
		log.Println("To test embedding a small subset: go run cmd/usda/main.go -embed -include-branded -limit 10")
	}
}
