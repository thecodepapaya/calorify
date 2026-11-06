package database

import (
	"context"
	"fmt"
	"log/slog"
	"os"
	"path/filepath"
	"sort"

	"github.com/jackc/pgx/v5/pgxpool"
)

func Connect(ctx context.Context, connString string) (*pgxpool.Pool, error) {
	pool, err := pgxpool.New(ctx, connString)
	if err != nil {
		return nil, fmt.Errorf("failed to create connection pool: %w", err)
	}

	if err := pool.Ping(ctx); err != nil {
		pool.Close()
		return nil, fmt.Errorf("failed to ping database: %w", err)
	}

	return pool, nil
}

func findMigrationDir() (string, error) {
	candidates := []string{
		"migrations/calorify",
		"backend/migrations/calorify",
		"../../migrations/calorify",
	}
	for _, path := range candidates {
		if fi, err := os.Stat(path); err == nil && fi.IsDir() {
			return filepath.Clean(path), nil
		}
	}
	return "", fmt.Errorf("could not find migration directory in candidate paths: %v", candidates)
}

func findMigrationFiles() ([]string, error) {
	dir, err := findMigrationDir()
	if err != nil {
		return nil, err
	}
	pattern := filepath.Join(dir, "*.sql")
	files, err := filepath.Glob(pattern)
	if err != nil {
		return nil, fmt.Errorf("globbing migration files with pattern %s: %w", pattern, err)
	}
	if len(files) == 0 {
		return nil, fmt.Errorf("no migration files found in %s", dir)
	}
	sort.Strings(files)
	return files, nil
}

// MigrateCalorify applies the core application schema migrations on startup.
func MigrateCalorify(ctx context.Context, pool *pgxpool.Pool) error {
	migrationFiles, err := findMigrationFiles()
	if err != nil {
		return err
	}

	for _, migrationPath := range migrationFiles {
		slog.InfoContext(ctx, "applying database migration", "path", migrationPath)
		content, err := os.ReadFile(migrationPath)
		if err != nil {
			return fmt.Errorf("reading migration file %s: %w", migrationPath, err)
		}

		if _, err := pool.Exec(ctx, string(content)); err != nil {
			return fmt.Errorf("failed to run calorify migrations from %s: %w", migrationPath, err)
		}
	}
	slog.InfoContext(ctx, "calorify database schema migration complete")
	return nil
}
