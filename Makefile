up:
	docker compose up -d
stop:
	docker compose stop
down:
	docker compose down
build:
	docker compose build
destroy:
	docker compose down --volumes --remove-orphans
destroy-all:
	docker compose down --rmi all --volumes --remove-orphans
remake:
	@make down
	@make install
install:
	@make build
	@make up
	@make composer
restart:
	@make down
	@make up
ps:
	docker compose ps
logs:
	docker compose logs
mysql:
	docker compose exec mysql bash
test:
	docker compose exec -e APP_ENV=testing app bash -c 'php artisan test $(TEAMCITY_REPORT)'
