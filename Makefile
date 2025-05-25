

dev:
	docker run --rm   --name devdb -e POSTGRES_PASSWORD=password123 -d -p 5432:5432 postgres

prod:

rma: 
     docker stop $(docker ps -aq); docker system prune -a

rebuild:
	docker stop $(docker -f name=dev  -a -q); docker rm $(docker -f name=dev  -a -q)
	dev
