GIT_VERSION:=$(shell git log --format="%h" -n 1)
MVN_VERSION:=$(shell ./mvnw -q -Dexec.executable=echo -Dexec.args='$${project.version}' --non-recursive exec:exec)
VERSION=$(MVN_VERSION)-$(GIT_VERSION)

all: build image deploy
local: build_local run_local

build:
	./mvnw clean install -P docker-$(DBMS) -DskipTests -f pom.xml

build_local:
	./mvnw clean install -P local-postgres -DskipTests -f pom.xml

run_local:
	./mvnw tomcat7:run -f pom.xml

image:
	docker build -t outertuning:$(VERSION) .
	docker tag outertuning:$(VERSION) outertuning:latest

deploy:
	chmod 777 ./docker-compose/tpch_load_data_test/load.sh
	chmod 777 ./docker-compose/postgres_load_data_test/load.sh
	docker-compose -f ./docker-compose/docker-compose.yml up -d

stop:
	docker-compose -f ./docker-compose/docker-compose.yml down