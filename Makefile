PATH := github.com/makki0205/go-docker
PORT := 8080
TAG := go-docker

build:
	docker build -t $(TAG) .

dev:
	docker run -it -v $(PWD):/go/src/$(PATH) -p $(PORT):$(PORT) $(TAG) sh
run:
	docker run -it -v $(PWD):/go/src/$(PATH) -p $(PORT):$(PORT) $(TAG) go run main.go
