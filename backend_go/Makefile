.PHONY: proto run build

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