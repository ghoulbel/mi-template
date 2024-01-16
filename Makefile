build:
	mvn clean package
	cp target/capp/mi-example_1.0.0.car mi-home/carbonapps
	podman-compose up


clean:
	mvn clean
	mvn clean install
		
test:
	curl -v http://localhost:8080/health

down:
	podman-compose down

