FROM golang:latest

WORKDIR /go/src/github.com/makki0205/go-docker
RUN go get -u github.com/golang/dep/cmd/dep

ADD ./ ./