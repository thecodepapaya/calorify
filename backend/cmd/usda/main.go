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
	"net/url"
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

// findDataDir returns the folder holding the USDA zip archives: the explicit
// --data-dir when given, otherwise the first existing default location.
func findDataDir(explicit string) (string, error) {
	candidates := []string{"raw_data", "backend/raw_data", "../../raw_data"}
	if explicit != "" {
		candidates = []string{explicit}
	}
	for _, c := range candidates {
		if fi, err := os.Stat(c); err == nil && fi.IsDir() {
			return c, nil
		}
	}
	return "", fmt.Errorf("USDA data directory not found (looked in %v); pass --data-dir", candidates)
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
		"backend/migrations/usda/000001_create_usda_tables.sql",
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
    embedding = CASE
        WHEN usda_foods.description IS DISTINCT FROM EXCLUDED.description THEN NULL
        ELSE usda_foods.embedding
    END,
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

	if err := recordDatasetFile(ctx, pool, zipPath, totalIngested); err != nil {
		return totalIngested, err
	}

	log.Printf("FINISHED %s: Ingested %d items into usda_foods.", spec.Name, totalIngested)
	return totalIngested, nil
}

// datasetVersionName is the usda_dataset_version key for one archive.
func datasetVersionName(zipPath string) string {
	return strings.TrimSuffix(filepath.Base(zipPath), ".zip")
}

// recordDatasetFile marks one archive as ingested. Per-file rows are never the
// active or materialized dataset; only the combined row written at the end of
// ingestion is (the table allows a single row of each).
func recordDatasetFile(ctx context.Context, pool *pgxpool.Pool, zipPath string, rowCount int) error {
	const versionSQL = `
INSERT INTO usda_dataset_version (
    dataset_version, source_release_date, checksum, row_count, import_source,
    is_active, is_materialized, v3_nutrient_presence_materialized
) VALUES (
    $1, CURRENT_DATE, $2, $3, $2, FALSE, FALSE, TRUE
)
ON CONFLICT (dataset_version) DO UPDATE SET
    row_count = EXCLUDED.row_count,
    imported_at = CURRENT_TIMESTAMP,
    is_active = FALSE,
    is_materialized = FALSE,
    v3_nutrient_presence_materialized = TRUE;`
	if _, err := pool.Exec(ctx, versionSQL, datasetVersionName(zipPath), filepath.Base(zipPath), rowCount); err != nil {
		return fmt.Errorf("recording dataset version for %s: %w", filepath.Base(zipPath), err)
	}
	return nil
}

// datasetIngested reports whether an archive is already loaded. An archive with
// no version row but existing rows of its data type (loaded by an older build of
// this tool) is adopted: its current row count is recorded and it is not re-read.
func datasetIngested(ctx context.Context, pool *pgxpool.Pool, zipPath string, spec DatasetSpec) (bool, error) {
	var recorded int
	err := pool.QueryRow(ctx, "SELECT row_count FROM usda_dataset_version WHERE dataset_version = $1", datasetVersionName(zipPath)).Scan(&recorded)
	if err == nil && recorded > 0 {
		log.Printf("[%s] already ingested (%d rows recorded); skipping. Use --force to re-read the archive.", spec.Name, recorded)
		return true, nil
	}
	if err != nil && err != pgx.ErrNoRows {
		return false, fmt.Errorf("checking dataset version: %w", err)
	}

	var existing int
	if err := pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods WHERE data_type = $1", spec.DefaultDataType).Scan(&existing); err != nil {
		return false, fmt.Errorf("counting %s rows: %w", spec.DefaultDataType, err)
	}
	if existing == 0 {
		return false, nil
	}
	if err := recordDatasetFile(ctx, pool, zipPath, existing); err != nil {
		return false, err
	}
	log.Printf("[%s] %d rows already present with no ingest record; recorded and skipping. Use --force to re-read the archive.", spec.Name, existing)
	return true, nil
}

