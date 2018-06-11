PATH := github.com/makki0205/go-docker

build:
	docker build -t go-docker .

run:
	docker run -it -v $(PWD):/go/src/$(PATH) -p 8080:8080 go-docker sh

