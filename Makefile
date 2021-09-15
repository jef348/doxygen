DIR=$(PWD)

build:
	docker build -f ./Dockerfile -t jef348/doxygen .