// ingestRawData loads the USDA archives into usda_foods. It only inserts and
// updates rows: nothing is deleted, existing embeddings are kept unless a food's
// description changed, and archives already loaded are skipped unless force is set.
func ingestRawData(ctx context.Context, pool *pgxpool.Pool, dataDirFlag string, skipBranded bool, force bool) error {
	if err := runMigrations(ctx, pool); err != nil {
		return err
	}

	dataDir, err := findDataDir(dataDirFlag)
	if err != nil {
		return err
	}

	ingestedAny := false
	for _, spec := range datasetSpecs {
		if skipBranded && spec.DefaultDataType == "branded_food" {
			log.Printf("[%s] skipped (--skip-branded).", spec.Name)
			continue
		}

		matches, err := filepath.Glob(filepath.Join(dataDir, spec.Pattern))
		if err != nil || len(matches) == 0 {
			log.Printf("[%s] no archive matching %s in %s; skipping.", spec.Name, spec.Pattern, dataDir)
			continue
		}
		zipPath := matches[0]

		if !force {
			done, err := datasetIngested(ctx, pool, zipPath, spec)
			if err != nil {
				return err
			}
			if done {
				continue
			}
		}

		log.Printf("[%s] ingesting %s", spec.Name, zipPath)
		if _, err := streamAndIngestZip(ctx, pool, zipPath, spec); err != nil {
			return fmt.Errorf("ingesting %s: %w", spec.Name, err)
		}
		ingestedAny = true
	}

	if ingestedAny {
		// Ingestion rewrites the incomplete records that the migration corrects,
		// so the corrections are applied again.
		if err := runMigrations(ctx, pool); err != nil {
			return err
		}
	}

	var total int
	if err := pool.QueryRow(ctx, "SELECT COUNT(*) FROM usda_foods").Scan(&total); err != nil {
		return fmt.Errorf("counting usda_foods: %w", err)
	}
	const activeVersion = "usda-complete-2026-04-30"
	if _, err := pool.Exec(ctx, "UPDATE usda_dataset_version SET is_active = FALSE, is_materialized = FALSE WHERE dataset_version <> $1", activeVersion); err != nil {
		return fmt.Errorf("clearing previous active dataset version: %w", err)
	}
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
	if _, err := pool.Exec(ctx, activeVerSQL, activeVersion, total); err != nil {
		return fmt.Errorf("setting active dataset version: %w", err)
	}

	log.Printf("Ingestion complete: usda_foods holds %d foods.", total)
	return nil
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

const usageText = `USDA database tool. Every command is safe to re-run: nothing is deleted,
and work that is already done is skipped unless --force is given.

Usage: go run ./cmd/usda <command> [flags]

Commands:
  status     Show what is loaded, embedded and indexed (default)
  setup      Do everything needed, in order: migrate, ingest, embed
  migrate    Create tables and indexes, and apply data corrections
  ingest     Load the USDA archives into usda_foods
  embed      Generate embeddings for foods that have none
  help       Show this text

Flags:
  ingest, setup:  --data-dir DIR      folder with the USDA zip archives (default: raw_data)
                  --skip-branded      leave out the branded archive
                  --force             re-read archives that are already loaded
  embed, setup:   --include-branded   embed branded foods too
                  --limit N           embed at most N foods
                  --batch N           foods per embedding request (default 64)
                  --ollama URL        Ollama base URL (default http://localhost:11435)
                  --model NAME        embedding model
  embed only:     --force             recompute embeddings that already exist
`

// redactedURL hides the password of a database URL for logging.
func redactedURL(raw string) string {
	u, err := url.Parse(raw)
	if err != nil {
		return "(unparseable URL)"
	}
	return u.Redacted()
}

// printStatus reports the state of the USDA database without changing it.
func printStatus(ctx context.Context, pool *pgxpool.Pool) error {
	var tableExists bool
	if err := pool.QueryRow(ctx, "SELECT to_regclass('public.usda_foods') IS NOT NULL").Scan(&tableExists); err != nil {
		return fmt.Errorf("checking for usda_foods: %w", err)
	}
	if !tableExists {
		fmt.Println("usda_foods does not exist yet. Next: go run ./cmd/usda setup")
		return nil
	}

	rows, err := pool.Query(ctx, `
		SELECT COALESCE(data_type, '(none)'), COUNT(*), COUNT(embedding), COUNT(*) FILTER (WHERE NOT kcal_present)
		FROM usda_foods GROUP BY 1 ORDER BY 1`)
	if err != nil {
		return fmt.Errorf("counting foods: %w", err)
	}
	fmt.Printf("%-18s %10s %10s %12s\n", "data type", "foods", "embedded", "no energy")
	total, missingBase := 0, 0
	for rows.Next() {
		var dataType string
		var count, embedded, noEnergy int
		if err := rows.Scan(&dataType, &count, &embedded, &noEnergy); err != nil {
			rows.Close()
			return fmt.Errorf("scanning food counts: %w", err)
		}
		fmt.Printf("%-18s %10d %10d %12d\n", dataType, count, embedded, noEnergy)
		total += count
		if dataType != "branded_food" {
			missingBase += count - embedded
		}
	}
	rows.Close()
	if err := rows.Err(); err != nil {
		return fmt.Errorf("reading food counts: %w", err)
	}

	idx, err := pool.Query(ctx, `
		SELECT c.relname, i.indisvalid
		FROM pg_index i
		JOIN pg_class c ON c.oid = i.indexrelid
		JOIN pg_class t ON t.oid = i.indrelid
		WHERE t.relname = 'usda_foods' ORDER BY 1`)
	if err != nil {
		return fmt.Errorf("listing indexes: %w", err)
	}
	indexCount, invalid := 0, []string{}
	for idx.Next() {
		var name string
		var valid bool
		if err := idx.Scan(&name, &valid); err != nil {
			idx.Close()
			return fmt.Errorf("scanning indexes: %w", err)
		}
		indexCount++
		if !valid {
			invalid = append(invalid, name)
		}
	}
	idx.Close()
	fmt.Printf("\nindexes: %d", indexCount)
	if len(invalid) > 0 {
		fmt.Printf(" (invalid: %s)", strings.Join(invalid, ", "))
	}
	fmt.Println()

	var active string
	_ = pool.QueryRow(ctx, "SELECT dataset_version FROM usda_dataset_version WHERE is_active").Scan(&active)
	if active == "" {
		active = "(none recorded)"
	}
	fmt.Printf("active dataset: %s\n", active)

	switch {
	case total == 0:
		fmt.Println("\nNext: go run ./cmd/usda setup")
	case missingBase > 0:
		fmt.Printf("\nNext: go run ./cmd/usda embed   (%d non-branded foods have no embedding)\n", missingBase)
	default:
		fmt.Println("\nNon-branded foods are fully embedded. Branded foods: go run ./cmd/usda embed --include-branded")
	}
	return nil
}

func main() {
	log.SetFlags(log.Ltime)

	command := "status"
	args := os.Args[1:]
	if len(args) > 0 && !strings.HasPrefix(args[0], "-") {
		command, args = args[0], args[1:]
	}

	fs := flag.NewFlagSet(command, flag.ExitOnError)
	fs.Usage = func() { fmt.Fprint(os.Stderr, usageText) }
	var (
		dataDir        = fs.String("data-dir", "", "folder with the USDA zip archives")
		skipBranded    = fs.Bool("skip-branded", false, "leave out the branded archive")
		includeBranded = fs.Bool("include-branded", false, "embed branded foods too")
		force          = fs.Bool("force", false, "redo work that is already done")
		ollamaURL      = fs.String("ollama", "http://localhost:11435", "Ollama base URL")
		model          = fs.String("model", analysis.EmbeddingModel, "embedding model name in Ollama")
		batchSize      = fs.Int("batch", 64, "foods per embedding request")
		limit          = fs.Int("limit", 0, "embed at most this many foods (0 = no limit)")
	)

	switch command {
	case "status", "setup", "migrate", "ingest", "embed":
	case "help":
		fmt.Print(usageText)
		return
	default:
		fmt.Fprintf(os.Stderr, "unknown command %q\n\n%s", command, usageText)
		os.Exit(2)
	}
	_ = fs.Parse(args)
	if fs.NArg() > 0 {
		fmt.Fprintf(os.Stderr, "unexpected argument %q\n\n%s", fs.Arg(0), usageText)
		os.Exit(2)
	}

	ctx := context.Background()
	cfg := config.Load()

	log.Printf("Connecting to USDA database at %s", redactedURL(cfg.UsdaDatabaseURL))
	pool, err := pgxpool.New(ctx, cfg.UsdaDatabaseURL)
	if err != nil {
		log.Fatalf("Failed to connect to USDA database: %v", err)
	}
	defer pool.Close()
	if err := pool.Ping(ctx); err != nil {
		log.Fatalf("USDA database ping failed (is docker running?): %v", err)
	}

	switch command {
	case "status":
		err = printStatus(ctx, pool)
	case "migrate":
		err = runMigrations(ctx, pool)
	case "ingest":
		err = ingestRawData(ctx, pool, *dataDir, *skipBranded, *force)
	case "embed":
		runEmbedding(ctx, pool, *ollamaURL, *model, *batchSize, *limit, *force, *includeBranded)
	case "setup":
		// --force applies to ingest only here; forcing a full re-embed is asked
		// for explicitly with "embed --force".
		if err = ingestRawData(ctx, pool, *dataDir, *skipBranded, *force); err == nil {
			runEmbedding(ctx, pool, *ollamaURL, *model, *batchSize, *limit, false, *includeBranded)
			err = printStatus(ctx, pool)
		}
	}
	if err != nil {
		log.Fatalf("%s failed: %v", command, err)
	}
}
