# USDA Database Tool

How to build and maintain the USDA reference database (`usda_foods`) with `cmd/usda`.

The meal-analysis pipeline matches every ingredient against this database, so it must be loaded and embedded before analyses can run.

## Quick start

From `backend/`, with Docker running (`docker compose up -d`):

1. Put the four USDA FoodData Central zip archives in `backend/raw_data/` (Foundation, SR Legacy, Survey and Branded).
2. Pull the embedding model once: `docker exec ollama ollama pull embeddinggemma-2`.
3. Run:

```bash
make usda-setup
```

That creates the tables and indexes, loads the archives, applies data corrections, and embeds every non-branded food. Run it again at any time; it skips whatever is already done.

## Safety rules

- **No command deletes anything.** The tool has no drop, truncate or delete.
- **Every command is safe to re-run.** Finished work is skipped.
- **`--force` redoes work in place.** It re-reads archives or recomputes embeddings. Rows are updated, never removed, and indexes are left alone.
- **`status` only reads.**

## Commands

Each command can be run as `make usda-<command>` or `go run ./cmd/usda <command>`.

| Command | What it does | What it changes |
|---|---|---|
| `status` | Shows foods, embeddings, foods without an energy value, indexes and the active dataset. Runs when no command is given | Nothing |
| `setup` | Runs `migrate`, `ingest` and `embed` in order, then prints `status` | Only what is missing |
| `migrate` | Creates tables and indexes if absent and applies data corrections | Schema objects that do not exist; rows needing correction |
| `ingest` | Loads archives that are not loaded yet, then re-applies corrections | Inserts and updates rows in `usda_foods` |
| `embed` | Generates embeddings for foods that have none | The `embedding` column |
| `help` | Prints the usage text | Nothing |

## Flags

With `make`, pass flags through `ARGS`:

```bash
make usda-embed ARGS="--include-branded --limit 1000"
```

| Flag | Commands | Meaning |
|---|---|---|
| `--data-dir DIR` | `ingest`, `setup` | Folder with the zip archives. Default: `raw_data/` |
| `--skip-branded` | `ingest`, `setup` | Leave out the Branded archive (3.3 GB unzipped) |
| `--force` | `ingest`, `setup` | Re-read archives that are already loaded |
| `--force` | `embed` | Recompute embeddings that already exist |
| `--include-branded` | `embed`, `setup` | Embed branded foods too. Without it only non-branded foods are embedded |
| `--limit N` | `embed`, `setup` | Embed at most N foods |
| `--batch N` | `embed`, `setup` | Foods per embedding request. Default 64 |
| `--ollama URL` | `embed`, `setup` | Ollama base URL. Default `http://localhost:11435` |
| `--model NAME` | `embed`, `setup` | Embedding model. Default `embeddinggemma-2` |

On `setup`, `--force` applies to the ingest step only. A full re-embed has to be asked for with `embed --force`.

## Configuration

| Setting | Source | Default |
|---|---|---|
| Database | `USDA_DATABASE_URL` environment variable | The local compose database on port 5433 |
| Ollama | `--ollama` flag | `http://localhost:11435` |

The tool does not read `OLLAMA_URL`; use the flag. The database password is masked in the log.

## Reading `status`

```text
data type               foods   embedded    no energy
branded_food           455458     138560         5435
foundation_food           363        363           18
sr_legacy_food           7793       7793            0
survey_food              5432       5432            0

indexes: 9
active dataset: usda-complete-2026-04-30
```

- **embedded** below **foods** means some foods cannot be found by search yet. The last line of the output names the command to run.
- **no energy** counts foods stored with no calorie value. A match on one adds 0 kcal to a meal. See "Data corrections".
- **indexes** lists any index that is not valid. The tool does not repair indexes.

## Common tasks

| Task | Command |
|---|---|
| First-time setup | `make usda-setup` |
| Check the current state | `make usda-status` |
| Set up without branded foods | `make usda-setup ARGS="--skip-branded"` |
| Embed branded foods later | `make usda-embed ARGS="--include-branded"` |
| Try embedding on a small sample | `make usda-embed ARGS="--include-branded --limit 10"` |
| Apply new corrections after pulling the repo | `make usda-migrate` |
| Reload after replacing an archive file | `make usda-ingest ARGS="--force"` |
| Recompute all embeddings, for example after changing the model | `make usda-embed ARGS="--force"` |

## How each step behaves

### Migrate

Runs `migrations/usda/000001_create_usda_tables.sql`. Every statement is written to be repeatable: tables and indexes use `IF NOT EXISTS`, and the corrections skip rows already corrected.

### Ingest

- One archive per dataset is read from the data folder, matched by file name (`*foundation*.zip`, `*sr_legacy*.zip`, `*survey*.zip`, `*branded*.zip`).
- **Skipping:** an archive is skipped when `usda_dataset_version` has a row for it. An archive with rows in `usda_foods` but no such row (loaded by an older version of the tool) is recorded with its current row count and skipped. If you suspect an earlier load stopped partway, use `--force`.
- **Rows are upserted by `fdc_id`.** Kept per food: description, data type, a normalised name, and energy, protein, carbohydrate, fat and fibre per 100 g with a "present" flag each.
- **Embeddings are kept.** A food's embedding is cleared only when its description changed, so that `embed` recomputes it.
- **Corrections are applied again** after any archive is read, because ingestion rewrites the corrected rows.
- The combined dataset is recorded as the single active version.

### Embed

- Embeds the description of each food with the prefix `title: none | content: `, which pairs with the query prefix the pipeline uses.
- Without `--force`, only foods with no embedding are selected, so an interrupted run resumes where it stopped.
- Stops with an error if Ollama cannot be reached.

## Data corrections

USDA publishes some Foundation and Survey records without an energy value: the Foundation oils, butter, several raw vegetables and fruits, three juices, table salt, and "Milk, human". Ingestion stores a missing value as 0.

The migration completes 25 of these from the SR Legacy record of the same food:

- Values the incomplete record does measure are kept. Butter keeps its own fat value and gains the missing energy, protein and carbohydrate.
- Each line in the SQL names the record it was taken from.
- Corrected rows carry the quality flag `macros_backfilled`.

Not corrected: the 17 "Beans, Dry, ... (0% moisture)" records and "Pawpaw, peeled, seeded, raw". They have no like-for-like reference record and still count as 0 kcal if matched.

To add a correction, add a line to the `VALUES` list in the migration and run `make usda-migrate`.

## Running against another database

The production image contains only the API server, not this tool. Run it from a checkout on a machine that can reach the target database, with `USDA_DATABASE_URL` set to that database and `--ollama` pointing at an Ollama that has the model. `ingest` also needs the archives on that machine.

Run `status` first to confirm which database you are connected to; the log line shows the host and database name.

## Troubleshooting

| Message | Cause | Fix |
|---|---|---|
| `USDA data directory not found` | No `raw_data/` folder where the command was run | Run from `backend/`, or pass `--data-dir` |
| `no archive matching ...; skipping` | That dataset's zip is not in the folder | Add the file, or ignore if intended |
| `Cannot connect to Ollama` | Ollama is not running or the URL is wrong | Start it, or pass `--ollama` |
| `USDA database ping failed` | The database is not running or `USDA_DATABASE_URL` is wrong | Start Docker, or fix the variable |
| `unable to locate migration file` | The command was run outside the repository | Run from `backend/` |
