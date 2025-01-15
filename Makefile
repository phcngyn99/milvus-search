
DEPLOYMENT_DIR ?= ./deployment
COMPOSE ?= docker compose

run:
	cd ${DEPLOYMENT_DIR} && ${COMPOSE} up -d

down:
	cd ${DEPLOYMENT_DIR} && $(COMPOSE) down

cook:
	cd ${DEPLOYMENT_DIR} && $(COMPOSE) down -v --remove-orphans

ps:
	cd ${DEPLOYMENT_DIR} && $(COMPOSE) down ps

restart: down run
	