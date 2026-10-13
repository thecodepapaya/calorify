.PHONY: proto run build

proto:
	rm -rf internal/gen_proto
	protoc \
		-I ../protos_go \
		--go_out=. \
		--go_opt=module=backend \
		$$(find ../protos_go -name "*.proto")

run:
	go run ./cmd/server

build:
	go build -o bin/server ./cmd/server