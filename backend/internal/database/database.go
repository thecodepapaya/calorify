package database

import (
	"context"
	"fmt"
	"log/slog"
	"os"
	"path/filepath"

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

func findMigrationFile() (string, error) {
	candidates := []string{
		"migrations/calorify/000001_create_user_profile.sql",
		"backend/migrations/calorify/000001_create_user_profile.sql",
		"../../migrations/calorify/000001_create_user_profile.sql",
	}
	for _, path := range candidates {
		if _, err := os.Stat(path); err == nil {
			return filepath.Clean(path), nil
		}
	}
	return "", fmt.Errorf("could not find migration file in candidate paths: %v", candidates)
}

// MigrateCalorify applies the core application schema migrations on startup.
func MigrateCalorify(ctx context.Context, pool *pgxpool.Pool) error {
	migrationPath, err := findMigrationFile()
	if err != nil {
		return err
	}

	slog.InfoContext(ctx, "applying database migration", "path", migrationPath)
	content, err := os.ReadFile(migrationPath)
	if err != nil {
		return fmt.Errorf("reading migration file %s: %w", migrationPath, err)
	}

	if _, err := pool.Exec(ctx, string(content)); err != nil {
		return fmt.Errorf("failed to run calorify migrations from %s: %w", migrationPath, err)
	}
	slog.InfoContext(ctx, "calorify database schema migration complete")
	return nil
}
