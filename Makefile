.PHONY: run_migrate

run_migrate:
	@migrate -path=./migrations -database="postgres://greenlight_user:password@localhost/greenlight?sslmode=disable" up
