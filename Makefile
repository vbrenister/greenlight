.PHONY: run_migrate dev_db

run_migrate:
	@migrate -path=./migrations -database="postgres://greenlight_user:password@localhost/greenlight?sslmode=disable" up

dev_db:
	@docker compose up &

serve_dev:
	@go run ./cmd/api