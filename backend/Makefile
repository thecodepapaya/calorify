.PHONY: proto run build usda-status usda-setup usda-migrate usda-ingest usda-embed

proto:
	rm -rf internal/gen_proto
	protoc \
		-I .. \
		-I /opt/homebrew/include \
		--go_out=. \
		--go_opt=module=backend \
		$$(find ../protos -name "*.proto" -not -path "*/app/*")

run:
	go run ./cmd/server

build:
	go build -o bin/server ./cmd/server

# USDA database. Every target is safe to re-run; nothing is deleted.
# Pass extra flags with ARGS, e.g. `make usda-embed ARGS="--include-branded"`.
usda-status:
	go run ./cmd/usda status

usda-setup:
	go run ./cmd/usda setup $(ARGS)

usda-migrate:
	go run ./cmd/usda migrate

usda-ingest:
	go run ./cmd/usda ingest $(ARGS)

usda-embed:
	go run ./cmd/usda embed $(ARGS)
