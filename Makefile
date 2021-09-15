DIR=$(PWD)

build:
	docker build -f ./Dockerfile -t jef348/doxygen .

push: build
	docker push jef348/doxygen:latest
