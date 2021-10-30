build:
	docker-compose build
run:
	docker-compose -f docker-compose.yml up -d nlp
stop:
	docker-compose down
interactive:
	docker-compose -f docker-compose.yml run nlp bash
logs:
	docker-compose -f docker-compose.yml logs --tail=1000