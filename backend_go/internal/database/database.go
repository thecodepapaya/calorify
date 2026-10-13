package database

import (
	"context"
	"log"

	"github.com/jackc/pgx/v5/pgxpool"
)

func Connect(ctx context.Context, connString string) (*pgxpool.Pool, error) {
	pool, err := pgxpool.New(ctx, connString)
	if err != nil {
		log.Printf("Failed to establish DB connection: %v", connString)
		return nil, err
	}

	pingErr := pool.Ping(ctx)
	if pingErr != nil {
		log.Printf("Ping to DB failed. URL: %v", connString)
		pool.Close()
		return nil, pingErr
	}

	return pool, nil
}
