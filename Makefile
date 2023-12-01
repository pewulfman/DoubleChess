.PHONY : frontend backend


frontend:
	@echo "Building frontend..."
	@cd frontend && flutter run -d web-server --web-port 8080

backend:
	@echo "Building backend..."
	@cd backend && cargo run

watch:
	@echo "Watching frontend..."
	@cd backend && cargo watch -x run
