PATH := github.com/makki0205/go-docker
PORT := 8080

build:
	docker build -t go-docker .

dev:
	docker run -it -v $(PWD):/go/src/$(PATH) -p $(PORT):$(PORT) go-docker sh
run:
	docker run -it -v $(PWD):/go/src/$(PATH) -p $(PORT):$(PORT) go-docker go run main.go
