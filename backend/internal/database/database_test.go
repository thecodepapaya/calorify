package database

import (
	"path/filepath"
	"testing"
)

func TestFindMigrationFiles(t *testing.T) {
	files, err := findMigrationFiles()
	if err != nil {
		t.Fatalf("unexpected error finding migration files: %v", err)
	}

	if len(files) == 0 {
		t.Fatalf("expected at least 1 migration file, got %d", len(files))
	}

	base := filepath.Base(files[0])
	expectedPrefix := "000001_"
	if len(base) < len(expectedPrefix) || base[:len(expectedPrefix)] != expectedPrefix {
		t.Errorf("file[0] base = %q, expected prefix %q", base, expectedPrefix)
	}
}
