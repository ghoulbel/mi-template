SHELL := /bin/bash

build:
	mvn clean package
	cp target/capp/mi-example_1.0.0.car mi-home/carbonapps
	podman-compose up


clean:
	mvn clean

stop:
	podman stop mi-test || true

delete: 
	podman rm --force mi-test || true
	
fresh:	stop delete clean build run

test:
	curl -v http://localhost:8080/health

compose-up:
	podman-compose up

down:
	podman-compose down

